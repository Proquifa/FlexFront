package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class EventoEVReportarVisita extends Event
	{
		public var usuario:Number;
		public var indexTab:int;
		public var index:int;
		public var listaDocumentos:ArrayCollection;
		public var idVisita:int;
		public var reporte:String;
		public var listaAcciones:ArrayCollection;
		public var listaHallazgos:ArrayCollection;
		public var visita:VisitaCliente;
		
		/*SERVICIO*/
		public static const OBTENER_VISITAS_REALIZADAS:String = "obtenerVisitasRealizadasEVReportarVisita";
		public static const ENVIAR_DOCUMENTOS_DE_REPORTE_VISITA:String = "enviarDocumentosReporteVisita";
		public static const OBTENER_TOTALES_VISTAS_GESTIONADAS:String = "obtenerTotalesVisitasRV"
		
		/*VISTA*/
		public static const CHANGE_TAB_VIEW:String = "cambioTabMenu";
		public static const ELIMINAR_DOCUMENTO:String = "eliminarDocumentoReportarVisita";
		public static const VER_DOCUMENTO:String = "verDocumentoReportarVisita";
		public static const ACTUALIZAR_LISTA_DOCUMENTOS_VISITA:String = "actualizarListaDocumentosDeVisita";
		public static const ACTUALIZAR_LISTA_ACCIONES:String = "actualizarListaaccionesVista";
		public static const ACTUALIZAR_LISTA_HALLAZGOS:String = "actualizarListaHallazgosVista";
		public static const EDITAR_ACCION:String = "editarAccion";
		public static const ELIMINAR_ACCION:String = "eliminarAccionDeLista";
		public static const EDITAR_HALLAZGOS:String = "editarHallazgosDeLista";
		public static const ELIMINAR_HALLAZGOS:String = "eliminarHallazgosDeLista";
		public static const MANDA_ITEM_SELECCIONADO:String = "mandaIndexSolicitado";
		public static const ABRIR_POPUP_PARAMETROS_VISITA_REPORTAR:String = "abrirPopUPInformacionVisitaReportar";
		
		
		public function EventoEVReportarVisita(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}