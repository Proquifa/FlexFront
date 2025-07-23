package mx.com.proquifa.proquifanet.rsl.vista.vistas.comun
{
	import flash.events.Event;
	import flash.events.FocusEvent;
	import flash.geom.Point;
	
	import mx.binding.utils.BindingUtils;
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.comun.renders.EventoIRendererListaConEnfoque;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.core.ClassFactory;
	import mx.effects.AnimateProperty;
	import mx.events.FlexEvent;
	
	import spark.components.List;
	import spark.components.VGroup;
	import spark.core.NavigationUnit;
	import spark.events.IndexChangeEvent;
	
	[Event(name="itemSeleccionado",type="flash.events.Event")]
	[Event(name="desenfoqueAutomatico",type="flash.events.Event")]
	public class ListaConItemsEnfocados extends VGroup
	{
		
		private var listEnfocados:List = new List;
		private var _itemRenderer1:Class;
		private var _etiquetasTotal:Array;
		
		private var scroller:Boolean = false;
		
		private var _dataProvider:ArrayCollection;
		private var _dataProviderEnfocados:ArrayCollection;
		private var dataProviderSinEnfoque:ArrayCollection;
		private var _areClikeablesDesenfocados:Boolean = false;
		private var _length:int;
		
		private var _key:Object;
		private var _keySeleccionar:String;
		private var _index:int = -1;
		
		public function ListaConItemsEnfocados()
		{
			this.percentHeight = 100;
			this.percentWidth = 100;
			
			
			listEnfocados.setStyle("borderVisible","false");
			listEnfocados.setStyle("horizontalScrollPolicy","false");
			listEnfocados.setStyle("contentBackgroundAlpha",0);
			listEnfocados.percentHeight = 100;
			listEnfocados.percentWidth = 100;
			listEnfocados.id = "listaEnfocados";
			
			this.addElement(listEnfocados);
			
			key = null;
			index = -1;
			scroller = false;
			addEventListener(EventoIRendererListaConEnfoque.SELECCIONAR_ITEM_RENDERER_KEY, selectedIndex, false, 0, true );
			
			super();
		}
		
		
		private var _currentItemTarget:Object;
		private var _newIndex:int;
		private var _oldIndex:int;
		private var _newIndexSinEnfoque:int;
		private var _oldIndexSinEnfoque:int;
		
		
		private function cambioSeleccion(e:IndexChangeEvent):void
		{
			var currentTemp:Object;
			
			if(_currentItemTarget != (e.currentTarget as List).selectedItem)
			{
				if(_areClikeablesDesenfocados){
					currentTemp = (e.currentTarget as List).selectedItem;
					if (currentTemp != null ){
						if((!currentTemp.hasOwnProperty("isTotales") && (currentTemp.hasOwnProperty(diferenciadorBoleanoEnfoyDesenfocado) && currentTemp[diferenciadorBoleanoEnfoyDesenfocado] == true ))){
							newIndex = listEnfocados.selectedIndex;
							oldIndex = e.oldIndex;
							newIndexSinEnfoque = listEnfocados.selectedIndex;
							oldIndexSinEnfoque = e.oldIndex;
							_currentItemTarget = currentTemp;
							if (currentItemTarget.hasOwnProperty("key")){
								keySeleccionar = currentItemTarget["key"];
							}
							dispatchEvent(new Event("itemSeleccionado"));
						}else if(!currentTemp.hasOwnProperty("isTotales")){
							newIndexSinEnfoque = listEnfocados.selectedIndex;
							oldIndexSinEnfoque = e.oldIndex;
							newIndexSinEnfoque = listEnfocados.selectedIndex;
							oldIndexSinEnfoque = e.oldIndex;
							_currentItemTarget = currentTemp;
							if (currentItemTarget.hasOwnProperty("key")){
								keySeleccionar = currentItemTarget["key"];
							}
							dispatchEvent(new Event("itemSeleccionado"));
						}
						
						if(currentTemp.hasOwnProperty("isTotales"))
							e.preventDefault();
					}
				}else{
					
					currentTemp = (e.currentTarget as List).selectedItem;
					if(currentTemp != null && (currentTemp.hasOwnProperty("isTotales") || (currentTemp.hasOwnProperty(diferenciadorBoleanoEnfoyDesenfocado) && currentTemp[diferenciadorBoleanoEnfoyDesenfocado] == true ))){
						newIndex = listEnfocados.selectedIndex;
						oldIndex = e.oldIndex;
						newIndexSinEnfoque = listEnfocados.selectedIndex;
						oldIndexSinEnfoque = e.oldIndex;
						_currentItemTarget = currentTemp;
						if (currentItemTarget.hasOwnProperty("key")){
							keySeleccionar = currentItemTarget["key"];
						}
						dispatchEvent(new Event("itemSeleccionado"));
						
						if(currentTemp.hasOwnProperty("isTotales"))
							e.preventDefault();
					}else{
						e.preventDefault();
					}
				}
			}
		}
		
		private function sePerdioElFoco(e:FocusEvent):void
		{
			e.currentTarget.selectedIndex = -1;
		}
		
		override protected function commitProperties():void{
			
			if(_itemRenderer1 != null){
				listEnfocados.itemRenderer = new ClassFactory(_itemRenderer1);
				listEnfocados.addEventListener(IndexChangeEvent.CHANGING,cambioSeleccion,false,0,false);
				listEnfocados.addEventListener(FlexEvent.UPDATE_COMPLETE,createComplete,false,0,false);
			}
			
			this.gap = 0;
			this.paddingTop = -10;
			
			inicializar();
			
			BindingUtils.bindSetter(dataProviderChange,listEnfocados,"dataProvider");
			
			super.commitProperties();
		}
		
		
		protected function createComplete(eve:FlexEvent):void
		{
			if (listEnfocados != null && listEnfocados.dataProvider != null && listEnfocados.dataProvider.length > 1){
				listEnfocados.dispatchEvent(new IndexChangeEvent(IndexChangeEvent.CHANGING));
			}
			
			if ( scroller ){
				scrollToIndex(index);
				scroller = false;
			}
		}
		
		private function scrollToIndex(index:int, animationDuration:int = 100):void {
			var pt:Point = listEnfocados.layout.getScrollPositionDeltaToElement(index);
			var verticalScroll:int = listEnfocados.layout.verticalScrollPosition;
			var verticalScrollOld:int = listEnfocados.layout.verticalScrollPosition;
			var delta:int = -1;
			if (pt != null ){
				while (pt) {
					listEnfocados.validateNow();
					if (pt.y > 0) {
						delta = listEnfocados.layout.getVerticalScrollPositionDelta(NavigationUnit.DOWN);
					} else {
						verticalScrollOld = delta;
						delta = listEnfocados.layout.getVerticalScrollPositionDelta(NavigationUnit.UP);
					}
					listEnfocados.layout.verticalScrollPosition += delta;
					verticalScroll += delta;
					pt = listEnfocados.layout.getScrollPositionDeltaToElement(index);
					if ((delta == 0 || verticalScrollOld == delta) && pt != null ){
						break;
					}
				}
				//listEnfocados.ensureIndexIsVisible(index);
				var animation:AnimateProperty = new AnimateProperty(listEnfocados.dataGroup);
				animation.property = "verticalScrollPosition";
				animation.duration = animationDuration;
				animation.toValue = verticalScroll;
				//animation.play();
			}
		}
		
		private function dataProviderChange(data:ArrayCollection):void
		{
			if(data == null){
				_length = 0;
			}else{
				_length = data.length;
			}
		}
		
		
		private var _propiedadesASumar:Array;
		private var _totalesEnfoque:Object;
		private var _totalesTodos:Object;
		private function calcularTotales():void
		{
			_totalesEnfoque = new Object;
			_totalesTodos = new Object;
			
			var _totalesSinEnfoque:Object = new Object;
			var _totalesConEnfoque:Object = new Object;
			var i:int;
			
			var currentProperty:String; 
			
			if((_propiedadesASumar != null && _propiedadesASumar.length >0) && (dataProviderEnfocados != null || dataProviderSinEnfoque != null) ){
				
				for ( i = 0; i < _propiedadesASumar.length; i++) 
				{
					currentProperty = _propiedadesASumar[i];
					
					if(dataProviderEnfocados != null){
						
						if(currentProperty.indexOf(".") > -1 || dataProviderEnfocados[0].hasOwnProperty(currentProperty)){
							_totalesConEnfoque[currentProperty] = sumarCampos(currentProperty,dataProviderEnfocados);
						}else{
							trace("No se encuentra la propiedad \""+ currentProperty + "\"");
							break;
						}
					}else{
						_totalesConEnfoque[currentProperty] = 0;
					}
					
					if(dataProviderSinEnfoque != null){
						
						if(currentProperty.indexOf(".") > -1 || dataProviderSinEnfoque[0].hasOwnProperty(currentProperty)){
							
							_totalesSinEnfoque[currentProperty] = sumarCampos(currentProperty,dataProviderSinEnfoque);
							
						}else{
							trace("No se encuentra la propiedad \""+ currentProperty + "\"");
							break;
						}
					}else{
						_totalesSinEnfoque[currentProperty] = 0;
					}
					
					_totalesTodos[i] = armarLabelTotales(i,(_totalesConEnfoque[currentProperty] as Number ) + (_totalesSinEnfoque[currentProperty] as Number)); 
					_totalesEnfoque[i] = armarLabelTotales(i,_totalesConEnfoque[currentProperty] as Number);
					
				}
				
				_totalesTodos.isTotales = "true";
				_totalesEnfoque.isTotales = "true";
				
			}else if(_propiedadesASumar != null && _propiedadesASumar.length >0){
				
				for ( i = 0; i < _propiedadesASumar.length; i++) 
				{
					currentProperty = _propiedadesASumar[i];
					_totalesTodos[i] = armarLabelTotales(i,0);
					_totalesTodos.isTotales = "unico";
				}
			}
			
			if (dataProviderEnfocados == null && isEnfoqueActivado){
				dataProviderEnfocados = new ArrayCollection();
				dataProviderEnfocados.addItem(_totalesEnfoque);
				if(_dataProvider != null && !_dataProvider[_dataProvider.length - 1].hasOwnProperty("isTotales"))
					_dataProvider.addItem(_totalesTodos);
			}
			else{
				if(_dataProvider == null){
					_dataProvider = new ArrayCollection([_totalesTodos]);
					//dataProvider.addItem(_totalesTodos);
				}else{
					if(!_dataProvider[0].hasOwnProperty("isTotales"))
						_dataProvider.addItem(_totalesTodos);
				}
				
				if(dataProviderEnfocados != null){
					dataProviderEnfocados.addItem(_totalesEnfoque);
				}
			}
			
		}
		
		private function armarLabelTotales(indexEtiqueta:uint,total:Number):String{
			if(_etiquetasTotal.length>indexEtiqueta){
				
				if(_etiquetasTotal[indexEtiqueta].singular == "USD"){
					return "$"+ UtilsFormatosNumericos.precisionADosDecimalesConComas(total)+" "+ _etiquetasTotal[indexEtiqueta].singular;
				}else{
					
					if(total == 1){
						return total + " "+ _etiquetasTotal[indexEtiqueta].singular;
					}else{
						return total + " "+ _etiquetasTotal[indexEtiqueta].plural;
					}
				}
			}
			return "";
		}
		
		private function sumarCampos(propiedad:String, arrayTemp:ArrayCollection):Number
		{
			var total:Number = 0;
			for (var i:int = 0; i < arrayTemp.length; i++) 
			{
				var valor:* = Util.obtenerValorPropiedad(propiedad,arrayTemp.getItemAt(i));;
				if( valor is Number || valor is int ){
					total += valor;
				}
				else{
					trace('No se pudo sumar ' + valor + ' debido a que no es number o int. Indices: [' + i.toString() + '] ' );
				}
			}
			return total;
		}
		
		private var _isEnfoqueActivado:Boolean = false;
		
		private function inicializar():void{
			_totalesTodos = new Object;
			_totalesTodos.inizializar = true;
			
			if(listEnfocados.dataProvider == null){
				listEnfocados.dataProvider = new ArrayCollection([_totalesTodos]);
				_length = listEnfocados.dataProvider.length;
			}
		}
		
		
		public function get newIndex():int
		{
			return _newIndex;
		}
		
		public function set newIndex(value:int):void
		{
			_newIndex = value;
		}
		
		public function get oldIndex():int
		{
			return _oldIndex;
		}
		
		public function set oldIndex(value:int):void
		{
			_oldIndex = value;
		}
		
		public function get currentItemTarget():Object
		{
			return _currentItemTarget;
		}
		
		public function set currentItemTarget(value:Object):void
		{
			_currentItemTarget = value;
		}
		
		public function get propiedadesASumar():Array
		{
			return _propiedadesASumar;
		}
		
		public function set propiedadesASumar(value:Array):void
		{
			_propiedadesASumar = value;
		}
		
		public function get etiquetasTotal():Array
		{
			return _etiquetasTotal;
		}
		
		public function set etiquetasTotal(value:Array):void
		{
			_etiquetasTotal = value;
		}
		
		public function get isEnfoqueActivado():Boolean
		{
			return _isEnfoqueActivado;
		}
		
		public function set isEnfoqueActivado(value:Boolean):void
		{
			_isEnfoqueActivado = value;
			
			if(dataProviderSinEnfoque != null){
				listEnfocados.dataProvider = null;
				if(isEnfoqueActivado){
					if (dataProviderEnfocados == null ){
						calcularTotales();
					}
					
					if ((dataProviderEnfocados.length -1 ) < newIndex ) {
						newIndex = 0;
					}else if (( dataProviderEnfocados.length -1 ) == newIndex ){
						if (dataProviderEnfocados[newIndex].hasOwnProperty("isTotales")){
							newIndex = 0;
						}
					}
					
					listEnfocados.dataProvider = dataProviderEnfocados;
					listEnfocados.selectedIndex = newIndex;
				}
				else
				{
					listEnfocados.dataProvider = dataProvider;
					listEnfocados.selectedIndex = newIndexSinEnfoque;
				}
			}
		}
		
		public function get dataProvider():ArrayCollection
		{
			return _dataProvider;
		}
		
		public function set dataProvider(value:ArrayCollection):void
		{
			//ContenedorIRendererListaConEnfoque.index = 0;
			//ContenedorIRendererListaConEnfoque.keyIndex = new Object();
			index = -1;
			_dataProvider = null;
			dataProviderEnfocados = null;
			dataProviderSinEnfoque = null;
			
			if(value != null && value.length > 0){
				
				listEnfocados.dataProvider = null;
				
				_dataProvider = value;
				var temp:Array = value.source;
				
				dataProviderEnfocados = new ArrayCollection(temp.filter(obtenerEnfocados));
				dataProviderSinEnfoque = new ArrayCollection(temp.filter(obtenerSinEnfoque));
				
				temp = null;
				
				if(dataProviderEnfocados != null && dataProviderEnfocados.length > 0){
					if(dataProviderEnfocados.length == 1){
						if(_dataProvider[0].hasOwnProperty("isPrimero")){
							_dataProvider[0].isPrimero = true;
						}	
						if(_dataProvider[0].hasOwnProperty("isUltimo")){
							_dataProvider[0].isUltimo = true;
						}
					}else{
						
						if(_dataProvider[dataProviderEnfocados.length-1].hasOwnProperty("isUltimo")){
							_dataProvider[dataProviderEnfocados.length-1].isUltimo = true;
						}
						
						if(_dataProvider[0].hasOwnProperty("isPrimero")){
							_dataProvider[0].isPrimero = true;
						}
					}
					
				}else{
					dataProviderEnfocados = null;
				}
				
				if(dataProviderSinEnfoque != null && dataProviderSinEnfoque.length > 0){
					if(_dataProvider[0].hasOwnProperty("isPrimero")){
						_dataProvider[0].isPrimero = true;
					}
				}
				else{
					dataProviderSinEnfoque = null;
				}
				calcularTotales();
				
				var tempArrayCollection:ArrayCollection;
				
				if(isEnfoqueActivado){
					listEnfocados.dataProvider = dataProviderEnfocados;
				}else{
					listEnfocados.dataProvider = dataProvider;
				}
				
			}else{
				calcularTotales();
				listEnfocados.dataProvider = dataProvider;
			}
			
			if (index != -1){
				if (_isEnfoqueActivado && (dataProviderEnfocados != null && dataProviderEnfocados[0].hasOwnProperty("isTotales")) )
				{
					dispatchEvent(new Event("desenfoqueAutomatico"));
				}
				listEnfocados.selectedIndex = index;
				scroller = true;
			}else{
				listEnfocados.selectedIndex = 0;
			}
			
			
		}
		
		private var diferenciadorBoleanoEnfoyDesenfocado:String = "isEnfocado";
		private function obtenerEnfocados(item:*, index:int, array:Array):Boolean
		{
			if((item as Object).hasOwnProperty(diferenciadorBoleanoEnfoyDesenfocado)){
				if((item as Object)[diferenciadorBoleanoEnfoyDesenfocado]){
					crearKey(item,index);
					return true;
				}else{
					return false;
				}
			}else{
				trace("El atributo \""+diferenciadorBoleanoEnfoyDesenfocado+"\" no se encuentra en la clase " + (item as Object).className);
			}
			return false;
		}
		
		private function crearKey(item:*,index:int, $isEnfoque:Boolean = false):void{
			var keyString:String = "";
			
			if (key != null && key.hasOwnProperty("isKey")){
				
				for ( var i:int = 0; i < key.isKey.length; i++){
					keyString += Util.obtenerValorPropiedad(key.isKey[i], item);
				}
				
				if (item.hasOwnProperty("key")){
					item["key"] = keyString;
					if (keyString == keySeleccionar && (!$isEnfoque || dataProviderEnfocados.length <= 0) ){
						this.index = index;
					}
				}
				
			}
		}
		
		private function obtenerSinEnfoque(item:*, index:int, array:Array):Boolean
		{
			if((item as Object).hasOwnProperty(diferenciadorBoleanoEnfoyDesenfocado)){
				if(!(item as Object)[diferenciadorBoleanoEnfoyDesenfocado]){
					crearKey(item,index, _isEnfoqueActivado);
					return true;
				}else{
					return false;
				}
			}else{
				trace("El atributo \""+diferenciadorBoleanoEnfoyDesenfocado+"\" no se encuentra en la clase " + (item as Object).className);
			}
			return false;
		}
		
		public function set generarKey(...keygen):void{
			key = new Object()
			key.isKey = keygen[0];
		}
		
		public function selectedIndex(index:int):void
		{
			listEnfocados.selectedIndex = index;
		}
		
		public function get itemRenderer1():Class
		{
			return _itemRenderer1;
		}
		
		public function set itemRenderer1(value:Class):void
		{
			_itemRenderer1 = value;
		}
		
		public function get areClikeablesDesenfocados():Boolean
		{
			return _areClikeablesDesenfocados;
		}
		
		public function set areClikeablesDesenfocados(value:Boolean):void
		{
			_areClikeablesDesenfocados = value;
		}
		
		public function get length():int
		{
			return _length;
		}
		
		public function set length(value:int):void
		{
			_length = value;
		}
		
		public function get newIndexSinEnfoque():int
		{
			return _newIndexSinEnfoque;
		}
		
		public function set newIndexSinEnfoque(value:int):void
		{
			_newIndexSinEnfoque = value;
		}
		
		public function get oldIndexSinEnfoque():int
		{
			return _oldIndexSinEnfoque;
		}
		
		public function set oldIndexSinEnfoque(value:int):void
		{
			_oldIndexSinEnfoque = value;
		}
		
		public function get dataProviderEnfocados():ArrayCollection
		{
			return _dataProviderEnfocados;
		}
		
		public function set dataProviderEnfocados(value:ArrayCollection):void
		{
			_dataProviderEnfocados = value;
		}
		
		public function get key():Object
		{
			return _key;
		}
		
		public function set key(value:Object):void
		{
			_key = value;
		}
		
		public function get keySeleccionar():String
		{
			return _keySeleccionar;
		}
		
		public function set keySeleccionar(value:String):void
		{
			_keySeleccionar = value;
		}
		
		public function get index():int
		{
			return _index;
		}
		
		public function set index(value:int):void
		{
			_index = value;
		}
		
		
	}
}