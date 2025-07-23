package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.agenteAduanal.Aduana")]
	[Bindable]
	public class Aduana
	{
		private var _idAduana:int;
		private var _numero:int;
		private var _seccion:int;
		private var _nombre:String;
		
		public function Aduana()
		{
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get seccion():int
		{
			return _seccion;
		}

		public function set seccion(value:int):void
		{
			_seccion = value;
		}

		public function get numero():int
		{
			return _numero;
		}

		public function set numero(value:int):void
		{
			_numero = value;
		}

		public function get idAduana():int
		{
			return _idAduana;
		}

		public function set idAduana(value:int):void
		{
			_idAduana = value;
		}

	}
}