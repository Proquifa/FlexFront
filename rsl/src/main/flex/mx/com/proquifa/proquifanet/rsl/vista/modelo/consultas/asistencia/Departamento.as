package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.asistencia
{
	[RemoteClass(alias="package mx.com.proquifa.proquifanet.modelo.staff.Departamento")]
	[Bindable]
	public dynamic class Departamento
	{
		
		private var _claveDepartamento:String;
		private var _nombreDepartamento:String;
		
		public function Departamento()
		{
		}

		public function get claveDepartamento():String
		{
			return _claveDepartamento;
		}

		public function set claveDepartamento(value:String):void
		{
			_claveDepartamento = value;
		}

		public function get nombreDepartamento():String
		{
			return _nombreDepartamento;
		}

		public function set nombreDepartamento(value:String):void
		{
			_nombreDepartamento = value;
		}

	}
}