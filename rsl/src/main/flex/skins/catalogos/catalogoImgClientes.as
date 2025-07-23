package skins.catalogos
{
	[Bindable]
	public class catalogoImgClientes
	{
		private static var _instance:catalogoImgClientes = null;
		
		public function catalogoImgClientes()
		{
		}
		
		public static function getInstance():catalogoImgClientes
		{
			if(_instance == null){
				_instance = new catalogoImgClientes();
			}
			return _instance;	
		}
		
		/*
		
		[Embed (source="skins/imagenes/clientes/19.png")]
		public var cliente_19:Class;
		
		[Embed (source="skins/imagenes/clientes/19_gris.png")]
		public var cliente_19_gris:Class;
		
		
		
		[Embed (source="skins/imagenes/clientes/19_grande.png")]
		public var cliente_19_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/19_grande_gris.png")]
		public var cliente_19_grande_gris:Class;
		
		*/
		
		
		[Embed (source="skins/imagenes/clientes/arrastre.png")]
		public var arrastre:Class;
		
		[Embed (source="skins/imagenes/clientes/default.png")]
		public var default_:Class; 
		
		[Embed (source="skins/imagenes/clientes/default_select.png")]
		public var default_Select:Class;
		
		
		[Embed (source="skins/imagenes/svg/default_gris.svg")]
		public var SVG_default_gris:Class;
		
		[Embed (source="skins/imagenes/svg/default_select.svg")]
		public var SVG_default_select:Class;
		
		//////////////////////  --- CLIENTES  ------  ///////////////////////
		
		/*[Embed (source="skins/imagenes/clientes/2.png")]
		public var cliente_2:Class;
		
		[Embed (source="skins/imagenes/clientes/2_gris.png")]
		public var cliente_2_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/3.png")]
		public var cliente_3:Class;
		
		[Embed (source="skins/imagenes/clientes/3_gris.png")]
		public var cliente_3_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/4.png")]
		public var cliente_4:Class;
		
		[Embed (source="skins/imagenes/clientes/4_gris.png")]
		public var cliente_4_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/6.png")]
		public var cliente_6:Class;
		
		[Embed (source="skins/imagenes/clientes/6_gris.png")]
		public var cliente_6_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/7.png")]
		public var cliente_7:Class;
		
		[Embed (source="skins/imagenes/clientes/7_gris.png")]
		public var cliente_7_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/10.png")]
		public var cliente_10:Class;
		
		[Embed (source="skins/imagenes/clientes/10_gris.png")]
		public var cliente_10_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/11.png")]
		public var cliente_11:Class;
		
		[Embed (source="skins/imagenes/clientes/11_gris.png")]
		public var cliente_11_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/12.png")]
		public var cliente_12:Class;
		
		[Embed (source="skins/imagenes/clientes/12_gris.png")]
		public var cliente_12_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/14.png")]
		public var cliente_14:Class;
		
		[Embed (source="skins/imagenes/clientes/14_gris.png")]
		public var cliente_14_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/15.png")]
		public var cliente_15:Class;
		
		[Embed (source="skins/imagenes/clientes/15_gris.png")]
		public var cliente_15_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/19.png")]
		public var cliente_19:Class;
		
		[Embed (source="skins/imagenes/clientes/19_gris.png")]
		public var cliente_19_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/20.png")]
		public var cliente_20:Class;
		
		[Embed (source="skins/imagenes/clientes/20_gris.png")]
		public var cliente_20_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/21.png")]
		public var cliente_21:Class;
		
		[Embed (source="skins/imagenes/clientes/21_gris.png")]
		public var cliente_21_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/22.png")]
		public var cliente_22:Class;
		
		[Embed (source="skins/imagenes/clientes/22_gris.png")]
		public var cliente_22_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/23.png")]
		public var cliente_23:Class;
		
		[Embed (source="skins/imagenes/clientes/23_gris.png")]
		public var cliente_23_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/24.png")]
		public var cliente_24:Class;
		
		[Embed (source="skins/imagenes/clientes/24_gris.png")]
		public var cliente_24_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/25.png")]
		public var cliente_25:Class;
		
		[Embed (source="skins/imagenes/clientes/25_gris.png")]
		public var cliente_25_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/26.png")]
		public var cliente_26:Class;
		
		[Embed (source="skins/imagenes/clientes/26_gris.png")]
		public var cliente_26_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/28.png")]
		public var cliente_28:Class;
		
		[Embed (source="skins/imagenes/clientes/28_gris.png")]
		public var cliente_28_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/30.png")]
		public var cliente_30:Class;
		
		[Embed (source="skins/imagenes/clientes/30_gris.png")]
		public var cliente_30_gris:Class;

		[Embed (source="skins/imagenes/clientes/31.png")]
		public var cliente_31:Class;
		
		[Embed (source="skins/imagenes/clientes/31_gris.png")]
		public var cliente_31_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/33.png")]
		public var cliente_33:Class;
		
		[Embed (source="skins/imagenes/clientes/33_gris.png")]
		public var cliente_33_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/39.png")]
		public var cliente_39:Class;
		
		[Embed (source="skins/imagenes/clientes/39_gris.png")]
		public var cliente_39_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/43.png")]
		public var cliente_43:Class;
		
		[Embed (source="skins/imagenes/clientes/43_gris.png")]
		public var cliente_43_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/44.png")]
		public var cliente_44:Class;
		
		[Embed (source="skins/imagenes/clientes/44_gris.png")]
		public var cliente_44_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/48.png")]
		public var cliente_48:Class;
		
		[Embed (source="skins/imagenes/clientes/48_gris.png")]
		public var cliente_48_gris:Class;

		[Embed (source="skins/imagenes/clientes/49.png")]
		public var cliente_49:Class;
		
		[Embed (source="skins/imagenes/clientes/49_gris.png")]
		public var cliente_49_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/51.png")]
		public var cliente_51:Class;
		
		[Embed (source="skins/imagenes/clientes/51_gris.png")]
		public var cliente_51_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/62.png")]
		public var cliente_62:Class;
		
		[Embed (source="skins/imagenes/clientes/62_gris.png")]
		public var cliente_62_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/63.png")]
		public var cliente_63:Class;
		
		[Embed (source="skins/imagenes/clientes/63_gris.png")]
		public var cliente_63_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/66.png")]
		public var cliente_66:Class;
		
		[Embed (source="skins/imagenes/clientes/66_gris.png")]
		public var cliente_66_gris:Class;

		[Embed (source="skins/imagenes/clientes/67.png")]
		public var cliente_67:Class;
		
		[Embed (source="skins/imagenes/clientes/67_gris.png")]
		public var cliente_67_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/68.png")]
		public var cliente_68:Class;
		
		[Embed (source="skins/imagenes/clientes/68_gris.png")]
		public var cliente_68_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/71.png")]
		public var cliente_71:Class;
		
		[Embed (source="skins/imagenes/clientes/71_gris.png")]
		public var cliente_71_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/72.png")]
		public var cliente_72:Class;
		
		[Embed (source="skins/imagenes/clientes/72_gris.png")]
		public var cliente_72_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/73.png")]
		public var cliente_73:Class;
		
		[Embed (source="skins/imagenes/clientes/73_gris.png")]
		public var cliente_73_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/74.png")]
		public var cliente_74:Class;
		
		[Embed (source="skins/imagenes/clientes/74_gris.png")]
		public var cliente_74_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/75.png")]
		public var cliente_75:Class;
		
		[Embed (source="skins/imagenes/clientes/75_gris.png")]
		public var cliente_75_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/76.png")]
		public var cliente_76:Class;
		
		[Embed (source="skins/imagenes/clientes/76_gris.png")]
		public var cliente_76_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/78.png")]
		public var cliente_78:Class;
		
		[Embed (source="skins/imagenes/clientes/78_gris.png")]
		public var cliente_78_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/79.png")]
		public var cliente_79:Class;
		
		[Embed (source="skins/imagenes/clientes/79_gris.png")]
		public var cliente_79_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/80.png")]
		public var cliente_80:Class;
		
		[Embed (source="skins/imagenes/clientes/80_gris.png")]
		public var cliente_80_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/83.png")]
		public var cliente_83:Class;
		
		[Embed (source="skins/imagenes/clientes/83_gris.png")]
		public var cliente_83_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/84.png")]
		public var cliente_84:Class;
		
		[Embed (source="skins/imagenes/clientes/84_gris.png")]
		public var cliente_84_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/86.png")]
		public var cliente_86:Class;
		
		[Embed (source="skins/imagenes/clientes/86_gris.png")]
		public var cliente_86_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/89.png")]
		public var cliente_89:Class;
		
		[Embed (source="skins/imagenes/clientes/89_gris.png")]
		public var cliente_89_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/90.png")]
		public var cliente_90:Class;
		
		[Embed (source="skins/imagenes/clientes/90_gris.png")]
		public var cliente_90_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/93.png")]
		public var cliente_93:Class;
		
		[Embed (source="skins/imagenes/clientes/93_gris.png")]
		public var cliente_93_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/95.png")]
		public var cliente_95:Class;
		
		[Embed (source="skins/imagenes/clientes/95_gris.png")]
		public var cliente_95_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/96.png")]
		public var cliente_96:Class;
		
		[Embed (source="skins/imagenes/clientes/96_gris.png")]
		public var cliente_96_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/97.png")]
		public var cliente_97:Class;
		
		[Embed (source="skins/imagenes/clientes/97_gris.png")]
		public var cliente_97_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/99.png")]
		public var cliente_99:Class;
		
		[Embed (source="skins/imagenes/clientes/99_gris.png")]
		public var cliente_99_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/101.png")]
		public var cliente_101:Class;
		
		[Embed (source="skins/imagenes/clientes/101_gris.png")]
		public var cliente_101_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/102.png")]
		public var cliente_102:Class;
		
		[Embed (source="skins/imagenes/clientes/102_gris.png")]
		public var cliente_102_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/103.png")]
		public var cliente_103:Class;
		
		[Embed (source="skins/imagenes/clientes/103_gris.png")]
		public var cliente_103_gris:Class;

		[Embed (source="skins/imagenes/clientes/106.png")]
		public var cliente_106:Class;
		
		[Embed (source="skins/imagenes/clientes/106_gris.png")]
		public var cliente_106_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/107.png")]
		public var cliente_107:Class;
		
		[Embed (source="skins/imagenes/clientes/107_gris.png")]
		public var cliente_107_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/110.png")]
		public var cliente_110:Class;
		
		[Embed (source="skins/imagenes/clientes/110_gris.png")]
		public var cliente_110_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/112.png")]
		public var cliente_112:Class;
		
		[Embed (source="skins/imagenes/clientes/112_gris.png")]
		public var cliente_112_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/113.png")]
		public var cliente_113:Class;
		
		[Embed (source="skins/imagenes/clientes/113_gris.png")]
		public var cliente_113_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/115.png")]
		public var cliente_115:Class;
		
		[Embed (source="skins/imagenes/clientes/115_gris.png")]
		public var cliente_115_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/116.png")]
		public var cliente_116:Class;
		
		[Embed (source="skins/imagenes/clientes/116_gris.png")]
		public var cliente_116_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/120.png")]
		public var cliente_120:Class;
		
		[Embed (source="skins/imagenes/clientes/120_gris.png")]
		public var cliente_120_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/126.png")]
		public var cliente_126:Class;
		
		[Embed (source="skins/imagenes/clientes/126_gris.png")]
		public var cliente_126_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/129.png")]
		public var cliente_129:Class;
		
		[Embed (source="skins/imagenes/clientes/129_gris.png")]
		public var cliente_129_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/144.png")]
		public var cliente_144:Class;
		
		[Embed (source="skins/imagenes/clientes/144_gris.png")]
		public var cliente_144_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/153.png")]
		public var cliente_153:Class;
		
		[Embed (source="skins/imagenes/clientes/153_gris.png")]
		public var cliente_153_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/157.png")]
		public var cliente_157:Class;
		
		[Embed (source="skins/imagenes/clientes/157_gris.png")]
		public var cliente_157_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/178.png")]
		public var cliente_178:Class;
		
		[Embed (source="skins/imagenes/clientes/178_gris.png")]
		public var cliente_178_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/179.png")]
		public var cliente_179:Class;
		
		[Embed (source="skins/imagenes/clientes/179_gris.png")]
		public var cliente_179_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/181.png")]
		public var cliente_181:Class;
		
		[Embed (source="skins/imagenes/clientes/181_gris.png")]
		public var cliente_181_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/183.png")]
		public var cliente_183:Class;
		
		[Embed (source="skins/imagenes/clientes/183_gris.png")]
		public var cliente_183_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/185.png")]
		public var cliente_185:Class;
		
		[Embed (source="skins/imagenes/clientes/185_gris.png")]
		public var cliente_185_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/192.png")]
		public var cliente_192:Class;
		
		[Embed (source="skins/imagenes/clientes/192_gris.png")]
		public var cliente_192_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/194.png")]
		public var cliente_194:Class;
		
		[Embed (source="skins/imagenes/clientes/194_gris.png")]
		public var cliente_194_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/200.png")]
		public var cliente_200:Class;
		
		[Embed (source="skins/imagenes/clientes/200_gris.png")]
		public var cliente_200_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/206.png")]
		public var cliente_206:Class;
		
		[Embed (source="skins/imagenes/clientes/206_gris.png")]
		public var cliente_206_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/247.png")]
		public var cliente_247:Class;
		
		[Embed (source="skins/imagenes/clientes/247_gris.png")]
		public var cliente_247_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/253.png")]
		public var cliente_253:Class;
		
		[Embed (source="skins/imagenes/clientes/253_gris.png")]
		public var cliente_253_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/264.png")]
		public var cliente_264:Class;
		
		[Embed (source="skins/imagenes/clientes/264_gris.png")]
		public var cliente_264_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/266.png")]
		public var cliente_266:Class;
		
		[Embed (source="skins/imagenes/clientes/266_gris.png")]
		public var cliente_266_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/268.png")]
		public var cliente_268:Class;
		
		[Embed (source="skins/imagenes/clientes/268_gris.png")]
		public var cliente_268_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/282.png")]
		public var cliente_282:Class;
		
		[Embed (source="skins/imagenes/clientes/282_gris.png")]
		public var cliente_282_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/309.png")]
		public var cliente_309:Class;
		
		[Embed (source="skins/imagenes/clientes/309_gris.png")]
		public var cliente_309_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/313.png")]
		public var cliente_313:Class;
		
		[Embed (source="skins/imagenes/clientes/313_gris.png")]
		public var cliente_313_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/315.png")]
		public var cliente_315:Class;
		
		[Embed (source="skins/imagenes/clientes/315_gris.png")]
		public var cliente_315_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/331.png")]
		public var cliente_331:Class;
		
		[Embed (source="skins/imagenes/clientes/331_gris.png")]
		public var cliente_331_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/359.png")]
		public var cliente_359:Class;
		
		[Embed (source="skins/imagenes/clientes/359_gris.png")]
		public var cliente_359_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/405.png")]
		public var cliente_405:Class;
		
		[Embed (source="skins/imagenes/clientes/405_gris.png")]
		public var cliente_405_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/439.png")]
		public var cliente_439:Class;
		
		[Embed (source="skins/imagenes/clientes/439_gris.png")]
		public var cliente_439_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/452.png")]
		public var cliente_452:Class;
		
		[Embed (source="skins/imagenes/clientes/452_gris.png")]
		public var cliente_452_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/453.png")]
		public var cliente_453:Class;
		
		[Embed (source="skins/imagenes/clientes/453_gris.png")]
		public var cliente_453_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/454.png")]
		public var cliente_454:Class;
		
		[Embed (source="skins/imagenes/clientes/454_gris.png")]
		public var cliente_454_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/455.png")]
		public var cliente_455:Class;
		
		[Embed (source="skins/imagenes/clientes/455_gris.png")]
		public var cliente_455_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/461.png")]
		public var cliente_461:Class;
		
		[Embed (source="skins/imagenes/clientes/461_gris.png")]
		public var cliente_461_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/465.png")]
		public var cliente_465:Class;
		
		[Embed (source="skins/imagenes/clientes/465_gris.png")]
		public var cliente_465_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/487.png")]
		public var cliente_487:Class;
		
		[Embed (source="skins/imagenes/clientes/487_gris.png")]
		public var cliente_487_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/490.png")]
		public var cliente_490:Class;
		
		[Embed (source="skins/imagenes/clientes/490_gris.png")]
		public var cliente_490_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/513.png")]
		public var cliente_513:Class;
		
		[Embed (source="skins/imagenes/clientes/513_gris.png")]
		public var cliente_513_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/544.png")]
		public var cliente_544:Class;
		
		[Embed (source="skins/imagenes/clientes/544_gris.png")]
		public var cliente_544_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/568.png")]
		public var cliente_568:Class;
		
		[Embed (source="skins/imagenes/clientes/568_gris.png")]
		public var cliente_568_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/581.png")]
		public var cliente_581:Class;
		
		[Embed (source="skins/imagenes/clientes/581_gris.png")]
		public var cliente_581_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/582.png")]
		public var cliente_582:Class;
		
		[Embed (source="skins/imagenes/clientes/582_gris.png")]
		public var cliente_582_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/586.png")]
		public var cliente_586:Class;
		
		[Embed (source="skins/imagenes/clientes/586_gris.png")]
		public var cliente_586_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/618.png")]
		public var cliente_618:Class;
		
		[Embed (source="skins/imagenes/clientes/618_gris.png")]
		public var cliente_618_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/626.png")]
		public var cliente_626:Class;
		
		[Embed (source="skins/imagenes/clientes/626_gris.png")]
		public var cliente_626_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/668.png")]
		public var cliente_668:Class;
		
		[Embed (source="skins/imagenes/clientes/668_gris.png")]
		public var cliente_668_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/711.png")]
		public var cliente_711:Class;
		
		[Embed (source="skins/imagenes/clientes/711_gris.png")]
		public var cliente_711_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/720.png")]
		public var cliente_720:Class;
		
		[Embed (source="skins/imagenes/clientes/720_gris.png")]
		public var cliente_720_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/733.png")]
		public var cliente_733:Class;
		
		[Embed (source="skins/imagenes/clientes/733_gris.png")]
		public var cliente_733_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/813.png")]
		public var cliente_813:Class;
		
		[Embed (source="skins/imagenes/clientes/813_gris.png")]
		public var cliente_813_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/860.png")]
		public var cliente_860:Class;
		
		[Embed (source="skins/imagenes/clientes/860_gris.png")]
		public var cliente_860_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/919.png")]
		public var cliente_919:Class;
		
		[Embed (source="skins/imagenes/clientes/919_gris.png")]
		public var cliente_919_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/939.png")]
		public var cliente_939:Class;
		
		[Embed (source="skins/imagenes/clientes/939_gris.png")]
		public var cliente_939_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1125.png")]
		public var cliente_1125:Class;
		
		[Embed (source="skins/imagenes/clientes/1125_gris.png")]
		public var cliente_1125_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1271.png")]
		public var cliente_1271:Class;
		
		[Embed (source="skins/imagenes/clientes/1271_gris.png")]
		public var cliente_1271_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1252.png")]
		public var cliente_1252:Class;
		
		[Embed (source="skins/imagenes/clientes/1252_gris.png")]
		public var cliente_1252_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1273.png")]
		public var cliente_1273:Class;
		
		[Embed (source="skins/imagenes/clientes/1273_gris.png")]
		public var cliente_1273_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1345.png")]
		public var cliente_1345:Class;
		
		[Embed (source="skins/imagenes/clientes/1345_gris.png")]
		public var cliente_1345_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1348.png")]
		public var cliente_1348:Class;
		
		[Embed (source="skins/imagenes/clientes/1348_gris.png")]
		public var cliente_1348_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1414.png")]
		public var cliente_1414:Class;
		
		[Embed (source="skins/imagenes/clientes/1414_gris.png")]
		public var cliente_1414_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1417.png")]
		public var cliente_1417:Class;
		
		[Embed (source="skins/imagenes/clientes/1417_gris.png")]
		public var cliente_1417_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1509.png")]
		public var cliente_1509:Class;
		
		[Embed (source="skins/imagenes/clientes/1509_gris.png")]
		public var cliente_1509_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1518.png")]
		public var cliente_1518:Class;
		
		[Embed (source="skins/imagenes/clientes/1518_gris.png")]
		public var cliente_1518_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1555.png")]
		public var cliente_1555:Class;
		
		[Embed (source="skins/imagenes/clientes/1555_gris.png")]
		public var cliente_1555_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1682.png")]
		public var cliente_1682:Class;
		
		[Embed (source="skins/imagenes/clientes/1682_gris.png")]
		public var cliente_1682_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1754.png")]
		public var cliente_1754:Class;
		
		[Embed (source="skins/imagenes/clientes/1754_gris.png")]
		public var cliente_1754_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1755.png")]
		public var cliente_1755:Class;
		
		[Embed (source="skins/imagenes/clientes/1755_gris.png")]
		public var cliente_1755_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1787.png")]
		public var cliente_1787:Class;
		
		[Embed (source="skins/imagenes/clientes/1787_gris.png")]
		public var cliente_1787_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/1896.png")]
		public var cliente_1896:Class;
		
		[Embed (source="skins/imagenes/clientes/1896_gris.png")]
		public var cliente_1896_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2022.png")]
		public var cliente_2022:Class;
		
		[Embed (source="skins/imagenes/clientes/2022_gris.png")]
		public var cliente_2022_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2062.png")]
		public var cliente_2062:Class;
		
		[Embed (source="skins/imagenes/clientes/2062_gris.png")]
		public var cliente_2062_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2079.png")]
		public var cliente_2079:Class;
		
		[Embed (source="skins/imagenes/clientes/2079_gris.png")]
		public var cliente_2079_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2197.png")]
		public var cliente_2197:Class;
		
		[Embed (source="skins/imagenes/clientes/2197_gris.png")]
		public var cliente_2197_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2295.png")]
		public var cliente_2295:Class;
		
		[Embed (source="skins/imagenes/clientes/2295_gris.png")]
		public var cliente_2295_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2466.png")]
		public var cliente_2466:Class;
		
		[Embed (source="skins/imagenes/clientes/2466_gris.png")]
		public var cliente_2466_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2516.png")]
		public var cliente_2516:Class;
		
		[Embed (source="skins/imagenes/clientes/2516_gris.png")]
		public var cliente_2516_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2542.png")]
		public var cliente_2542:Class;
		
		[Embed (source="skins/imagenes/clientes/2542_gris.png")]
		public var cliente_2542_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2688.png")]
		public var cliente_2688:Class;
		
		[Embed (source="skins/imagenes/clientes/2688_gris.png")]
		public var cliente_2688_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2696.png")]
		public var cliente_2696:Class;
		
		[Embed (source="skins/imagenes/clientes/2696_gris.png")]
		public var cliente_2696_gris:Class;
		
		[Embed (source="skins/imagenes/clientes/2759.png")]
		public var cliente_2759:Class;
		
		[Embed (source="skins/imagenes/clientes/2759_gris.png")]
		public var cliente_2759_gris:Class;*/
		
		
		
		
		
		
		//////////////////////  --- CLIENTES GRANDES  ------  ///////////////////////
		
		
		/*[Embed (source="skins/imagenes/clientes/2_grande.png")]
		public var cliente_2_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2_grande_gris.png")]
		public var cliente_2_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/3_grande.png")]
		public var cliente_3_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/3_grande_gris.png")]
		public var cliente_3_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/4_grande.png")]
		public var cliente_4_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/4_grande_gris.png")]
		public var cliente_4_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/6_grande.png")]
		public var cliente_6_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/6_grande_gris.png")]
		public var cliente_6_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/7_grande.png")]
		public var cliente_7_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/7_grande_gris.png")]
		public var cliente_7_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/10_grande.png")]
		public var cliente_10_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/10_grande_gris.png")]
		public var cliente_10_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/11_grande.png")]
		public var cliente_11_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/11_grande_gris.png")]
		public var cliente_11_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/12_grande.png")]
		public var cliente_12_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/12_grande_gris.png")]
		public var cliente_12_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/14_grande.png")]
		public var cliente_14_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/14_grande_gris.png")]
		public var cliente_14_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/15_grande.png")]
		public var cliente_15_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/15_grande_gris.png")]
		public var cliente_15_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/19_grande.png")]
		public var cliente_19_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/19_grande_gris.png")]
		public var cliente_19_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/20_grande.png")]
		public var cliente_20_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/20_grande_gris.png")]
		public var cliente_20_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/21_grande.png")]
		public var cliente_21_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/21_grande_gris.png")]
		public var cliente_21_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/22_grande.png")]
		public var cliente_22_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/22_grande_gris.png")]
		public var cliente_22_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/23_grande.png")]
		public var cliente_23_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/23_grande_gris.png")]
		public var cliente_23_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/24_grande.png")]
		public var cliente_24_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/24_grande_gris.png")]
		public var cliente_24_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/25_grande.png")]
		public var cliente_25_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/25_grande_gris.png")]
		public var cliente_25_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/26_grande.png")]
		public var cliente_26_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/26_grande_gris.png")]
		public var cliente_26_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/28_grande.png")]
		public var cliente_28_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/28_grande_gris.png")]
		public var cliente_28_grande_gris:Class;

		
		[Embed (source="skins/imagenes/clientes/30_grande.png")]
		public var cliente_30_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/30_grande_gris.png")]
		public var cliente_30_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/31_grande.png")]
		public var cliente_31_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/31_grande_gris.png")]
		public var cliente_31_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/33_grande.png")]
		public var cliente_33_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/33_grande_gris.png")]
		public var cliente_33_grande_gris:Class;

		
		[Embed (source="skins/imagenes/clientes/39_grande.png")]
		public var cliente_39_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/39_grande_gris.png")]
		public var cliente_39_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/43_grande.png")]
		public var cliente_43_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/43_grande_gris.png")]
		public var cliente_43_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/44_grande.png")]
		public var cliente_44_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/44_grande_gris.png")]
		public var cliente_44_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/48_grande.png")]
		public var cliente_48_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/48_grande_gris.png")]
		public var cliente_48_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/49_grande.png")]
		public var cliente_49_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/49_grande_gris.png")]
		public var cliente_49_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/51_grande.png")]
		public var cliente_51_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/51_grande_gris.png")]
		public var cliente_51_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/62_grande.png")]
		public var cliente_62_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/62_grande_gris.png")]
		public var cliente_62_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/63_grande.png")]
		public var cliente_63_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/63_grande_gris.png")]
		public var cliente_63_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/66_grande.png")]
		public var cliente_66_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/66_grande_gris.png")]
		public var cliente_66_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/67_grande.png")]
		public var cliente_67_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/67_grande_gris.png")]
		public var cliente_67_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/68_grande.png")]
		public var cliente_68_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/68_grande_gris.png")]
		public var cliente_68_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/71_grande.png")]
		public var cliente_71_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/71_grande_gris.png")]
		public var cliente_71_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/72_grande.png")]
		public var cliente_72_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/72_grande_gris.png")]
		public var cliente_72_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/73_grande.png")]
		public var cliente_73_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/73_grande_gris.png")]
		public var cliente_73_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/74_grande.png")]
		public var cliente_74_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/74_grande_gris.png")]
		public var cliente_74_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/75_grande.png")]
		public var cliente_75_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/75_grande_gris.png")]
		public var cliente_75_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/76_grande.png")]
		public var cliente_76_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/76_grande_gris.png")]
		public var cliente_76_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/79_grande.png")]
		public var cliente_79_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/79_grande_gris.png")]
		public var cliente_79_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/80_grande.png")]
		public var cliente_80_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/80_grande_gris.png")]
		public var cliente_80_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/83_grande.png")]
		public var cliente_83_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/83_grande_gris.png")]
		public var cliente_83_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/84_grande.png")]
		public var cliente_84_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/84_grande_gris.png")]
		public var cliente_84_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/86_grande.png")]
		public var cliente_86_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/86_grande_gris.png")]
		public var cliente_86_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/89_grande.png")]
		public var cliente_89_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/89_grande_gris.png")]
		public var cliente_89_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/90_grande.png")]
		public var cliente_90_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/90_grande_gris.png")]
		public var cliente_90_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/93_grande.png")]
		public var cliente_93_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/93_grande_gris.png")]
		public var cliente_93_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/96_grande.png")]
		public var cliente_96_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/96_grande_gris.png")]
		public var cliente_96_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/97_grande.png")]
		public var cliente_97_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/97_grande_gris.png")]
		public var cliente_97_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/99_grande.png")]
		public var cliente_99_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/99_grande_gris.png")]
		public var cliente_99_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/101_grande.png")]
		public var cliente_101_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/101_grande_gris.png")]
		public var cliente_101_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/102_grande.png")]
		public var cliente_102_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/102_grande_gris.png")]
		public var cliente_102_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/103_grande.png")]
		public var cliente_103_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/103_grande_gris.png")]
		public var cliente_103_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/106_grande.png")]
		public var cliente_106_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/106_grande_gris.png")]
		public var cliente_106_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/107_grande.png")]
		public var cliente_107_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/107_grande_gris.png")]
		public var cliente_107_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/110_grande.png")]
		public var cliente_110_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/110_grande_gris.png")]
		public var cliente_110_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/112_grande.png")]
		public var cliente_112_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/112_grande_gris.png")]
		public var cliente_112_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/113_grande.png")]
		public var cliente_113_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/113_grande_gris.png")]
		public var cliente_113_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/115_grande.png")]
		public var cliente_115_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/115_grande_gris.png")]
		public var cliente_115_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/116_grande.png")]
		public var cliente_116_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/116_grande_gris.png")]
		public var cliente_116_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/120_grande.png")]
		public var cliente_120_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/120_grande_gris.png")]
		public var cliente_120_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/126_grande.png")]
		public var cliente_126_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/126_grande_gris.png")]
		public var cliente_126_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/144_grande.png")]
		public var cliente_144_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/144_grande_gris.png")]
		public var cliente_144_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/153_grande.png")]
		public var cliente_153_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/153_grande_gris.png")]
		public var cliente_153_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/157_grande.png")]
		public var cliente_157_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/157_grande_gris.png")]
		public var cliente_157_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/178_grande.png")]
		public var cliente_178_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/178_grande_gris.png")]
		public var cliente_178_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/181_grande.png")]
		public var cliente_181_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/181_grande_gris.png")]
		public var cliente_181_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/183_grande.png")]
		public var cliente_183_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/183_grande_gris.png")]
		public var cliente_183_grande_gris:Class;

		
		[Embed (source="skins/imagenes/clientes/185_grande.png")]
		public var cliente_185_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/185_grande_gris.png")]
		public var cliente_185_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/179_grande.png")]
		public var cliente_179_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/179_grande_gris.png")]
		public var cliente_179_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/194_grande.png")]
		public var cliente_194_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/194_grande_gris.png")]
		public var cliente_194_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/192_grande.png")]
		public var cliente_192_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/192_grande_gris.png")]
		public var cliente_192_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/200_grande.png")]
		public var cliente_200_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/200_grande_gris.png")]
		public var cliente_200_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/206_grande.png")]
		public var cliente_206_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/206_grande_gris.png")]
		public var cliente_206_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/247_grande.png")]
		public var cliente_247_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/247_grande_gris.png")]
		public var cliente_247_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/253_grande.png")]
		public var cliente_253_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/253_grande_gris.png")]
		public var cliente_253_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/264_grande.png")]
		public var cliente_264_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/264_grande_gris.png")]
		public var cliente_264_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/266_grande.png")]
		public var cliente_266_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/266_grande_gris.png")]
		public var cliente_266_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/268_grande.png")]
		public var cliente_268_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/268_grande_gris.png")]
		public var cliente_268_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/282_grande.png")]
		public var cliente_282_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/282_grande_gris.png")]
		public var cliente_282_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/309_grande.png")]
		public var cliente_309_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/309_grande_gris.png")]
		public var cliente_309_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/313_grande.png")]
		public var cliente_313_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/313_grande_gris.png")]
		public var cliente_313_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/315_grande.png")]
		public var cliente_315_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/315_grande_gris.png")]
		public var cliente_315_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/331_grande.png")]
		public var cliente_331_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/331_grande_gris.png")]
		public var cliente_331_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/359_grande.png")]
		public var cliente_359_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/359_grande_gris.png")]
		public var cliente_359_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/405_grande.png")]
		public var cliente_405_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/405_grande_gris.png")]
		public var cliente_405_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/439_grande.png")]
		public var cliente_439_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/439_grande_gris.png")]
		public var cliente_439_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/452_grande.png")]
		public var cliente_452_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/452_grande_gris.png")]
		public var cliente_452_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/453_grande.png")]
		public var cliente_453_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/453_grande_gris.png")]
		public var cliente_453_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/454_grande.png")]
		public var cliente_454_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/454_grande_gris.png")]
		public var cliente_454_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/455_grande.png")]
		public var cliente_455_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/455_grande_gris.png")]
		public var cliente_455_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/461_grande.png")]
		public var cliente_461_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/461_grande_gris.png")]
		public var cliente_461_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/465_grande.png")]
		public var cliente_465_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/465_grande_gris.png")]
		public var cliente_465_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/487_grande.png")]
		public var cliente_487_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/487_grande_gris.png")]
		public var cliente_487_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/490_grande.png")]
		public var cliente_490_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/490_grande_gris.png")]
		public var cliente_490_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/513_grande.png")]
		public var cliente_513_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/513_grande_gris.png")]
		public var cliente_513_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/568_grande.png")]
		public var cliente_568_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/568_grande_gris.png")]
		public var cliente_568_grande_gris:Class;
		

		[Embed (source="skins/imagenes/clientes/581_grande.png")]
		public var cliente_581_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/581_grande_gris.png")]
		public var cliente_581_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/582_grande.png")]
		public var cliente_582_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/582_grande_gris.png")]
		public var cliente_582_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/586_grande.png")]
		public var cliente_586_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/586_grande_gris.png")]
		public var cliente_586_grande_gris:Class;
		
		
		
		[Embed (source="skins/imagenes/clientes/618_grande.png")]
		public var cliente_618_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/618_grande_gris.png")]
		public var cliente_618_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/626_grande.png")]
		public var cliente_626_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/626_grande_gris.png")]
		public var cliente_626_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/668_grande.png")]
		public var cliente_668_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/668_grande_gris.png")]
		public var cliente_668_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/711_grande.png")]
		public var cliente_711_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/711_grande_gris.png")]
		public var cliente_711_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/720_grande.png")]
		public var cliente_720_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/720_grande_gris.png")]
		public var cliente_720_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/733_grande.png")]
		public var cliente_733_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/733_grande_gris.png")]
		public var cliente_733_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/813_grande.png")]
		public var cliente_813_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/813_grande_gris.png")]
		public var cliente_813_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/860_grande.png")]
		public var cliente_860_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/860_grande_gris.png")]
		public var cliente_860_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/939_grande.png")]
		public var cliente_939_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/939_grande_gris.png")]
		public var cliente_939_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1125_grande.png")]
		public var cliente_1125_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1125_grande_gris.png")]
		public var cliente_1125_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1252_grande.png")]
		public var cliente_1252_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1252_grande_gris.png")]
		public var cliente_1252_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1271_grande.png")]
		public var cliente_1271_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1271_grande_gris.png")]
		public var cliente_1271_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1273_grande.png")]
		public var cliente_1273_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1273_grande_gris.png")]
		public var cliente_1273_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1345_grande.png")]
		public var cliente_1345_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1345_grande_gris.png")]
		public var cliente_1345_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1348_grande.png")]
		public var cliente_1348_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1348_grande_gris.png")]
		public var cliente_1348_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1414_grande.png")]
		public var cliente_1414_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1414_grande_gris.png")]
		public var cliente_1414_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1417_grande.png")]
		public var cliente_1417_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1417_grande_gris.png")]
		public var cliente_1417_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1509_grande.png")]
		public var cliente_1509_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1509_grande_gris.png")]
		public var cliente_1509_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1518_grande.png")]
		public var cliente_1518_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1518_grande_gris.png")]
		public var cliente_1518_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1555_grande.png")]
		public var cliente_1555_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1555_grande_gris.png")]
		public var cliente_1555_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1682_grande.png")]
		public var cliente_1682_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1682_grande_gris.png")]
		public var cliente_1682_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1754_grande.png")]
		public var cliente_1754_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1754_grande_gris.png")]
		public var cliente_1754_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1755_grande.png")]
		public var cliente_1755_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1755_grande_gris.png")]
		public var cliente_1755_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1787_grande.png")]
		public var cliente_1787_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1787_grande_gris.png")]
		public var cliente_1787_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/1896_grande.png")]
		public var cliente_1896_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/1896_grande_gris.png")]
		public var cliente_1896_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2022_grande.png")]
		public var cliente_2022_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2022_grande_gris.png")]
		public var cliente_2022_grande_gris:Class;
		

		[Embed (source="skins/imagenes/clientes/2062_grande.png")]
		public var cliente_2062_grande:Class;

		[Embed (source="skins/imagenes/clientes/2062_grande_gris.png")]
		public var cliente_2062_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2079_grande.png")]
		public var cliente_2079_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2079_grande_gris.png")]
		public var cliente_2079_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2197_grande.png")]
		public var cliente_2197_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2197_grande_gris.png")]
		public var cliente_2197_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2295_grande.png")]
		public var cliente_2295_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2295_grande_gris.png")]
		public var cliente_2295_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2466_grande.png")]
		public var cliente_2466_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2466_grande_gris.png")]
		public var cliente_2466_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2516_grande.png")]
		public var cliente_2516_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2516_grande_gris.png")]
		public var cliente_2516_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2542_grande.png")]
		public var cliente_2542_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2542_grande_gris.png")]
		public var cliente_2542_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2688_grande.png")]
		public var cliente_2688_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2688_grande_gris.png")]
		public var cliente_2688_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2696_grande.png")]
		public var cliente_2696_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2696_grande_gris.png")]
		public var cliente_2696_grande_gris:Class;
		
		
		[Embed (source="skins/imagenes/clientes/2759_grande.png")]
		public var cliente_2759_grande:Class;
		
		[Embed (source="skins/imagenes/clientes/2759_grande_gris.png")]
		public var cliente_2759_grande_gris:Class;*/

	}
}