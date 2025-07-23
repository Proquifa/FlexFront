package vista.componentes.comun.renderers
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modulo;
	
	import skins.catalogos.catalogoIconosBotoneras;
	
	import spark.components.IconItemRenderer;
	import spark.filters.DropShadowFilter;
	
	public class RendererMobilGestion extends IconItemRenderer
	{
		public function RendererMobilGestion()
		{
			super();
			
			width = 170;
			height = 150;
			iconFunction = theIconFunction;
			labelField = "nombre";
			
			setStyle( 'fontFamily', 'Helvetica' );
			setStyle( 'fontSize', 11 );
			setStyle( 'fontStyle', 'normal' );
			setStyle( 'fontWeight', 'bold' );
			setStyle( 'textAlign', 'center' );
			setStyle( 'color', 0xffffff );
			
			filters = [ new DropShadowFilter( 0, 0, 0x363636, 0.2, 4, 4) ];
			//redrawRequested = false;
			//decorator = null;
			//opaqueBackground = 0x0c0c0c;
		}
		
		public function theIconFunction(item:Object):Object
		{
			if( (item as Modulo).iconMobil != null )
				return catalogoIconosBotoneras.getInstance()[ item.iconMobil ];
			return null;
		}
		
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
		{
			//super.layoutContents( unscaledWidth, unscaledHeight );
			
			var labelTextHeight:Number = 0;
			// icon is on the left
			if (iconDisplay)
			{
				// set the icon's position and size
				setElementSize(iconDisplay, this.iconWidth, this.iconHeight);
				
				iconWidth = iconDisplay.getLayoutBoundsWidth();
				iconHeight = iconDisplay.getLayoutBoundsHeight();
				
				// use vAlign to position the icon.
				//var iconDisplayY:Number = Math.round(vAlign * (viewHeight - iconHeight)) + paddingTop;
				var left:Number = (width /2) - (iconWidth /2);
				var iconTop:Number = (height /2) - (iconHeight /2);
				setElementPosition(iconDisplay, left, iconTop - 10 );
			}
			if (labelDisplay)
			{
				labelDisplay.truncateToFit();
				
				labelDisplay.setStyle('backgroundColor', 0x666666 );
				labelTextHeight = getElementPreferredHeight(labelDisplay);
				
				setElementSize( labelDisplay, 140, labelTextHeight );
				
				var nLeft:Number =  (width /2) - (labelDisplay.width /2);
				setElementPosition( labelDisplay, nLeft, 130 );
				
			}
		} 
		
		override protected function drawBackground(unscaledWidth:Number, 
										  unscaledHeight:Number):void
		{
			/* rectangulo negro*/
			/* cambiamos el alpha cuando esta down*/
			graphics.beginFill( 0x363636, down ? 0.5: 1 );
			graphics.lineStyle();
			graphics.drawRect( 0, 120, unscaledWidth, 30);
			graphics.endFill();
			
			/* fondo transparente */
			graphics.beginFill( 0xafafaf, 0.2 );
			graphics.lineStyle();
			graphics.drawRect( 0, 0, unscaledWidth, unscaledHeight );
			graphics.endFill();
		}
		
	}
}