package otro
{
	import flash.events.MouseEvent;
	
	import mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer;
	
	public class headerItemRendererClass extends AdvancedDataGridHeaderRenderer
	{
		public function headerItemRendererClass()
		{
			super();
		}
		
		
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			this.addEventListener(MouseEvent.MOUSE_OVER, escucharOver,false,0,true);
			/*this.addEventListener(MouseEvent.ROLL_OVER, escucharRollOver,false,0,true);*/
		}
		
		
		
		private function escucharOver(eve:MouseEvent):void
		{
			trace("MOUSSSUSUSUSUSEEEE OVERRRRR");
			eve.preventDefault();
			eve.stopImmediatePropagation();
			eve.stopPropagation();
		}

/*		private function escucharRollOver(eve:MouseEvent):void
		{
			trace("ROLLLLLL OVEERRRRRR");
			eve.preventDefault();
		}*/
	}
}