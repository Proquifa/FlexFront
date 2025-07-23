package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.TiempoEntrega")]
	[Bindable]
	public class TiempoEntrega
	{
		private var _idTiempoEntrega:Number;
		private var _requierePExiste:String;
		private var _requierePNoExiste:String;
		private var _requierePNo:String;
		private var _fleteExpress:String;
		private var _idConfiguracionPrecio:Number;
		private var _ruta:String;
		
		public function TiempoEntrega()
		{
			_requierePExiste ='0 días hábiles';
			_requierePNo ='0 días hábiles';
			_requierePNoExiste ='0 días hábiles';
		}

		
		public function get requierePNo():String
		{
			return _requierePNo;
		}

		public function set requierePNo(value:String):void
		{
			_requierePNo = value;
		}

		public function get requierePNoExiste():String
		{
			return _requierePNoExiste;
		}

		public function set requierePNoExiste(value:String):void
		{
			_requierePNoExiste = value;
		}

		public function get requierePExiste():String
		{
			return _requierePExiste;
		}

		public function set requierePExiste(value:String):void
		{
			_requierePExiste = value;
		}

		public function get idTiempoEntrega():Number
		{
			return _idTiempoEntrega;
		}

		public function set idTiempoEntrega(value:Number):void
		{
			_idTiempoEntrega = value;
		}

		public function get fleteExpress():String
		{
			return _fleteExpress;
		}

		public function set fleteExpress(value:String):void
		{
			_fleteExpress = value;
		}

		public function get idConfiguracionPrecio():Number
		{
			return _idConfiguracionPrecio;
		}

		public function set idConfiguracionPrecio(value:Number):void
		{
			_idConfiguracionPrecio = value;
		}

		public function get ruta():String
		{
			return _ruta;
		}

		public function set ruta(value:String):void
		{
			_ruta = value;
		}


	}
}