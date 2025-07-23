package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.expofarma.RegistroExpoFarma")]
	public class RegistroExpoFarma
	{
		private var _idRegistroExpoFarma:Number;
		private var _fecha:Date;
		private var _folio:String;
		private var _idContacto:Number;
		private var _idCliente:Number;

		private var _tipo:String;
		private var _publicaciones:String;
		private var _otrosPublicaciones:String;
		private var _iso:Boolean;
		private var _registrado:Boolean;
		
		private var _nombreCliente:String;
		private var _nombreContacto:String;
		private var _telContacto:String;
		private var _email:String;
		private var _origen:String;
		
		public function RegistroExpoFarma()
		{
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get nombreContacto():String
		{
			return _nombreContacto;
		}

		public function set nombreContacto(value:String):void
		{
			_nombreContacto = value;
		}

		public function get telContacto():String
		{
			return _telContacto;
		}

		public function set telContacto(value:String):void
		{
			_telContacto = value;
		}

		public function get email():String
		{
			return _email;
		}

		public function set email(value:String):void
		{
			_email = value;
		}

		public function get registrado():Boolean
		{
			return _registrado;
		}

		public function set registrado(value:Boolean):void
		{
			_registrado = value;
		}

		public function get iso():Boolean
		{
			return _iso;
		}

		public function set iso(value:Boolean):void
		{
			_iso = value;
		}

		public function get otrosPublicaciones():String
		{
			return _otrosPublicaciones;
		}

		public function set otrosPublicaciones(value:String):void
		{
			_otrosPublicaciones = value;
		}

		public function get publicaciones():String
		{
			return _publicaciones;
		}

		public function set publicaciones(value:String):void
		{
			_publicaciones = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get idRegistroExpoFarma():Number
		{
			return _idRegistroExpoFarma;
		}

		public function set idRegistroExpoFarma(value:Number):void
		{
			_idRegistroExpoFarma = value;
		}

		public function get idContacto():Number
		{
			return _idContacto;
		}

		public function set idContacto(value:Number):void
		{
			_idContacto = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}


	}
}