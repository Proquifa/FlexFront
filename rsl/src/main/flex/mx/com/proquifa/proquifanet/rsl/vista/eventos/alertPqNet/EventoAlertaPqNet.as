package mx.com.proquifa.proquifanet.rsl.vista.eventos.alertPqNet
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;

	public class EventoAlertaPqNet extends Event
	{
		
		public var labelOk:String ="";
		public var labelYes:String = "";
		public var labelCancel:String = "";
		public var labelNo:String = "";
		public var vieneD:String="";
		public var encabezado:String="";
		public var mensaje:String="";
		
		public var respuesta:ResultAlert = new ResultAlert();
		
		public static const MOSTRAR_ALERTA:String = "mostrarAlertaEvent";
		public static const RESPUESTA_ALERTA:String = "respuestaAlertaEvent";
		public static const CLOSE:String = "CloseAlertAlertaEvent";
		
		public function EventoAlertaPqNet(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			return new EventoAlertaPqNet(type,bubbles,cancelable);
		}
	}
}