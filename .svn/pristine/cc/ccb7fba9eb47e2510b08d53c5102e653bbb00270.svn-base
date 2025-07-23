package skins.skin.AdvancedDataGrid.gridConTotales
{
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ResumenVentasESAC;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.ventasDelPeriodo.analisisDeVentas.todos.HeaderGridConTotalesMXML;
	import mx.controls.AdvancedDataGrid;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
	import mx.core.ClassFactory;
	import mx.core.IFactory;
	import mx.events.AdvancedDataGridEvent;
	import mx.events.IndexChangedEvent;
	import mx.skins.ProgrammaticSkin;
	import mx.utils.ObjectUtil;
	
	import skins.skin.AdvancedDataGrid.PQNetHeaderSortItemRendererSkin;
	
	import spark.components.VGroup;
	
	public class advancedDataGridConTotales extends VGroup
	{
		
		private var dataGrid:AdvancedDataGrid = null;
		private var _gridColumns:Array = [];
		private var _gridDataProvider:Object = null; 
		
		
		private var _footer:AdvancedDataGrid = null;
		private var _footerColumns:Array = [];
		private var _footerColumnsExplicit:Boolean = false;
		private var _footerDataProvider:Object = null;
		private var _footerEnabled:Boolean = false;
		
		private var _connectedColumns:Dictionary = null;
		
		[Bindable] 
		public var syncColumnPositions:Boolean = true;
		
		
		private var _headerRenderer:IFactory = new ClassFactory(HeaderGridConTotalesMXML);
		
		private var _headerHeight:Number = 50;
		private var gridRowHeight:Number = 25;
		
		public function advancedDataGridConTotales()
		{
			super();
			
			this.setStyle("verticalGap", 0);
			minHeight = headerHeight;
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			dataGrid = new AdvancedDataGrid;
			dataGrid.percentWidth = 100;
			dataGrid.percentHeight = 100;
			dataGrid.editable = "false";
			dataGrid.rowHeight = gridRowHeight;
			dataGrid.draggableColumns = false;
			dataGrid.selectable = false;
			
			dataGrid.horizontalScrollPolicy = "off";
			dataGrid.setStyle("horizontalGridLines",false);
			dataGrid.setStyle("verticalGridLines",false);
			dataGrid.setStyle("alternatingItemColors","#FFFFFFF");
			dataGrid.setStyle("verticalAlign","middle");
			dataGrid.setStyle("textAlign","center");
			dataGrid.setStyle("fontSize","12");
			dataGrid.setStyle("fontFamily","Tahoma");
			dataGrid.setStyle("borderAlpha","0");
			dataGrid.setStyle("headerSortSeparatorSkin",ProgrammaticSkin);
			dataGrid.setStyle("headerBackgroundSkin",ProgrammaticSkin);
			dataGrid.setStyle("headerSeparatorSkin",ProgrammaticSkin);
			dataGrid.sortExpertMode = true;
			
			dataGrid.sortItemRenderer = new ClassFactory(PQNetHeaderSortItemRendererSkin);
			
			dataGrid.addEventListener(AdvancedDataGridEvent.ITEM_EDIT_END, dataChanged);
			dataGrid.addEventListener( IndexChangedEvent.HEADER_SHIFT, columnMoved);
			dataGrid.addEventListener( AdvancedDataGridEvent.COLUMN_STRETCH, columnResized);
			
			this.addElement(dataGrid);
		}
		
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			dataGrid.columns = _gridColumns;
			dataGrid.percentHeight = 100;
			dataGrid.dataProvider = _gridDataProvider;
			dataGrid.headerHeight = _headerHeight;
			dataGrid.headerRenderer = headerRenderer;
			
			
			// remove the footer
			if (_footer && !_footerEnabled)
			{
				removeChild(_footer);
				_footer = null;
			}
			
			// add the footer
			if (!_footer && _footerEnabled)
			{
				_footer = new AdvancedDataGrid();
				
				_footer.draggableColumns = false;
				_footer.rowHeight = gridRowHeight;
				_footer.horizontalScrollPolicy = "off";
				_footer.setStyle("horizontalGridLines",false);
				_footer.setStyle("verticalGridLines",false);
				_footer.setStyle("alternatingItemColors","#FFFFFFF");
				_footer.setStyle("textAlign","center");
				_footer.setStyle("fontSize","12");
				_footer.setStyle("fontFamily","Tahoma");
				_footer.setStyle("color","#257d92");
				_footer.setStyle("fontWeight","bold");
				_footer.setStyle("borderAlpha","0");
				
				_footer.headerHeight = 0;
				_footer.percentWidth = 100;
				_footer.rowCount = 1;
				_footer.selectable = false;
				
				this.addElement(_footer);
			}
			
			if (_footer)
			{
				if (!_footerColumnsExplicit)
					_footerColumns = _gridColumns;
				_footer.columns = _footerColumns;
				_footer.dataProvider = _footerDataProvider;
				
				// es para guardar una relación de las posiciones de las columnas, y que siempre concuerden con las del footer
				if (syncColumnPositions && (_gridColumns.length == _footerColumns.length))
				{
					_connectedColumns = new Dictionary();
					for (var i:int = 0; i < _gridColumns.length; i++)
						_connectedColumns[_gridColumns[i]] = _footerColumns[i];
				}
			}
		}
		
		public function get gridColumns():Array
		{
			return _gridColumns;
		}
		
		public function set gridColumns(value:Array):void
		{
			_gridColumns = value;
			invalidateProperties();
		}
		
		public function get gridDataProvider():Object
		{
			return _gridDataProvider;
		}
		
		public function set gridDataProvider(value:Object):void
		{
			if(value && (value as ArrayCollection).length > 0)
			{
				_gridDataProvider = ObjectUtil.copy(value);
				_footerDataProvider = (_gridDataProvider as ArrayCollection).removeItemAt(0);
				
				
				var dataSortField:SortField;
				var numericDataSort:Sort;
				var i:int;
				if(((_gridDataProvider as ArrayCollection)[0] as Object).hasOwnProperty("totalVentaEsac")  )
				{
					dataSortField = new SortField();
					dataSortField.name = "totalVentaEsac";
					dataSortField.numeric = true;
					dataSortField.descending = true;
					numericDataSort = new Sort();
					numericDataSort.fields = [dataSortField];
					_gridDataProvider.sort = numericDataSort;
					_gridDataProvider.refresh();
					
					
					for (i = 0; i < _gridDataProvider.length; i++) 
					{
						if(_gridDataProvider[i] is ResumenVentasESAC)
							(_gridDataProvider[i] as ResumenVentasESAC).numFila = i+1;
					}
					
				}
				else if(((_gridDataProvider as ArrayCollection)[0] as Object).hasOwnProperty("total")  )
				{
					dataSortField = new SortField();
					dataSortField.name = "total";
					dataSortField.numeric = true;
					dataSortField.descending = true;
					numericDataSort = new Sort();
					numericDataSort.fields = [dataSortField];
					_gridDataProvider.sort = numericDataSort;
					_gridDataProvider.refresh();
					
					for (i = 0; i < _gridDataProvider.length; i++) 
					{
						if(_gridDataProvider[i] is ResumenConsulta)
							(_gridDataProvider[i] as ResumenConsulta).numFila = i+1;
					}
				}
				
				invalidateSize();
			}
			else
			{
				_gridDataProvider = new ArrayCollection;
				_footerDataProvider = new ArrayCollection;
			}
			
			invalidateProperties();
		}
		
		public function get footer():AdvancedDataGrid
		{
			return _footer;
		}
		
		public function set footer(value:AdvancedDataGrid):void
		{
			_footer = value;
		}
		
		public function get footerColumns():Array
		{
			return _footerColumns;
		}
		
		public function set footerColumns(value:Array):void
		{
			_footerColumns = value;
		}
		
		public function get footerColumnsExplicit():Boolean
		{
			return _footerColumnsExplicit;
		}
		
		public function set footerColumnsExplicit(value:Boolean):void
		{
			_footerColumnsExplicit = value;
		}
		
		public function get footerDataProvider():Object
		{
			return _footerDataProvider;
		}
		
		public function set footerDataProvider(value:Object):void
		{
			_footerDataProvider = value
			invalidateProperties();
		}
		
		public function get footerEnabled():Boolean
		{
			return _footerEnabled;
		}
		
		public function set footerEnabled(value:Boolean):void
		{
			_footerEnabled = value;
		}
		
		
		private function dataChanged(event:AdvancedDataGridEvent):void
		{
			if (_footer)
				_footer.invalidateList();
		}
		
		private function  columnMoved(event:IndexChangedEvent):void
		{
			_gridColumns = dataGrid.columns;
			
			_footerColumns = [];
			for (var i:int = 0; i < _gridColumns.length; i++)
				_footerColumns.push(_connectedColumns[_gridColumns[i]]);
			invalidateProperties();
		}
		
		private function columnResized(event:AdvancedDataGridEvent):void
		{
			if (_footer && (_gridColumns.length == _footerColumns.length))
			{
				for (var i:int = 0; i < _gridColumns.length; i++)
					(_footerColumns[i] as AdvancedDataGridColumn).width = (_gridColumns[i] as AdvancedDataGridColumn).width;
				_footer.invalidateList();
			}
		}
		
		public function get headerRenderer():IFactory
		{
			return _headerRenderer;
		}
		
		public function set headerRenderer(value:IFactory):void
		{
			if(value)
			{
				_headerRenderer = value;
				invalidateProperties();
			}
		}
		
		public function get headerHeight():Number
		{
			return _headerHeight;
		}
		
		public function set headerHeight(value:Number):void
		{
			_headerHeight = value;
		}
		
		public function validateGridsNow():void
		{
			dataGrid.validateNow();
			if(_footerEnabled)
				_footer.validateNow();
		}
	}
}
