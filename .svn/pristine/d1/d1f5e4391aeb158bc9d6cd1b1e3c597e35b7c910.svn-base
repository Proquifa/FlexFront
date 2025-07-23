package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes
{
	import flash.filters.DropShadowFilter;
	import flash.text.TextLineMetrics;
	
	import mx.charts.ChartItem;
	import mx.charts.chartClasses.LegendData;
	import mx.charts.series.ColumnSeries;
	import mx.charts.series.items.ColumnSeriesItem;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.core.IDataRenderer;
	import mx.core.UIComponent;
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	
	import spark.components.Group;
	import spark.components.Label;
	import spark.primitives.Rect;
	
	public class BarVerdeRender extends UIComponent implements IDataRenderer
	{
		private var label:Label;
		//private var target:Shape;
		private var _chartItem:ChartItem;
		private var grpFondo:Group;
		
		public function BarVerdeRender():void
		{
			super();	        
		}
		
		override protected function createChildren():void
		{	
			super.createChildren();
			if (label == null){
				// create and add the label
				label = new Label();
				//label.truncateToFit = true;
				label.setStyle("fontFamily", "Helvetica");
				label.setStyle("fontWeight", "bold");
				label.setStyle("fontStyle", "normal");
				label.setStyle("fontSize", 11);	      
				label.setStyle("textAlign", "center");
				label.setStyle("backgroundColor", 0x363636 );
				label.setStyle("backgroundAlpha", 0 );
				label.maxDisplayedLines = 1;
				label.depth = 1000;
				addChild(label);
				
				var fillFondo:LinearGradient = new LinearGradient();
				fillFondo.entries = [ new GradientEntry(0x91C138), new GradientEntry( 0x91C138 ) ];
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
				/*target = new Shape(); 
				target.filters = [new DropShadowFilter(0.7, 45, 0x000000, 0.8)];
				addChildAt(target, 0);*/ 
			}	        
		}
		
		public function set data(value:Object):void
		{
			if (_chartItem == value) return;
			// setData also is executed if there is a Legend Data 
			// defined for the chart. We validate that only chartItems are 
			// assigned to the chartItem class. 
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
			/*var rc:Rectangle = new Rectangle(0, 0, width, height);	       
			var g:Graphics = target.graphics;
			g.clear();        
			g.moveTo(rc.left, rc.top);*/
			if (_chartItem == null) // _chartItem has no data
				return;
			var cs:ColumnSeries = _chartItem.element as ColumnSeries;
			var csi:ColumnSeriesItem = _chartItem as ColumnSeriesItem;
			// set the label
			if( Number(csi.item[cs.yField]) == 0 || csi.item[cs.yField+"Label"] == null ){
				label.visible = false;
			}else{
				label.visible = true;
				label.text = csi.item[cs.yField+"Label"];
				measureTextWidthAndResizeComponent( label.text, label );
				label.setStyle("backgroundAlpha", 0 );					
				if( label.width > unscaledWidth + 2 ){
					label.text = Util.abreviaturaTextoVisita( csi.item[cs.yField+"Label"] );
					measureTextWidthAndResizeComponent( label.text, label );
				}
				if( label.width > unscaledWidth + 9 ){
					label.setStyle("backgroundAlpha", 0.18 );					
				}
				
				//label.x = -(unscaledWidth/3)/2;
				var labelHeight:int = label.height = 13;
				var barYpos:Number = csi.y;
				var minYpos:Number = csi.min;
				var barHeight:Number = minYpos - barYpos;
				var labelColor:uint = 0xFFFFFF; // white
				
				label.x = unscaledWidth/2 - label.width/2;
				
				if (barHeight < labelHeight ){
					label.y = -( labelHeight + 1);
					labelColor = 0x990429; // label will appear on white background, so make it dark
					label.visible = false;
				}else{	
					// center the label vertically in the bar
					label.y = (barHeight / 2 - labelHeight / 2)-1;
				}
				label.setStyle("color", labelColor);
			}
			/*var fillType:String = GradientType.LINEAR;
			var colors:Array = [0x990429, 0x910824];
			var alphas:Array = [1, 1];
			var ratios:Array = [0x00, 0xFF];
			var gradientBoxMatrix:Matrix = new Matrix();
			gradientBoxMatrix.createGradientBox( width, height, Math.PI/2, 0, 0);
			g.beginGradientFill(fillType, colors, alphas, ratios, gradientBoxMatrix, SpreadMethod.PAD);
			g.lineTo(rc.right,rc.top);
			g.lineTo(rc.right,rc.bottom);
			g.lineTo(rc.left,rc.bottom);
			g.lineTo(rc.left,rc.top);
			g.endFill();    */
			if( grpFondo != null )
			{
				grpFondo.width = unscaledWidth;
				grpFondo.height = unscaledHeight;
				grpFondo.left = 0;
				grpFondo.bottom = 0;
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


