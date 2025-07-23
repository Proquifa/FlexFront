package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.comun
{
	import flash.events.Event;
	
	public class EventoTasaRealizacionGeneral extends Event
	{
		public var tipoTR:String;
		public static const CONSULTA_TASA_INCIDENTES:String = "consultaTasaIncidentesEventoTasaRealizacionGeneral";
		public static const CONSULTA_PROMEDIO:String = "consultaPromedioEventoTasaRealizacionGeneral";
		public static const CARGA_TASA_COTIZACIONES:String = "cargaTasaCotizacionesEventoTasaRealizacionGeneral";
		
		public function EventoTasaRealizacionGeneral(type:String, bubbles:Boolean=true, cancelable:Boolean=false,tipoTR:String = null)
		{
			super(type, bubbles, cancelable);
			this.tipoTR = tipoTR;
		}
		public override  function clone():Event{
			return new  EventoTasaRealizacionGeneral(type,bubbles,cancelable,tipoTR);
		} 
	}
}