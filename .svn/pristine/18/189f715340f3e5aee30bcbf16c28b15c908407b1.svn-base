package mx.com.proquifa.proquifanet.rsl.vista.eventos.comun.advancedDataGrid
{
	import flash.events.Event;
	
	import mx.events.ListEvent;
	
	public class EventoDataGrid extends Event
	{
		public static const ITEM_CLICK_ADVANCED_DATAGRID:String = "itemClickADG";
		
		public var itemClick:ListEvent;
		
		
		public function EventoDataGrid(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoDataGrid( type, bubbles, cancelable );
		}
	}
}