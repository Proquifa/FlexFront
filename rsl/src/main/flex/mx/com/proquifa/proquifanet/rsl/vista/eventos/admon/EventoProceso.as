package mx.com.proquifa.proquifanet.rsl.vista.eventos.admon
{
	import flash.events.Event;
	
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos.Proceso;
	
	
	public class EventoProceso extends Event
	{
		public static const ACTUALIZAR_PROCESO:String = "actualizarProceso";
		public var _proceso:Proceso;
		
		public function EventoProceso(type:String,bubbles:Boolean = true, cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoProceso(type,bubbles,cancelable);
		}

	}
}