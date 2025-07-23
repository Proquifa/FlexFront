package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Accion;
	
	public class EventoVerificacion extends Event
	{
		public static const TRAER_VERIFICACION:String = "traerVerificacionEvent";
		public static const OBTENER_VERIFICACION:String = "obtenerVerificacionEvent";
		public static const ACTUALIZAR_VERIFICACION:String = "actualizarVerificacionEvent";
		public static const EJECUTAR_VERIFICACION:String = "ejecutarVerificacionEvent";
		public static const ELIMINAR_REFERENCIA:String = "eliminarVerificacionEvent";
		public static const PRUEBA:String = "pruebaVerificacionEvent";		
		public static const TRAER_VERIFICACION_MODO_LECTURA:String = "traerVerificacionModoLecturaEventoVerificacion";
		public static const TRAER_VERIFICACION_PARA_REFERENCIAS:String = "traerVerificacionParaReferenciasEventoVerificacion";
		public var _accion:Accion;
		public var _usuario:String;
		public var _referenciasEliminadas:ArrayCollection;
		
		public function EventoVerificacion(type:String,bubbles:Boolean=true,cancelable:Boolean=true)
		{
			this._accion = new Accion();
			this._referenciasEliminadas = new ArrayCollection();
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoVerificacion(type,bubbles,cancelable);
		}
	}
}