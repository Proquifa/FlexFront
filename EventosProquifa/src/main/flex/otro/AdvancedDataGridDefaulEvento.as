package skins.skin.AdvancedDataGrid.evento
{
	import mx.core.IFactory;
	
	import otro.AdvancedDataGridEventoClass;
	
	import spark.components.VGroup;
	
	public class AdvancedDataGridDefaulEvento extends VGroup
	{
		
		private var dataGrid:AdvancedDataGridEventoClass;
		
		public function AdvancedDataGridDefaulEvento()
		{
			super();
			dataGrid = new AdvancedDataGridEventoClass;
			dataGrid.percentWidth = 100;
			super.gap = 0;
			addElement(dataGrid);
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
		
		public function set dataProvider(value:Object):void
		{
			dataGrid.percentWidth = 100;
			dataGrid.dataProvider = value;
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
		
		public function get horizontalScrollPolicy():String{
			return dataGrid.horizontalScrollPolicy;
		}
		
		public function set horizontalScrollPolicy(value:String):void{
			dataGrid.horizontalScrollPolicy = value;
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
		
	}
}