package skin.grid.evento
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import mx.controls.AdvancedDataGrid;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridListData;
	import mx.core.ClassFactory;
	import mx.events.AdvancedDataGridEvent;
	
	public class AdvancedDataGridEvento extends AdvancedDataGrid
	{
		private var _anchoColumnas:Array;
		private var isWidthColumnsChange:Boolean = false;
		
		private var explicitTotalWidth:Number;
		private var samePercentWidthColumns:Object;
		private var percentWidthColumns:Object;
		private var explicitWitdhColumns:Object;
		private var _disableResizableColumns:Array;
		private var _disableSortableColumns:Array;
		private var isSetResizableValues:Boolean = false;
		private var isSetSorteableValues:Boolean = false;
		public var isColumnsAjustedManualy:Boolean = false;
		
		private var _isFirstGrid:Boolean = true;
		
		public function AdvancedDataGridEvento()
		{
			super();
			addEventListener(AdvancedDataGridEvent.COLUMN_STRETCH,seAjustaronManualmente,false,0,true);
			super.draggableColumns = false;
			super.styleName = 'advanceDataGridEvento';
			super.headerRenderer = new ClassFactory(skin.grid.evento.headerItemRendererEvento);
			super.horizontalScrollPolicy = 'off';
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			var string:String = this.getStyle("fontFamily");
			if(isWidthColumnsChange){
				isWidthColumnsChange =false;
				partirAnchosPorcentajeyExplicitos(_anchoColumnas);
			}
			
			var i:int;
			if(!isSetSorteableValues && disableSortableColumns != null){
				for ( i= 0; i < disableSortableColumns.length; i++) 
				{
					if(columns[disableSortableColumns[i]])
						(columns[disableSortableColumns[i]] as AdvancedDataGridColumn).sortable = false;
					else
						trace("\n ERROR EN ADVANCED DATA GRID: La columna  "+disableSortableColumns[i] + ", indicada para desactivar la propiedad  SORT, \n " +
							"no se encuentra en el arreglo de columnas declaradas para este Grid");
				}
				isSetSorteableValues = true;
			}
			
			//Si no es el Primer Grid que se muestra entonces Recalcular Tamaños en commitProperties
			if (!isFirstGrid ){
				if(calculateWithCurrentWidth != unscaledWidth){
					calculateWithCurrentWidth = unscaledWidth;
					
					if(isColumnsAjustedManualy )
						isColumnsAjustedManualy = false;
					
					if(isSetResizableValues){
						for (var k:int = 0; k < disableResizableColumns.length; k++) 
						{
							if(columns[disableResizableColumns[k]])
								(columns[disableResizableColumns[k]] as AdvancedDataGridColumn).resizable = true;
						}
						isSetResizableValues = false;
					}
					
					if(columns  && columns.length == _anchoColumnas.length && !isColumnsAjustedManualy){
						
						if(anchosCalculados == null){
							anchosCalculados = new Object;
							calcularAnchosFijos();
						}
						
						var suma:Number = 0;
						var anchoRestante:Number = ((unscaledWidth) - (explicitTotalWidth +10));
						
						for (i = 0; i < columns.length; i++) 
						{
							if(explicitWitdhColumns[i]){
								(columns[i] as AdvancedDataGridColumn).width = Number(explicitWitdhColumns[i]);
								headerItems.length <= 0 ? true : ((((headerItems[0])[i] as headerItemRendererEvento).listData as AdvancedDataGridListData).item as AdvancedDataGridColumn).width = Number(explicitWitdhColumns[i]);
								//headerItems.length <= 0 ? true : ((headerItems[0])[i] as headerItemRendererEvento).invalidateProperties();
								suma += (columns[i] as AdvancedDataGridColumn).width;
							}else{
								var widthTemp:Number;
								widthTemp = anchoRestante * anchosCalculados[i];
								(columns[i] as AdvancedDataGridColumn).width = widthTemp;
								headerItems.length <= 0 ? true : ((((headerItems[0])[i] as headerItemRendererEvento).listData as AdvancedDataGridListData).item as AdvancedDataGridColumn).width = widthTemp;
								//headerItems.length <= 0 ? true : ((headerItems[0])[i] as headerItemRendererEvento).invalidateProperties();
								suma += (columns[i] as AdvancedDataGridColumn).width;
							}
						}
					}
				}
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
		
		public var calculateWithCurrentWidth:Number;
		private var anchosCalculados:Object;
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			
			//Si es el Primer Grid que se muestra entonces Recalcular Tamaños en updateDisplayList
			if (isFirstGrid){
				if(calculateWithCurrentWidth != unscaledWidth){
					calculateWithCurrentWidth = unscaledWidth;
					
					if(isColumnsAjustedManualy )
						isColumnsAjustedManualy = false;
					
					if(isSetResizableValues){
						for (var k:int = 0; k < disableResizableColumns.length; k++) 
						{
							if(columns[disableResizableColumns[k]])
								(columns[disableResizableColumns[k]] as AdvancedDataGridColumn).resizable = true;
						}
						isSetResizableValues = false;
					}
					
					if(columns  && columns.length == _anchoColumnas.length && !isColumnsAjustedManualy){
						
						if(anchosCalculados == null){
							anchosCalculados = new Object;
							calcularAnchosFijos();
						}
						
						var suma:Number = 0;
						var anchoRestante:Number = ((unscaledWidth) - (explicitTotalWidth +10));
						
						for (var i:int = 0; i < columns.length; i++) 
						{
							if(explicitWitdhColumns[i]){
								(columns[i] as AdvancedDataGridColumn).width = Number(explicitWitdhColumns[i]);
								headerItems.length <= 0 ? true : ((((headerItems[0])[i] as headerItemRendererEvento).listData as AdvancedDataGridListData).item as AdvancedDataGridColumn).width = Number(explicitWitdhColumns[i]);
								//headerItems.length <= 0 ? true : ((headerItems[0])[i] as headerItemRendererEvento).invalidateProperties();
								suma += (columns[i] as AdvancedDataGridColumn).width;
							}else{
								var widthTemp:Number;
								widthTemp = anchoRestante * anchosCalculados[i];
								(columns[i] as AdvancedDataGridColumn).width = widthTemp;
								headerItems.length <= 0 ? true : ((((headerItems[0])[i] as headerItemRendererEvento).listData as AdvancedDataGridListData).item as AdvancedDataGridColumn).width = widthTemp;
								//headerItems.length <= 0 ? true : ((headerItems[0])[i] as headerItemRendererEvento).invalidateProperties();
								suma += (columns[i] as AdvancedDataGridColumn).width;
							}
						}
					}
				}
			}
			
			if(!isSetResizableValues && disableResizableColumns != null){
				for (var z:int = 0; z < disableResizableColumns.length; z++)
				{
					if(columns[disableResizableColumns[z]])
						(columns[disableResizableColumns[z]] as AdvancedDataGridColumn).resizable = false;
					else
						trace("\n ERROR EN ADVANCED DATA GRID: La columna  "+disableResizableColumns[z] + ", indicada para desactivar la propiedad  RESIZABLE, \n " +
							"no se encuentra en el arreglo de columnas declaradas para este Grid");
				}
				isSetResizableValues = true;
			}
			
		}
		
		public function calcularAnchosFijos():void
		{
			var columnasWithSameWidth:Array;
			var porcent: Number =0;
			
			var sumaDePorcentaje:Number =0;
			for (var j:int = 0; j < _anchoColumnas.length; j++){
				
				if(percentWidthColumns[j]){
					anchosCalculados[j] = (percentWidthColumns[j] / 100);
					sumaDePorcentaje += percentWidthColumns[j];
				}else if(!explicitWitdhColumns.hasOwnProperty(j)){
					if(columnasWithSameWidth == null){
						columnasWithSameWidth = new Array();
					}
					columnasWithSameWidth.push(samePercentWidthColumns[j]);
				}
			}
			porcent = 0;
			porcent= (100 - sumaDePorcentaje);
			if (columnasWithSameWidth != null && columnasWithSameWidth.length > 0 ){
				porcent = ((porcent /columnasWithSameWidth.length )/100);
				for (var k:int = 0; k < columnasWithSameWidth.length; k++) 
				{
					anchosCalculados[columnasWithSameWidth[k]] = porcent;
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
			invalidateDisplayList();
		}
		
		private function seAjustaronManualmente(even:AdvancedDataGridEvent):void
		{
			isColumnsAjustedManualy = true;
		}
		
		public function get disableResizableColumns():Array
		{
			return _disableResizableColumns;
		}
		
		public function set disableResizableColumns(value:Array):void
		{
			_disableResizableColumns = value;
		}
		
		public function set disableSortableColumns(value:Array):void
		{
			_disableSortableColumns = value;
		}
		
		public function get disableSortableColumns():Array
		{
			return _disableSortableColumns;
		}
		
		[Inspectable(category="Effects",defaultValue="true",enumeration="true,false")]
		public function get isFirstGrid():Boolean
		{
			return _isFirstGrid;
		}
		
		public function set isFirstGrid(value:Boolean):void
		{
			_isFirstGrid = value;
		}
		
		
	}
}