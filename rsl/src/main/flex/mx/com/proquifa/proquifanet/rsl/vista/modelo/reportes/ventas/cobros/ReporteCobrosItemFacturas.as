package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.cobros
{
	[Bindable]
	public class ReporteCobrosItemFacturas
	{
		private var numFila:uint;
		
		private var _monto:Number;
		private var _numPiezas:Number;
		private var _numPiezasString:String;
		private var _fep:Date;
		private var _factura:int;
		private var _fechafacturacion:Date;
		private var _vendio:String;
		private var _drc:String;
		private var _moroso:String;
		private var _estado:String;
		
		
		private var _isEnfocado:Boolean;
		private var _isUltimo:Boolean;
		private var _isPrimero:Boolean;
		
		private var _totalFacturas:uint;
		private var _totalFacturasString:String;
		private var _totalMonto:Number;
		private var _totalMontoString:String;
		private var _totalPiezas:uint;
		private var _totalPiezasString:String;
		
		public function ReporteCobrosItemFacturas()
		{
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get numPiezas():Number
		{
			return _numPiezas;
		}

		public function set numPiezas(value:Number):void
		{
			_numPiezas = value;
		}

		public function get numPiezasString():String
		{
			return _numPiezasString;
		}

		public function set numPiezasString(value:String):void
		{
			_numPiezasString = value;
		}

		public function get fep():Date
		{
			return _fep;
		}

		public function set fep(value:Date):void
		{
			_fep = value;
		}

		public function get factura():int
		{
			return _factura;
		}

		public function set factura(value:int):void
		{
			_factura = value;
		}

		public function get fechafacturacion():Date
		{
			return _fechafacturacion;
		}

		public function set fechafacturacion(value:Date):void
		{
			_fechafacturacion = value;
		}

		public function get vendio():String
		{
			return _vendio;
		}

		public function set vendio(value:String):void
		{
			_vendio = value;
		}

		public function get drc():String
		{
			return _drc;
		}

		public function set drc(value:String):void
		{
			_drc = value;
		}

		public function get moroso():String
		{
			return _moroso;
		}

		public function set moroso(value:String):void
		{
			_moroso = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get isEnfocado():Boolean
		{
			return _isEnfocado;
		}

		public function set isEnfocado(value:Boolean):void
		{
			_isEnfocado = value;
		}

		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}

		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}

		public function get isPrimero():Boolean
		{
			return _isPrimero;
		}

		public function set isPrimero(value:Boolean):void
		{
			_isPrimero = value;
		}

		public function get totalFacturas():uint
		{
			return _totalFacturas;
		}

		public function set totalFacturas(value:uint):void
		{
			_totalFacturas = value;
		}

		public function get totalFacturasString():String
		{
			return _totalFacturasString;
		}

		public function set totalFacturasString(value:String):void
		{
			_totalFacturasString = value;
		}

		public function get totalMonto():Number
		{
			return _totalMonto;
		}

		public function set totalMonto(value:Number):void
		{
			_totalMonto = value;
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
		}

		public function get totalPiezasString():String
		{
			return _totalPiezasString;
		}

		public function set totalPiezasString(value:String):void
		{
			_totalPiezasString = value;
		}


	}
}