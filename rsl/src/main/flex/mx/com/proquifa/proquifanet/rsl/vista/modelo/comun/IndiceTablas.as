package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	public class IndiceTablas
	{
		private var _indice:int;
		
		public function get indice():int
		{
			return _indice;
		}

		public function set indice(value:int):void
		{
			_indice = value;
		}

		private function regresaIndice():int{
			indice++;
			return indice;
		}
		
		public function IndiceTablas(){
			regresaIndice();			
		}
		
	}
}