package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos
{
	import mx.utils.StringUtil;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.MedioPago")]
	[Bindable]
	public class MedioPago
	{
		private var _idMedioPago:Number;
		private var _idProveedor:Number;
		private var _idCliente:Number;
		private var _tipo:String;
		private var _idBanco:Number;
		private var _banco:String;
		private var _numCuenta:String;
		private var _sucursal:String;
		private var _beneficiario:String;
		private var _clabe:String;
		private var _key:String;
		
		public function MedioPago()
		{
		}

		public function get idMedioPago():Number
		{
			return _idMedioPago;
		}

		public function set idMedioPago(value:Number):void
		{
			_idMedioPago = value;
		}

		public function get idProveedor():Number
		{
			return _idProveedor;
		}

		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get idBanco():Number
		{
			return _idBanco;
		}

		public function set idBanco(value:Number):void
		{
			_idBanco = value;
		}

		public function get banco():String
		{
			return _banco;
		}

		public function set banco(value:String):void
		{
			_banco = value;
		}

		public function get numCuenta():String
		{
			return _numCuenta;
		}

		public function set numCuenta(value:String):void
		{
			_numCuenta = value;
		}

		public function get sucursal():String
		{
			return _sucursal;
		}

		public function set sucursal(value:String):void
		{
			_sucursal = value;
		}

		public function get beneficiario():String
		{
			return _beneficiario;
		}

		public function set beneficiario(value:String):void
		{
			_beneficiario = value;
		}

		public function get clabe():String
		{
			return _clabe;
		}

		public function set clabe(value:String):void
		{
			_clabe = value;
		}

		public function get key():String
		{
			var temp:String = "";
			
			temp = temp + validarString(banco);
			temp = temp + validarString(numCuenta);
			temp = temp + validarString(sucursal);
			temp = temp + validarString(beneficiario);
			temp = temp + validarString(clabe);
			
			return temp; 
		}
		
		private function validarString($valor:String):String
		{
			if($valor)
				return StringUtil.trim($valor);
			else
				return "";
		}
		

		public function set key(value:String):void
		{
			_key = value;
		}


	}
}