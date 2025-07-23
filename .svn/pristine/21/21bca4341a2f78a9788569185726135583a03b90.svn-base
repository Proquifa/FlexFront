package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteCompras
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	public class ReporteComprasItemProveedores
	{
		
		private var _numFila:uint;
		private var _numFilaString:String;
		private var _numOrdenesCompra:uint;
		private var _numOrdenesCompraString:String;
		private var _numPiezas:uint;
		private var _numPiezasString:String;
		private var _fechaTramitacion:Date;
		private var _nombreProveedor:String;
		private var _monto:Number;
		private var _montoString:String;
		private var _comprador:String;
		private var _ubicacion:String;
		private var _estado:String;
		private var _fechaEsperadaArribo:Date;
		private var _labelFechaTramitacion:String;
		private var _mostrarFechaTramOArribo:Boolean;
		
		
		//Para el último item
		private var _isUltimoItem:Boolean;
		private var _totalProveedores:uint;
		private var _totalProveedoresString:String;
		private var _totalMonto:Number;
		private var _totalMontoString:String;
		private var _totalPiezas:uint;
		private var _totalPiezasString:String;
		
		public function ReporteComprasItemProveedores()
		{
			_isUltimoItem = false;
			_totalProveedoresString = "0 Proveedores";
			_totalMontoString = "$0 USD";
			_totalPiezasString = "0 Piezas";
			_mostrarFechaTramOArribo = true;
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

		public function get numOrdenesCompra():uint
		{
			return _numOrdenesCompra;
		}

		public function set numOrdenesCompra(value:uint):void
		{
			_numOrdenesCompra = value;
			_numOrdenesCompraString = value +" OC";
		}

		public function get numOrdenesCompraString():String
		{
			return _numOrdenesCompraString;
		}

		public function set numOrdenesCompraString(value:String):void
		{
			_numOrdenesCompraString = value;
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

		public function get fechaTramitacion():Date
		{
			return _fechaTramitacion;
		}

		public function set fechaTramitacion(value:Date):void
		{
			_fechaTramitacion = value;
		}

		public function get nombreProveedor():String
		{
			return _nombreProveedor;
		}

		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
			_montoString = "$" + UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + " USD";
		}

		public function get montoString():String
		{
			return _montoString;
		}

		public function set montoString(value:String):void
		{
			_montoString = value;
		}

		public function get comprador():String
		{
			return _comprador;
		}

		public function set comprador(value:String):void
		{
			_comprador = value;
		}

		public function get isUltimoItem():Boolean
		{
			return _isUltimoItem;
		}

		public function set isUltimoItem(value:Boolean):void
		{
			_isUltimoItem = value;
		}

		public function get totalProveedores():uint
		{
			return _totalProveedores;
		}

		public function set totalProveedores(value:uint):void
		{
			_totalProveedores = value;
			if(value == 1)
				_totalProveedoresString = value + " Proveedor";
			else
				_totalProveedoresString = value + " Proveedores";
		}

		public function get totalProveedoresString():String
		{
			return _totalProveedoresString;
		}

		public function set totalProveedoresString(value:String):void
		{
			_totalProveedoresString = value;
		}

		public function get totalMonto():Number
		{
			return _totalMonto;
		}

		public function set totalMonto(value:Number):void
		{
			_totalMonto = value;
			_totalMontoString = "$"+UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + " USD";
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
				_totalPiezasString = value + " pza";
			else
				_totalPiezasString = value + " pzas";
		}

		public function get totalPiezasString():String
		{
			return _totalPiezasString;
		}

		public function set totalPiezasString(value:String):void
		{
			_totalPiezasString = value;
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

		public function get labelFechaTramitacion():String
		{
			return _labelFechaTramitacion;
		}

		public function set labelFechaTramitacion(value:String):void
		{
			_labelFechaTramitacion = value;
		}

		public function get mostrarFechaTramOArribo():Boolean
		{
			return _mostrarFechaTramOArribo;
		}

		public function set mostrarFechaTramOArribo(value:Boolean):void
		{
			_mostrarFechaTramOArribo = value;
		}


	}
}