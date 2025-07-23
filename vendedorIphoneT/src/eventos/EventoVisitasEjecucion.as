package eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class EventoVisitasEjecucion extends Event
	{
		public var vista:String;
		public var usuarioId:int;
		public var nombreCliente:String
		public var visitaCliente:VisitaCliente;
		
		/* SERVICIOS */
		public static const OBTENER_VISITAS_CHECK_IN:String = "obtenerVisitasConFechaCheckInEventoVisitasEjecucion";
		public static const ACTUALIZAR_REALIZACION_VISITA:String = "actualizarRealizacionVisitasEventoVisitasEjecucion";
		
		/* VISTA */
		public static const IR_VISITAS_REALIZACION:String = "obtenerVisitasParaRealizacionEventoVisitasEjecucion";
		public static const CANCELAR_ACTUALIZACION_VISITA:String = "cancelarRegistroVisitaEventoVisitasEjecucion";
		public static const REALIZAR_ACTUALIZACION_VISITA:String = "realizadaRegistroVisitaEventoVisitasEjecucion";
		
		public function EventoVisitasEjecucion(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoVisitasEjecucion( type, bubbles, cancelable );
		}
	}
}