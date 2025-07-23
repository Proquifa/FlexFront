package skin
{
	import flash.display.GradientType;
	import flash.display.Graphics;
	
	import mx.graphics.GradientBase;
	import mx.skins.ProgrammaticSkin;
	
	public class LineaHorizontalItemDataGrid extends ProgrammaticSkin
	{
		public function LineaHorizontalItemDataGrid()
		{
			super();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			var g:Graphics = this.graphics;
			g.clear();
			// Color de la Linea
			g.lineStyle(3, 0xBABABA);
			// PaddingLeft = 20
			g.moveTo(20,unscaledHeight);
			// PaddingRight = 20 
			g.lineTo(unscaledWidth-20, unscaledHeight);
		}
	}
}