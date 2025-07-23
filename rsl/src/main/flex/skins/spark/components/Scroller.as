package skins.spark.components
{
	import spark.components.DataGroup;
	import spark.components.Scroller;
	
	public class Scroller extends spark.components.Scroller
	{
		
		public function Scroller()
		{
			super();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			if (viewport && ((unscaledWidth-10) > (viewport.width + 2)) )
			{
				viewport.width = unscaledWidth-2;
			}
		}
		
	}
}