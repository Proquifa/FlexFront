package mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.mensajero
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.despachos.mensajero.PersonalAlmacenCliente")]
	public class PersonalAlmacenCliente
	{
		
		private var _idPersonal:Number;
		private var _idCliente:Number;
		private var _nombre:String;
		private var _puesto:String;
		private var _borrar:Boolean;
		
		
		//VARIABLES PARA VISTA
		private var _isContacto:Boolean;
		private var _isNuevo:Boolean;
		
		
		public function PersonalAlmacenCliente()
		{
			_borrar = false;
			_isContacto = true;
		}
		
		public function get idPersonal():Number
		{
			return _idPersonal;
		}

		public function set idPersonal(value:Number):void
		{
			_idPersonal = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get puesto():String
		{
			return _puesto;
		}

		public function set puesto(value:String):void
		{
			_puesto = value;
		}

		public function get borrar():Boolean
		{
			return _borrar;
		}

		public function set borrar(value:Boolean):void
		{
			_borrar = value;
		}

		public function get isContacto():Boolean
		{
			return _isContacto;
		}

		public function set isContacto(value:Boolean):void
		{
			_isContacto = value;
		}

		public function get isNuevo():Boolean
		{
			return _isNuevo;
		}

		public function set isNuevo(value:Boolean):void
		{
			_isNuevo = value;
		}


	}
}