package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.operativos
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.indicadores.ParametrosBusquedaOperativo")]
	[Bindable]
	public class ParametrosBusquedaOperativo
	{
		private var _anio:int;
		private var _periodo:String;
		private var _tipoPeriodo:int;
		private var _mes:int;
		
		
		//PARAMETROS DE LA BUSQUEDA PERO SÓLO SIRVE PARA VISTA
		public var rangoMinMes:int= 1;
		public var rangoMaxMes:int= 12;
		
		public function ParametrosBusquedaOperativo()
		{
		}

		public function get periodo():String
		{
			return _periodo;
		}

		public function set periodo(value:String):void
		{
			_periodo = value;
		}

		public function get anio():int
		{
			return _anio;
		}

		public function set anio(value:int):void
		{
			_anio = value;
		}

		public function get tipoPeriodo():int
		{
			return _tipoPeriodo;
		}

		public function set tipoPeriodo(value:int):void
		{
			_tipoPeriodo = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}


	}
}