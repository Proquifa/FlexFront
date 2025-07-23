package otro
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import mx.controls.AdvancedDataGrid;
	import mx.controls.listClasses.IListItemRenderer;
	import mx.core.UIComponent;
	import mx.core.mx_internal;
	import mx.events.ListEvent;
	
	import otro.scroll.scroller.skinScroller;
	import otro.scroll.scroller.skinVScrollBar;
	
	import spark.components.Label;
	
	public class AdvancedDataGridEventoClass extends AdvancedDataGrid
	{
		
		private var _anchoColumnas:Array;
		private var isWidthColumnsChange:Boolean = false;
		
		private var explicitTotalWidth:Number;
		private var samePercentWidthColumns:Object;
		private var percentWidthColumns:Object;
		private var explicitWitdhColumns:Object;
		
		public function AdvancedDataGridEventoClass()
		{
			super();
			super.draggableColumns = false;
			super.styleName = 'advanceDataGridEvento';
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			
			if(isWidthColumnsChange){
				isWidthColumnsChange =false;
				partirAnchosPorcentajeyExplicitos(_anchoColumnas);
			}
		}
		
		private function partirAnchosPorcentajeyExplicitos(values:Array):void
		{
			if (columns && anchoColumnas && anchoColumnas.length > 0)
			{
				explicitTotalWidth = 0;
				percentWidthColumns = new Object;
				explicitWitdhColumns = new Object;
				samePercentWidthColumns = new Object;
				for (var i:uint = 0; i < anchoColumnas.length; i++)
				{
					var columnWidth:String = anchoColumnas[i];
					
					if (columnWidth.search("%") >= 0){
						percentWidthColumns[i]= Number(columnWidth.substr(0, columnWidth.length - 1));
					}else if (columnWidth.search("=") >=0){
						samePercentWidthColumns[i] = i;
					}else{
						explicitWitdhColumns[i] = Number(columnWidth);
						explicitTotalWidth+=Number(columnWidth);
					}
				}
			}
		}
			
		
		override protected function mouseOverHandler(event:MouseEvent):void
		{
			super.mouseOverHandler(event);
			
			var s:Sprite = Sprite(selectionLayer.getChildByName("headerSelection"));
			
			if(s) s.graphics.clear();
			
		}
		
		override protected function mouseDownHandler(event:MouseEvent):void
		{
			super.mouseDownHandler(event);
			
			var s:Sprite = Sprite(selectionLayer.getChildByName("headerSelection"));
			
			if(s) s.graphics.clear();
		}
		

		public function get anchoColumnas():Array
		{
			return _anchoColumnas;
		}

		public function set anchoColumnas(value:Array):void
		{
			if(_anchoColumnas != value){
				_anchoColumnas = value;
				isWidthColumnsChange = true;
			}
		}

		override public function set dataProvider(value:Object):void{
			if(value == null)
				return;
			super.dataProvider = value;
		}
		
	}
}