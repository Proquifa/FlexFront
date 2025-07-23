package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.TipoPPedido")]
	[Bindable]
	public class TipoPPedido
	{
		private var _totalTipo:int;
		private var _piezas:int;
		private var _monto:int;
		
		public function TipoPPedido()
		{
		}

		public function get monto():int
		{
			return _monto;
		}

		public function set monto(value:int):void
		{
			_monto = value;
		}

		public function get piezas():int
		{
			return _piezas;
		}

		public function set piezas(value:int):void
		{
			_piezas = value;
		}

		public function get totalTipo():int
		{
			return _totalTipo;
		}

		public function set totalTipo(value:int):void
		{
			_totalTipo = value;
		}

	}
}