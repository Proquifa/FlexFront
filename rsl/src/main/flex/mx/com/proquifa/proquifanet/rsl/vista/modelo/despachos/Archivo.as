package mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos
{
	import flash.utils.ByteArray;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.RutasPdF;

	//mx.com.proquifa.proquifanet.modelo.despachos.Archivo
	//mx.com.proquifa.proquifanet.modelo.comun.Archivo
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Archivo")]
	[Bindable]
	public class Archivo
	{
		private var _numFila:int;
		private var _descripcion:String;
		private var _folio:String;
		private var _extension:String;
		private var _justificacion:String;
		private var _cadenaDeBytes:ByteArray;
		/////////////////////////////////////para manejo/////////////////////////////////////
		private var _rutaLocal:String;
		private var _rutaServer:String;
		
		public function Archivo(){}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get rutaServer():String
		{
			if( folio != ""){
					if( descripcion != "Certificado" && descripcion != "Hoja de seguridad" ){
						_rutaServer = RutasPdF.GENERAL_RUTA  + RutasPdF.DOCTOSR_RUTA+RutasPdF.INSPECCION_OC+ RutasPdF.INSPECCION_IMAGENES+ folio +".jpg"
					}else{
						_rutaServer = RutasPdF.GENERAL_RUTA  + RutasPdF.DOCTOSR_RUTA+RutasPdF.INSPECCION_OC+ RutasPdF.INSPECCION_PIEZAS+ folio +".pdf"		
					}
			}
			return _rutaServer;
		}

		public function set rutaServer(value:String):void
		{
			_rutaServer = value;
		}

		public function get rutaLocal():String
		{
			return _rutaLocal;
		}

		public function set rutaLocal(value:String):void
		{
			_rutaLocal = value;
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}

		public function get cadenaDeBytes():ByteArray
		{
			return _cadenaDeBytes;
		}

		public function set cadenaDeBytes(value:ByteArray):void
		{
			_cadenaDeBytes = value;
		}

		public function get justificacion():String
		{
			return _justificacion;
		}

		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}

		public function get extension():String
		{
			return _extension;
		}

		public function set extension(value:String):void
		{
			_extension = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}
	}
}