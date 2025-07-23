package modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectUtil;

	public class modeloMobilMensajeroEstadistica extends EventDispatcher
	{
		public function modeloMobilMensajeroEstadistica(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		private var pendientesEstadistica:ArrayCollection = new ArrayCollection();
		private var pendientesAbiertos:ArrayCollection = new ArrayCollection();
		private var pendientesRealizados:ArrayCollection = new ArrayCollection();
		private var pendientesJustificados:ArrayCollection = new ArrayCollection();
		
		
		
		
		public function recibirPendientesEstadistica(pendientes:ArrayCollection):void{
			this.pendientesEstadistica = new ArrayCollection();
			this.pendientesEstadistica = pendientes;
			this.filtrar();
			this.dispatchEvent(new Event("eventoRegresarPendientesAbiertos"));
		}
		
		public function faultRecibirPendientesEstadistica(fault:Object):void{
			trace(fault.toString());
		}
		
		
		[Bindable (event="eventoRegresarPendientesAbiertos")]
		public function get regresarPendienteAbiertos():ArrayCollection{
			return this.pendientesAbiertos;
		}
		
		[Bindable (event="eventoRegresarPendientesRealizados")]
		public function get regresarPendienteRealizados():ArrayCollection{
			return this.pendientesRealizados;
		}
		
		[Bindable (event="eventoRegresarPendientesJustificados")]
		public function get regresarPendienteJustificados():ArrayCollection{
			return this.pendientesJustificados;
		}
		
		
		
		public function filtrar():void{
			this.pendientesAbiertos = ObjectUtil.copy(this.pendientesEstadistica) as ArrayCollection;
			this.pendientesJustificados = new ArrayCollection();
			this.pendientesRealizados = new ArrayCollection();
			var copia:ArrayCollection = new ArrayCollection();
			copia = ObjectUtil.copy(this.pendientesEstadistica) as ArrayCollection;
			for(var m:int = 0; m<copia.length; m++){
				if(copia[m].estadoPendiente == "Cerrado"){
					this.pendientesRealizados.addItem(copia[m]);
				}
			}
			
			var copia2:ArrayCollection = new ArrayCollection();
			copia2 = ObjectUtil.copy(this.pendientesRealizados) as ArrayCollection;
			
			for(var t:int = 0; t<copia2.length;t++){
				if(copia2[t].realizado == false){
					this.pendientesJustificados.addItem(copia[t]);
				}
			}
			
		}
	}
}