package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.ComportamientoPagos")]
	[Bindable]
	public class ComportamientoPagos
	{
		public function ComportamientoPagos()
		{
		}
		private var _numFila:Number;
		private var _empresa:String;
		private var _factura:Number;
		private var _monto:Number;
		private var _TCambio:Number;
		private var _ATiempo:Boolean;
		private var _diasRestantesDeCredito:int;
		private var _mes:int;
		private var _estado:String;
		//////////
		private var _montoString:String;
		private var _TCambioString:String;
		private var _aTiempoString:String;

		public function get aTiempoString():String
		{
			_aTiempoString = ATiempo == true ? "SI":"NO"; 
			return _aTiempoString;
		}

		public function set aTiempoString(value:String):void
		{
			_aTiempoString = value;
		}

		public function get TCambioString():String
		{
			_TCambioString = '$ '+ UtilsFormatosNumericos.precisionADosDecimalesConComas( TCambio );
			return _TCambioString;
		}

		public function set TCambioString(value:String):void
		{
			_TCambioString = value;
		}

		public function get montoString():String
		{
			_montoString = '$ '+ UtilsFormatosNumericos.precisionADosDecimalesConComas( monto );
			return _montoString;
		}

		public function set montoString(value:String):void
		{
			_montoString = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get diasRestantesDeCredito():int
		{
			return _diasRestantesDeCredito;
		}

		public function set diasRestantesDeCredito(value:int):void
		{
			_diasRestantesDeCredito = value;
		}

		public function get ATiempo():Boolean
		{
			return _ATiempo;
		}

		public function set ATiempo(value:Boolean):void
		{
			_ATiempo = value;
		}

		public function get TCambio():Number
		{
			return _TCambio;
		}

		public function set TCambio(value:Number):void
		{
			_TCambio = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get factura():Number
		{
			return _factura;
		}

		public function set factura(value:Number):void
		{
			_factura = value;
		}

		public function get empresa():String
		{
			return _empresa;
		}

		public function set empresa(value:String):void
		{
			_empresa = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

	}
}