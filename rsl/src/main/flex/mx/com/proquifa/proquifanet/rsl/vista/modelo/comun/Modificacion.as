package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Modificacion")]
	[Bindable]
	public class Modificacion
	{
		private var _idEmpleado:Number;
		private var _ventana:String;
		private var _servicio:String;
		private var _metodo:String; 
		private var _modificaciones:String;  // cadena que se inserta en modificación (se llena en servicio)
		
		
		public function Modificacion()
		{
		}

		public function get idEmpleado():Number
		{
			return _idEmpleado;
		}

		public function set idEmpleado(value:Number):void
		{
			_idEmpleado = value;
		}

		public function get ventana():String
		{
			return _ventana;
		}

		public function set ventana(value:String):void
		{
			_ventana = value;
		}

		public function get servicio():String
		{
			return _servicio;
		}

		public function set servicio(value:String):void
		{
			_servicio = value;
		}

		public function get metodo():String
		{
			return _metodo;
		}

		public function set metodo(value:String):void
		{
			_metodo = value;
		}

		public function get modificaciones():String
		{
			return _modificaciones;
		}

		public function set modificaciones(value:String):void
		{
			_modificaciones = value;
		}


	}
}