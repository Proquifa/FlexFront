package vista.evento
{
	import flash.events.Event;
	

	public class EventoVentasGV extends Event
	{
		public var pendiente:String;
		public var usuario:int;
		public var idUbicacion:String;
		
		public static const PENDIENTE_SELECCIONADO:String = "pendienteSeleccionado";
		public static const PENDIENTE_SELECCIONADO_PLANTILLA:String = "pendienteSeleccionadoPlantilla";
		public static const VISTA_ANTERIOR:String = "vistaAnterirorHeaderGV";
		public static const OBTENER_CONTADOR_PENDIENTES:String = "obtenerContadorPendientesGV";
		public static const CLIC_BOTON_HEADER:String = "clicBotonHeader";
		public static const SELECCIONA_UBICACION:String = "seleccionarUbicacionDelAcordion"
		public static const CARGAR_PENDIENTE_MENU:String = "MenuCargarPendienteSeleccionadoPlantillaGV";
		
		public function EventoVentasGV(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoVentasGV(type,bubbles,cancelable);
		}
	}
}