package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.EntregasCliente")]
	[Bindable]
	public class EntregasCliente
	{
		private var _numFila:int;
		private var _cpedido:String;
		private var _concepto:String;
		private var _fee:Date;
		private var _fr:Date;
		private var _situacion:String;
		private var _enTiempo:String;
		private var _mes:int;
		private var _factura:Number;
		private var _FPor:String;
		private var _estado:String;
		private var _piezas:Number;
		private var _montoTotal:Number;
		//////////
		private var _FEEString:String;
		private var _FRString:String;
		private var _montonTotalString:String;
		
		public function EntregasCliente()
		{
		}

		public function get montonTotalString():String
		{
			_montonTotalString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( montoTotal );
			return _montonTotalString;
		}

		public function set montonTotalString(value:String):void
		{
			_montonTotalString = value;
		}

		public function get montoTotal():Number
		{
			return _montoTotal;
		}

		public function set montoTotal(value:Number):void
		{
			_montoTotal = value;
		}

		public function get piezas():Number
		{
			return _piezas;
		}

		public function set piezas(value:Number):void
		{
			_piezas = value;
		}

		public function get FRString():String
		{
			if( fr != null ) _FRString = UtilsFecha.formatoFechaDDMMMYY( fr );
			return _FRString;
		}

		public function set FRString(value:String):void
		{
			_FRString = value;
		}

		public function get FEEString():String
		{
			if( fee != null ) _FEEString = UtilsFecha.formatoFechaDDMMMYY( fee );
			return _FEEString;
		}

		public function set FEEString(value:String):void
		{
			_FEEString = value;
		}

		public function get FPor():String
		{
			return _FPor;
		}

		public function set FPor(value:String):void
		{
			_FPor = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}
		public function get factura():Number
		{
			return _factura;
		}

		public function set factura(value:Number):void
		{
			_factura = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get enTiempo():String
		{
			return _enTiempo;
		}

		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}

		public function get situacion():String
		{
			return _situacion;
		}

		public function set situacion(value:String):void
		{
			_situacion = value;
		}

		public function get fr():Date
		{
			return _fr;
		}

		public function set fr(value:Date):void
		{
			_fr = value;
		}

		public function get fee():Date
		{
			return _fee;
		}

		public function set fee(value:Date):void
		{
			_fee = value;
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
		}

		public function get cpedido():String
		{
			return _cpedido;
		}

		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}

	}
}