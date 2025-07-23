package skins.titlebar
{
	import flash.display.DisplayObject;
	import flash.display.StageDisplayState;
	import flash.events.MouseEvent;
	
	import mx.core.IWindow;
	
	import spark.components.Button;
	import spark.components.windowClasses.TitleBar;

	public class pqTitleBar extends TitleBar
	{
		[SkinPart (required="true")]
		public var fullscreenButton:Button
		
		public function pqTitleBar()
		{
			super();
			
		}
		
		override protected function createChildren():void{
			this.fullscreenButton = new Button();
			this.addEventListener(MouseEvent.CLICK,fullScreenAplicacion);
		}
		
		private function fullScreenAplicacion(event:MouseEvent):void{
			if(event.target.id == "fullscreenButton"){
				this.stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			}
		}
		
		
		
		
	}
}