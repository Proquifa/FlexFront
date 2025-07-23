package mx.com.proquifa.vista.eventos.cargarFaltante
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.OrdenDespacho;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoOrdenDespacho;
	
	
	public class EventoCargarFaltante extends Event
	{
		[Bindable] public static var folioSelect:String;
		public var usuario:String;
		public var agenteAduanal:String;
		public var ordenDespacho:OrdenDespacho;
		public var documentoDespacho:DocumentoOrdenDespacho;
		public var paraImprimir:Boolean;
		public var esAdicional:Boolean;
		public var indice:int;
		public var idDocumento:int;
		public var certificadosNoDisponibles:Boolean;
		public var tipoAutorizacion:String;
		
		
		
		//SERVICIO
		public static const OBTENER_ORDEN_DESPACHO_FALTANTES:String = "obtenerOrdenDespachoFaltantesEventoCargarFaltante";
		public static const GUARGAR_DOCUMENTOS_CARGAR_FALTANTES:String = "guardaDocumentosCargarFaltanteEventoGestorCompras";
		public static const ENVIAR_DOCUMENTOS_CARGAR_FALTANTES:String = "enviaDocumentosCargarFaltanteEventoGestorCompras";
		
		public static const CARGAR_VALIDACION_AUTORIZACION:String = "cargaAutorizacionContrasenaGestorCompras";
		
		
		//VISTA
		public static const CAMBIAR_VISTA_PRINCIPAL_FALTANE_AGENTE:String = "cambiarVistaPrincipalFaltanteAgenteCargarFaltante";
		public static const CARGAR_ARCHIVO_ORDEN_DESPACHO_CARGAR_FALTANTE:String = "enviarArchivoCargarFaltanteEventoGestorCompras";
		public static const OBTIENE_IMAGEN_CARGAR_FALTANTE:String = "obtieneImagenByteArrayCargarFaltanteEventoGestorCompras";
		public static const ENVIAR_DOCUMETO_ADICIONAL_CARGAR_FALTANTE:String = "enviaDocumentoAdicionalCargarFaltanteEventoGestorCompras";
		public static const ELIMINAR_ADICIONAL:String = "eliminarAdicionalEventoGestorCompras";
		public static const VERIFICAR_CERTIFICADOS:String = "verificaCertificadosNoDisponiblesEventoGestorCompras";
		
		
		public function EventoCargarFaltante(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoCargarFaltante(type,bubbles,cancelable);
		}
	}
}

