package eventos
{
	import flash.events.Event;

	public class EventoMensajeroNavegacion extends Event
	{
		public static const NAVEGAR_VISTA_SIGUIENTE:String = "navegarVistaSiguienteEvent";
		public static const NAVEGAR_VISTA_ANTERIOR:String = "navegarVistaAnteriorEvent";
		
		public var indiceNavegador:int = 0;
		
		public function EventoMensajeroNavegacion(type:String,bubbles:Boolean=true, cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoMensajeroNavegacion(type,bubbles,cancelable);
		}
	}
}