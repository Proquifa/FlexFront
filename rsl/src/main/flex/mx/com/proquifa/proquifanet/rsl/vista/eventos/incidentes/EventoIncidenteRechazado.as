package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	public class EventoIncidenteRechazado extends Event
	{
		public var dirigidoA:String;
		public var incidente:Incidente;
		public var listaReferencias:ArrayCollection;
		public var usuario:String;
		public var idIncidente:Number;
		public var folio:Number;
		public var nueva:Gestion;
		public static const CONSULTA_GESTION:String = "consultaGestionEventoIncidenteRechazado";
		public static const CARGA_LISTA_DE_INCIDENTES:String = "cargaListaIncidentesEventoIncidenteRechazado";
		public static const CAMBIA_HIJO:String = "cambiaHijoEventoIncidenteRechazado";
		public static const GUARDA_PARCIALMENTE:String = "guardaParcialmenteEventoIncidenteRechazado";
		public static const ACEPTA_RECHAZADO:String = "aeptaRechazadoEventoIncidenteRechazado";
		public static const SELECCIONA_REGISTRO_INCIDENTE:String = "seleccionaRegistroIncidenteEventoIncidenteRechazado";
		public static const ACTUALIZA_REFERENCIAS:String = "actualizaReferenciasEventoIncidenteRechazado";
		public function EventoIncidenteRechazado(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}