package mx.com.proquifa.proquifanet.rsl.vista.eventos.comun.menu
{
	import flash.events.Event;

	public class EventoMenuContinuo extends Event
	{
		
		public static const ITEM_SELECCIONADO:String = "itemSeleccionadoEvent";
		public static const ITEM_BOTONCLICK:String = "itemBotonClickEvent";
		public static const REGRESA_MENU:String = "regresaMenuEventoMenuContinuo";
		public static const ITEM_SELECCIONADO_MENU_EN_CATALOGOS:String = "itemMenuEnCatalogosSeleccionadoEvent";
		
		public var item_Seleccionado:Object = new Object();
		
		public static const REGRESA_GESTION:String = "regresaMenuEventoMenuContinuo"
		
		public function EventoMenuContinuo(type:String,bubbles:Boolean=true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoMenuContinuo(type,bubbles,cancelable);
		}
	}
}