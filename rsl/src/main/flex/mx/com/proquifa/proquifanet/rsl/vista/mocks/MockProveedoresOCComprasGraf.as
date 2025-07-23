package mx.com.proquifa.proquifanet.rsl.vista.mocks
{
	public class MockProveedoresOCComprasGraf
	{
	private var _ocCompras:Array = new Array();
		public function MockProveedoresOCComprasGraf()
		{		
			this._ocCompras = new Array();
			
			_ocCompras = new Array([1,1,0],[5,8,1],[2,3,2],[4,6,3],[7,9,4],[1,5,5],[7,3,6],[6,8,7],[5,6,8],[5,8,9],[5,8,10],[2,4,11]);
			
		}
		public function comprasGrafica():Array{
			return this._ocCompras;
		}	
	}
}