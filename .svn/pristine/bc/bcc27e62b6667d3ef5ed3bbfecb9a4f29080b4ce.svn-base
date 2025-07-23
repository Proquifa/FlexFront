package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	public class DatosGlobales
	{
		
		private static var _instance:DatosGlobales=null;
	
		[Bindable]
		public var _usuario:Empleado;
		
		[Bindable]
		public var catGerentes:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var _empleadosHabilitados:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var _sql:Query;
		
		[Bindable]
		public var statusTablero:String;
		
		public static function getInstance():DatosGlobales{
			if(_instance==null){
				_instance=new DatosGlobales() ;
			}
			return _instance;
		}
		
		
		
		public function DatosGlobales()
		{
		}
	}
}