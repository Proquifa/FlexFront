package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class EventoReferencias extends Event
	{
		public var fila:String;
		public var total:String;
		public var vieneD:String;
		public var listaReferencia:ArrayCollection;
		public var idIncidente:int;
		
		public static const BORRAR_LISTA_REFERENCIA:String = "borrarListaReferenciaEventoReferenciaIncidente";
		public static const TOTAL_REFERENCIAS:String = "totalReferenciasEventoReferenciaIncidente";
		public static const ENVIAR_REFERENCIAS:String = "enviarReferenciasEventoReferenciaIncidente";
		public static const CARGA_LISTA_REFERENCIA:String = "cargaListaReferenciaEventoReferenciaIncidente";
		public static const REFERENCIA_LINEA_DTIEMPO:String = "cargaLineaDTiempo";
		public static const OBTENER_ID_INCIDENTE:String = "obtenerIdIncidenteEventoReferenciaIncidente";
		public static const RESET:String = "resetEventoReferenciaIncidente";
		
		public function EventoReferencias(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoReferencias( type, bubbles, cancelable );
		}
	}
}