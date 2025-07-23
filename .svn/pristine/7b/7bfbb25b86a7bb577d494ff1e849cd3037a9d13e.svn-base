package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.notificados
{
	import flash.events.Event;
	
	import spark.components.NavigatorContent;
	
	public class EventoNotificados extends Event
	{
		public var tabla:int;
		public static const CAMBIA_VIEW_STACK:String = "cambiaViewStack";
		
		public function EventoNotificados(type:String, bubbles:Boolean=true, cancelable:Boolean=false )
		{
			super(type,bubbles,cancelable)
		}
		public override  function clone():Event{
			return new  EventoNotificados(type,bubbles,cancelable);
		} 
	}
}