package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	public class ModeloPonderacion extends EventDispatcher
	{
		public function ModeloPonderacion(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		private var IndicentesPonderacion:ArrayCollection = new ArrayCollection();
		private var IncidenteSeleccionado:Incidente = new Incidente();
		private var AccionesIncidente:ArrayCollection = new ArrayCollection();
		private var PonderacionImplicados:Ponderacion = new Ponderacion();
		private var ObjectoAccionesIncidente:Object = new Object();
		private var CatalogoColaboradores:ArrayCollection = new ArrayCollection();
		private var PonderacionSeleccionda:Ponderacion = new Ponderacion();
		private var PonderacionActualizada:Ponderacion = new Ponderacion();
		private var banderafinalizar:Boolean = false;
		private var ObjectoGuardarPonderacion:Object = new Object();
		
		
		private var ColaboradoresPonderacion:ArrayCollection = new ArrayCollection();
		
		public function result_obtenerPonderacion(datos:ArrayCollection):void{
			//trace(datos);
			this.IndicentesPonderacion = new ArrayCollection();
			if(datos != null){
				for(var m:int = 0; m<datos.length; m++){
					datos[m].numFila = m + 1;
				}
				this.IndicentesPonderacion = FuncionesEstaticas.getInstance().formatoObjetos( datos, "dd/MMM/yyyy" );
				this.dispatchEvent(new Event("recibirPonderacion"));
			}
		}
		
		[Bindable (event="recibirPonderacion")]
		public function get return_obtenerPonderacion():ArrayCollection{
			return this.IndicentesPonderacion;
		}
		
		public function fault_obtenerPonderacion(objeto:Object):void{
			Alert.show("Error al cargar los Incidentes por Ponderar");
			trace(objeto);
		}
		
		
		
		public function result_IncidenteSeleccionado(_incidente:Incidente):void{
			this.IncidenteSeleccionado = _incidente;
			this.dispatchEvent(new Event("result_incidenteSeleccionadoEvent"));
		}
		
		[Bindable (event="result_incidenteSeleccionadoEvent")]
		public function get return_IncidenteSeleccionado():Incidente{
			return this.IncidenteSeleccionado;
		}
		
		
		
		
		
		//////////////////////////////////////////////////Devuelve las acciones del incidente seleccionado		
		/*
		public function result_PasarAccionesPonderacion():void{
		this.dispatchEvent(new Event("result_accionesIncidente"));
		//this.AccionesIncidente = new ArrayCollection();
		}
		
		[Bindable (event="result_accionesIncidente")]
		public function get return_AccionesIncidente():Incidente{
		return this.IncidenteSeleccionado;
		}
		*/		
		
		
		//////////////////////////////////////////////////////Recibir la ponderacion consultada con el id del incidente
		
		public function result_ponderacionIncidente(_ponderacion:Ponderacion,idpendiente:int):void{
			this.PonderacionSeleccionda = new Ponderacion();
			if(_ponderacion.idPonderacion != 0){
				for(var m:int =0; m<_ponderacion.acciones.length;m++){
					_ponderacion.acciones[m].numFila = m + 1;
				}
				for(var n:int = 0; n<_ponderacion.implicados.length; n++){
					_ponderacion.implicados[n].numFila = n + 1;
				}
				
				/*if(_ponderacion.implicados.length == 0){
				_ponderacion.completa = false;
				}
				for(var q:int = 0; q< _ponderacion.implicados.length;q++){
				if(_ponderacion.implicados[q].razones = ""){
				_ponderacion.completa = false;
				}
				}*/
				_ponderacion.completa = false;
				this.PonderacionSeleccionda = _ponderacion;
				this.PonderacionSeleccionda.pendiente = idpendiente;
				this.dispatchEvent(new Event("result_ponderacionincidenteEvent"));
			}
			else{
				_ponderacion.acciones = this.IncidenteSeleccionado.acciones;
				_ponderacion.empleado = this.IncidenteSeleccionado.idEmpleado;
				_ponderacion.incidente = this.IncidenteSeleccionado.idIncidente;
				_ponderacion.completa = false;
				_ponderacion.pendiente = this.IncidenteSeleccionado.idPendiente;
				_ponderacion.nombreEmpleado = this.IncidenteSeleccionado.nombreEmpleado;
				for(var p:int =0; p<_ponderacion.acciones.length;p++){
					_ponderacion.acciones[p].numFila = p + 1;
				}
				this.PonderacionSeleccionda = _ponderacion;
				this.dispatchEvent(new Event("result_ponderacionincidenteEvent"));
			}
		}
		
		[Bindable (event = "result_ponderacionincidenteEvent")]
		public function get return_ponderacionIncidente():Ponderacion{
			return this.PonderacionSeleccionda;
		}
		
		public function fault_ponderacionIncidente(objeto:Object):void{
			Alert.show("Error al cargar acciones e implicados");
			trace(objeto.toString());
		}
		
		
		
		
		
		
		public function result_obtenerImplicados(ponderacion:Ponderacion):void{
			this.PonderacionImplicados = new Ponderacion();
			if(ponderacion.incidente != 0 ){
				this.PonderacionImplicados = ponderacion;
				this.dispatchEvent(new Event("result_traerimplicados"));
			}
		}
		
		[Bindable (event="result_traerimplicados")]
		public function get return_implicados():Ponderacion{
			return this.PonderacionImplicados;
		}
		
		
		/////////////////////////////
		
		public function result_obtenerColaboradores(_colaboradores:ArrayCollection):void{
			this.CatalogoColaboradores = new ArrayCollection();
			for(var m:int = 0; m<_colaboradores.length;m++){
				var tempobj:PonderacionImplicado = new PonderacionImplicado;
				tempobj.setPonderacionImplicado(_colaboradores[m]);
				this.CatalogoColaboradores.addItem(tempobj);
			}
			
		}
		
		public function fault_obtenerColaboradores(objeto:Object):void{
			Alert.show("Error al cargar el catalogo de Colaboradores");
			trace(objeto.toString());
		}
		
		////////////////////////////////////		
		
		public function result_todos_colaboradores(colaboradores:ArrayCollection):void{
			this.ColaboradoresPonderacion = new ArrayCollection();
			if(colaboradores!=null){
				var temp:ArrayCollection = new ArrayCollection();
				temp = ObjectUtil.copy(this.CatalogoColaboradores) as ArrayCollection;
				for(var m:int = 0; m < colaboradores.length;m++){
					for(var p:int = 0; p<temp.length; p++){
						if(temp[p].empleado == colaboradores[m].empleado){
							temp[p].habilitado = false;
							temp[p].seleccionado = true;
						}
					}
				}
				this.ColaboradoresPonderacion = temp;
			}
			
			this.dispatchEvent(new Event("result_regresarcolaboradores"));
		}
		
		[Bindable (event="result_regresarcolaboradores")]
		public function get return_todos_colaboradores():ArrayCollection{
			return this.ColaboradoresPonderacion;
		}
		
		
		//////////////////////////////////////////////////////////////Actualizar Ponderacion
		
		public function result_actualizarponderacion(resultado:int,_ponderacion:Ponderacion,accion:String):void{
			this.PonderacionActualizada = new Ponderacion();
			this.ObjectoGuardarPonderacion = new Object();
			this.banderafinalizar = false;
			
			if(_ponderacion.idPonderacion == 0){
				_ponderacion.idPonderacion = resultado;
			}
			
			if(resultado != 0){
				
				
				
				
				var temp:Boolean = true;
				if( _ponderacion.implicados != null ){
					if(_ponderacion.implicados.length > 0){
						for(var m:int = 0; m< _ponderacion.implicados.length;m++){
							if(_ponderacion.implicados[m].razones == "" || _ponderacion.implicados[m].horasHombre == 0){
								temp = false;
							}
						}
					}
				}
					
					/*if(_ponderacion.implicados.length == 0){
						temp = false;
					}*/
				
				this.ObjectoGuardarPonderacion = new Object();
				this.ObjectoGuardarPonderacion["ponderacion"] = _ponderacion;
				this.ObjectoGuardarPonderacion["bandera"] = accion;
				this.ObjectoGuardarPonderacion["permitir"] = temp;
				//this.ObjectoGuardarPonderacion["incidente"] = _incidente;
				this.dispatchEvent(new Event("result_actualizarPonderacion"));
			}
			
			/*if(resultado == true){
			this.PonderacionActualizada = _ponderacion;
			var temp:Boolean = true;
			for(var m:int = 0; m< _ponderacion.implicados.length;m++){
			if((_ponderacion.implicados[m].horasHombre == 0) || (_ponderacion.implicados[m].razones = "") ){
			temp = false;
			}
			}
			
			if(temp == true){
			this.banderafinalizar = true;
			}*/
			
		}
		
		[Bindable (event = "result_actualizarPonderacion")]
		public function get return_actualizarponderacion():Object{
			return this.ObjectoGuardarPonderacion;
		}
		
		public function fault_actualizarponderacion(objeto:Object):void{
			Alert.show("Error al actualizar en Ponderación");
			trace(objeto.toString());
		}
		/////////////////////////////////////////////////////////////////Agregar Implicados
		
		/*public function agregar_implicados(_implicados:ArrayCollection):void{
		
		}*/
		
	}
}