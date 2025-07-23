package mx.com.adobe.flex.extras.controls.eventotextinputemail
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class EventoTextInputEmail extends Event
	{
		public static const VALIDADO_EMAILS:String = "EventoValidadoEmails";
		public static const ERROR_EMAILS:String = "EventoErrorEmails";
		public static const TEXTINPUTVACIO_EMAILS:String = "EventoTextInputVacioEmails";
		
		public var errores:ArrayCollection = new ArrayCollection();
		
		public function EventoTextInputEmail(type:String,bubbles:Boolean = true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoTextInputEmail(type,bubbles,cancelable);
		}
		

	}
}