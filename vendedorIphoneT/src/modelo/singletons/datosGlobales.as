package modelo.singletons
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;

	public class datosGlobales
	{
		
		private static var _instance:datosGlobales = null;
		
		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get indexTabPendientes():int
		{
			return _indexTabPendientes;
		}

		public function set indexTabPendientes(value:int):void
		{
			_indexTabPendientes = value;
		}

		public function get empleado_Login():Empleado
		{
			return _empleado_Login;
		}

		public function set empleado_Login(value:Empleado):void
		{
			_empleado_Login = value;
		}

		public static function getInstance():datosGlobales{
			if(_instance == null){
				_instance = new datosGlobales();
			}
			return _instance;
		}
		
		private var _empleado_Login:Empleado;
		
		
		private var _indexTabPendientes:int = 0;
		
		private var _estado:String = "";
		
		public function datosGlobales()
		{
			
		}
	}
}