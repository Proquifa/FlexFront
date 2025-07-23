package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Accion;
	
	public class EventoAccion extends Event
	{
		public static const TRAER_ACCIONES:String = "traerAccionesEvent";
		public static const OBTENER_ACCION:String = "obtenerAccionEvent";
		public static const ACTUALIZAR_ACCION:String = "acttualizarAccionEvent"
		public static const EJECUTAR_ACCION:String = "ejecutarAccionEvent";
		public static const ELIMINAR_REFERENCIA:String = "eliminarReferencia";
		public static const ACTUALIZA_ACCION_Y_REFERENCIAS:String = "actualizaAccionYreferenciasEventoAccion";
		public var _accion:Accion;
		public var _usuario:String;
		public var _referenciasEliminadas:ArrayCollection;
		public var idAccion:Number;
		public function EventoAccion(type:String,bubbles:Boolean=true,cancelable:Boolean=true){
			this._accion = new Accion();
			this._referenciasEliminadas = new ArrayCollection();
			super(type,bubbles,cancelable);
			
		}
		
		public override function clone():Event{
			return new EventoAccion(type,bubbles,cancelable);
		}
		
		
	}
}