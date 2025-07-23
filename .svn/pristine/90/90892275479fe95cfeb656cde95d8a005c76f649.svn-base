package mx.com.proquifa.proquifanet.rsl.vista.modelo.evento
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.evento.EventoEventoProquifa;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.RegistroExpoFarma;
	import mx.controls.Alert;
	
	public class ModeloEventoProquifa extends EventDispatcher
	{
		public function ModeloEventoProquifa(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private var evento:Participantes = new Participantes;
		private var participantes:ArrayCollection;
		private var registrar:Boolean;
		private var guardado:Boolean;
		
		public function setObtenerParticipantes($array:ArrayCollection):void{
			participantes = $array;
			dispatchEvent(new Event("obtenerParticipantesModeloProquifa"));
		}
		
		[Bindable(event="obtenerParticipantesModeloProquifa")]
		public function get listaParticipantes():ArrayCollection{
			return participantes;
		}
		
		public function setPulsoRegistrar($registar:EventoEventoProquifa ):void{
			registrar = $registar.registrar;
			dispatchEvent(new Event("enviarRegistroModeloProquifa"));
		}
		
		[Bindable(event="enviarRegistroModeloProquifa")]
		public function get enviarRespuesta():Boolean{
			return registrar;
		}
		
		public function setGuardo($registar:Boolean ):void{
			guardado = $registar;
			dispatchEvent(new Event("guardoRegistroModeloProquifa"));
		}
		
		[Bindable(event="guardoRegistroModeloProquifa")]
		public function get guardoRegistroEvento():Boolean{
			return guardado;
		}
		
		private var eliminar:Boolean
		public function setPulsoEliminar($eliminar:EventoEventoProquifa ):void{
			eliminar = $eliminar.registrar;
			dispatchEvent(new Event("enviarEliminarModeloProquifa"));
		}
		
		[Bindable(event="enviarEliminarModeloProquifa")]
		public function get enviarRespuestaEliminar():Boolean{
			return eliminar;
		}
		
		private var respuestaEliminar:Boolean;
		public function setElimino($respuesta:Boolean ):void{
			respuestaEliminar = $respuesta;
			dispatchEvent(new Event("eliminoRegistroModeloProquifa"));
		}
		
		[Bindable(event="eliminoRegistroModeloProquifa")]
		public function get eliminoRegistroEvento():Boolean{
			return respuestaEliminar;
		}
		
		private var respuestaGuardar:Boolean;
		public function setGuardoGrid($respuesta:Boolean ):void{
			respuestaGuardar = $respuesta;
			dispatchEvent(new Event("guardarGridRegistroModeloProquifa"));
		}
		
		[Bindable(event="guardarGridRegistroModeloProquifa")]
		public function get guardoGridRegistroEvento():Boolean{
			return respuestaGuardar;
		}

		
		private var ganador:Participantes;
		public function setSorteoGanador($respuesta:Participantes ):void{
			ganador = $respuesta;
			dispatchEvent(new Event("sorteoEventoProquifa"));
		}
		
		[Bindable(event="sorteoEventoProquifa")]
		public function get sorteoGanador():Participantes{
			return ganador;
		}
		
		private var listaEventos:ArrayCollection;
		public function setObtenrListaEventos($eventos:ArrayCollection):void{
			listaEventos = $eventos;
			dispatchEvent(new Event("listaEventosModeloProquifa"));
		}
		
		[Bindable(event="listaEventosModeloProquifa")]
		public function get obtenrListaEventos():ArrayCollection{
			return listaEventos;
		}
		
		
		/*
		 * Expo Eventos
		*/
		
		private var _listaDirecciones:ArrayCollection;
		public function setDireccionesCliente( $datos:ArrayCollection ):void{
			if( $datos == null ){ return; }
			_listaDirecciones = $datos;
			dispatchEvent( new Event("listaDireccionesoModeloEventosProquifa") );
		}
		[Bindable(Event="listaDireccionesoModeloEventosProquifa")]
		public function get DireccionesCliente():ArrayCollection{
			return this._listaDirecciones;
		}
		
		
		private var _confirmaContactoGuardado:int;
		public function setConfirmaContactoNuevo( $dato:Number, $evt:EventoEventoProquifa ):void{
			_confirmaContactoGuardado = $dato;
			if( $evt != null && $evt.ubicacion == 'CRM' ){
				dispatchEvent( new Event("confirmarNuevoConctactoCRMoModeloEventosProquifa") );
			}else {
				dispatchEvent( new Event("confirmarNuevoConctactoModeloEventosProquifa") );
			}
		}
		[Bindable(Event="confirmarNuevoConctactoCRMoModeloEventosProquifa")]
		public function get ConfirmaContactoNuevoCRM():Number{
			return this._confirmaContactoGuardado;
		}
		
		[Bindable(Event="confirmarNuevoConctactoModeloEventosProquifa")]
		public function get ConfirmaContactoNuevo():Number{
			return this._confirmaContactoGuardado;
		}
		
		public function setConfirmaContactoNuevoExpoMed( $dato:Number, $evt:EventoEventoProquifa ):void{
			_confirmaContactoGuardado = $dato;
			if( $evt != null && $evt.ubicacion == 'CRM' ){
				dispatchEvent( new Event("confirmarNuevoConctactoCRModeloEventosProquifa") );
			}else {
				dispatchEvent( new Event("confirmarNuevoConctactoModeloEventosProquifa") );
			}
		}
		
		[Bindable(Event="confirmarNuevoConctactoCRModeloEventosProquifa")]
		public function get ConfirmaContactoNuevoCRMExpoMed():Number{
			return this._confirmaContactoGuardado;
		}
		
		[Bindable(Event="confirmarNuevoConctactoModeloEventosProquifa")]
		public function get ConfirmaContactoNuevoExpoMed():Number{
			return this._confirmaContactoGuardado;
		}
		
		
		/*private var _confirmaContactoGuardado:int;
		public function setConfirmaContactoNuevo( $dato:Number, $evt:EventoEventoProquifa ):void{
			_confirmaContactoGuardado = $dato;
			if( $evt != null && $evt.ubicacion == 'CRM' ){
				dispatchEvent( new Event("confirmarNuevoConctactoCRMoModeloEventosProquifa") );
			}else {
				dispatchEvent( new Event("confirmarNuevoConctactoModeloEventosProquifa") );
			}
		}*/
		/*[Bindable(Event="confirmarNuevoConctactoCRMoModeloEventosProquifa")]
		public function get ConfirmaContactoNuevoCRM():Number{
			return this._confirmaContactoGuardado;
		}
		
		[Bindable(Event="confirmarNuevoConctactoModeloEventosProquifa")]
		public function get ConfirmaContactoNuevo():Number{
			return this._confirmaContactoGuardado;
		}*/
		
		private var _listaContactos:ArrayCollection;
		public function setObtenerContactosParaExpoMed($listaContactos:ArrayCollection):void
		{
			_listaContactos = $listaContactos;
			dispatchEvent(new Event("seObtienenTodosLosContactoModeloEventosProquifa"));
		}
		
		[Bindable(Event="seObtienenTodosLosContactoModeloEventosProquifa")]
		public function get regresarTodosLosContactos():ArrayCollection
		{
			return _listaContactos;
		}
		
		private var _listaContacto:ArrayCollection;
		public function setObtenContactos( $lista:ArrayCollection ):void{
			_listaContacto = new ArrayCollection();
			_listaContacto = $lista;
			dispatchEvent( new Event("obtenConctactosModeloEventosProquifa") );
		}
		[Bindable(Event="obtenConctactosModeloEventosProquifa")]
		public function get ObtenContactos():ArrayCollection{
			return this._listaContacto;
		}
		
		public function limpiaIDContacto():void{
			_confirmaContactoGuardado = 0;
		}
		
		public function limpiaID():void{
			_idCliente = 0;
		}
		
		//public var _expofarma:GraficaExpoFarma;
		private var _lista:ArrayCollection;
		public function setInfoGraficoExpoMed( $dato:ArrayCollection ):void{
			_lista = $dato;
			dispatchEvent( new Event("obtenerInfoGraficosExpoFarmaModeloEventosProquifa") );
		}
		[Bindable(Event="obtenerInfoGraficosExpoFarmaModeloEventosProquifa")]
		public function get infoGraficoExpoMed():ArrayCollection{
			return this._lista;
		}
		
		public function error(error:Object):void
		{
			Alert.show(error.toString());
		}
		
		private var _cuestionarioExpoFarma:Boolean;
		public function setGuardaCuestionarioExpoMed( $dato:Boolean ):void{
			_cuestionarioExpoFarma = $dato;
			dispatchEvent( new Event("cuestionarioExpoFarmaModeloEventosProquifa") );
		}
		[Bindable(Event="cuestionarioExpoFarmaModeloEventosProquifa")]
		public function get GuardaCuestionarioExpoMed():Boolean{
			return this._cuestionarioExpoFarma;
		}
		
		private var _empleado:Empleado;
		public function setObtenEmpleado( $dato:Empleado ):void{
			_empleado = $dato;
			dispatchEvent( new Event("eventGuardaClienteModeloEventosProquifa") );
		}
		[Bindable(Event="eventGuardaClienteModeloEventosProquifa")]
		public function get ObtenEmpleado():Empleado{
			return this._empleado;
		}
		
		private var _idCliente:Number;
		public function setGuardaCliente( $dato:Number ):void{
			_idCliente = $dato;
			dispatchEvent( new Event("eventGuardaClienteModeloEventosProquifa") );
		}
		[Bindable(Event="eventGuardaClienteModeloEventosProquifa")]
		public function get GuardaCliente():Number{
			return this._idCliente;
		}
		
		//public var _expofarma:GraficaExpoFarma;
		//private var _lista:ArrayCollection;
		public function setInfoGraficoExpoFarma( $dato:ArrayCollection ):void{
			_lista = $dato;
			dispatchEvent( new Event("obtenerInfoGraficosExpoFarmaModeloEventosProquifa") );
		}
		[Bindable(Event="obtenerInfoGraficosExpoFarmaModeloEventosProquifa")]
		public function get infoGraficoExpoFarma():ArrayCollection{
			return this._lista;
		}
		
		private var _registroExpo:RegistroExpoFarma;
		public function setRegistroExpo( $dato:RegistroExpoFarma ):void{
			_registroExpo = $dato;
			dispatchEvent( new Event("registroExpoFarmaModeloEventosProquifa") );
		}
		[Bindable(Event="registroExpoFarmaModeloEventosProquifa")]
		public function get RegistroExpo():RegistroExpoFarma{
			return this._registroExpo;
		}
		
		private var _nombreRequisicion:String;
		public function setConfirmaRequisicion( $dato:String ):void{
			if( $dato == null ){ return; }
			_nombreRequisicion = $dato;
			dispatchEvent( new Event("confirmaRequisiciconModeloEventosProquifa") );
		}
		[Bindable(Event="confirmaRequisiciconModeloEventosProquifa")]
		public function get ConfirmaRequisicion():String{
			return this._nombreRequisicion;
		}
		
		
		/**
		 ***************************************************** RegistroExpoFarma *************************************************************
		 */
		public function setGuardaCuestionario( $dato:Boolean ):void{
			_cuestionarioExpoFarma = $dato;
			dispatchEvent( new Event("cuestionarioExpoFarmaModeloEventosProquifaFarma") );
		}
		[Bindable(Event="cuestionarioExpoFarmaModeloEventosProquifaFarma")]
		public function get GuardaCuestionario():Boolean{
			return this._cuestionarioExpoFarma;
		}
		
		public function setLimpiarTexto():void{
			dispatchEvent( new Event("limpiarTextoExpoModeloEventosProquifaFarma") );
		}
		
		[Bindable(Event="limpiarTextoExpoModeloEventosProquifaFarma")]
		public function get LimpiarTexto():Boolean{
			return true;
		}
		//EventosProquifa
	}
}