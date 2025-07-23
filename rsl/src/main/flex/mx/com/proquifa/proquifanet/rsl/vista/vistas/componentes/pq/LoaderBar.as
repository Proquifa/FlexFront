package mx.com.proquifa.proquifanet.rsl.vista.vistas.componentes.pq
{
	import mx.events.FlexEvent;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.effects.Fade;
	import spark.effects.Resize;
	import spark.primitives.Rect;
	
	public class LoaderBar extends Group
	{
		private const colorNormal:uint = 0x009fa4;
		private const colorError:uint = 0xff362a;
		private var rectLoader:Rect;
		private var fxResize:Resize = new Resize();
		
		
		public function LoaderBar()
		{
			super();
			addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler );
			
		}
		
		protected function completeHandler( event:FlexEvent ):void{
			var fillColor:SolidColor = new SolidColor( colorNormal );
			rectLoader = new Rect();
			rectLoader.fill = fillColor; 
			//rectLoader.width = width;
			rectLoader.width = 0;
			rectLoader.height = 4;
			rectLoader.left = 0;
			rectLoader.top = 0;
			addElement( rectLoader );
		}
		
		
		public function set percent( $progressPerc:int ):void
		{
			rectLoader.percentWidth = $progressPerc;
			if( $progressPerc == 100 )
			{
				var fxFade:Fade = new Fade( rectLoader );
				fxFade.duration = 350;
				fxFade.alphaTo = 0;
				fxFade.startDelay =  250; 
				fxFade.play();
			}
			else
			{
				rectLoader.alpha = 1;
			}
		}
		
		/*protected function startAnimateCallService( event:* = null ):void
		{
			var fillColor:SolidColor = new SolidColor( colorNormal );
			rectLoader.fill = fillColor;
			fxResize.stop();
			rectLoader.width = 0;
			fxResize.duration = 6500;
			fxResize.target = rectLoader;
			fxResize.widthTo = 700;
			rectLoader.alpha = 1;
			fxResize.play();
		}
		
		protected function respondAnimateCallService( event:* ):void
		{
			fxResize.stop();
			fxResize.duration = 200;
			fxResize.target = rectLoader;
			fxResize.widthTo = 1004;
			fxResize.play();
			
			var fxFade:Fade = new Fade();
			fxFade.target = rectLoader;
			fxFade.duration = 350;
			fxFade.alphaTo = 0;
			fxFade.startDelay =  150; 
			fxFade.play();
		}
		
		protected function errorCallService( event:* ):void
		{
			var fillColor:SolidColor = new SolidColor( colorError );
			rectLoader.fill = fillColor;
			fxResize.stop();
			fxResize.duration = 200;
			fxResize.target = rectLoader;
			fxResize.widthTo = 1004;
			fxResize.play();
			
			var fxFade:Fade = new Fade();
			fxFade.target = rectLoader;
			fxFade.duration = 350;
			fxFade.alphaTo = 0;
			fxFade.startDelay =  150; 
			fxFade.play();
		}*/
		
	}
}