package mx.com.proquifa.proquifanet.admonComunicacion.vistas.mock
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoRecibido;
	
	public class MockDocumentoRecibido
	{
		private var _documento:DocumentoRecibido = null;
		public function MockDocumentoRecibido()
		{
			//TODO: implement function
			this._documento = new DocumentoRecibido();
	
			_documento.docto = "file:///Users/MACPRODEV1/Desktop/SuplementocatalogoMicrobiologics.pdf";
			_documento.origen = "Pedidos";
			_documento.nombreEmpresa = "USP";
			_documento.medio = "Tel";
			_documento.tipo = "tipo1";
			_documento.numero = "12345";
			_documento.RPor ="CTirado";
			_documento.observaciones = "comentarios";
			_documento.empresa = 1;
			_documento.ingreso ="CTirado";
			
		}
	
		public function regresaDocumentoRecibido():DocumentoRecibido{		 
			 return this._documento;
		}
	
	}
}