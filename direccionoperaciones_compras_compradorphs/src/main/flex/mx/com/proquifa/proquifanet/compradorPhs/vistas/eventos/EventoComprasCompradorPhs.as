package mx.com.proquifa.proquifanet.compradorPhs.vistas.eventos
{
	import flash.events.Event;
	

	public class EventoComprasCompradorPhs extends Event
	{
		public var usuario:String;
		public var rol:String;
		
		//SERVICIO
		public static const CARGAR_NUMERO_PENDIENTES_MENU:String = "cargarNumeroPendientesEventoGestorCompras";
		
		public function EventoComprasCompradorPhs(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoComprasCompradorPhs(type,bubbles,cancelable);
		}
	}
}