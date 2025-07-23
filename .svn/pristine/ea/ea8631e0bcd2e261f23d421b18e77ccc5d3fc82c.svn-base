package skin.catalogos
{
	import skins.catalogos.catalogoIconosBotones;

	[Bindable]
	public class catalogoImagenesRenders
	{
		private static var _instance:catalogoImagenesRenders = null;
		
		public function catalogoImagenesRenders()
		{
		}
		
		public static function getInstance():catalogoImagenesRenders{
			if(_instance == null){
				_instance = new catalogoImagenesRenders();
			}
			return _instance;
		}
		
		[Embed (source="skin/iconos/renders/cerrados.png")]
		public var cerrados:Class;
		
		[Embed (source="skin/iconos/renders/encierre.png")]
		public var encierre:Class;
		
		[Embed (source="skin/iconos/renders/estadistica.png")]
		public var estadistica:Class;
		
		[Embed (source="skin/iconos/renders/incidente.png")]
		public var incidente:Class;
		
		[Embed (source="skin/iconos/renders/pendientes.png")]
		public var pendientes:Class;
	}
}