package eventos
{
	import flash.events.Event;
	
	import modelo.objetos.PendientesMensajero;
	import modelo.objetos.itemPendientes;

	public class EventoMensajeroCierre extends Event
	{
		public function EventoMensajeroCierre(type:String,bubbles:Boolean=true,cancelable:Boolean=true)
		{
			super(type,bubbles,cancelable);
		}
		
		public static const CONSULTAR_PENDIENTES_CERRADOS:String = "consultarPendientesCerradosEvent";
		public static const IR_A_VISTA_PENDIENTES_CIERRE:String = "iraVistaPendientesCierreEvent";
		public static const IR_A_VISTA_JUSTIFICACION_PENDIENTE:String = "iraVistaJustificacionPendienteEvent";
		
		
		public var _pendientesSeleccionados:itemPendientes = new itemPendientes();
		public var _usuario:String;
		public var _pendienteJustificacion:PendientesMensajero = new PendientesMensajero();
		
		public override function clone():Event{
			return new EventoMensajeroCierre(type,bubbles,cancelable);
		}
		
	}
}