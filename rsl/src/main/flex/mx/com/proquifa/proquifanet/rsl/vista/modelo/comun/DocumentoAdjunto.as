package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.utils.ByteArray;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.DocumentoAdjunto")]
	[Bindable]
	public class DocumentoAdjunto
	{
		private var _nombre:String;
		private var _titulo:String;
		private var _ruta:String;
		private var _archivo:ByteArray;
		private var _idArchivoAdjunto:int;
		private var _idServicio:int;
		private var _extension:String;
		private var _asunto:String;
		private var _descripcion:String;
		
		public function DocumentoAdjunto()
		{
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}

		public function get asunto():String
		{
			return _asunto;
		}

		public function set asunto(value:String):void
		{
			_asunto = value;
		}

		public function get archivo():ByteArray
		{
			return _archivo;
		}

		public function set archivo(value:ByteArray):void
		{
			_archivo = value;
		}

		public function get extension():String
		{
			return _extension;
		}

		public function set extension(value:String):void
		{
			_extension = value;
		}

		public function get idServicio():int
		{
			return _idServicio;
		}

		public function set idServicio(value:int):void
		{
			_idServicio = value;
		}

		public function get idArchivoAdjunto():int
		{
			return _idArchivoAdjunto;
		}

		public function set idArchivoAdjunto(value:int):void
		{
			_idArchivoAdjunto = value;
		}

		public function get ruta():String
		{
			return _ruta;
		}

		public function set ruta(value:String):void
		{
			_ruta = value;
		}

		public function get titulo():String
		{
			return _titulo;
		}

		public function set titulo(value:String):void
		{
			_titulo = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

	}
}