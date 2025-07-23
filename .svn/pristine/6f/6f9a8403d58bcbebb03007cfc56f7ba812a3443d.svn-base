package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	public class EventoIncidente extends Event
	{
		public var listaDeArchivos:ArrayCollection;
		public var vieneD:String;
		public var incidente:Incidente;
		public var listaDeArchivosEliminados:ArrayCollection;
		
		public static const CERRAR_POP_UP_REGISTRO_INCIDENTE:String = "cerrarPopUpRegistroIncidenteEventoIncidente";
		public static const CERRAR_POP_UP_REFERENCIAS_INICIDENTE:String = "cerrarPopUpReferenciasIncidenteEventoIncidente";
		public static const RECIBIR_ARRAY_COLLECTION_DE_REFERENCIAS_INCIDENTE:String = "recibirArrayCollectionDeReferenciasIncidenteEventoIncidente";
		public static const RECIBIR_ARRAY_COLLECTION_DE_REFERENCIAS_INCIDENTE_VERIFICACION:String = "recibirArrayCollectionDeReferenciasIncidenteVerificacionEventoIncidente";
		public static const RECIBIR_ARRAY_COLLECTION_DE_REFERENCIAS_INCIDENTE_ACCIONES:String = "recibirArrayCollectionDeReferenciasIncidenteAccionEventoIncidente";
		public static const REGISTRA_INCIDENTE:String = "registrarIncidenteEventoIncidente";	
		public static const RESET:String = "resetEventoIncidente";
		public static const CERRAR_COMPONENTE:String= "cerrarComponenteEventoIncidente";
		
		public function EventoIncidente(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoIncidente( type, bubbles, cancelable );
		}
	}
}