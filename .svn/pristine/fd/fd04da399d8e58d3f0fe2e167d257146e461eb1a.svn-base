package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras.reporteCompras
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[Bindable]
	public class ReporteComprasItemPartida
	{
		
		private var _numFila:uint;
		private var _numFilaString:String;
		private var _numPiezas:uint;
		private var _numPiezasString:String;
		private var _monto:Number;
		private var _montoString:String;
		private var _fee:Date;
		private var _fea:Date;
		private var _lblFecha:String;
		private var _descripcionProducto:String;
		private var _precioU:Number;
		private var _precioUString:String;
		private var _estado:String;
		private var _nombreCliente:String;
		private var _tipoProducto:String;
		private var _control:String;
		private var _manejo:String;
		private var _ubicacion:String;
		private var _idPartida:int;
		
		
		private var _isEnfocado:Boolean;
		private var _isUltimo:Boolean;
		private var _isPrimero:Boolean;
		
		private var _totalPartidas:uint;
		private var _totalPartidasString:String;
		private var _totalMonto:Number;
		private var _totalMontoString:String;
		private var _totalPiezas:uint;
		private var _totalPiezasString:String;
		private var _partida:uint;
		
		
		public function ReporteComprasItemPartida()
		{
			_totalPartidasString = "0 Partidas";
			_totalMontoString = "$0 USD";
			_totalPiezasString = "0 Piezas";
			_isEnfocado = false;
			_isUltimo = false;
			_isPrimero = false;
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
			if(value == 1 )
				_numPiezasString = "1 pza";
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

		public function get fee():Date
		{
			return _fee;
		}

		public function set fee(value:Date):void
		{
			_fee = value;
		}

		public function get fea():Date
		{
			return _fea;
		}

		public function set fea(value:Date):void
		{
			_fea = value;
		}

		public function get descripcionProducto():String
		{
			return _descripcionProducto;
		}

		public function set descripcionProducto(value:String):void
		{
			_descripcionProducto = value;
		}

		public function get precioU():Number
		{
			return _precioU;
		}

		public function set precioU(value:Number):void
		{
			_precioU = value;
			_precioUString = "PU "+ UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + " USD";
		}

		public function get precioUString():String
		{
			return _precioUString;
		}

		public function set precioUString(value:String):void
		{
			_precioUString = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get tipoProducto():String
		{
			return _tipoProducto;
		}

		public function set tipoProducto(value:String):void
		{
			_tipoProducto = value;
		}

		public function get control():String
		{
			return _control;
		}

		public function set control(value:String):void
		{
			_control = value;
		}

		public function get manejo():String
		{
			return _manejo;
		}

		public function set manejo(value:String):void
		{
			_manejo = value;
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

		public function get totalPartidas():uint
		{
			return _totalPartidas;
		}

		public function set totalPartidas(value:uint):void
		{
			_totalPartidas = value;
			if(value == 1)
				_totalPartidasString ="1 Partida";
			else
				_totalPartidasString =value + " Partidas";
		}

		public function get totalPartidasString():String
		{
			return _totalPartidasString;
		}

		public function set totalPartidasString(value:String):void
		{
			_totalPartidasString = value;
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
				_totalPiezasString = "1 Pieza";
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

		public function get lblFecha():String
		{
			return _lblFecha;
		}

		public function set lblFecha(value:String):void
		{
			_lblFecha = value;
		}

		public function get ubicacion():String
		{
			return _ubicacion;
		}

		public function set ubicacion(value:String):void
		{
			_ubicacion = value;
		}

		public function get partida():uint
		{
			return _partida;
		}

		public function set partida(value:uint):void
		{
			_partida = value;
		}

		public function get idPartida():int
		{
			return _idPartida;
		}

		public function set idPartida(value:int):void
		{
			_idPartida = value;
		}

		public function get isPrimero():Boolean
		{
			return _isPrimero;
		}

		public function set isPrimero(value:Boolean):void
		{
			_isPrimero = value;
		}
	}
}