package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Accion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	public class EventoIncidenteProgramarAccion extends Event
	{
		public var valorAdicional:String;
		public var accion:Accion;
		public var idIncidente:Number;
		public var acciones:ArrayCollection;
		public var listaReferencias:ArrayCollection;
		public var nueva:Gestion;
		public var incidente:Incidente;
		public static const CONSULTA_USUARIOS:String = "consultausuariosEventoIncidenteDecision";
		public static const GUARDAR_ACCIONES:String = "registrarAccionsEventoIncidenteDecision";
		public static const CONSULTAR_ACIONES:String = "consultarAccionsEventoIncidenteDecision";
		public static const CONSULTAR_ACIONES_LECTURA:String = "consultarAccionsLecturaEventoIncidenteDecision";
		public static const REGRESAR_LISTA_REFRENCIA:String = "regresarListaREferenciasEventoIncidenteProgramarAccion";
		public static const ACTUALIZA_REFERENCIAS:String = "actualizaReferenciasEventoIncidenteProgramarAccion";
		public static const CERRAR_POP_UP_REFERENCIAS:String = "cerrarPopUpReferenciasEventoIncidenteProgramarAccion";
		public static const ACTUALIZA_ANALISIS_INCIDENTE:String = "actualizaAnalisisEventoIncidenteProgramarAccion";	
		public static const FINALIZAR_ACCION:String = "finalizarAccionEventoIncidenteProgramarAccion";
		public static const VALIDA_PROGRAMACION_EXISTENTE:String = "validaProgramacionExistenteEventoIncidenteProgramarAccion";
		public function EventoIncidenteProgramarAccion(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoIncidenteProgramarAccion(type,bubbles,cancelable);
		}
		
	}
}