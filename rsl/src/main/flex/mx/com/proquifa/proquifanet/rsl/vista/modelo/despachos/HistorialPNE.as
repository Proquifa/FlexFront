package mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.despachos.HistorialPNE")]
	[Bindable]
	public class HistorialPNE
	{
		private var _numFila:int;
		private var _fecha:Date;
		private var _razones:String;
		private var _folioRuta:String;
		private var _mensajero:String;
		
		public function HistorialPNE()
		{
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get razones():String
		{
			return _razones;
		}

		public function set razones(value:String):void
		{
			_razones = value;
		}

		public function get folioRuta():String
		{
			return _folioRuta;
		}

		public function set folioRuta(value:String):void
		{
			_folioRuta = value;
		}

		public function get mensajero():String
		{
			return _mensajero;
		}

		public function set mensajero(value:String):void
		{
			_mensajero = value;
		}

	}
}