package mx.com.proquifa.proquifanet.compradormaster.vistas.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	

	public class EventoComprasCompradorMaster extends Event
	{
		public var usuario:String;
		public var rol:String;
		public var empleado:Empleado;
		public var internacionales:Boolean;
		
		//SERVICIO
		public static const CARGAR_NUMERO_PENDIENTES_MENU:String = "cargarNumeroPendientesEventoGestorComprasMaster";
		
		public function EventoComprasCompradorMaster(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoComprasCompradorMaster(type,bubbles,cancelable);
		}
	}
}