package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;

	public class EventoReporteIncidentes extends Event
	{
		
		public static const TRAER_INCIDENTES:String = "traerIncidentesEvent";
		public static const TRAER_INCIDENTES_POR_USUARIO:String = "traerIncidentesPorUsuarioEvent";
		
		public var _filtro:String = "";
		public var _anio:int = 0;
		public var _periodo:String = "";
		public var _tipoPeriodo:int = 0;
		public var _mes:int = 0;
		
		
		public var _idEmpleado:int = 0;
		
		public function EventoReporteIncidentes(type:String,bubbles:Boolean=true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoReporteIncidentes(type,bubbles,cancelable);
		}
	}
}