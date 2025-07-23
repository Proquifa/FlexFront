package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class EventoEmbalarProductos extends Event
	{
		public var ocultaMenu:Boolean;
		public var tipoDoc:String;
		public var estadoPedido:String;
		public var idsPPedidos:ArrayCollection = new ArrayCollection;
		
		/*SERVICIO*/
		public static const OBTENER_EMBALAR_PRODUCTOS:String = "obtenerEmbalarProductos";
		public static const CAMBIA_ESTADOPEDIDO_A_POR_COLECTAR:String = "cambiaEstadoPedidoAPorColectar";
		public static const CAMBIA_ESTADOPEDIDO_DE_POR_EMBALAR_A_EMBALADO:String = "cambiaEstadoPedidoDePorEmbalarAEmbalado";
		public static const CAMBIA_ESTADOPEDIDO_A_POR_COLECTAR_A_POR_EMBALAR:String = "cambiaEstadoPedidoAPorColectarAPorEmbalar";
		public static const CONTADOR_SECCION_EMBALAR:String = "contadorSeccionEmbalar";
		public static const OBTENER_INFORMACION_AGRUPADA:String = "obtenerInformacionAgrupadaEmbalar";
		public static const OBTENER_CONSECUTIVO_DE_LOTE_INSPECCION:String = "obtenerConsecutivoDeLoteInspeccion";
		
		/*VISTA*/
		public static const ABRIR_DOCUMENTO_SELECCIONADO:String = "abrirDocumentoSeleccionado";
		public static const ABRIR_POPUP_EDITAR_PIEZA:String = "abrirPopUpEditarPieza";
		public static const ACTIVA_BTN_CONTINUAR:String = "activaBtnContinuar";
		
		
	/*	EVENTOS SERVICIO */
		
		public static const CAMBIAR_DEPTH_ANIMACION:String = "cambiarDepthAnimacionEventoRegistrarArribados";
		
		
		public function EventoEmbalarProductos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			return new EventoEmbalarProductos(type,bubbles,cancelable);
		}
		
	}
}