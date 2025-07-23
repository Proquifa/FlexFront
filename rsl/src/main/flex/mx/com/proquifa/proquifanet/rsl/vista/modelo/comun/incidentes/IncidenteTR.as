package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.IncidenteTR")]
	public class IncidenteTR
	{
		private var _subproceso:String;
		private var _abiertos:Number;
		private var _cerrados:Number;
		private var _abiertosCNC:Number;
		private var _cerradosCNC:Number;
		public function IncidenteTR()
		{
		}

	

		public function get cerradosCNC():Number
		{
			return _cerradosCNC;
		}

		public function set cerradosCNC(value:Number):void
		{
			_cerradosCNC = value;
		}

		public function get abiertosCNC():Number
		{
			return _abiertosCNC;
		}

		public function set abiertosCNC(value:Number):void
		{
			_abiertosCNC = value;
		}

		public function get cerrados():Number
		{
			return _cerrados;
		}

		public function set cerrados(value:Number):void
		{
			_cerrados = value;
		}

		public function get abiertos():Number
		{
			return _abiertos;
		}

		public function set abiertos(value:Number):void
		{
			_abiertos = value;
		}

		public function get subproceso():String
		{
			return _subproceso;
		}

		public function set subproceso(value:String):void
		{
			_subproceso = value;
		}

	}
}