package eventos
{
	import flash.events.Event;
	
	import modelo.objetos.PendientesMensajero;
	import modelo.objetos.RealizarPendientesObject;
	import modelo.objetos.itemPendientes;
	
	import mx.collections.ArrayCollection;
	
	import vistas.renders.renderEnCierre.Objects.PendientesEnCierreObject;

	public class EventoMensajeroEnCierre extends Event
	{
		public function EventoMensajeroEnCierre(type:String,bubbles:Boolean=true,cancelable:Boolean=true)
		{
			super(type,bubbles,cancelable);
		}
		
		public static const CONSULTAR_PENDIENTES_EN_CIERRE:String = "consultarPendientesMensajeroEnCierreEvent";
		public static const IR_A_VISTA_PENDIENTES_EN_CIERRE:String = "iraVistaPendientesEnCierreEvent";
		public static const IR_A_VISTA_PENDIENTE_NO_VERIFICADO:String = "iraVistaPendienteNoVerificadoEvent";
		public static const IR_A_VISTA_PENDIENTE_JUSTIFICACION:String = "iraVistaPendienteJustificacionEvent";
		public static const IR_A_VISTA_PENDIENTE_EN_CIERRE_POR_TIPO:String = "iraVistaPendienteEnCierrePorTipoEventoMensajeroEnCierre";
		
		
		//Nuevas
		public static const IR_A_LA_VISTA_DE_PENDIENTES_EN_CIERRE_AGRUPADOS_POR_EVENTO:String  = "irALaVistaDePendientesEnCierrenAgrupadosPorEventoEventoMensajeroEnCierre";
		public static const IR_A_VISTA_DE_REALIZACION_DE_PENDIENTES:String = "iraVistaDeRealizacionDePendientesEventoMensajeroEnCierre";
		public static const SOLICITAR_CONTACTOS_PARA_REALIZACION_DE_PENDIENTES:String = "solicitarContactosParaRealizacionDePendientesEventoMensajeroEnCierre";
		public static const IR_A_VISTA_EDICION_DE_CONTACTOS:String = "irAVistaEdicionDeContactosEventoMensajeroEnCierre";
		public static const ACTUALIZAR_CONTACTOS_PERSONAL_ALMACEN:String = "ActualizarLosContactosDePersonalAlmacenEventoMensajeroEnCierre";
		/*public static const SOLICITAR_CONTACTOS_DESDE_VISTA_EDICION:String = "solicitarAServicioTodosLosContactosDesdeLaVistaEdicionEventoMensajeroEnCierre";*/
		
		
		
		public static const CERRAR_TODOS_LOS_PENDIENTES:String= "cerrarTodosLosPendientesEvent";
		public static const CERRAR_PENDIENTE:String = "cerrarPendienteEvent";
		public static const CERRAR_PENDIENTE_NO_REALIZADO:String = "cerrarPendienteNoRealizadoEvent";
		
		public var _usuario:String;
/*		public var personaQueRecibio:String;*/
		public var _pendientesSeleccionados:itemPendientes = new itemPendientes();
		public var _pendienteNoVerificado:PendientesMensajero = new PendientesMensajero();
		public var _pendientePorJustificar:PendientesMensajero = new PendientesMensajero();
		public var _pendientesPorCerrar:ArrayCollection = new ArrayCollection();
		
		/*public var pendientesARealizar:RealizarPendientesObject;*/
		
		public var contactos:ArrayCollection;
		public var idEmpresa:Number;
		
		public var indexPendientesEnCierre:int = 0;
		public var pendienteSeleccionadoKey:String;
		
		public var pendientesPorTipo:Array;
		
		private var _pendientePorCerrar:PendientesMensajero = new PendientesMensajero();
		
		public function get pendientePorCerrar():PendientesMensajero
		{
			return _pendientePorCerrar;
		}

		public function set pendientePorCerrar(value:PendientesMensajero):void
		{
			_pendientePorCerrar = value;
			this._pendientesPorCerrar.addItem(value);
		}

		public override function clone():Event{
			return new EventoMensajeroEnCierre(type,bubbles,cancelable);
		}
	}
}