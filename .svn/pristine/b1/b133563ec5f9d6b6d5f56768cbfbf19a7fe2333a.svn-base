package mx.com.proquifa.proquifanet.rsl.vista.mocks
{
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;

	public class MockTableroProveedoresOCTransito
	{
		private var _transito:ArrayCollection = null;
		public function MockTableroProveedoresOCTransito()
		{
			var transito:PartidaCompra = null;
			this._transito = new ArrayCollection();
			
			transito = new PartidaCompra();
			
			transito.pedido = "860910-2324";
			transito.fabrica = "Lemery";
/*			transito.concepto = "C-2035";
			transito.fechaInicioPharmaUE = "2010-12-31" ;
			transito.fechaInicioPharma = "04/05/11";
			transito.fechaInicioProquifa= "25-Nov-10";*/
			transito.tiempoRespuesta = "R";
			this._transito.addItem(transito);
			
			transito = new PartidaCompra

			transito.pedido = "130910-2324";
			transito.fabrica = "Everick";
/*			transito.concepto = "B-2035";
			transito.fechaInicioPharmaUE = "2010-12-31" ;
			transito.fechaInicioPharma = "04/05/11";
			transito.fechaInicioProquifa = "30-May-22";*/
			transito.tiempoRespuesta = "T";
			this._transito.addItem(transito);
		}
		
		public function ocTransito():ArrayCollection{
			return this._transito;
		}
	}
}