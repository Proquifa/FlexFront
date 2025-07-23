package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{
	import flash.utils.ByteArray;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorimportaciones.Rubros")]
	[Bindable]
	public class Rubros
	{
		private var _gastos:Number;
		private var _fecha:Date;
		private var _PDF:ByteArray;
		private var _XML:ByteArray;
		
		public function Rubros()
		{
		}

		public function get XML():ByteArray
		{
			return _XML;
		}

		public function set XML(value:ByteArray):void
		{
			_XML = value;
		}

		public function get PDF():ByteArray
		{
			return _PDF;
		}

		public function set PDF(value:ByteArray):void
		{
			_PDF = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get gastos():Number
		{
			return _gastos;
		}

		public function set gastos(value:Number):void
		{
			_gastos = value;
		}

	}
}