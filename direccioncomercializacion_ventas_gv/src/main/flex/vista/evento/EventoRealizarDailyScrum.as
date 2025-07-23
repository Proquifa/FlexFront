package vista.evento
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.DailyScrum;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class EventoRealizarDailyScrum extends Event
	{
		public var usuario:int;
		public var tipoSelect:String;
		public var visitaCliente:VisitaCliente;
		public var daily:DailyScrum;
		public var valor:String;
		
		/*SERVICIO*/
		public static const INICIAR_SCRUM_Y_OBTENER_CODIGOS:String = "obtenerCodigosEIniciarScrumEventoEVRealizarDailyScrum";
		public static const OBTENER_TODAS_VISITAS:String = "obtenerVisitasSprintEventoEVRealizarDailyScrum";
		public static const REGISTRAR_DAILYSCRUM:String = "registrarDailyScrumEventoEVRealizarDailyScrum";
		
		/*VISTA*/
		public static const CLIC_BOTONERA_FILTRO:String = "clicBotoneraFiltroEventoEVRealizarDailyScrum";
		public static const MOSTRAR_DETALLES_VISITA:String = "clicMostrarDetallesEventoEVRealizarDailyScrum";
		public static const CAMBIAR_VISTA_POPUP_DETALLE_REPORTE:String = "clicCambiaVistaPop";
		public static const CAMBIO_VALIDAR_CODIGO:String = "validarCodigo";
		
		public function EventoRealizarDailyScrum(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoRealizarDailyScrum( type, bubbles, cancelable );
		}
	}
}