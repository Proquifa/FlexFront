package eventos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;

	public class EventoMensajeroEstadisticas extends Event
	{
		
		public static const TRAER_DATOS_ESTADISTICAS:String = "traerDatosEstadisticaEvent";
		
		public var _usuario:String = "";
		
		public function EventoMensajeroEstadisticas(type:String,bubbles:Boolean=true, cancelable:Boolean=true)
		{
			super(type,bubbles,cancelable);
		}
		
		
		
		public override function clone():Event{
			return new EventoMensajeroEstadisticas(type,bubbles,cancelable);
		}
		
		
	}
}