package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.CotizaNoPedidoCliente")]
	[Bindable]
	public class CotizaNoPedidoCliente
	{
		public function CotizaNoPedidoCliente()
		{
		}
		private var _numFila:Number;
		private var _marca:String;
		private var _concepto:String;
		private var _cantidad:Number;
		private var _monto:Number;
		private var _codigo:String;
		private var _cotizacion:String;
		//////////
		private var _montoString:String;
		private var _repetido:Boolean = false;

		public function get repetido():Boolean
		{
			return _repetido;
		}

		public function set repetido(value:Boolean):void
		{
			_repetido = value;
		}

		public function get cotizacion():String
		{
			return _cotizacion;
		}

		public function set cotizacion(value:String):void
		{
			_cotizacion = value;
		}

		public function get montoString():String
		{
			_montoString = '$ ' +UtilsFormatosNumericos.precisionADosDecimalesConComas( monto );
			return _montoString;
		}

		public function set montoString(value:String):void
		{
			_montoString = value;
		}

		public function get codigo():String
		{
			return _codigo;
		}

		public function set codigo(value:String):void
		{
			_codigo = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get cantidad():Number
		{
			return _cantidad;
		}

		public function set cantidad(value:Number):void
		{
			_cantidad = value;
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
		}

		public function get marca():String
		{
			return _marca;
		}

		public function set marca(value:String):void
		{
			_marca = value;
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