package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.CambioDeOrigen")]
	public class CambioDeOrigen
	{
		
		private var _idCambioDeOrigen:int;
		private var _idIncidente:int;
		private var _idPendiente:int;
		private var _usuarioOrigen:String;
		private var _usuarioDestino:String;
		private var _justificacion:String;
		private var _fecha:Date;
		
		private var _tiempoTotal:int;
		private var _nombreUsuarioOrigen:String;
		private var _nombreUsuarioDestino:String;
		private var _etiquetaLineaDTiempo:String;
		
		public function CambioDeOrigen()
		{
		}
		
		public function get idCambioDeOrigen():int
		{
			return _idCambioDeOrigen;
		}
		
		public function set idCambioDeOrigen(value:int):void
		{
			_idCambioDeOrigen = value;
		}
		
		public function get idIncidente():int
		{
			return _idIncidente;
		}
		
		public function set idIncidente(value:int):void
		{
			_idIncidente = value;
		}
		
		public function get idPendiente():int
		{
			return _idPendiente;
		}
		
		public function set idPendiente(value:int):void
		{
			_idPendiente = value;
		}
		
		public function get usuarioOrigen():String
		{
			return _usuarioOrigen;
		}
		
		public function set usuarioOrigen(value:String):void
		{
			_usuarioOrigen = value;
		}
		
		public function get usuarioDestino():String
		{
			return _usuarioDestino;
		}
		
		public function set usuarioDestino(value:String):void
		{
			_usuarioDestino = value;
		}
		
		public function get justificacion():String
		{
			return _justificacion;
		}
		
		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}
		
		public function get fecha():Date
		{
			return _fecha;
		}
		
		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get tiempoTotal():int
		{
			return _tiempoTotal;
		}

		public function set tiempoTotal(value:int):void
		{
			_tiempoTotal = value;
		}

		public function get nombreUsuarioOrigen():String
		{
			return _nombreUsuarioOrigen;
		}

		public function set nombreUsuarioOrigen(value:String):void
		{
			_nombreUsuarioOrigen = value;
		}

		public function get nombreUsuarioDestino():String
		{
			return _nombreUsuarioDestino;
		}

		public function set nombreUsuarioDestino(value:String):void
		{
			_nombreUsuarioDestino = value;
		}

		public function get etiquetaLineaDTiempo():String
		{
			return _etiquetaLineaDTiempo;
		}

		public function set etiquetaLineaDTiempo(value:String):void
		{
			_etiquetaLineaDTiempo = value;
		}
		
		
	}
}