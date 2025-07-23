package vista.evento
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PermisoImportacion;
	
	public class EventoDirectorGralPrevioImportacion extends Event
	{
		public var nombreProveedor:String;
		public var itemPermiso:PermisoImportacion;
		public var isConFechaET:Boolean;
		
		public static const SOLICITAR_INFO_VISTA_DEFAULT_PREVIO_IMPORTACION:String = "infoPrevioImportacionEventoDirectorGralPrevioImportacion";
		public static const OBTENER_PRODUCTOS_POR_PROVEEDOR:String = "obtenerProductosPorProveedorEventoDirectorGralPrevioImportacion";
		public static const CERRARPENDIENTEPREVIO_ACTUALIZARPRODUCTO_GENERARPENDIENTE:String = "cerrarPendientePrevioActualizarProductoGenerarPendienteEventoDirectorGralPrevioImportacion";
		
		
		
		public function EventoDirectorGralPrevioImportacion(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoDirectorGralPrevioImportacion(type,bubbles,cancelable);
		}
	}
}