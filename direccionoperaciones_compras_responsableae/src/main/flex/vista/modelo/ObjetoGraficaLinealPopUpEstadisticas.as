package vista.modelo
{
	
	[Bindable]
	public class ObjetoGraficaLinealPopUpEstadisticas
	{
		
		////////vista
		private var _dato:String;
		private var _valor:int		
		
		public function ObjetoGraficaLinealPopUpEstadisticas()
		{
		}


		public function get dato():String
		{
			return _dato;
		}

		public function set dato(value:String):void
		{
			_dato = value;
		}

		public function get valor():int
		{
			return _valor;
		}

		public function set valor(value:int):void
		{
			_valor = value;
		}


	}
}