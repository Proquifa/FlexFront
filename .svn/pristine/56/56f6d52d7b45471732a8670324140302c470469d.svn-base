package skins.skin.AdvancedDataGrid
{
	import mx.controls.advancedDataGridClasses.AdvancedDataGridSortItemRenderer;
	import mx.core.UITextField;
	
	public class PQNetHeaderSortItemRendererSkin extends AdvancedDataGridSortItemRenderer
	{
		public function PQNetHeaderSortItemRendererSkin()
		{
			super();
			super.width = 0;
		}
		
		override protected function commitProperties():void{
			super.commitProperties();
			if(label != null){
				label.visible = false;
				label.includeInLayout = false;
			}
		}
	}
}