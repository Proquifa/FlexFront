package mx.com.proquifa.vista.eventos.registrarDespacho
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.OrdenDespacho;
	
	import skins.catalogos.catalogoIconosBotones;
	
	public class EventoRegistrarDespacho extends Event
	{
		public var current:*;
		public var usuario:String;
		public var ordenDespacho:OrdenDespacho;
		public var idOrdenDespacho:Number;
		[Bindable]public static var indiceSiguiente:int;
		[Bindable]public static var bloquearOrdenes:Boolean;
		[Bindable]public static var pedimentoCompleto:Boolean = false;
		[Bindable]public static var shipperCompleto:Boolean = false;


		//SERVICIO
		public static const OBTENER_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTENER_TOTALES_PROVEEDOR_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerTotalesProveedorOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTENER_PARTIDAS_PRODUCTO_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerPartidasOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const CERRAR_PENDIENTE_ORDEN_DESPACHO_REGISTRADAS:String = "cerrarPendienteDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTIENE_IMAGENES_ORDEN_DESPACHO_REGISTRADAS:String = "obtieneImagenesEventoRegistrarDespacho";
		public static const OBTENER_ORDEN_DESPACHO_REGISTRADAS_SHIPPER:String = "obtenerOrdenesDespachoRegistradasShipperEventoRegistrarDespacho";
		
		
		//VISTA
		public static const IR_ORDEN_SELECCIONADA:String = "irAOrdenSeleccionadaEventoRegistrarDespacho";
		public static const VALIDAR_DATOS_COMPLETOS:String = "validarDatosCompletos";
		
		public function EventoRegistrarDespacho(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoRegistrarDespacho(type,bubbles,cancelable);
		}
	}
}

