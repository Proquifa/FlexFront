package modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import modelo.objetos.PendientesMensajero;
	import modelo.objetos.itemPendientes;
	
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectUtil;
	
	import vistas.renders.renderCierre.itemPendienteCierre;

	public class modeloMobilMensajeroCierre extends EventDispatcher
	{
		public function modeloMobilMensajeroCierre(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		private var pendientesCierreMensajero:ArrayCollection = new ArrayCollection();
		private var pendientesCierreAgrupados:ArrayCollection = new ArrayCollection();
		private var pendientesCierreSeleccionados:itemPendientes = new itemPendientes();
		private var pendientesCierreJustificacion:PendientesMensajero = new PendientesMensajero();
		
		
		public function recibirPendientesCierre(pendientes:ArrayCollection):void
		{
			this.pendientesCierreMensajero = new ArrayCollection();
			if(pendientes.length > 0)
			{
				this.pendientesCierreMensajero = pendientes;
				this.formarItemsPendientes();
				this.dispatchEvent(new Event("regresarPendientesCierreEvent"));
			}
		}
		
		[Bindable (event="regresarPendientesCierreEvent")]
		public function get regresarPendientesCierre():ArrayCollection{
			//return this.pendientesCierreMensajero;
			return this.pendientesCierreAgrupados;
		}
		
		public function faultPendientesCierre(fault:Object):void{
			trace(fault.toString());
		}
		
		
		public function formarItemsPendientes():void{
			if(this.pendientesCierreMensajero.length == 0){
				this.pendientesCierreAgrupados = new ArrayCollection();
				return;
			}
			var parseo:ArrayCollection = new ArrayCollection();
			parseo = ObjectUtil.copy(this.pendientesCierreMensajero) as ArrayCollection;
			var objetos:ArrayCollection = new ArrayCollection();
			
			for(var m:int = 0; parseo.length != 0; m++){
				var arreglo:itemPendientes = new itemPendientes();
				
				arreglo.pendientes.addItem(parseo[0]);
				for(var r:int = 1; r<parseo.length; r++){
					if((parseo[0].empresa == parseo[r].empresa) && (parseo[0].ruta == parseo[r].ruta) && (parseo[0].direccion == parseo[r].direccion)){
						arreglo.pendientes.addItem(parseo[r]);
						parseo.removeItemAt(r);
						r = r -1;
					}
				}
				parseo.removeItemAt(0);
				arreglo.formar();
				objetos.addItem(arreglo);
			}
			this.pendientesCierreAgrupados = objetos;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
		
		public function resultPendientesCierreAgrupados():void{
			this.dispatchEvent(new Event("regresarPendientesCierreAgrupadosEvent"));
		}
		
		[Bindable (event="regresarPendientesCierreAgrupadosEvent")]
		public function get regresarPendientesCierreAgrupados():ArrayCollection{
			return this.pendientesCierreAgrupados;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
		
		public function recibirPendientesCierreSeleccionados(_pendientes:itemPendientes):void{
			this.pendientesCierreSeleccionados = new itemPendientes();
			this.pendientesCierreSeleccionados = _pendientes;
			this.dispatchEvent(new Event("regresarPendientesCierreSeleccionadosEvent"));
		}
		
		[Bindable (event="regresarPendientesCierreSeleccionadosEvent")]
		public function get regresarPendientesCierreSeleccionados():itemPendientes{
			return this.pendientesCierreSeleccionados;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
		
		public function resultPendienteJustificacion(_pendiente:PendientesMensajero):void{
			this.pendientesCierreJustificacion = new PendientesMensajero();
			this.pendientesCierreJustificacion = _pendiente;
			this.dispatchEvent(new Event("regresarPendienteCierreJustificacionEvent"));
		}
		
		
		[Bindable (event="regresarPendienteCierreJustificacionEvent")]
		public function get regresarPendienteCierreJustificacion():PendientesMensajero{
			return this.pendientesCierreJustificacion;
		}
		
	}
}