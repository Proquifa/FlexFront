package mx.com.proquifa.proquifanet.rsl.vista.eventos
{
	import flash.events.Event;
	
	public class EventoEsperar extends Event
	{
		
		public static const INICIA_ESPERA:String = "iniciarEsperaEvent";
		public static const TERMINA_ESPERA:String = "terminaEsperaEvent";
		public static const ERROR_ESPERA:String = "errorEsperaEvent";
		public static const CONFIGURAR_ESPERA:String = "configurarInicioEsperaEvent";
		
		public var mensaje:String;
		public var error:Object;
		public var tipoEventos:Array;
		public var idButtons:Array;
		
		public function EventoEsperar(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoEsperar( type, bubbles, cancelable );
		}
	}
}