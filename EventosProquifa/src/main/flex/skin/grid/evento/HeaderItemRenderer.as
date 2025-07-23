package skin.grid.evento
{
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer;
	
	public class HeaderItemRenderer extends AdvancedDataGridHeaderRenderer
	{
		public function HeaderItemRenderer()
		{
			super();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			if(this.label.truncateToFit("..."))
			{
				if(this.data != null && this.data is AdvancedDataGridColumn)
				{
					var col:AdvancedDataGridColumn = this.data as AdvancedDataGridColumn;
					this.toolTip = col.headerText;
					//or alternatively:
					//this.label.toolTip = col.headerText;
				}
			}
		}
	}
}