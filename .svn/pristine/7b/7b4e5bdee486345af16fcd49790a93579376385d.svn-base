package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Reformulacion;

	public class EventoReformulaIncidente extends Event
	{
		
		public var usuario:String;
		public var actualizareformulacion:Reformulacion;
		public var registraReformulacion:Reformulacion;
		
		public static const REFORMULA_INCIDENTE:String = "reformulaIncidenteEventoReformulaIncidente";
		public static const ACTUALIZAR_REFORMULACION:String = "actualizarReformulacionEventoReformulacionIncidente";
		public static const REGISTRAR_REFORMULACION:String = "registraReformulacionEventoReforualcionIncidente";
		public static const REGISTRAR_REFORMULACION_PARA_INCIDENTE:String = "registraReformulacionParaIncidenteEventoReformualcionIncidente"
		
		public function EventoReformulaIncidente(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoReformulaIncidente( type, bubbles, cancelable );
		}
	}
}