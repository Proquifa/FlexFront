package vista.componentes.comun
{
	import flash.events.MouseEvent;
	import flash.system.Capabilities;
	
	import mx.core.FlexGlobals;
	import mx.core.RuntimeDPIProvider;
	import mx.events.FlexEvent;
	
	import skins.catalogos.catalogoIconosEtiquetas;
	
	import spark.components.Application;
	import spark.components.Group;
	import spark.primitives.BitmapImage;
	import spark.utils.MultiDPIBitmapSource;
	
	public class LogoButton extends Group
	{
		public var withLagIndicator:Boolean = true;
		
		private var imgLogo:BitmapImage;
		private var lagComp:LagIndicatorClass;
		
		public function LogoButton()
		{
			buttonMode = true;
			super();
			
			imgLogo = new BitmapImage();
			var multiDPI:MultiDPIBitmapSource = new MultiDPIBitmapSource;
			multiDPI.source160dpi = catalogoIconosEtiquetas.getInstance().mobil_logonet;
			multiDPI.source240dpi = catalogoIconosEtiquetas.getInstance().mobil_logonet2X;
			imgLogo.source = multiDPI;
			
			/*imgLogo = new BitmapImage();
			imgLogo.source = catalogoIconosEtiquetas.getInstance().mobil_logonet;*/
			
			addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler, false, 0, true );
		}
		
		protected function completeHandler( event:FlexEvent ):void
		{
			
			addElement( imgLogo );
			if( buttonMode )
			{
				addEventListener( MouseEvent.MOUSE_DOWN, mouseDownHandler, false, 0, true );
				addEventListener( MouseEvent.MOUSE_UP, mouseUpHandler, false, 0, true );
			}
			if( withLagIndicator )
			{
				
				if(FlexGlobals.topLevelApplication.applicationDPI == 160 )
				{
					lagComp = new LagIndicatorClass(6,7,160);
					lagComp.verticalCenter = 21;
					lagComp.right = 14.6;
					addElement( lagComp );
				}
				else if (FlexGlobals.topLevelApplication.applicationDPI == 240)
				{
					lagComp = new LagIndicatorClass(12,14,240);
					lagComp.verticalCenter = 42;
					lagComp.right = 29.3;
					addElement( lagComp );
				}
			}
		}
		
		protected function mouseDownHandler( event:MouseEvent ):void
		{
			imgLogo.alpha = 0.7;
		}
		
		protected function mouseUpHandler( event:MouseEvent ):void
		{
			imgLogo.alpha = 1;
		}
		
	}
}