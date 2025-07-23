package skins.skin.AdvancedDataGrid
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.StaticText;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import mx.collections.ArrayCollection;
	import mx.controls.AdvancedDataGrid;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
	import mx.controls.listClasses.IListItemRenderer;
	import mx.core.ClassFactory;
	import mx.events.AdvancedDataGridEvent;
	import mx.events.ScrollEvent;
	
	import skins.skin.AdvancedDataGrid.evento.headerItemRendererEvento;
	
	public class PQNetWhitCSS extends AdvancedDataGrid
	{
		public function PQNetWhitCSS()
		{
			//TODO: implement function
			super();
			addEventListener(AdvancedDataGridEvent.COLUMN_STRETCH,seAjustaronManualmente,false,0,true);
			super.styleName = "advanceDataGridWhitCSS";			 
			horizontalScrollPolicy = "off";
			addEventListener(ScrollEvent.SCROLL,escucharScroll,false,0,true);
		}
		
		private var _anchoColumnas:Array;
		private var _disableSortableColumns:Array;
		private var _disableDragableColumns:Array;
		private var _disableResizableColumns:Array;
		private var _enableHeaderWordWrap:Array;
		private var _sumableColumns:Array;
		private var _sumableAtributos:Array;
		
		private var _rowsPorVistaWhenFooterIsVisible:int;
		private var _styleCabeceraGrid:String;
		
		
		/*VARIABLES LOCALS*/
		private var isSetSorteableValues:Boolean = false;
		private var isSetDragableValues:Boolean = false;
		private var isSetResizableValues:Boolean = false;
		private var isSetWordWrapValues:Boolean = false;
		
		private var currentSelectedItem:uint;
		private var isWidthColumnsChange:Boolean = false;
		private var isColumnsAjustedManualy:Boolean = false;
		private var percentWidthColumns:Object;
		private var explicitWitdhColumns:Object;
		private var samePercentWidthColumns:Object;
		private var setCSSvalues:Boolean = false;
		
		private var explicitTotalWidth:Number;		
		private var _tipoStiloGrd:String = "";
		
		public function get styleCabeceraGrid():String
		{
			return _styleCabeceraGrid;
		}

		public function set styleCabeceraGrid(value:String):void
		{
			_styleCabeceraGrid = value;
			if(_styleCabeceraGrid == "headChico")
				super.headerRenderer = new ClassFactory(skins.skin.AdvancedDataGrid.skinHeadChicoTabOper);
		}

		public function get tipoStiloGrd():String
		{
			return _tipoStiloGrd;
		}

		public function set tipoStiloGrd(value:String):void
		{
			_tipoStiloGrd = value;
			if (_tipoStiloGrd == "estilo_2")
				super.styleName = "advanceDataGridWhitCSS_02";
			else
				super.styleName = "advanceDataGridWhitCSS";
		}
		
		override protected function drawHighlightIndicator(indicator:Sprite, x:Number, y:Number, 
														   width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer):void{
			
			var alpha:Number = this.getStyle("rollOverAlpha");
			if (isNaN(alpha))
				alpha = 1.0;
			
			if (alpha <= 0)
				return;
			
				
				var g:Graphics = Sprite(indicator).graphics;
				
				g.beginFill(color,alpha);
				g.drawRect(0, 0, indicator.parent.width-1,height);
				indicator.x = x;
				indicator.y = y;
		}
		
		override protected function drawSelectionIndicator(indicator:Sprite, x:Number, y:Number, width:Number, height:Number, color:uint, itemRenderer:IListItemRenderer):void
		{			
			
			if(itemRenderer.data == null){
				return;
			}
			
			var alpha:Number = this.getStyle("rollOverAlpha");
			if (isNaN(alpha))
				alpha = 1.0;
			
			if (alpha <= 0)
				return;
			
				
				var borderColor:uint = this.getStyle("franjaSelectionColor");
				
				var g:Graphics = Sprite(indicator).graphics;
				g.clear();
				
				g.beginFill(borderColor,alpha);
				g.drawRect(0, 0, 10, height);
				g.endFill();
				g.beginFill(color,1.0);
				g.drawRect(10, 0, indicator.parent.width-11,height);
				g.endFill();
				indicator.x = x;
				indicator.y = y;
		}
		
		/*override protected function draw*/
		
		private var myRowHeight:uint;
		private var _paddinTopFooter:uint;
		private var _fontFamily:String;
		private var _fontSize:Number;
		private var _styleFont:String;
		private var _backGroundColor:uint;
		private var headerBackGround:ClassFactory;
		override protected function commitProperties():void{
			super.commitProperties();
			
			/*Leyendo Propiedades del CSS*/
			if(!setCSSvalues){
				setCSSvalues = true;
				
				this.setStyle("headerColors",[_backGroundColor,_backGroundColor]);
				this.setStyle("alternatingItemColors",[_backGroundColor,_backGroundColor]);
				
				fontFamily = this.getStyle("fontFamily");
				fontSize = this.getStyle("fontSize");
				styleFont = this.getStyle("fontStyle");
				
				var headerHeight:uint = this.getStyle("headerHeight");
				this.headerHeight = headerHeight;
				
				myRowHeight = this.getStyle("rowHeight");
				this.rowHeight = myRowHeight;
				
				paddinTopFooter = this.getStyle("paddingTopFooter");
				
				var sortExpertMod:Boolean = this.getStyle("sortExpertMode");
				this.sortExpertMode = sortExpertMod;
				
				this.sortItemRenderer = new ClassFactory(this.getStyle("sortItemRenderer"));
				dispatchEvent(new Event("SeHaLeidoLaAlturaParaFooterDelGridAdvancedDataGridPQNet"));
			}
			
			currentSelectedItem = NaN;
			
			if(isWidthColumnsChange){
				isWidthColumnsChange =false;
				partirAnchosPorcentajeyExplicitos(_anchoColumnas);
			}
			
			/*SET PROPERTIES OF COLUMNS*/
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
			
			if(!isSetDragableValues && disableDragableColumns != null){
				for (i = 0; i < disableDragableColumns.length; i++) 
				{
					if(columns[disableDragableColumns[i]])
						(columns[disableDragableColumns[i]] as AdvancedDataGridColumn).draggable = false;
					else
						trace("\n ERROR EN ADVANCED DATA GRID: La columna  "+disableDragableColumns[i] + ", indicada para desactivar la propiedad  DRAGGABLE, \n " +
							"no se encuentra en el arreglo de columnas declaradas para este Grid");
				}
				isSetDragableValues = true;
			}
			
			if(!isSetWordWrapValues && enableHeaderWordWrap != null){
				for (i = 0; i < enableHeaderWordWrap.length; i++) 
				{
					if(columns[enableHeaderWordWrap[i]])
						(columns[enableHeaderWordWrap[i]] as AdvancedDataGridColumn).headerWordWrap = true;
					else
						trace("\n ERROR EN ADVANCED DATA GRID: La columna  "+enableHeaderWordWrap[i] + ", indicada para activar la propiedad  WORD WRAP, \n " +
							"no se encuentra en el arreglo de columnas declaradas para este Grid");
				}
				isSetWordWrapValues = true;
			}
		}
		
		private var _showFooter:Boolean = false;
		private var timeId:uint;
		private function escucharScroll(eve:ScrollEvent):void
		{
			if((eve.currentTarget as PQNetWhitCSS).maxVerticalScrollPosition <= eve.position){
				showFooter = true;
				dispatchEvent(new Event("SeLLegoALFinalDelScrollAdvancedDataGridPQNet"));
			}else{
				if(showFooter && ((eve.currentTarget as PQNetWhitCSS).maxVerticalScrollPosition) >= (eve.position +1)){
					if(!_isShowEverFooter){
						showFooter = false;
						dispatchEvent(new Event("NoEsELFinalDelScrollAdvancedDataGridPQNet"));
					}
				}
			}
			
			if (eve.currentTarget && eve.currentTarget is PQNetWhitCSS)
			{
				stateOverWheel();
			}
		}
		
		public function stateOverWheel():void
		{
			clearTimeout(timeId);
			timeId = setTimeout(showHide, 2000, false, true);
			showHide(true);
		}
		
		private function showHide(opacidad:Boolean = false, wheel:Boolean = false):void
		{
			if (verticalScrollBar)
				verticalScrollBar.alpha = Number(opacidad);
		}
		
		private function stateScrollOver(event:MouseEvent):void
		{
			stateOverWheel();
		}
		
		private var calculateWithCurrentWidth:Number;
		private var anchosCalculados:Object;
		private var showingFooter:Boolean = false;
		private var _isShowEverFooter:Boolean = false;
		private var addEventScroll:Object = new Object;
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			if ( verticalScrollBar && !addEventScroll.hasOwnProperty("evento"))
			{
				verticalScrollBar.addEventListener(MouseEvent.MOUSE_OVER, stateScrollOver);
			}
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
				
				//Se resta la suma de los achos determinados explicitamente
				if(columns  && columns.length == _anchoColumnas.length && !isColumnsAjustedManualy){
					
					if(anchosCalculados == null){
						anchosCalculados = new Object;
						calcularAnchosFijos();
					}
					
					var suma:Number = 0;
					var anchoRestante:Number = ((unscaledWidth) - (explicitTotalWidth +10));
					/*trace("Ancho a repartir: " + anchoRestante);
					trace("Ancho Total: " + (anchoRestante + explicitTotalWidth));*/
					
					for (var i:int = 0; i < columns.length; i++) 
					{
						if(explicitWitdhColumns[i]){
							/*	if((columns[i] as AdvancedDataGridColumn).resizable)*/
							(columns[i] as AdvancedDataGridColumn).width = Number(explicitWitdhColumns[i]);
							suma += (columns[i] as AdvancedDataGridColumn).width;
						}else{
							var widthTemp:Number;
							widthTemp = anchoRestante * anchosCalculados[i];
							(columns[i] as AdvancedDataGridColumn).width = widthTemp;
							suma += (columns[i] as AdvancedDataGridColumn).width;
						}
					}
					/*trace("La suma: " + suma);*/
					
				}else{
					if(columns.length != _anchoColumnas.length){
						trace( '\n ERROR EN ADVANCED DATA GRID: La longitud del arreglo "anchoColumnas no corresponde con el número de columnas declaradas para el Grid,' +
							' \n Por lo tanto todas las columnas tendrán el mismo ancho');
					}
				}
			}
			
			if(showFooter && !showingFooter){
				showingFooter = true;
				var temp1:int = unscaledHeight -((rowsPorVistaWhenFooterIsVisible * rowHeight) + (this.parent as PQNetAdvanceDataGridFooter).footer.height);
				(this.parent as PQNetAdvanceDataGridFooter).footer.paddingBottom = temp1-3;
			}else if(!showFooter && showingFooter){
				showingFooter = false;
				(this.parent as PQNetAdvanceDataGridFooter).footer.paddingBottom = 0;
			}
			
			if(!isSetResizableValues && disableResizableColumns != null){
				for (k = 0; k < disableResizableColumns.length; k++)
				{
					if(columns[disableResizableColumns[k]])
						(columns[disableResizableColumns[k]] as AdvancedDataGridColumn).resizable = false;
					else
						trace("\n ERROR EN ADVANCED DATA GRID: La columna  "+disableResizableColumns[k] + ", indicada para desactivar la propiedad  RESIZABLE, \n " +
							"no se encuentra en el arreglo de columnas declaradas para este Grid");
				}
				isSetResizableValues = true;
			}
		}
		
		
		private function calcularAnchosFijos():void
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
			porcent = ((porcent /columnasWithSameWidth.length )/100);
			for (var k:int = 0; k < columnasWithSameWidth.length; k++) 
			{
				anchosCalculados[columnasWithSameWidth[k]] = porcent;
			}
		}
		
		/**
		 * Llamado desde la función sobreescrita <code>commitProperties()</code>, para dividir los valores en porcentaje de los explicitos
		 *  
		 * Las variables obtenidas de esta función se utilizarán en la función sobrescrita de <code> updateDisplayList() </code>
		 *
		 */
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
		
		private function seAjustaronManualmente(even:AdvancedDataGridEvent):void
		{
			isColumnsAjustedManualy = true;
		}
		
		public function get disableSortableColumns():Array
		{
			return _disableSortableColumns;
		}
		/**
		 * <p>Recibe un Array indicando los indices de las columnas en las cuales se desactivara la capacidad de ordenar sus filas</p>
		 * Entendiendo que la primer columna tiene el indice cero.
		 * */
		public function set disableSortableColumns(value:Array):void
		{
			_disableSortableColumns = value;
		}
		
		public function get disableDragableColumns():Array
		{
			return _disableDragableColumns;
		}
		
		/**
		 * <p>Recibe un Array indicando los indices de las columnas en las cuales se desactivara la capacidad de dar click y arrastrarla</p>
		 * Entendiendo que la primer columna tiene el indice cero.
		 * */
		public function set disableDragableColumns(value:Array):void
		{
			_disableDragableColumns = value;
		}
		
		public function get disableResizableColumns():Array
		{
			return _disableResizableColumns;
		}
		
		public function set disableResizableColumns(value:Array):void
		{
			_disableResizableColumns = value;
		}
		
		override public function set dataProvider(value:Object):void{
			if(value == null)
				return;
			super.dataProvider = value;
			
			if(_sumableColumns != null && _sumableColumns.length > 0 && value != null && ArrayCollection(value).length > 0)
			{
				sumarValoresDeLasColumnas();
			}

			if(_sumableAtributos != null && _sumableAtributos.length > 0 && value != null && ArrayCollection(value).length > 0)
			{
				sumarValoresDeLosAtributos();
			}
			timeId = setTimeout(showHide, 2000, false, true);
		}
		
		private var _sumasEnLasColumnas:Object;
		private function sumarValoresDeLasColumnas():void
		{
			var atributo:String;
			var currentItem:*;
			if(columns.length > 0)
			{
				for (var i:int = 0; i < _sumableColumns.length; i++) 
				{
					atributo = AdvancedDataGridColumn(columns[_sumableColumns[i]]).dataField;
					
					for (var j:int = 0; j < dataProvider.length; j++) 
					{
						currentItem = dataProvider[j];
						if(Object(currentItem).hasOwnProperty(atributo) && !isNaN(currentItem[atributo]) )
						{
							if(_sumasEnLasColumnas == null)
								_sumasEnLasColumnas = new Object;
							
							if(j==0)
								_sumasEnLasColumnas[_sumableColumns[i]] = 0;
							_sumasEnLasColumnas[_sumableColumns[i]] += currentItem[atributo];  
						}
					}
				}
			}
		}

		private var _sumasDeLosAtributos:Object;
		private function sumarValoresDeLosAtributos():void
		{
			var atributo:String;
			var currentItem:*;
			if(columns.length > 0)
			{
				for (var i:int = 0; i < _sumableAtributos.length; i++) 
				{
					atributo = _sumableAtributos[i];
					
					for (var j:int = 0; j < dataProvider.length; j++) 
					{
						currentItem = dataProvider[j];
						if(Object(currentItem).hasOwnProperty(atributo) && !isNaN(currentItem[atributo]) )
						{
							if(_sumasDeLosAtributos == null)
								_sumasDeLosAtributos = new Object;
							
							if(j==0)
								_sumasDeLosAtributos[_sumableAtributos[i]] = 0;
							_sumasDeLosAtributos[_sumableAtributos[i]] += currentItem[atributo];  
						}
					}
				}
			}
		}
		
		public function get paddinTopFooter():uint
		{
			return _paddinTopFooter;
		}
		
		public function set paddinTopFooter(value:uint):void
		{
			_paddinTopFooter = value;
		}
		
		public function get rowsPorVistaWhenFooterIsVisible():int
		{
			return _rowsPorVistaWhenFooterIsVisible;
		}
		
		public function set rowsPorVistaWhenFooterIsVisible(value:int):void
		{
			_rowsPorVistaWhenFooterIsVisible = value;
		}
		
		public function get isShowEverFooter():Boolean
		{
			return _isShowEverFooter;
		}
		
		public function set isShowEverFooter(value:Boolean):void
		{
			_isShowEverFooter = value;
		}
		
		public function get fontFamily():String
		{
			return _fontFamily;
		}
		
		public function set fontFamily(value:String):void
		{
			_fontFamily = value;
		}
		
		public function get fontSize():Number
		{
			return _fontSize;
		}
		
		public function set fontSize(value:Number):void
		{
			_fontSize = value;
		}
		
		public function get styleFont():String
		{
			return _styleFont;
		}
		
		public function set styleFont(value:String):void
		{
			_styleFont = value;
		}
		
		public function get showFooter():Boolean
		{
			return _showFooter;
		}
		
		public function set showFooter(value:Boolean):void
		{
			_showFooter = value;
		}
		
		public function get enableHeaderWordWrap():Array
		{
			return _enableHeaderWordWrap;
		}
		
		public function set enableHeaderWordWrap(value:Array):void
		{
			_enableHeaderWordWrap = value;
		}
		
		public function get sumableColumns():Array
		{
			return _sumableColumns;
		}
		
		public function set sumableColumns(value:Array):void
		{
			_sumableColumns = value;
		}
		
		public function get sumasEnLasColumnas():Object
		{
			return _sumasEnLasColumnas;
		}
		
		public function set sumasEnLasColumnas(value:Object):void
		{
			_sumasEnLasColumnas = value;
		}
		
		public function get sumableAtributos():Array
		{
			return _sumableAtributos;
		}
		
		public function set sumableAtributos(value:Array):void
		{
			_sumableAtributos = value;
		}
		
		public function get sumasDeLosAtributos():Object
		{
			return _sumasDeLosAtributos;
		}
		public function set sumasDeLosAtributos(value:Object):void
		{
			_sumasDeLosAtributos = value;
		}

		public function get backGroundColor():uint
		{
			return _backGroundColor;
		}

		public function set backGroundColor(value:uint):void
		{
			_backGroundColor = value;
		}

	}
}
