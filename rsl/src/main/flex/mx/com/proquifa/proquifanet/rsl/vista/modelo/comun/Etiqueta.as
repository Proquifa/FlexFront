package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.utils.ByteArray;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Etiqueta")]
	[Bindable]
	public class Etiqueta
	{
		private var _numFila:int;
		private var _folioArchivo:String;
		private var _barcode:String;
		private var _estatus:String;
		private var _cadenaDeBytes:ByteArray;

		public function Etiqueta()
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

		public function get cadenaDeBytes():ByteArray
		{
			return _cadenaDeBytes;
		}

		public function set cadenaDeBytes(value:ByteArray):void
		{
			_cadenaDeBytes = value;
		}

		public function get estatus():String
		{
			return _estatus;
		}

		public function set estatus(value:String):void
		{
			_estatus = value;
		}

		public function get barcode():String
		{
			return _barcode;
		}

		public function set barcode(value:String):void
		{
			_barcode = value;
		}

		public function get folioArchivo():String
		{
			return _folioArchivo;
		}

		public function set folioArchivo(value:String):void
		{
			_folioArchivo = value;
		}

	}
}