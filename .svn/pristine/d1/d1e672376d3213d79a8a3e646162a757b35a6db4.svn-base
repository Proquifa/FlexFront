package mx.com.proquifa.vista.eventos.RegistarArribo
{
	import flash.events.Event;
	
	import mx.com.proquifa.vista.modelo.RegistrarArribp.OrdenDespachoArribado;

	public class EventoRegistrarArribo extends Event
	{
		
		public var usuario:String;
		public var fleteraSelect:String;
		public var vieneDe:String;
		public var validado:Boolean;
		public var idOrdenCompra:int;
		public var idOrdenDespacho:String;
		public var ordenFinal:OrdenDespachoArribado;
		
		
		
		
		
		
		//SERVICIO
		public static const OBTENER_LISTA_ORDENES_ARRIBO:String = "obtenerListaOrdenesArriboEventoRegistrarArribo";
		public static const ACTUALIZAR_LISTA_ORDENES_ARRIBO:String = "actualizarListaOrdenesArriboEventoRegistrarArribo";
		public static const OBTENER_PARTIDAS_ARRIBADAS_ORDEN_COMPRA:String = "obtenerPartidasArribadasOrdenCompraEventoRegistrarArribo";
		public static const ENVIAR_PENDIENTE_DE_ARRIBO:String = "enviarPendienteDeArriboEventoRegistrarArribo";
		
		
		//VISTA
		public static const CLIC_FLETERA_SELECCIONADA:String = "clicFleteraSeleccionadaEventoRegistrarArribo";
		public static const VALIDAR_ACTUALIZAR_BOTONERA:String = "validarActualizarBotoneraEventoRegistrarArribo";
		
		
		
		
		public function EventoRegistrarArribo(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoRegistrarArribo(type,bubbles,cancelable);
		}
	}
}