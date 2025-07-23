package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Ponderacion;
	
	public class EventoIncidenteAsociado extends Event
	{
		
		public static const EVENTO_ASOCIADO_PONDERACION:String = "eventoAsociadoPonderacion";
		public static const EVENTO_ASOCIADO_RECHAZADO:String = "eventoAsociadoRechazado";
		public static const EVENTO_ASOCIADO_CANCELAR:String = "eventoAsociadoCancelar";
		public static const EVENTO_ASOCIADO_REGISTRAR:String = "eventoAsociadoRegistrar";
		public static const EVENTO_ASOCIADO_TERMINO:String = "eventoAsociadoTermino"
		
		public var _incidente:Incidente = new Incidente();
		public var _ponderacion:Ponderacion = new Ponderacion();
		public var _regresarA:String = "";
		public var incidente:Incidente = new Incidente();
		
		public function EventoIncidenteAsociado(type:String,bubbles:Boolean=true, cancelable:Boolean = false){
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoIncidenteAsociado(type,bubbles,cancelable);
		}
		
	}
}