package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	public class EventoIncidenteDecision extends Event
	{
		public var incidente:Incidente;
		public var gestion:Gestion;
		public var nueva:Gestion;
		public var empleado:Empleado;
		public static const AVANZA_A_ACCION:String = "avanzaAAccionEvendtoIncidenteDecision";
		public static const GUARDA_DECISION:String = "guardaDecisionEvendtoIncidenteDecision";
		public static const SELECCIONA_UBICACION:String = "seleccionaUbicacionEventoIncidenteDecision";
		
		public function EventoIncidenteDecision(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoIncidenteDecision( type, bubbles, cancelable );
		}
		
	}
}