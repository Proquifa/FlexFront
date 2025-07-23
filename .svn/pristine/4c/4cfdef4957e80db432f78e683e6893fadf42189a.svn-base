package mx.com.proquifa.vista.vistas.gestorCompras.itemrender
{
	import flash.filters.DropShadowFilter;
	import flash.geom.Rectangle;
	import flash.text.TextLineMetrics;
	
	import mx.charts.ChartItem;
	import mx.charts.chartClasses.LegendData;
	import mx.charts.series.ColumnSeries;
	import mx.charts.series.items.ColumnSeriesItem;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.core.IDataRenderer;
	import mx.core.UIComponent;
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	
	import spark.components.Group;
	import spark.components.Label;
	import spark.primitives.Rect;

	public class BarColoresGestorCompra extends UIComponent implements IDataRenderer
	{
		
		private var label:Label;
		private var _chartItem:ChartItem;
		private var grpFondo:Group;
		
		public function BarColoresGestorCompra()
		{
			super();
		}
		
		override protected function createChildren():void
		{	
			super.createChildren();
			if (label == null)
			{
				label = new Label();
				label.setStyle("fontFamily", "Helvetica");
				label.styleName = "titulo_Helvetica_16_Barra"
				label.setStyle("textAlign", "center");
				label.setStyle("backgroundColor", 0x363636 );
				label.setStyle("backgroundAlpha", 0 );
				label.maxDisplayedLines = 1;
				label.depth = 1000;
				addChild( label );
				
				var fillFondo:LinearGradient = new LinearGradient();
				fillFondo.entries = [ new GradientEntry(0xb4c871), new GradientEntry( 0x8da741 ) ];
				fillFondo.rotation = 90;
				
				var rectFondo:Rect = new Rect();
				rectFondo.fill = fillFondo;
				rectFondo.percentWidth = 100;
				rectFondo.percentHeight = 100;
				rectFondo.filters = [new DropShadowFilter(0.7, 45, 0x000000, 0.8)];
				
				grpFondo = new Group();
				grpFondo.cacheAsBitmap = true;
				grpFondo.addElement( rectFondo );
				addChildAt( grpFondo, 0 );
			}
		}
		
		public function set data(value:Object):void
		{
			if (_chartItem == value) return;
			if (value is LegendData) 
				return;
			_chartItem = ChartItem(value);	        
		}	
		public function get data():Object
		{
			return _chartItem;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			var rc:Rectangle = new Rectangle( 0, 0, width, height );
			if (_chartItem == null)
				return;
			var cs:ColumnSeries = _chartItem.element as ColumnSeries;
			var csi:ColumnSeriesItem = _chartItem as ColumnSeriesItem;
			if( Number(csi.item[cs.yField]) == 0 || csi.item[cs.yField+"Label"] == null ){
				label.visible = false;
			}else{
				label.visible = true;
				label.text = csi.item[cs.yField+"Label"];
				measureTextWidthAndResizeComponent( label.text, label );
				label.setStyle("backgroundAlpha", 0 );					
				if( label.width > unscaledWidth + 2 ){
					label.text = UtilsFormatosNumericos.shortNumbersMK( csi.item[cs.yField+"Label"] );
					measureTextWidthAndResizeComponent( label.text, label );
				}
				if( label.width > unscaledWidth + 9 ){
					label.setStyle("backgroundAlpha", 0.18 );					
				}
				
				var labelHeight:int = label.height = 13;
				var barYpos:Number = csi.y;
				var minYpos:Number = csi.min;
				var barHeight:Number = minYpos - barYpos;
				var labelColor:uint = 0xFFFFFF; 
				
				label.x = unscaledWidth/2 - label.width/2;
				
				if( barHeight < labelHeight*2 ){ 
					label.y = -( labelHeight + 2);
					labelColor = 0x5d7320; 
					label.setStyle("backgroundAlpha", 0 );
				}else{
					label.y = (barHeight / 2 - labelHeight / 2)-1;
				}
				label.setStyle( "color", labelColor );
			}
			if( grpFondo != null )
			{
				grpFondo.width = unscaledWidth;
				grpFondo.height = unscaledHeight;
				grpFondo.left = 0;
				grpFondo.bottom = 0;
			}
			
			if (csi.item.hasOwnProperty("tipo"))
			{
				var fillFondo:LinearGradient = new LinearGradient();
				fillFondo.rotation = 90;
				switch(csi.item.tipo)
				{
					case "En tiempo":
					{
						fillFondo.entries = [ new GradientEntry(0x70a83b), new GradientEntry( 0x70a83b ) ];
						break;
					}
					case "Urgente":
					{
						fillFondo.entries = [ new GradientEntry(0xdb9600), new GradientEntry( 0xdb9600 ) ];
						break;
					}
					case "Retrasado":
					{
						fillFondo.entries = [ new GradientEntry(0xbf0411), new GradientEntry( 0xbf0411 ) ];
						break;
					}
						
					default:
					{
						break;
					}
				}
				((this.getChildAt(0) as Group).getElementAt(0) as Rect).fill = fillFondo;
			}
		}
		
		protected function measureTextWidthAndResizeComponent( text:String, container:UIComponent ):void
		{
			var _measuredWidth:Number = 0;
			var  _paddingLeft:uint = 0;
			var _paddingRight:uint = 0;
			var _horizontalGap:uint = 0;
			var _addedToWidth:int;
			if(text == null)
				return;
			if(text.length <= 1)
				return;
			_paddingLeft = container.getStyle("paddingLeft");
			_paddingRight = container.getStyle("paddingRight");
			_horizontalGap = container.getStyle("horizontalGap");
			_addedToWidth = int(_horizontalGap + _paddingLeft + _paddingRight);
			var lineMetrics:TextLineMetrics = container.measureText(text);
			_measuredWidth = (lineMetrics.width + _addedToWidth);
			container.width = _measuredWidth;
		}
	}
}