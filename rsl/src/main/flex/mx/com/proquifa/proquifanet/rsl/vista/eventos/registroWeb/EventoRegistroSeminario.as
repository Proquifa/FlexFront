package mx.com.proquifa.proquifanet.rsl.vista.eventos.registroWeb
{
	import flash.events.Event;

	public class EventoRegistroSeminario extends Event
	{
		public var nombre:String;
		public var cliente:String;
		public var puesto:String;
		public var mail:String;
		public var telefono:String
		public var origen:String;
		public var conferencia:String;
		
		public static const ALTA_REGISTRO_WEB:String = "altaRegistroWebEventoSeminario";
		public static const PRUEBA_COMBO_CLIENTES_REGISTRO_WEB:String = "clientesWebEventoSeminario";
		
		
		public function EventoRegistroSeminario(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoRegistroSeminario( type, bubbles, cancelable );
		}
	}
}
