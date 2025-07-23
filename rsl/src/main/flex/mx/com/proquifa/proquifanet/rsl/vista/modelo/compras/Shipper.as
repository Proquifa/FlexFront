package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{ 
	import flash.utils.ByteArray;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.gestorimportaciones.Shipper")]

	[Bindable]
	public class Shipper
	{
		
		private var  _idShipper:Number;
		private var  _idOrdenDespacho:Number;
		private var  _folio:String;
		private var _idExportador:Number;
		private var  _nombreExportador:String;
		private var  _totalPiezas:Number;
		private var  _totalFacturas:Number;
		private var	 _totalMontoUSAyCA:Number;
		private var	 _totalMontoOtros:Number;
		private var  _documentoShipper:ByteArray;
	
		
		
		
		public function Shipper()
		{
			_idOrdenDespacho = 0;
			_nombreExportador = "";
			_totalMontoUSAyCA = 0;
			_totalMontoOtros = 0;
			_totalPiezas = 0;
			_folio = "";
			_documentoShipper = null;
		}



		public function get documentoShipper():ByteArray
		{
			return _documentoShipper;
		}

		public function set documentoShipper(value:ByteArray):void
		{
			_documentoShipper = value;
		}

		public function get totalMontoOtros():Number
		{
			return _totalMontoOtros;
		}

		public function set totalMontoOtros(value:Number):void
		{
			_totalMontoOtros = value;
		}

		public function get totalMontoUSAyCA():Number
		{
			return _totalMontoUSAyCA;
		}

		public function set totalMontoUSAyCA(value:Number):void
		{
			_totalMontoUSAyCA = value;
		}

		public function get totalFacturas():Number
		{
			return _totalFacturas;
		}

		public function set totalFacturas(value:Number):void
		{
			_totalFacturas = value;
		}

		public function get totalPiezas():Number
		{
			return _totalPiezas;
		}

		public function set totalPiezas(value:Number):void
		{
			_totalPiezas = value;
		}

		public function get nombreExportador():String
		{
			return _nombreExportador;
		}

		public function set nombreExportador(value:String):void
		{
			_nombreExportador = value;
		}

		public function get idExportador():Number
		{
			return _idExportador;
		}

		public function set idExportador(value:Number):void
		{
			_idExportador = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get idOrdenDespacho():Number
		{
			return _idOrdenDespacho;
		}

		public function set idOrdenDespacho(value:Number):void
		{
			_idOrdenDespacho = value;
		}

		public function get idShipper():Number
		{
			return _idShipper;
		}

		public function set idShipper(value:Number):void
		{
			_idShipper = value;
		}
		
		

	}
}