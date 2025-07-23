package skin.catalogos
{
	[Bindable]
	public class catalogoImagenesBotones
	{
		private static var _instance:catalogoImagenesBotones = null;
		
		public function catalogoImagenesBotones()
		{
		
		}
		
		
		public static function getInstance():catalogoImagenesBotones{
			if(_instance == null){
				_instance = new catalogoImagenesBotones();
			}
			return _instance;
		}
		
		[Embed (source="skin/iconos/botones/eventos.png")]
		public var eventos:Class;
	}
}