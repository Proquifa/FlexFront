package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;
	
	
	public class EventoCierreSprintGV extends Event
	{
		public var pendiente:String;
		public var usuario:int;
		public var idUbicacion:String;
		public var tipoBoton:String;
		public var visitaCliente:VisitaCliente;
		public var idSprint:int;
		public var idEmpleado:int;
		public var idVisitaCliente:Number;
		public var idContacto:Number;
		public var credito:Number;
		public var calificacionEV:Number;
		public var observaciones:String;
		public var visitasEmpleado:ArrayCollection;
		public var feRealizacion:String;
		public var descartado:Boolean;
		public var listaHallazgos:ArrayCollection;
		
		/////////////////////////////	SERVICIOS	/////////////////////////////	
		public static const OBTENER_INFORMACION_CIERRE_DE_SRINT:String = "obtenerInformacionCierreDeSprint";
		public static const OBTENER_DATOS_SECCION_REPORTE:String = "obtenerInformacionSeccionReporte";
		public static const OBTENER_ASUNTOS:String = "obtenerAsuntos";
		public static const OBTENER_DATOS_SECCION_HALLAZGOS:String = "obtenerInformacionSeccionHallazgos";
		public static const MANDAR_INFORMACION_PARA_CIERRE_DE_SPRINT:String = "mandarInformacionCierreDeSprint";
		public static const GUARDA_OBSERVACIONES:String = "guardaObservacionesCierreDeSprint";
		
		
		/////////////////////////////	VISTA	/////////////////////////////	
		
		public static const CLIC_BOTONERA_CIERRE_DE_SPRINT:String = "clicBotoneraCierreDeSprint";
		public static const MOSTRAR_POPUP_INFORMACION_VISITA_CIERRE_SPRINT:String = "mostrarInformacionDeVisitaCierreSprint";
		public static const MOSTRAR_DETALLES_VISITA_CIERRE_SPRINT:String = "mostrarDetallesDeVisitaCierreSprint";
		public static const MOSTRAR_HALLAZGOS_DETALLES_VISITA_CIERRE_SPRINT:String = "mostrarHallazgosDetallesDeVisitaCierreSprint";
		public static const ASIGNAR_CREDITOS_UNIVERSO:String = "asignarCreditosUniversoVisitaCierreSprint";
		
		
		
	
		
		
		
		
		public function EventoCierreSprintGV(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoVentasGV(type,bubbles,cancelable);
		}
	}
}
