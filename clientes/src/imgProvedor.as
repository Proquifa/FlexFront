package
{
	public class imgProvedor
	{
		private static var _instance:imgProvedor = null;
		
		public function imgProvedor()
		{
		}
		
		public static function getInstance():imgProvedor
		{
			if(_instance == null){
				_instance = new imgProvedor();
			}
			return _instance;	
		}
		
		
		/*
		[Embed (source="provedores/x.png")]
		public var provedor_x:Class;
		
		[Embed (source="provedores/x_gris.png")]
		public var provedor_x_gris:Class;
		*/
		
		
		/////////////////////// ICONOS MEDIANOS  /////////////////////// 
		 
		[Embed (source="provedores/25.png")]
		public var provedor_25:Class;
		
		[Embed (source="provedores/25_gris.png")]
		public var provedor_25_gris:Class;
		
		[Embed (source="provedores/28.png")]
		public var provedor_28:Class;
		
		[Embed (source="provedores/28_gris.png")]
		public var provedor_28_gris:Class;
		
		[Embed (source="provedores/44.png")]
		public var provedor_44:Class;
		
		[Embed (source="provedores/44_gris.png")]
		public var provedor_44_gris:Class;
		
		[Embed (source="provedores/45.png")]
		public var provedor_45:Class;
		
		[Embed (source="provedores/45_gris.png")]
		public var provedor_45_gris:Class;
		
		[Embed (source="provedores/46.png")]
		public var provedor_46:Class;
		
		[Embed (source="provedores/46_gris.png")]
		public var provedor_46_gris:Class;
		
		[Embed (source="provedores/50.png")]
		public var provedor_50:Class;
		
		[Embed (source="provedores/50_gris.png")]
		public var provedor_50_gris:Class;
		
		[Embed (source="provedores/233.png")]
		public var provedor_233:Class;
		
		[Embed (source="provedores/233_gris.png")]
		public var provedor_233_gris:Class;
		
		[Embed (source="provedores/485.png")]
		public var provedor_485:Class;
		
		[Embed (source="provedores/485_gris.png")]
		public var provedor_485_gris:Class;
		
		[Embed (source="provedores/1048.png")]
		public var provedor_1048:Class;
		
		[Embed (source="provedores/1048_gris.png")]
		public var provedor_1048_gris:Class;
		
		[Embed (source="provedores/1089.png")]
		public var provedor_1089:Class;
		
		[Embed (source="provedores/1089_gris.png")]
		public var provedor_1089_gris:Class;
		
	}
}