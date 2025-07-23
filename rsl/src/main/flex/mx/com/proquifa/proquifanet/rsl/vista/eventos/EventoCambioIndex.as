package mx.com.proquifa.proquifanet.rsl.vista.eventos
{
	import flash.events.Event;
	
	public class EventoCambioIndex extends Event
	{
		
		public static const CAMBIAR_INDEX:String = "cambioIndexEvent";
		
		public var nuevoIndex:int = 0;
		
		public var vieneD:String = "";
		
		public function EventoCambioIndex(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoCambioIndex(type,bubbles,cancelable);
		}
		
	}
}