package skins.spark.components
{
	import spark.components.List;
	
	public class List extends spark.components.List
	{
		public function List()
		{
			super();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			if (scroller && scroller.viewport)
			{
				scroller.viewport.width = unscaledWidth;
			}
		}
	}
}