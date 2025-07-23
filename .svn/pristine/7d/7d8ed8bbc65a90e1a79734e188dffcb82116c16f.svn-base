package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.ConsultaIncidente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	public class EventoIncidenteConsulta extends Event
	{
		public var origen:String;
		public var folio:String;
		public var parametros:ConsultaIncidente;
		public var incidente:Incidente;
		public var idIncidente:Number;
		public static const CAMBIA_ESTADO:String = "cambiaEstadoEventoIncidenteConsulta";
		public static const REALIZA_BUSQUEDA_CONSULTA:String = "realizaBusquedaConsultaEventoIncidenteConsulta";
		public static const CAMBIA_A_DETALLE:String	= "cambiaADetalleEventoIncidenteConsulta";
		public static const REGRESA_AL_GRID:String = "regresaAlGridEventoIncidenteConsulta";
		public static const CONSULTA_INCIDENTE_POR_ID:String = "consultaIncidentePorIDEventoIncidenteConsulta";
		public static const CIERRA_REFERENCIAS:String = "cierraReferenciasEventoIncidenteConsulta";
		public static const CARGA_GESTION:String = "cargaGestionEventoIncidenteConsulta";
		public static const CIERRA_POP_UP_DETALLE:String = "cierraPopUpDetalleEventoIncidenteConsulta";
		public static const CONSULTA_ACCIONES:String = "consultaAccionesEventoIncidenteConsulta";
		public static const CONSULTA_PONDERACION:String = "consultaPonderacionEventoIncidenteConsulta";
		public static const CONSULTA_HISTORIAL_INCIDENTE:String = "consultaHistorialIncidenteEventoIncidenteConsulta";
		public function EventoIncidenteConsulta(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoIncidenteConsulta(type,bubbles,cancelable);
		}
	}
}