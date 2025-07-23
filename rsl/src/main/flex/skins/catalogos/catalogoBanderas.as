package skins.catalogos
{
	[Bindable]
	public class catalogoBanderas
	{
		private static var _instance:catalogoBanderas = null;
		public function catalogoBanderas()
		{
		}
		public static function getInstance():catalogoBanderas{
			if(_instance == null){
				_instance = new catalogoBanderas();
			}
			return _instance;
		}
		
		[Embed (source="skins/imagenes/iconos/banderasPrecio/euro.png")]
		public var banderaEuro:Class;
		[Embed (source="skins/imagenes/iconos/banderasPrecio/euroMini.png")]
		public var banderaEuroMini:Class;
		
		[Embed (source="skins/imagenes/iconos/banderasPrecio/dolares.png")]
		public var banderaDolares:Class;
		[Embed (source="skins/imagenes/iconos/banderasPrecio/dolaresMini.png")]
		public var banderaDolaresMini:Class;
		
		[Embed (source="skins/imagenes/iconos/banderasPrecio/peso .png")]
		public var banderaPeso:Class;
		[Embed (source="skins/imagenes/iconos/banderasPrecio/pesoMini.png")]
		public var banderaPesoMini:Class;
		
	}
}