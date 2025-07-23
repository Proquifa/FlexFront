package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.PedidosCliente")]
	public class PedidosCliente
	{
		public function PedidosCliente()
		{
		}
		
		private var _numFila:Number;
		private var _cpedido:String;
		private var _referencia:String;
		private var _montoPedido:Number;
		private var _montoCancelado:Number;
		private var _partidas:int;
		private var _partidasCanceladas:int;
		private var _mes:int;
		////////////////////////
		private var _montoPedidoString:String;
		private var _montoCanceladoString:String;

		public function get montoCanceladoString():String
		{
			_montoCanceladoString = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( montoCancelado );
			return _montoCanceladoString;
		}

		public function set montoCanceladoString(value:String):void
		{
			_montoCanceladoString = value;
		}

		public function get montoPedidoString():String
		{
			_montoPedidoString  = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( montoPedido );
			return _montoPedidoString;
		}

		public function set montoPedidoString(value:String):void
		{
			_montoPedidoString = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get partidasCanceladas():int
		{
			return _partidasCanceladas;
		}

		public function set partidasCanceladas(value:int):void
		{
			_partidasCanceladas = value;
		}

		public function get partidas():int
		{
			return _partidas;
		}

		public function set partidas(value:int):void
		{
			_partidas = value;
		}

		public function get montoCancelado():Number
		{
			return _montoCancelado;
		}

		public function set montoCancelado(value:Number):void
		{
			_montoCancelado = value;
		}

		public function get montoPedido():Number
		{
			return _montoPedido;
		}

		public function set montoPedido(value:Number):void
		{
			_montoPedido = value;
		}

		public function get referencia():String
		{
			return _referencia;
		}

		public function set referencia(value:String):void
		{
			_referencia = value;
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