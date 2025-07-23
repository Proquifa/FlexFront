package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.comun.menuCatalogos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.comun.menuCatalogos.assets.ImagenesBotonesMenuCatalogos;
	import mx.events.FlexEvent;
	
	import spark.components.Button;
	
	public class ButtonMenuItemCatalogos extends Button
	{
		public function ButtonMenuItemCatalogos()
		{
			super();
			setStyle("skinClass",skinButtonItemMenuCatalogos);
			this.addEventListener(FlexEvent.CREATION_COMPLETE,ButtonMenuItemCatalogos_CREATION_COMPLETE_EventHandler);
		}
		
		private var _dataProvider:Object;
		
		
		
		private function ButtonMenuItemCatalogos_CREATION_COMPLETE_EventHandler(ev:Event):void
		{
			if(_dataProvider )
			{
				skinButtonItemMenuCatalogos(skin).imageUp = ImagenesBotonesMenuCatalogos.getInstance()[itemMenuCatalogosClass(_dataProvider).image];
				skinButtonItemMenuCatalogos(skin).imageDown = ImagenesBotonesMenuCatalogos.getInstance()[itemMenuCatalogosClass(_dataProvider).image + "Selected"];
			}
		}
		
		public function get dataProvider():Object
		{
			return _dataProvider;
		}

		public function set dataProvider(value:Object):void
		{
			_dataProvider = value;
			
			if(value is itemMenuCatalogosClass)
			{
				this.label = itemMenuCatalogosClass(value).titulo;
			}
		}

	}
	
}