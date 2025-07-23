package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.accessibility.AccConst;
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Accion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.controls.Alert;
	
	public class ModeloAcciones extends EventDispatcher
	{
		private var Cat_Acciones:ArrayCollection = new ArrayCollection();
		private var Accion_seleccionada:Accion = new Accion();
		private var Accion_actualizada:Accion = new Accion();
		private var Accion_ejecutada:Accion = new Accion();
		
		private var Datos_AccionSeleccionada:Object;
		
		public function ModeloAcciones(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		
		[Bindable(event="resultTraerAcciones")]
		public function get return_obtenerAcciones():ArrayCollection{
			return this.Cat_Acciones;
		}
		
		public function result_obtenerAcciones(_acciones:ArrayCollection):void{
			/*for(var m:int = 0; m < _acciones.length;m++){
				var acc:Accion = new Accion();
				acc = _acciones[m] as Accion;
				acc.numFila = m + 1;
				this.Cat_Acciones.addItem(acc);
			}*/
			this.Cat_Acciones = new ArrayCollection();
			for(var m:int = 0; m < _acciones.length;m++){
				(_acciones.getItemAt(m) as Accion).numFila = m+1;
			}
			this.Cat_Acciones = FuncionesEstaticas.getInstance().formatoObjetos(_acciones,"dd/MMM/yyyy");
			
			this.dispatchEvent(new Event("resultTraerAcciones"));
		}
		
		public function fault_obtenerAcciones(objeto:Object):void{
			Alert.show("Error al obtner las acciones por Usuario","Gestion Acciones");
		}
		
		
		[Bindable (event="traerAccion")]
		public function get return_traerAccion():Object{
			return this.Datos_AccionSeleccionada;
			//return this.Accion_seleccionada;
		}
		
		public function result_obtenerAccionXid(_accion:Accion,_usuario:String):void{
			this.Datos_AccionSeleccionada = {};
			this.Accion_seleccionada = _accion as Accion;
			this.Datos_AccionSeleccionada["accion"] = _accion as Accion;
			this.Datos_AccionSeleccionada["usuario"] = _usuario;
			this.dispatchEvent(new Event("traerAccion"));
		}
		
		public function fault_obtenerAccionXid(objeto:Object):void{
			Alert.show("Error al cargar la Acción");
		}
		
		[Bindable (event="actualizarAccionEvent")]
		public function get return_ActualizarAccion():Accion{
			return this.Accion_actualizada;
		}
		
		public function result_ActualizarAccion(resultado:Boolean,_accion:Accion):void{
			this.Accion_actualizada = new Accion();
			if(resultado == true){
				this.Accion_actualizada = _accion;
				Alert.show("Se actualizó la acción con folio: " + _accion.incidenteFolio,"Operación exitosa");
				this.dispatchEvent(new Event("actualizarAccionEvent"));
			}
		}
		
		public function fault_ActualizarAccion(objeto:Object):void{
		//	this.dispatchEvent(new EventoEsperar(EventoEsperar.TERMINA_ESPERA));
			Alert.show("Error al actualizar la acción");
		}
		
		
		[Bindable (event="ejecutarAccionEvent")]
		public function get return_EjecutarAccion():Accion{
			return this.Accion_ejecutada;
		}		
		
		public function result_EjecutarAccion(resultado:Boolean,_accion:Accion):void{
			this.Accion_ejecutada = new Accion();
			if(resultado == true){
				this.Accion_ejecutada = _accion;
				this.dispatchEvent(new Event("ejecutarAccionEvent"));
			}
		}
		
		public function fault_EjecutarAccion(objeto:Object):void{
			//this.dispatchEvent(new EventoEsperar(EventoEsperar.TERMINA_ESPERA));
			Alert.show("Error al Ejecutar Acción");
		}
		
		private var eliminados:Boolean = false;
		
		[Bindable (event="result_EliminarReferencias")]
		public function get return_EliminarReferencias():Boolean{
			return this.eliminados;	
		}
		
		public function result_EliminarReferencias(_eliminado:Boolean):void{
			if(_eliminado == true){
				this.eliminados = true;
				this.dispatchEvent(new Event("result_EliminarReferencias"));
			}
		}
		
		private var _listaAcciones:ArrayCollection;
		[Bindable (event="result_Accion")]
		public function get Result_AccionRef():ArrayCollection{
			return this._listaAcciones;	
		}
		
		public function setResult_AccionRef(_acciones:ArrayCollection):void{
			this._listaAcciones = new ArrayCollection();
			for(var m:int = 0; m < _acciones.length;m++){
				var acc:Accion = new Accion();
				acc = _acciones[m] as Accion;
				acc.numFila = m + 1;
				this._listaAcciones.addItem(acc);
			}		
			this.dispatchEvent(new Event("result_Accion"));
		}
		
		public function fault_EliminarReferencias(objeto:Object):void{
			Alert.show("Error al eliminar Referencias");
		}
		
	}
}