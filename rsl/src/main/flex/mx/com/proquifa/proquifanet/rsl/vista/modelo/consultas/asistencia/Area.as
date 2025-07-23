package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.asistencia
{
	[RemoteClass(alias="package mx.com.proquifa.proquifanet.modelo.staff.Area")]
	[Bindable]
	public dynamic class Area
	{
		
		private var _claveArea:String;
		private var _nombreArea:String;
		
		public function Area()
		{
		}

		public function get claveArea():String
		{
			return _claveArea;
		}

		public function set claveArea(value:String):void
		{
			_claveArea = value;
		}

		public function get nombreArea():String
		{
			return _nombreArea;
		}

		public function set nombreArea(value:String):void
		{
			_nombreArea = value;
		}


	}
}