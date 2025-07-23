package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.compras.proveedores
{
	[Bindable]
	public class ObjetoGrafica
	{
		public var meses:int;
		public var cantidadesT:int;
		public var cantidadesFT:int;
		public var etiquetaMes:String;
		
		public function ObjetoGrafica(cantidadesT:int=0,cantidadesFT:int=0,etiquetaMes:String="")
		{
			this.cantidadesT = cantidadesT;
			this.cantidadesFT = cantidadesFT;
			/*this.meses = meses;*/
			this.etiquetaMes = etiquetaMes;
			
		}

	}
}