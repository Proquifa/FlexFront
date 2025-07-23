package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.comun.menuCatalogos
{
	import flash.events.Event;
	
	import mx.controls.Spacer;
	import mx.core.IVisualElement;
	
	import spark.components.VGroup;
	
	import skins.otros.division;
	
	public class MenuLikeCaraLibroMin extends VGroup
	{
		public function MenuLikeCaraLibroMin()
		{
			super();
			percentWidth = 100;
			horizontalAlign = "center";
			addEventListener("limpiarBotones",deseleccionarBotones,false,0,true);
		}
		
		private function deseleccionarBotones(even:Event):void
		{
			for (var i:int = 0; i < this.numElements; i++) 
			{
				var temp:IVisualElement = this.getElementAt(i);
				if(temp as ButtonItemFacebookMin)
				{
					(temp as ButtonItemFacebookMin).deselect();
				}
			}
		}
		
		[Bindable] private var _dataProvider:Array;		
		[Bindable] private var _dataProviderMin:Array;		
		public var respDataProvider:Array;
		public function get dataProvider():Array
		{
			return _dataProvider;
		}
		
		public function get dataProviderMin():Array
		{
			return _dataProviderMin;
		}
		
		public function set dataProvider(value:Array):void
		{
			_dataProvider = new Array();
			removeAllElements();
			_dataProvider = value;
			crearSeccionesBotones();
		}
		
		private function crearSeccionesBotones():void
		{
			var buttonCatalogos:ButtonItemFacebookMin;
			for (var i:int = 0; i < _dataProvider.length; i++) 
			{
				var item:itemMenuCatalogosClass = _dataProvider[i] as itemMenuCatalogosClass;
				
				if(item.tipoItem == "button")
				{
					buttonCatalogos = new ButtonItemFacebookMin;
					buttonCatalogos.minimiza();
					buttonCatalogos.dataProvider = item;
					this.addElement(buttonCatalogos);
				}
				else if (item.tipoItem == "seccion")
				{
					var div:division = new division();
					div.percentWidth = 100;
					div.setStyle("grueso",".3");
					var spacio:Spacer = new Spacer();
					spacio.height = 10;
					this.addElement(div);
				}
			}
		}
	}
}