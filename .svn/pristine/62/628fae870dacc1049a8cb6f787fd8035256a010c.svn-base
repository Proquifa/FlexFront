package skins.skin.AdvancedDataGrid.evento
{
	import flash.events.Event;
	
	import mx.core.IFactory;
	import mx.events.ResizeEvent;
	
	import spark.components.VGroup;
	
	public class AdvancedDataGridDefaultEvento extends VGroup
	{
		private var dataGrid:AdvancedDataGridEvento;
		
		public function AdvancedDataGridDefaultEvento()
		{
			super();
			dataGrid = new AdvancedDataGridEvento;
			dataGrid.percentWidth = 100;
			this.addEventListener(ResizeEvent.RESIZE,escucharCuandoCreceODecreceElDataGrid,false,0,true);
			super.gap = 0;
			addElement(dataGrid);
		}
		
		private function escucharCuandoCreceODecreceElDataGrid(e:Event):void
		{
			dataGrid.percentHeight = 100;
			dataGrid.height= NaN;
		}
		
		public function get anchoColumnas():Array
		{
			return dataGrid.anchoColumnas;
		}
		
		public function set anchoColumnas(value:Array):void
		{
			dataGrid.anchoColumnas = value;
		}
		
		public function get dataProvider():Object
		{
			return dataGrid.dataProvider;
			
		}
		
		private var rowsPorVista:int;
		
		public function set dataProvider(value:Object):void
		{
			dataGrid.dataProvider = value;
			dataGrid.percentHeight = 100;
			configuracionRowVista()
		}
		
		private var calculateWithCurrentHeight:Number;
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			rowsPorVista = (unscaledHeight - dataGrid.headerHeight) / dataGrid.rowHeight;
			
			if(calculateWithCurrentHeight != unscaledHeight){
				calculateWithCurrentHeight = unscaledHeight;
				configuracionRowVista();
			}
		}
		
		private function configuracionRowVista():void
		{
			if(dataGrid.dataProvider == null || (dataGrid.dataProvider).length == 0){
				dataGrid.height = dataGrid.headerHeight;
			}else 	if(rowsPorVista > (dataGrid.dataProvider).length ){
				dataGrid.height = ((dataGrid.rowHeight * (dataGrid.dataProvider).length)+ dataGrid.headerHeight);
			}
		}
		
		public function get columns():Array
		{
			return dataGrid.columns;
		}
		
		public function set columns(value:Array):void
		{
			dataGrid.columns = value;
		}
		
		public function get sortExpertMode():Boolean{
			return dataGrid.sortExpertMode
		}
		
		public function set sortExpertMode(value:Boolean):void{
			dataGrid.sortExpertMode = value;
		}
		
		public function get columnWidth():Number{
			return dataGrid.columnWidth;
		}
		
		public function set columnWidth(value:Number):void{
			dataGrid.columnWidth = value;
		}
		
		public function get draggableColumns():Boolean{
			return dataGrid.draggableColumns;
		}
		
		public function set draggableColumns(value:Boolean):void{
			dataGrid.draggableColumns = value;
		}
		
		public function get headerRenderer():IFactory{
			return dataGrid.headerRenderer;
		}
		
		public function set headerRenderer(value:IFactory):void{
			dataGrid.headerRenderer = value;
		}
		
		public function get rowHeightData():Number{
			return dataGrid.rowHeight;
		}
		
		public function set rowHeightData(value:Number):void{
			dataGrid.rowHeight = value;
		}
		
		public function set disableResizableColumns(value:Array):void{
			dataGrid.disableResizableColumns = value;
		}
		
		public function get disableResizableColumns():Array{
			return dataGrid.disableResizableColumns;
		}
		
		public function set disableSortableColumns(value:Array):void{
			dataGrid.disableSortableColumns = value;
		}
		
		public function get disableSortableColumns():Array{
			return dataGrid.disableSortableColumns;
		}
		
		public function get selectedIndex():int
		{
			return dataGrid.selectedIndex;
		}
		
		public function get selectedItem():Object
		{
			return dataGrid.selectedItem;
		}
		
		public function get editable():String{
			return dataGrid.editable;
		}
		
		public function set editable(value:String):void{
			dataGrid.editable = value;
		}
		
		public function set isFirstGrid(value:Boolean):void{
			dataGrid.isFirstGrid = value;
		}
		
		public function get isFirstGrid():Boolean{
			return dataGrid.isFirstGrid;
		}
	}
}