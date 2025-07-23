package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.asistencia
{
	[RemoteClass(alias="package mx.com.proquifa.proquifanet.modelo.staff.TipoIncidencia")]
	[Bindable]
	public dynamic class TipoIncidencia
	{
		private var _cveIncidencia:String;
		private var _nomIncidencia:String;
		
		public function TipoIncidencia()
		{
		}

		public function get nomIncidencia():String
		{
			return _nomIncidencia;
		}

		public function set nomIncidencia(value:String):void
		{
			if (value.toUpperCase() == "NINGUNA" ){
				_nomIncidencia = "ASISTENCIA";
			}else{
				_nomIncidencia = value;
			}
		}

		public function get cveIncidencia():String
		{
			return _cveIncidencia;
		}

		public function set cveIncidencia(value:String):void
		{
			_cveIncidencia = value;
		}

	}
}