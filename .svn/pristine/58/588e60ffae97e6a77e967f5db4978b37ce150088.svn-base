package eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;

	public class EventoMensajeroModelo extends Event
	{
		
		public static const ACTUALIZAR_EN_CIERRE:String = "actualizarEnCierreEvent";
		
		public var _usuario:String;
		
		public function EventoMensajeroModelo(type:String,bubbles:Boolean=true,cancelable:Boolean=true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoMensajeroModelo(type,bubbles,cancelable);
		}
	}
}