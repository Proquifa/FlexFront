package vista.evento{
	import flash.events.Event;

	public class EventoAEGeneral extends Event{
		
		public var idUbicacion:String;
		
		public static const SELECCIONA_UBICACION:String = "seleccionaUbicacionEventoAEGeneral";
		public static const CARGA_ZONA_TRABAJO:String = "cargaZonaTrabajoEventoAEGeneral";
		public static const VISTA_ANTERIOR:String = "vistaAnterior";
		public static const CLIC_BOTON_HEADER:String = "clicBotonHeader";
		
		public function EventoAEGeneral(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoAEGeneral( type, bubbles, cancelable );
		}
		
	}
	
}
