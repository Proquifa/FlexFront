package mx.com.proquifa.vista.modelo
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.interlocutor.ContadoresGestionarAC")]
	public class ContadoresGestionarAC
	{
		
		private var _totalPendientes:int;
		private var _totalPorConfirmacion:int;
		private var _totalPorMonitoreo:int;
		private var _totalContactos:int;
		
		public function ContadoresGestionarAC()
		{
		}

		public function get totalPendientes():int
		{
			return _totalPendientes;
		}

		public function set totalPendientes(value:int):void
		{
			_totalPendientes = value;
		}

		public function get totalPorMonitoreo():int
		{
			return _totalPorMonitoreo;
		}

		public function set totalPorMonitoreo(value:int):void
		{
			_totalPorMonitoreo = value;
		}

		public function get totalContactos():int
		{
			return _totalContactos;
		}

		public function set totalContactos(value:int):void
		{
			_totalContactos = value;
		}

		public function get totalPorConfirmacion():int
		{
			return _totalPorConfirmacion;
		}

		public function set totalPorConfirmacion(value:int):void
		{
			_totalPorConfirmacion = value;
		}


	}
}