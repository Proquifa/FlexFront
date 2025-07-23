package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor
{

	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.OCTableroProveedor")]
	
	public class OCTableroProveedor
	{
		
		private var _descripcion:String;
		private var _estado:String;
		private var _facturaP:String;
		private var _ordenDeCompra:String;
		private var _TRespuesta:String;
		private var _cliente:String;
		private var _pedidoInterno:String;
		private var _tipoRechazo:String;
		
		private var _fEAPharmaString:String;
		private var _fEAProquifaString:String;
		private var _fRAMEXString:String;
		private var _fRAUSAString:String;
		private var _empresa:String;
		private var _moneda:String;
		private var _montoString:String;
		private var _montoDolaresString:String;
		private var _tipoCambioString:String;
		
		private var _FEAPharma:Date;
		private var _FEAProquifa:Date;
		private var _FRAMEX:Date;
		private var _FRAUSA:Date;
		
		private var _cantidad:int;
		private var _idPCompra:int;
		private var _mes:int;
		private var _enTiempo:int;
		private var _numFila:int;
		private var _monto:Number;
		private var _montoDolares:Number;
		private var _tipoDeCambio:int;
		
		public function OCTableroProveedor()
		{
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get facturaP():String
		{
			if(_facturaP == null){
				_facturaP = 'ND';
			}
			return _facturaP;
		}

		public function set facturaP(value:String):void
		{
			_facturaP = value;		
		}

		public function get ordenDeCompra():String
		{
			return _ordenDeCompra;
		}

		public function set ordenDeCompra(value:String):void
		{
			_ordenDeCompra = value;
		}

		public function get TRespuesta():String
		{
			return _TRespuesta;
		}

		public function set TRespuesta(value:String):void
		{
			_TRespuesta;
		}

		public function get FEAPharma():Date
		{
			return _FEAPharma;
		}

		public function set FEAPharma(value:Date):void
		{
			_FEAPharma = value;
			fEAPharmaString = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get FEAProquifa():Date
		{
			return _FEAProquifa;
		}

		public function set FEAProquifa(value:Date):void
		{
			_FEAProquifa = value;
			fEAProquifaString = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get FRAMEX():Date
		{
			return _FRAMEX;
		}

		public function set FRAMEX(value:Date):void
		{
			_FRAMEX = value;
			fRAMEXString = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get FRAUSA():Date
		{
			return _FRAUSA;
		}

		public function set FRAUSA(value:Date):void
		{
			_FRAUSA = value;
			fRAUSAString = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get cantidad():int
		{
			return _cantidad;
		}

		public function set cantidad(value:int):void
		{
			_cantidad = value;
		}

		public function get idPCompra():int
		{
			return _idPCompra;
		}

		public function set idPCompra(value:int):void
		{
			_idPCompra = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get enTiempo():int
		{
			if(_enTiempo == 0) _TRespuesta = 'R';
			return _enTiempo;
		}

		public function set enTiempo(value:int):void
		{
			_enTiempo = value;
			if(value == 1) _TRespuesta = 'T';
		}

		public function get fEAPharmaString():String
		{
			if(_fEAPharmaString == null) _fEAPharmaString = 'ND';
			return _fEAPharmaString;
		}

		public function set fEAPharmaString(value:String):void
		{
			_fEAPharmaString = value;
		}

		public function get fEAProquifaString():String
		{
			if(_fEAProquifaString == null) _fEAProquifaString = 'ND' 
			return _fEAProquifaString;
		}

		public function set fEAProquifaString(value:String):void
		{
			_fEAProquifaString = value;
		}

		public function get fRAMEXString():String
		{
			if(_fRAMEXString == null) _fRAMEXString = 'ND';
			return _fRAMEXString;
		}

		public function set fRAMEXString(value:String):void
		{
			_fRAMEXString = value;
		}

		public function get fRAUSAString():String
		{
			if(_fRAUSAString == null) _fRAUSAString = 'ND';
			return _fRAUSAString;
		}

		public function set fRAUSAString(value:String):void
		{
			_fRAUSAString = value;
		}

		public function get cliente():String
		{
			return _cliente;
		}

		public function set cliente(value:String):void
		{
			_cliente = value;
		}

		public function get pedidoInterno():String
		{
			return _pedidoInterno;
		}

		public function set pedidoInterno(value:String):void
		{
			_pedidoInterno = value;
		}

		public function get tipoRechazo():String
		{
			return _tipoRechazo;
		}

		public function set tipoRechazo(value:String):void
		{
			_tipoRechazo = value;
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
			_montoString = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get montoDolares():Number
		{
			return _montoDolares;
		}

		public function set montoDolares(value:Number):void
		{
			_montoDolares = value;
			_montoDolaresString = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get tipoDeCambio():int
		{
			return _tipoDeCambio;
		}

		public function set tipoDeCambio(value:int):void
		{
			_tipoDeCambio = value;
			_tipoDeCambio == 1 ? _tipoCambioString = 'NA' : _tipoCambioString = UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get montoString():String
		{
			return _montoString;
		}

		public function set montoString(value:String):void
		{
			_montoString = value;
		}

		public function get montoDolaresString():String
		{
			return _montoDolaresString;
		}

		public function set montoDolaresString(value:String):void
		{
			_montoDolaresString = value;
		}

		public function get tipoCambioString():String
		{
			return _tipoCambioString;
		}

		public function set tipoCambioString(value:String):void
		{
			_tipoCambioString = value;
		}


	}
}