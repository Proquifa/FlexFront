package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.SolicitudVisita;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.Temas;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.Visita;

	public class EventoASGestionarVisitas extends Event
	{
		public var idCliente:int;
		public var respuesta:ResultAlert = new ResultAlert();
		public var idEjecutivoVentas:int;
		public var cliente:Cliente;
		public var contacto:Contacto;
		public var idSolicitudVisita:int;
		public var folio:String;
		public var justificacion:String;
		public var agrupa:ArrayCollection;
		public var solicitudVista:SolicitudVisita;
		public var tema:Temas;
		public var visita:Visita;
		public var idVisita:Number;
		public var listaTemas:ArrayCollection;
		public var listaSolicitudes:ArrayCollection;
		public var vieneDe:String;
		public var confirmaGuardar:Boolean;
		public var finalizar:Boolean;
		public var periodo:String;
		public var tipoPeriodo:Number;
		
		public var lineal:int = 0;
		
		public var mes:int;
		public var esacString:String;
		public var idVentas:int;
		
		//consultaGrafica
		public var anio:Number;
		
		public static const GESTIONAR_VISITA_PRINCIPAL:String = "gestionarVisitaEventoGestionarVisistas";
		public static const LISTA_CONTACTOS:String = "listaSolicitudesEventoGestionarVisistas";
		public static const VISTA_PRINCIPAL:String = "vistaPrincipalEventoGestionarVisistas";
		public static const CIERRA_POPUP_DESCARTAR:String = "cierraPopUPDescartarEventoGestionarVisistas";
		public static const RESPUESTA_ALERTA:String = "repuestaAlertaEventoGestionarVisistas";
		public static const MUESTRA_INSPECTOR:String = "muestraInspectorEventoEVGestionarVisitas";
		public static const AGRUPAR_SOLICITUDES:String = "agruparSolicitudesEventoEVGestionarVisitas";
		public static const DESCARTAR_SOLICITUDES:String = "descartarSolicitudesEventoEVGestionarVisitas";
		public static const REINICIA_BOTONERA:String = "reiniciaBotoneraEventoEVGestionarVisitas";

		public static const CARGA_GRAFICAS_INSPECTOR:String = "cargaInspectorGraficasEventoEVGestionarVisitas";
		public static const CARGAR_VISITA_POR_ID_VISITA_INSPECTOR:String = "cargarSolicitudPorIdVista_inspectorEventoEVGestionarVisitas";
		public static const EDITA_TEMA_INSPECTOR:String = "editaTemaInspectorEventoEVGestionarVisitas";
		public static const ELIMINA_TEMA_INSPECTOR:String = "eliminaTemaInspectorEventoEVGestionarVisitas";
		public static const GUARDA_INSPECTOR:String = "guardaInspectorEventoEVGestionarVisitas";
		public static const FINALIZAR_INSPECTOR:String = "finalizarInspectorEventoEVGestionarVisitas";
		public static const REGRESA_A_PLANEACION:String = "regresaAPlaneacionEventoEVGestionarVisitas";
		public static const CAMBIAR_VISTA:String = "cambiarVistaEventoEVGestionarVisitas";
		public static const OBTENER_LISTA_REFERENCIAS:String = "obtenerListaReferenciasEventoEVGestionarVisitas";
		public static const CONSULTA_POP_REFERENCIAS:String = "consultaPopReferenciasEventoEVGestionarVisitas";
		public static const CONFIRMA_FINALIZADO_INSPECCION_VISTA:String = "confirmaFinalizadoInspeccionVistaEventoEVGestionarVisitas";
		
		public static const CONSULTA_LINEAL:String = "consultaLinealEventoEVGestionarVisitas";
		
		public function EventoASGestionarVisitas(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			return new EventoASGestionarVisitas( type, bubbles, cancelable );
		}
	}
}