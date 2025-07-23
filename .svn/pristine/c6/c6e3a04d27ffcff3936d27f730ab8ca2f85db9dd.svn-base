package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.productos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.producto.PagoProducto")]
	[Bindable]
	public class PagoProducto
	{
		
		private var _numFila:int;
		private var _empresa:String;
		private var _fechaEstimadaPago:Date;
		private var _folioFP:String;
		private var _folioPG:String;
		private var _mes:int;
		private var _moneda:String;
		private var _montoOC:Number;		
		private var _montoDolares:Number;
		private var _montoFactura:Number;
		private var _noFactura:String;
		private var _nombreProveedor:String;
		private var _ordenCompra:String;
		private var _cantidad:Number;
		private var _flete:Number;
		private var _fecha:Date;
		private var _estado:String;
		
		//////////////////VISTA///////////////////////////
		
		private var _montoOCString:String;
		private var _montoDolaresString:String;
		private var _montoFacturaString:String;
		private var _fechaEstimadaPagoString:String;
		private var _fechaString:String;
		
		public function PagoProducto()
		{
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
		}

		public function get fechaEstimadaPago():Date
		{
			return _fechaEstimadaPago;
		}

		public function set fechaEstimadaPago(value:Date):void
		{
			_fechaEstimadaPago = value;
		}

		public function get folioFP():String
		{
			return _folioFP;
		}

		public function set folioFP(value:String):void
		{
			_folioFP = value;
		}

		public function get folioPG():String
		{
			return _folioPG;
		}

		public function set folioPG(value:String):void
		{
			_folioPG = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get montoOC():Number
		{
			return _montoOC;
		}

		public function set montoOC(value:Number):void
		{
			_montoOC = value;
		}

		public function get montoDolares():Number
		{
			return _montoDolares;
		}

		public function set montoDolares(value:Number):void
		{
			_montoDolares = value;
		}

		public function get montoFactura():Number
		{
			return _montoFactura;
		}

		public function set montoFactura(value:Number):void
		{
			_montoFactura = value;
		}

		public function get noFactura():String
		{
			return _noFactura;
		}

		public function set noFactura(value:String):void
		{
			_noFactura = value;
		}

		public function get nombreProveedor():String
		{
			return _nombreProveedor;
		}

		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}

		public function get ordenCompra():String
		{
			return _ordenCompra;
		}

		public function set ordenCompra(value:String):void
		{
			_ordenCompra = value;
		}

		public function get cantidad():Number
		{
			return _cantidad;
		}

		public function set cantidad(value:Number):void
		{
			_cantidad = value;
		}

		public function get flete():Number
		{
			return _flete;
		}

		public function set flete(value:Number):void
		{
			_flete = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get montoOCString():String
		{
			_montoOCString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas(montoOC);
			return _montoOCString;
		}

		public function set montoOCString(value:String):void
		{
			_montoOCString = value;
		}

		public function get montoDolaresString():String
		{
			_montoDolaresString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas(montoDolares);
			return _montoDolaresString;
		}

		public function set montoDolaresString(value:String):void
		{
			_montoDolaresString = value;
		}

		public function get montoFacturaString():String
		{
			_montoFacturaString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas(montoFactura);
			return _montoFacturaString;
		}

		public function set montoFacturaString(value:String):void
		{
			_montoFacturaString = value;
		}

		public function get fechaEstimadaPagoString():String
		{
			_fechaEstimadaPagoString = UtilsFecha.formatoFechaDDMMMYYYY( fechaEstimadaPago );
			return _fechaEstimadaPagoString;
		}

		public function set fechaEstimadaPagoString(value:String):void
		{
			_fechaEstimadaPagoString = value;
		}

		public function get fechaString():String
		{
			_fechaString = UtilsFecha.formatoFechaDDMMMYYYY( fecha );
			return _fechaString;
		}

		public function set fechaString(value:String):void
		{
			_fechaString = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}


	}
}