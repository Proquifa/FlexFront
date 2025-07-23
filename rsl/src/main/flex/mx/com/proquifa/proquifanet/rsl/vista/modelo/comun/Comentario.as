package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Comentario")]
	[Bindable]
	public class Comentario
	{
		
		private var _idComentario:Number;
		private var _idCliente:Number;
		private var _seccion:String;
		private var _eliminar:Boolean;
		private var _tema:String;
		private var _contenido:String;
		
		
		//VARIABLES VISTA
		private var _enEdicion:Boolean;
		private var _numero:Number;
		
		
		
		
		
		public function Comentario()
		{
		}

		public function get idComentario():Number
		{
			return _idComentario;
		}

		public function set idComentario(value:Number):void
		{
			_idComentario = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get seccion():String
		{
			return _seccion;
		}

		public function set seccion(value:String):void
		{
			_seccion = value;
		}

		public function get eliminar():Boolean
		{
			return _eliminar;
		}

		public function set eliminar(value:Boolean):void
		{
			_eliminar = value;
		}

		public function get tema():String
		{
			return _tema;
		}

		public function set tema(value:String):void
		{
			_tema = value;
		}

		public function get contenido():String
		{
			return _contenido;
		}

		public function set contenido(value:String):void
		{
			_contenido = value;
		}

		public function get enEdicion():Boolean
		{
			return _enEdicion;
		}

		public function set enEdicion(value:Boolean):void
		{
			_enEdicion = value;
		}

		public function get numero():Number
		{
			return _numero;
		}

		public function set numero(value:Number):void
		{
			_numero = value;
		}


	}
}