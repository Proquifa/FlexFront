package mx.com.proquifa.proquifanet.admonComunicacion.vistas.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Correo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoRecibido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Llamada;
	

	public class EventoPendientesPorEnviar extends Event
	{	
		
		public var correo:Correo = new Correo();										
		public var llamada:Llamada = new Llamada();
		public var documentoRecibido:DocumentoRecibido = new DocumentoRecibido();
		public var documentoNuevo:DocumentoRecibido = new DocumentoRecibido();
		public var origenFaxCorreo:String = "";
		/**
		 * Variables del Evento usadas en las diferentes constantes del evento
		 */ 
		public var folio:String;
		public var tipoPendiente:String;
		public var usuario:String;
		public var tipo:String;
		public var valorAdicional:String;
		
		public var folioNumerico:Number;
		public var folioPendiente:Number;
		
		/**
		 * Busuqeda Avanzada
		 */
		public var fechaInicio:Date = new Date;
		public var fechaFin:Date = new Date;
		public var medio:String = new String;
		public var origen:String = new String
		public var destino:String = new String; 	
		public var estado:String = new String;
		public var tiempo:String = new String;
		/**
		 *evento para eliminaar un registro del ArrayColecction 
		 **/
		 public static const BORRA_REGISTRO:String = "borraRegistroEventoPendientesPorEnviar";
		
		public static const CIERRA_POP_UP_CONTACTOS:String = "cerrarPopUpContactosEventoPendientesXEnviar";
		
		/**
		 * Evento para el numero de los pendientes
		 */ 
		public static const OBTENER_TOTAL_DE_COTIZACION:String = "obtenerTotalDeCotizacionesEventoPendientesPorEnviar";
		public static const OBTENER_TOTAL_DE_PEDIDOS:String = "obtenerTotalDePedidosEventoPendientesPorEnviar";
		public static const OBTENER_TOTAL_DE_NOTIFICADOS:String = "obtenerTotalDeNotificadosEventoPendientesPorEnviar";
		public static const OBTENER_TOTAL_DE_FACTURAS:String = "obtenerTotalDeFacturasEventoPendientesPorEnviar";
		
		/**
		 * Evento para obtener los usuarios obtenerUsuariosEventoPendientesPorEnviar
		 */ 
		public static const OBTNER_USUARIOS:String = "obtenerUsuariosEventoPendientesPorEnviar";
		public static const OBTNER_USUARIOS_PEDIDOS:String = "obtenerUsuariosPedidosEventoPendientesPorEnviar";
		public static const OBTNER_USUARIOS_NOTIFICADOS:String = "obtenerUsuariosNotificadosEventoPendientesPorEnviar";	
		public static const OBTENER_USUARIOS_FACTURAS:String = "obtenerUsuariosFacturasEventoPendientesPorEnviar";	
		/**
		 * Eventos para obtener empleados para el Combo Destino
		 */ 
		public static const OBTENER_EMPLEADOS_DESTINOS_LLAMADAS:String = "obtenerEmpleadosDestinosLlamadasPendientesPorEnviar";
		public static const OBTENER_EMPLEADOS_DESTINOS_DOCUMENTOS:String = "obtenerEmpleadosDestinosDocumentosPendientesPorEnviar";
		/**
		 * Evento para obtener los clientes 
		 */ 
		public static const OBTNER_CLIENTES:String = "obtenerClientesEventoPendientesPorEnviar";
		public static const OBTNER_CLIENTES_PEDIDOS:String = "obtenerClientesPedidosEventoPendientesPorEnviar";
		public static const OBTNER_CLIENTES_NOTIFICADOS:String = "obtenerClientesNotificadosEventoPendientesPorEnviar";
		public static const OBTNER_PROVEEDORES_COMPRAS:String = "obtenerProveedoresComprasEventoPendientesPorEnviar";
		
		/**
		 * Eventos para obtener los pendientes por enviar (Correo)
		 */ 
		public static const COTIZACIONES_POR_ENVIAR:String = "cotizacionesPorEnviarEventoPendientesPorEnviar";
		public static const PEDIDOS_POR_ENVIAR:String = "pedidosPorEnviarEventoPendientesPorEnviar";
		public static const NOTIFICADOS_POR_ENVIAR:String = "notificadosPorEnviarEventoPendientesPorEnviar";
		public static const COMPRAS_POR_ENVIAR:String = "comprasPorEnviarEventoPendientesPorEnviar";
		
		/**
		 * Eventos para obtener los pendientes por enviar (Correo) con el estado Bsuqueda Avanzada
		 */ 
		public static const COTIZACIONES_POR_ENVIAR_AVANZADO:String = "cotizacionesPorEnviarAvanzadoEventoPendientesPorEnviar";
		public static const PEDIDOS_POR_ENVIAR_AVANZADO:String = "pedidosPorEnviarAvanzadoEventoPendientesPorEnviar";
		public static const NOTIFICADOS_POR_ENVIAR_AVANZADO:String = "notificadosPorEnviarAvanzadoEventoPendientesPorEnviar";
		public static const COMPRAS_POR_ENVIAR_AVANZADO:String = "comprasPorEnviarAvanzadoEventoPendientesPorEnviar";
		
		/**
		 * Evento para enviar correo
		 */ 
		public static const CORREO_POR_ENVIAR_COTIZACIONES:String = "correoPorEnviarCotizasEventoPendientesPorEnviar";
		public static const CORREO_POR_ENVIAR_PEDIDOS:String = "correoPorEnviarPedidosEventoPendientesPorEnviar";
		public static const CORREO_POR_ENVIAR_NOTIFICACIONES:String = "correoPorEnviarNotificacionesEventoPendientesPorEnviar";
		public static const CORREO_POR_ENVIAR_FACTURAS:String = "correoPorEnviarFacturasEventoPendientesPorEnviar";
		
		/**
		 * Evento para enviar fax
		 */ 
		public static const FAX_POR_ENVIAR_COTIZACIONES:String = "faxPorEnviarCotizasEventoPendientesPorEnviar";
		public static const FAX_POR_ENVIAR_PEDIDOS:String = "faxPorEnviarPedidosEventoPendientesPorEnviar";
		public static const FAX_POR_ENVIAR_NOTIFICACIONES:String = "faxPorEnviarNotificacionesEventoPendientesPorEnviar";
		public static const FAX_POR_ENVIAR_FACTURAS:String = "faxPorEnviarFacturasEventoPendientesPorEnviar";
		
		/**
		 * Evento para guardadr llamdas
		 */ 
		public static const GUARDAR_LLAMDAS:String = "guardarLlamadasEventoPendientesPorEnviar";
		
		/**
		 * Evento para guardadr la Documentación
		 */ 
		public static const GUARDAR_DOCUMENTACION:String = "guardarDocumentacionEventoPendientesPorEnviar";
		public static const BUSCAR_DOCUMENTO_POR_FOLIO:String = "buscarDocumentoPorFolioEventoPendientesPorEnviar";
		public static const MODIFICAR_DOCUMENTACION_EXISTENTE:String = "modificarDocumentacionExistenteEventoPendientesPorEnviar";
		
		
		public function EventoPendientesPorEnviar(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoPendientesPorEnviar( type, bubbles, cancelable );
		}
		
	}
}