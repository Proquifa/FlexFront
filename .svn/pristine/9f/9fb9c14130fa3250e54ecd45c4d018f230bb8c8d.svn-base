package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.comun.menuCatalogos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.core.IVisualElement;
	import mx.utils.ObjectUtil;
	
	import skins.otros.division;
	import skins.skin.label.Texto_14_VerdeAzul;
	
	import spark.components.VGroup;
	
	public class MenuLikeCaraLibro extends VGroup
	{
		public function MenuLikeCaraLibro()
		{
			super();
			/*this.paddingLeft = 20;
			paddingRight = 20;
			gap = 10;*/
			addEventListener("limpiarBotones",deseleccionarBotones,false,0,true);
		}
		
		private function deseleccionarBotones(even:Event):void
		{
			for (var i:int = 0; i < this.numElements; i++) 
			{
				var temp:IVisualElement = this.getElementAt(i);
				if(temp as ButtonItemFacebook)
				{
					(temp as ButtonItemFacebook).deselect();
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
			respDataProvider = ObjectUtil.copy(dataProvider) as Array;
		}
		
		private function crearSeccionesBotones():void
		{
			var buttonCatalogos:ButtonItemFacebook;
			var seccion:Texto_14_VerdeAzul;
			for (var i:int = 0; i < _dataProvider.length; i++) 
			{
				var item:itemMenuCatalogosClass = _dataProvider[i] as itemMenuCatalogosClass;
				
				if(item.tipoItem == "button")
				{
					buttonCatalogos = new ButtonItemFacebook;
					buttonCatalogos.dataProvider = item;
					this.addElement(buttonCatalogos);
				}
				else if (item.tipoItem == "seccion")
				{
					seccion = new Texto_14_VerdeAzul();
					seccion.text = item.titulo.toUpperCase();
					seccion.setStyle("fontSize",12); 
					seccion.setStyle("paddingTop",10);
					this.addElement(seccion);
					
					var div:division = new division();
					div.percentWidth = 100;
					div.setStyle("grueso",".3");
					this.addElement(div);
				}
			}
		}
		
	}
}