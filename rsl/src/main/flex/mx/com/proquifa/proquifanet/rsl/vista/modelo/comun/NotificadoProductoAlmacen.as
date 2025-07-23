package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.NotificadoProductoAlmacen")]
	[Bindable]
	public class NotificadoProductoAlmacen
	{
		private var _comentarios:String;
		private var _contacto:String;
		private var _creador:String;
		private var _fechaAviso:Date;
		private var _fechaRespuesta:Date;
		private var _folioNotificado:String;
		private var _gestiono:String;
		private var _origen:String;
		private var _razon:String;
		private var _respuesta:String;
		private var _tipo:String;
		private var _pedimento:String;
		
		
		
		public function NotificadoProductoAlmacen()
		{
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get contacto():String
		{
			return _contacto;
		}

		public function set contacto(value:String):void
		{
			_contacto = value;
		}

		public function get creador():String
		{
			return _creador;
		}

		public function set creador(value:String):void
		{
			_creador = value;
		}

		public function get fechaAviso():Date
		{
			return _fechaAviso;
		}

		public function set fechaAviso(value:Date):void
		{
			_fechaAviso = value;
		}

		public function get fechaRespuesta():Date
		{
			return _fechaRespuesta;
		}

		public function set fechaRespuesta(value:Date):void
		{
			_fechaRespuesta = value;
		}

		public function get folioNotificado():String
		{
			return _folioNotificado;
		}

		public function set folioNotificado(value:String):void
		{
			_folioNotificado = value;
		}

		public function get gestiono():String
		{
			return _gestiono;
		}

		public function set gestiono(value:String):void
		{
			_gestiono = value;
		}

		public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}

		public function get razon():String
		{
			return _razon;
		}

		public function set razon(value:String):void
		{
			_razon = value;
		}

		public function get respuesta():String
		{
			return _respuesta;
		}

		public function set respuesta(value:String):void
		{
			_respuesta = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get pedimento():String
		{
			return _pedimento;
		}

		public function set pedimento(value:String):void
		{
			_pedimento = value;
		}


	}
}