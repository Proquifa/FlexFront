package comun
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.events.TimerEvent;
	import flash.text.TextField;
	import flash.utils.Timer;
	
	import mx.events.FlexEvent;
	import mx.preloaders.SparkDownloadProgressBar;
	
	public class PreloaderClass extends SparkDownloadProgressBar
	{
		private var preloaderDisplay:PreloaderDisplay;
		/*private var progressText: TextField;
		private var msgText: TextField;*/
		
		private const totalPelicula:Number = 2555298;
		
		
		public function PreloaderClass()
		{
			//TODO: implement function
			super();
			
			/*progressText = new TextField; 
			progressText.x = 10;    
			progressText.y = 90;
			progressText.width = 400;
			progressText.height = 400;
			progressText.textColor = 0xFFFFFF;
			addChild (progressText);*/
			
			// Configure the TextField for the final message.
		/*	msgText = new TextField();
			msgText.x = 10;
			msgText.y = 10;
			msgText.width = 400;
			msgText.height = 75;
			
			addChild(msgText);*/
			
			if (!preloaderDisplay) {
				preloaderDisplay = new PreloaderDisplay();
				
				/*var startX:Number = Math.round((stageWidth - preloaderDisplay.width) / 2);
				var startY:Number = Math.round((stageHeight - preloaderDisplay.height) / 2);*/
				/*var startX:Number = Math.round(stageWidth / 2);
				var startY:Number = 200;
				
				preloaderDisplay.x = startX;
				preloaderDisplay.y = startY;*/
				preloaderDisplay.visible = false;
				addChild(preloaderDisplay);
			}
			
		}
		
		override public function set preloader(value:Sprite):void{
			
			value.addEventListener(ProgressEvent.PROGRESS,myHandleProgress);
			
			value.addEventListener(Event.COMPLETE,myHandleComplete);
			
			value.addEventListener(FlexEvent.INIT_PROGRESS,myHandleInitProgress);
			
			value.addEventListener(FlexEvent.INIT_COMPLETE,myHandleInitComplete);
		}
		
		private function centerPreloader():void
		{
			if ((stage.stageWidth > 0) && (preloaderDisplay)) {
				var x:int = int((stage.stageWidth / 2) - (preloaderDisplay.width / 2));
				var y:int =int( (stage.stageHeight / 2) - (preloaderDisplay.height / 2)-200);
				preloaderDisplay.x = x;
				preloaderDisplay.y = y;
				preloaderDisplay.visible = true;
			}
		}
		private function myHandleProgress(event:ProgressEvent):void{
			
			centerPreloader();
			
			//preloaderDisplay.AnimacionLogo.play();
			var procentaje:Number = (100 / totalPelicula)*event.bytesTotal;
			//progressText.appendText ("\n inicio " + event.bytesLoaded + " t:" + event.bytesTotal + " % " + int(procentaje/2));
			preloaderDisplay.setTopeProgreso(int(procentaje));
			
			
		}
		
		private function myHandleComplete(event:Event):void{
			//progressText.appendText("\n" + "Completed");
			preloaderDisplay.setCargaTotal();
		}
		
		private function myHandleInitProgress(event:FlexEvent):void{
			//progressText.appendText("\n" + "App Init Start");
		}
		
		private var timer: Timer = new Timer (100);
		private function myHandleInitComplete(event:FlexEvent):void{
			//msgText.appendText("\n" + "App Init End");
			timer.addEventListener (TimerEvent.TIMER, dispatchComplete);
			timer.start ();
		}
		
		private function dispatchComplete (event: TimerEvent): void {
			dispatchEvent (new Event(Event.COMPLETE));
			timer.stop();
		}
	}
}