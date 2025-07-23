package mx.com.proquifa.proquifanet.rsl.vista.eventos.comun.renders
{
	import flash.events.Event;

	public class EventoIRendererListaConEnfoque extends Event
	{
		
		public var index:int;
		
		public static const SELECCIONAR_ITEM_RENDERER_KEY:String = "seleccionarItemRendererPorKeyEventoIRendererListaConEnfoque";
		
		public function EventoIRendererListaConEnfoque(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoIRendererListaConEnfoque(type,bubbles,cancelable);
		}
	}
}