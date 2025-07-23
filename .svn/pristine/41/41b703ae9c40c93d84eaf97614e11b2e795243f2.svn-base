package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Gestion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Pendiente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.CambioDeOrigen;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	public class EventoGestionIncidente extends Event
	{
		public var usuario:String;
		public var incidente:Incidente;
		public var removerDe:String;
		public var valorAdicional:String;
		public var empleado:Empleado;
		public var pendiente:Pendiente;
		public var idUsuario:Number;
		public var idPendiente:Number;
		public var idIncidente:Number;
		public var responsable:String;
		public var subProceso:Number;
		public var gestion:Gestion;
		public var nivel:String;
		public var ubicadoEn:String;
		public var borraFila:String;
		public var listaMarcadores:ArrayCollection;
		public var cambioOrigen:CambioDeOrigen = new CambioDeOrigen();
		public var itemDrop:String;
		
		public static const CARGA_LISTA_DE_INCIDENTES:String = "cargaListaPendientesGestionPendientes";
		public static const OBTEN_EMPLEADO_POR_ID:String = "obtenEmpleadoPorIdGestionPendiente";
		public static const CARGA_LISTA_CONTACTOS_GESTION_INCIDENTE:String = "cargaListaContactosGestionIncidente";
		public static const REDIRECCIONAR_INCIDENTE:String = "redireccionarIncidenteGestionIncidente";
		
		public static const AVANZA_A_LISTADO_INCIDENTES:String = "avanzaAListadoIncidentesGestionIncidente";
		public static const AVANZA_A_ANALISIS_INCIDENTE:String = "avanzaAAnalisisIncidenteGestionIncidente";
		public static const AVANZA_A_GESTION_INCIDENTE:String = "avanzaAGestionIncidenteGestionIncidente";
		public static const AVANZA_A_DECISION_INCIDENTE:String = "avanzaADecisionIncidenteGestionIncidente";
		
		public static const SELECCIONA_UBICACION_INCIDENTE:String = "seleccionaUbicacionInc";
		
		public static const REGRESA_A_LISTADO_INCIDENTES:String = "regresaAListadoIncidentesGestionIncidente";
		public static const REGRESA_A_ANALISIS_INCIDENTE:String = "regresaAAnalisisIncidenteGestionIncidente";
		public static const REGRESA_A_GESTION_INCIDENTE:String = "regresaAGestionIncidenteGestionIncidente";
		
		public static const CAMBIA_A_GESTIONAR_INCIDENTE:String = "gestionarIncidente";
		public static const CARGA_GESTION:String = "cargaGestionEventoGestionIncidente";
		public static const CARGA_GESTION_UBICACION:String = "seleccionaUbicacionIncidenteEventoGestionIncidente";
		public static const CARGA_INCIDENTE_POR_ID_INCIDENTE:String = "cargaIncidentePorIdIncidenteEventoGestionIncidente";
		public static const CARGA_MARCADORES_POR_ID_USUARIO:String = "cargaMarcadoresPorIdUsuarioEventoGestionIncidente";
		
		public static const RESET:String = "resetEventoGestionIncidente";
		public static const RESET_A_REGISTRO_INCIDENTE:String = "resetARegistroIncidenteEventoGestionIncidente";
		
		public static const GUARDA_CAMBIO_DE_ORIGEN:String = "guardaCambioDeOrigenEventoGestionIncidente";
		public static const GUARDA_LISTA_MARCADORES:String = "guardaListaMarcadoresEventoGestionIncidente";
		
		public static const BORRAR_INCIDENTE_MULTIPLE_ORIGEN:String = "borrarIncidenteMultipleOrigenGestionIncidente";
		public static const OBTENER_UBICACION_DROP:String = "obtnerUbicacionDropEventoGestionIncidente";
		public static const OBTENER_LINEA_DE_TIEMPO_X_INCIDENTE:String= "obtenerLineaDTiempoxIncidente"; 
		
		public function EventoGestionIncidente(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoGestionIncidente( type, bubbles, cancelable );
		}
	}
}