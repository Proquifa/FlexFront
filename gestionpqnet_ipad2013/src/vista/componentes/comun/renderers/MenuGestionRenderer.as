package vista.componentes.comun.renderers
{
	import flash.display.GradientType;
	
	import spark.components.LabelItemRenderer;
	import spark.components.List;
	import spark.filters.DropShadowFilter;
	
	
	/**
	 * 
	 * ASDoc comments for this item renderer class
	 * 
	 */
	public class MenuGestionRenderer extends LabelItemRenderer
	{
		public function MenuGestionRenderer()
		{
			super();
			minWidth = 260;
			percentHeight = 100;
			
			setStyle( 'textAlign', 'center' );
			filters = [ new DropShadowFilter( 0, 0, 0x424242, 1, 4, 4) ]
		}
		/**
		 * @private
		 * 
		 * Override this method to change how the background is drawn for 
		 * item renderer.  For performance reasons, do not call 
		 * super.drawBackground() if you do not need to.
		 */
		override protected function drawBackground(unscaledWidth:Number, 
												   unscaledHeight:Number):void
		{
			var radius:Number = 10; 
			var lengthDataPro:Number = (owner as List).dataProvider.length;
			/* fondo transparente */
			graphics.beginFill( 0x1d1d1d );
			graphics.lineStyle();
			if( itemIndex == 0 )// lado izquierdo redondeado
					graphics.drawRoundRectComplex( 0, 0, unscaledWidth, unscaledHeight, radius, 0, 0, 0 );
			else if( itemIndex == lengthDataPro - 1 )// lado derecho redondeado
					graphics.drawRoundRectComplex( 0, 0, unscaledWidth, unscaledHeight, 0, radius, 0, 0 );
			else // centro con puntas
					graphics.drawRect( 0, 0, unscaledWidth, unscaledHeight );
			graphics.endFill();
			/* color letra*/
			if( selected )
				setStyle( "color", 0x009fa4 );
			else
				setStyle( "color", 0xfafafa );
		}
		
	}
}