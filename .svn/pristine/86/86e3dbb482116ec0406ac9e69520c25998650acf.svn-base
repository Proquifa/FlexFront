package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.VentasCliente")]
	[Bindable]
	public class VentasCliente
	{
		private var _numFila:int;
		private var _mes:int;
		private var _empresaFactura:String;
		private var _folio:Number;
		private var _monto:Number;
		private var _moneda:String;
		private var _tipoCambio:Number;
		private var _conversionUSD:Number;
		private var _tipoDocumento:String;
		//////////
		private var _montoString:String;
		private var _tipoCambioString:String;
		private var _conversionUSDString:String;
		private var _esac:String;

		public function VentasCliente()
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

		public function get conversionUSDString():String
		{
			_conversionUSDString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( conversionUSD );
			return _conversionUSDString;
		}

		public function set conversionUSDString(value:String):void
		{
			_conversionUSDString = value;
		}

		public function get tipoCambioString():String
		{
			_tipoCambioString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( tipoCambio );
			return _tipoCambioString;
		}

		public function set tipoCambioString(value:String):void
		{
			_tipoCambioString = value;
		}

		public function get montoString():String
		{
			_montoString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( monto );
			return _montoString;
		}

		public function set montoString(value:String):void
		{
			_montoString = value;
		}

		public function get tipoDocumento():String
		{
			return _tipoDocumento;
		}

		public function set tipoDocumento(value:String):void
		{
			_tipoDocumento = value;
		}

		public function get conversionUSD():Number
		{
			return _conversionUSD;
		}

		public function set conversionUSD(value:Number):void
		{
			_conversionUSD = value;
		}

		public function get tipoCambio():Number
		{
			return _tipoCambio;
		}

		public function set tipoCambio(value:Number):void
		{
			_tipoCambio = value;
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
		}

		public function get folio():Number
		{
			return _folio;
		}

		public function set folio(value:Number):void
		{
			_folio = value;
		}

		public function get empresaFactura():String
		{
			return _empresaFactura;
		}

		public function set empresaFactura(value:String):void
		{
			_empresaFactura = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get esac():String
		{
			return _esac;
		}

		public function set esac(value:String):void
		{
			_esac = value;
		}

	}
}