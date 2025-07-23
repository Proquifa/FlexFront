package mx.com.proquifa.proquifanet.admonComunicacion.vistas.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Correo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoRecibido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Llamada;
	
	public class EventoDocumentosPendientesAEnviar extends Event
	{
		public var idOpcionSeleccionada:String; // agregada por jimmy para test
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
		public var tipoAutorizacion:String;
		
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
		
		public static const LIMPIA_GRID_DOC_RECIB:String = "limpiaGrid";
		public static const LIMPIAR_DESPUES_MODIFICAR:String = "limpiarDespuesModificarEventoDocumentosPendientesAEnviar";
		/**
		 *evento para eliminaar un registro del ArrayColecction 
		 **/
		public static const BORRA_REGISTRO:String = "borraRegistroEventoPendientesPorEnviar";
		public static const CIERRA_POP_UP_CONTACTOS:String = "cerrarPopUpContactosEventoPendientesXEnviar";
		public static const ENVIA_POP_NULL:String = "inicializaPopUpEnNull";
		/**
		 * Eventos para obtener los pendientes por enviar (Correo)
		 */ 
		public static const COTIZACIONES_POR_ENVIAR:String = "cotizacionesPorEnviarEventoPendientesPorEnviar";
		public static const TOTAL_PENDIENTES_POR_ENVIAR:String = "totalPendientesPorEnviarEventoDocumentosPendientesAEnviar";
		public static const OBTENER_CONTRASENAS_VALIDAS:String = "obtieneContrasenasValidasEventoDocumentosPendientesAEnviar";
		//public static const PEDIDOS_POR_ENVIAR:String = "pedidosPorEnviarEventoPendientesPorEnviar";
		public static const NOTIFICADOS_POR_ENVIAR:String = "notificadosPorEnviarEventoPendientesPorEnviar";
		//public static const COMPRAS_POR_ENVIAR:String = "comprasPorEnviarEventoPendientesPorEnviar";
		
		
		
		public function EventoDocumentosPendientesAEnviar(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoDocumentosPendientesAEnviar( type, bubbles, cancelable );
		}
	}
}