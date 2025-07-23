package mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet
{

	[Bindable]
	public class ResultAlert
	{
		
		private var _vieneD:String;
		private var _botonSeleccionado:String;
		
		public function ResultAlert()
		{
		}

		public function get botonSeleccionado():String
		{
			return _botonSeleccionado;
		}

		public function set botonSeleccionado(value:String):void
		{
			_botonSeleccionado = value;
		}

		public function get vieneD():String
		{
			return _vieneD;
		}

		public function set vieneD(value:String):void
		{
			_vieneD = value;
		}

	}
}