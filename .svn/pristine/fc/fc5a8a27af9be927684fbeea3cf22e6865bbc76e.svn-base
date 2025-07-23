package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.CotizaPedidoCliente")]
	public class CotizaPedidoCliente
	{
		public function CotizaPedidoCliente()
		{
		}
		private var _numFila:int;
		private var _cotizacion:String;
		private var _pedido:String;
		private var _montoCotizado:Number;
		private var _montoPedido:Number;
		private var _piezasCotizadas:Number;
		private var _piezasPedidas:Number;
		private var _mes:Number;
		private var _repetido:Boolean = false;
		private var _esac:String;
		////////////////////////////////////////
		private var _montoCotizadoString:String;
		private var _montoPedidoString:String;
		
		public function get montoPedidoString():String
		{
			_montoPedidoString = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( montoPedido );
			return _montoPedidoString;
		}

		public function set montoPedidoString(value:String):void
		{
			_montoPedidoString = value;
		}

		public function get montoCotizadoString():String
		{
			_montoCotizadoString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas( montoCotizado );
			return _montoCotizadoString;
		}

		public function set montoCotizadoString(value:String):void
		{
			_montoCotizadoString = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get mes():Number
		{
			return _mes;
		}

		public function set mes(value:Number):void
		{
			_mes = value;
		}

		public function get piezasPedidas():Number
		{
			return _piezasPedidas;
		}

		public function set piezasPedidas(value:Number):void
		{
			_piezasPedidas = value;
		}

		public function get piezasCotizadas():Number
		{
			return _piezasCotizadas;
		}

		public function set piezasCotizadas(value:Number):void
		{
			_piezasCotizadas = value;
		}

		public function get montoPedido():Number
		{
			return _montoPedido;
		}

		public function set montoPedido(value:Number):void
		{
			_montoPedido = value;
		}

		public function get montoCotizado():Number
		{
			return _montoCotizado;
		}

		public function set montoCotizado(value:Number):void
		{
			_montoCotizado = value;
		}

		public function get pedido():String
		{
			if(_pedido == null) _pedido = "NA";
			return _pedido;
		}

		public function set pedido(value:String):void
		{
			_pedido = value;
		}

		public function get cotizacion():String
		{
			return _cotizacion;
		}

		public function set cotizacion(value:String):void
		{
			_cotizacion = value;
		}

		public function get repetido():Boolean
		{
			return _repetido;
		}

		public function set repetido(value:Boolean):void
		{
			_repetido = value;
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