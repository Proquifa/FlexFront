package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.ventas.pedidos
{
	import flash.events.Event;
	
	public class EventoConsultaPedidos extends Event
	{
		
		public var valorAdicional:String;
		public var cpedido:String;
		public var pAvisoCambios:String;
		public var folio:int;
		
		public static const OBTENER_CLIENTES:String = "obtenerClientesConsultaPedidos";
		public static const OBTENER_PPEDIDOS:String = "obtenerPPedidosConsultaPedidos";
		public static const OBTENER_HISTORIAL_AVISO_CAMBIOS:String = "obtenerHistorialAvisoCambiosConsultaPedidos";
		public static const OBTENER_TIEMPO_PROCESO:String = "obtenerTiempoProcesoConsultaPedidos";
		
		public function EventoConsultaPedidos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			valorAdicional = "";
			super(type,bubbles,cancelable)
		}
		public override function clone():Event{
			return new EventoConsultaPedidos(type,bubbles,cancelable);
		}	
	}
}