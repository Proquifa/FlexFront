package mx.com.proquifa.proquifanet.gestorCostos.vistas.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.Gastos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PedimentoGastos;
	import mx.com.proquifa.vista.vistas.gestorCompras.itemrender.Pedimentos_registrarGastos;
	

	public class EventoRegistrarGastos extends Event
	{
		public var usuario:String;
		public var rol:String;
		public var pedimento:PedimentoGastos;
		public var gastos:Gastos;
		public var idOrdenDespacho:String;
		public var idOrdenDespachoNum:Number;
		
		//VISTA
		public static const VERIFICAR_REGISTRAR_COSTOS:String = "verificarGastosCompletos";
		public static const VERIFICAR_REGISTRAR_COSTOS_PEDIMENTO:String = "verificarPedimentoCompletos";
		
		//SERVICIO
		public static const CARGAR_NUMERO_PENDIENTES_MENU:String = "cargarNumeroPendientesEventoGestorCompras";
		public static const OBTENER_ORDEN_DESPACHO_REGISTRAR_GASTOS:String = "obtenerOrdenDespachoRegistrarGastosEventoGestorCompras";
		public static const GUARDAR_REGISTRAR_GASTOS:String = "guardarGastosEventoGestorCompras";
		public static const OBTENER_IMAGENES_PEDIMENTOS:String = "obtieneImagenPedimentoEventoGestorCompras";
		public static const OBTENER_GASTOS_PEDIMENTO:String = "obtieneGastosParaPedimentoEventoGestorCompras";
		
		public function EventoRegistrarGastos(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoRegistrarGastos(type,bubbles,cancelable);
		}
	}
}