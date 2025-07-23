package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.ValidarCFDI")]
	[Bindable]
	public class ValidarCFDI
	{
		private var _idValidarCFDI:Number;
		private var _cliente:Cliente;
		private var _tipo:String;
		private var _usuario:String;
		private var _password:String;
		private var _correos:String;
		private var _url:String;
		
		
		
		public function ValidarCFDI()
		{
		}

		public function get idValidarCFDI():Number
		{
			return _idValidarCFDI;
		}

		public function set idValidarCFDI(value:Number):void
		{
			_idValidarCFDI = value;
		}

		public function get cliente():Cliente
		{
			return _cliente;
		}

		public function set cliente(value:Cliente):void
		{
			_cliente = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get usuario():String
		{
			return _usuario;
		}

		public function set usuario(value:String):void
		{
			_usuario = value;
		}

		public function get password():String
		{
			return _password;
		}

		public function set password(value:String):void
		{
			_password = value;
		}

		public function get correos():String
		{
			return _correos;
		}

		public function set correos(value:String):void
		{
			_correos = value;
		}

		public function get url():String
		{
			return _url;
		}

		public function set url(value:String):void
		{
			_url = value;
		}


	}
}