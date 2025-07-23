package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Accion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.controls.Alert;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloVerificacion extends EventDispatcher
	{
		private var Cat_Acciones:ArrayCollection = new ArrayCollection();
		private var Cat_AccionesLectura:ArrayCollection = new ArrayCollection();
		private var Accion_seleccionada:Accion = new Accion();
		private var Accion_actualizada:Accion = new Accion();
		private var Accion_ejecutada:Accion = new Accion();
		private var _listaVerificacionRef:ArrayCollection = new ArrayCollection();
		private var Datos_AccionSeleccionada:Object;
		
		public function ModeloVerificacion(target:IEventDispatcher = null)
		{
			super(target);			
		}
		
		[Bindable(event="resultTraerAcciones")]
		public function get return_obtenerAcciones():ArrayCollection{
			return this.Cat_Acciones;
		}
		
		
		public function result_obtenerVerificaciones(_acciones:ArrayCollection):void{
			/*for(var m:int = 0; m < _acciones.length;m++){
				var acc:Accion = new Accion();
				acc = _acciones[m] as Accion;
				acc.numFila = m +1;
				this.Cat_Acciones.addItem(acc);
			}*/
			this.Cat_Acciones = new ArrayCollection();
			for(var m:int = 0; m < _acciones.length;m++){
				(_acciones.getItemAt(m) as Accion).numFila = m+1 ;
			}
			this.Cat_Acciones = FuncionesEstaticas.getInstance().formatoObjetos( _acciones, "dd/MMM/yyyy" );			
			this.dispatchEvent(new Event("resultTraerAcciones"));
		}
		
		public function fault_obtenerVerificaciones(objeto:Object):void{
			Alert.show("Error al cargar Verificaciones");
		}
		
		
		[Bindable(event="traerAccion")]
		public function get return_traerAccion():Object{
			return this.Datos_AccionSeleccionada;
		}
		
		public function result_obtenerVerificacionXid(_accion:Accion,_usuario:String):void{
			this.Datos_AccionSeleccionada = {};
			this.Accion_seleccionada = _accion as Accion;
			this.Datos_AccionSeleccionada["accion"] = _accion as Accion;
			this.Datos_AccionSeleccionada["usuario"] = _usuario;
			this.dispatchEvent(new Event("traerAccion"));
		}
		
		public function fault_obtenerVerificacionXid(objeto:Object):void{
			Alert.show("Error al cargar la Verificacion");
		}
		
		
		[Bindable (event="actualizarAccionEvent")]
		public function get return_ActualizarAccion():Accion{
			return this.Accion_actualizada
		}
		
		
		public function result_ActualizarVerificacion(resultado:Boolean,_accion:Accion):void{
			this.Accion_actualizada = new Accion();
			if(resultado == true){
				this.Accion_actualizada = _accion;
				this.dispatchEvent(new Event("actualizarAccionEvent"));
			}
		}
		
		public function fault_ActualizarVerificacion(object:Object):void{
			Alert.show("Error al actualizar la Verificación");
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
		
		public function fault_EjecutarAccion(errorString:Object,objeto:Object):void{
			Alert.show(errorString.toString(),catalogoAlertas.ERR_servicio);
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
		
		public function fault_EliminarReferencias(objeto:Object):void{
			Alert.show("Error al eliminar Referencias");
		}
		
		
		[Bindable(event="resultTraerAccionesLectura")]
		public function get return_obtenerAccionesLectura():ArrayCollection{
			return this.Cat_AccionesLectura;
		}
		public function result_obtenerVerificacionesLectura(_acciones:ArrayCollection):void{
			if(_acciones==null){
				_acciones = new ArrayCollection();
			}
			this.Cat_AccionesLectura = new ArrayCollection();
			for(var m:int = 0; m < _acciones.length;m++){
				this.Cat_AccionesLectura.addItem(_acciones[m] as Accion);
			}
			this.dispatchEvent(new Event("resultTraerAccionesLectura"));
		}
		
		
		[Bindable(event="resultTraerListaVerificacionReferencias")]
		public function get listaVerificacionRef():ArrayCollection{
			return this._listaVerificacionRef;
		}
		
		public function setListaVerificacionRef(_acciones:ArrayCollection):void{
			this._listaVerificacionRef = new ArrayCollection();
			for(var m:int = 0; m < _acciones.length;m++){
				var acc:Accion = new Accion();
				acc = _acciones[m] as Accion;
				acc.numFila = m +1;
				this._listaVerificacionRef.addItem(acc);
			}
			this.dispatchEvent(new Event("resultTraerListaVerificacionReferencias"));
		}
	}
}