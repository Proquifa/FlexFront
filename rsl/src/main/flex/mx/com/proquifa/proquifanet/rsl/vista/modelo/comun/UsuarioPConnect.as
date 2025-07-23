package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.direccion.asistentecalidad.UsuarioPConnect")]
	[Bindable]
	public class UsuarioPConnect
	{
		
		private var _idUsuarioPConnect:Number;
		private var _idSolicitud:Number;
		private var _nombre:String;
		private var _apellidos:String;
		private var _correo:String;
		private var _empresa:String;
		private var _fecha:Date;
		private var _fechaNacimiento:Date;
		private var _contrasenia:String;
		private var _antiguedad:String;
		private var _validado:Boolean;
		private var _puesto:String;
		private var _departamento:String;
		private var _telefono:String;
		private var _titulo:String;
		
		
		//  VISTA
		
		private var _numFila:Number;
		
		
		public function UsuarioPConnect()
		{
			_numFila = 0;
			_idUsuarioPConnect = 0;
			_idSolicitud = 0;
			_nombre = "";
			_apellidos = "";
			_correo = "";
			_empresa = "";
			_contrasenia = "";
			_antiguedad = "";
			_puesto = "";
			_departamento = "";
			_telefono = "";
			_titulo = "ND";
		}

		public function get idUsuarioPConnect():Number
		{
			return _idUsuarioPConnect;
		}

		public function set idUsuarioPConnect(value:Number):void
		{
			_idUsuarioPConnect = value;
		}

		public function get idSolicitud():Number
		{
			return _idSolicitud;
		}

		public function set idSolicitud(value:Number):void
		{
			_idSolicitud = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get apellidos():String
		{
			return _apellidos;
		}

		public function set apellidos(value:String):void
		{
			_apellidos = value;
		}

		public function get correo():String
		{
			return _correo;
		}

		public function set correo(value:String):void
		{
			_correo = value;
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get fechaNacimiento():Date
		{
			return _fechaNacimiento;
		}

		public function set fechaNacimiento(value:Date):void
		{
			_fechaNacimiento = value;
		}

		public function get contrasenia():String
		{
			return _contrasenia;
		}

		public function set contrasenia(value:String):void
		{
			_contrasenia = value;
		}

		public function get antiguedad():String
		{
			return _antiguedad;
		}

		public function set antiguedad(value:String):void
		{
			_antiguedad = value;
		}

		public function get validado():Boolean
		{
			return _validado;
		}

		public function set validado(value:Boolean):void
		{
			_validado = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get puesto():String
		{
			return _puesto;
		}

		public function set puesto(value:String):void
		{
			_puesto = value;
		}

		public function get departamento():String
		{
			return _departamento;
		}

		public function set departamento(value:String):void
		{
			_departamento = value;
		}

		public function get telefono():String
		{
			return _telefono;
		}

		public function set telefono(value:String):void
		{
			_telefono = value;
		}

		public function get titulo():String
		{
			return _titulo;
		}

		public function set titulo(value:String):void
		{
			_titulo = value;
		}


	}
}