package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteCompras
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[Bindable]
	public class ReporteComprasItemOrdenDeCompra
	{
		private var _numFila:uint;
		private var _numFilaString:String;
		private var _numPiezas:uint;
		private var _numPiezasString:String;
		private var _monto:Number;
		private var _montoString:String;
		private var _ordenCompra:String;
		private var _ubicacion:String;
		private var _estado:String;
		private var _fechaEsperadaArribo:Date;
		private var _mostrarFechaTramitacion:Boolean;
		private var _fechaTramitacion:Date;
		
		
		//Para el ultimo item
		private var _totalOrdenCompra:uint;
		private var _totalOrdenCompraString:String;
		private var _totalMonto:Number;
		private var _totalMontoString:String;
		private var _totalPiezas:uint;
		private var _totalPiezasString:String;
		private var _isUltimoItem:Boolean;
		
		
		public function ReporteComprasItemOrdenDeCompra()
		{
			_totalOrdenCompraString = "0 OC";
			_totalMontoString = "$0 USD";
			_totalPiezasString = "0 Piezas";
			_isUltimoItem = false;
			_mostrarFechaTramitacion = false;
		}

		public function get numFila():uint
		{
			return _numFila;
		}

		public function set numFila(value:uint):void
		{
			_numFila = value;
			_numFilaString = "#"+value;
		}

		public function get numFilaString():String
		{
			return _numFilaString;
		}

		public function set numFilaString(value:String):void
		{
			_numFilaString = value;
		}

		public function get numPiezas():uint
		{
			return _numPiezas;
		}

		public function set numPiezas(value:uint):void
		{
			_numPiezas = value;
			if(value == 1)
				_numPiezasString = value + " pza";
			else
				_numPiezasString = value + " pzas";
		}

		public function get numPiezasString():String
		{
			return _numPiezasString;
		}

		public function set numPiezasString(value:String):void
		{
			_numPiezasString = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
			_montoString = "$"+ UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + " USD";
		}

		public function get montoString():String
		{
			return _montoString;
		}

		public function set montoString(value:String):void
		{
			_montoString = value;
		}

		public function get ordenCompra():String
		{
			return _ordenCompra;
		}

		public function set ordenCompra(value:String):void
		{
			_ordenCompra = value;
		}

		public function get totalOrdenCompra():uint
		{
			return _totalOrdenCompra;
		}

		public function set totalOrdenCompra(value:uint):void
		{
			_totalOrdenCompra = value;
			_totalOrdenCompraString = value + " OC";
		}

		public function get totalOrdenCompraString():String
		{
			return _totalOrdenCompraString;
		}

		public function set totalOrdenCompraString(value:String):void
		{
			_totalOrdenCompraString = value;
		}

		public function get totalMonto():Number
		{
			return _totalMonto;
		}

		public function set totalMonto(value:Number):void
		{
			_totalMonto = value;
			_totalMontoString = "$"+ UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + " USD";
		}

		public function get totalMontoString():String
		{
			return _totalMontoString;
		}

		public function set totalMontoString(value:String):void
		{
			_totalMontoString = value;
		}

		public function get totalPiezas():uint
		{
			return _totalPiezas;
		}

		public function set totalPiezas(value:uint):void
		{
			_totalPiezas = value;
			if(value == 1)
				_totalPiezasString = value + " Pieza";
			else
				_totalPiezasString = value + " Piezas";
		}

		public function get totalPiezasString():String
		{
			return _totalPiezasString;
		}

		public function set totalPiezasString(value:String):void
		{
			_totalPiezasString = value;
		}

		public function get isUltimoItem():Boolean
		{
			return _isUltimoItem;
		}

		public function set isUltimoItem(value:Boolean):void
		{
			_isUltimoItem = value;
		}

		public function get ubicacion():String
		{
			return _ubicacion;
		}

		public function set ubicacion(value:String):void
		{
			_ubicacion = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get fechaEsperadaArribo():Date
		{
			return _fechaEsperadaArribo;
		}

		public function set fechaEsperadaArribo(value:Date):void
		{
			_fechaEsperadaArribo = value;
		}

		public function get mostrarFechaTramitacion():Boolean
		{
			return _mostrarFechaTramitacion;
		}

		public function set mostrarFechaTramitacion(value:Boolean):void
		{
			_mostrarFechaTramitacion = value;
		}

		public function get fechaTramitacion():Date
		{
			return _fechaTramitacion;
		}

		public function set fechaTramitacion(value:Date):void
		{
			_fechaTramitacion = value;
		}


	}
}