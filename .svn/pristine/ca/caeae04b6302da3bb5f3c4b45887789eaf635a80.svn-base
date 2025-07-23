package vista.skin.viewNavigatorApplication
{
	import flash.system.Capabilities;
	
	import mx.core.FlexGlobals;
	
	import spark.skins.mobile.ViewNavigatorApplicationSkin;
	
	public class MainApplicationSkin extends ViewNavigatorApplicationSkin
	{
		private var isIOS7:Boolean = false;
		
		public function MainApplicationSkin()
		{
			super();
			//There is probably a better way to do this, but this works just fine.
			var osInfo:Array = Capabilities.os.split(" ");
			if(osInfo[0] == "iPhone")
			{
				var versionNumber:Number = parseFloat(osInfo[2]);
				if(versionNumber >= 7) {
					isIOS7 = true;
				}
			}
		}
		
		/**
		 * @private 
		 */ 
		override protected function measure():void
		{ 
			super.measure();
			
			//var measuredWidth = navigator.getPreferredBoundsWidth();
			//If iOS7 adjust by 20 pixels to account for statusbar
			//measuredHeight = isIOS7 ? navigator.getPreferredBoundsHeight() - 20 : navigator.getPreferredBoundsHeight();
		}
		
		/**
		 * @private
		 */
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.layoutContents(unscaledWidth, unscaledHeight);
			
			//If iOS7 adjust by 20 pixels to account for statusbar
			if(isIOS7)
			{
				if(FlexGlobals.topLevelApplication.applicationDPI == 160)
				{
					navigator.setLayoutBoundsSize(unscaledWidth, unscaledHeight - 27);
					navigator.setLayoutBoundsPosition(0, 27);
				}
				else if(FlexGlobals.topLevelApplication.applicationDPI == 240)
				{
					navigator.setLayoutBoundsSize(unscaledWidth, unscaledHeight - 35);
					navigator.setLayoutBoundsPosition(0, 35);
				}
			}
			else
			{
				navigator.setLayoutBoundsSize(unscaledWidth, unscaledHeight-27);
				navigator.setLayoutBoundsPosition(0, 27);
			}
		}
	}
}