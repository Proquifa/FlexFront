package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.compras.compras
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Compra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	
	public class EventoConsultaCompras extends Event
	{
		public var valorAdicional:String = "";
		public var ordenCompra:String;
		public var idPCompra:int;
		public var partidaCompra:int;
		public var tiempoProceso:TiempoProceso;
		public var compras:Compra;
		
		public static const OBTENER_PROVEEDORES:String = "obtenerProveedoresEventoConsultaCompras";
		public static const OBTENER_PCOMPRAS:String = "obtenerPComprasEventoConsultaCompras";
		public static const OBTENER_TIEMPO_PROCESO_COMPRAS:String = "obtenerTiempodeProcesoComprasEventoConsultaCompras";
		public static const OBTENER_HISTORIAL_COMPRAS:String = "obtenerHistorialComprasEventoConsultaCompras";
		
		
		public function EventoConsultaCompras(type:String, bubbles:Boolean=true, cancelable:Boolean=false,valorAdicional:String = null,ordenCompra:String = null,idPCompra:int = 0,
											  partidaCompra:int = 0,tiempoProceso:TiempoProceso = null,compras:Compra = null)
		{
			
			super(type,bubbles,cancelable)
			this.valorAdicional = valorAdicional;
			this.ordenCompra = ordenCompra;
			this.idPCompra = idPCompra;
			this.partidaCompra = partidaCompra;
			this.tiempoProceso = tiempoProceso;
			this.compras = compras;
		}
		public override function clone():Event{
			return new EventoConsultaCompras(type,bubbles,cancelable,valorAdicional,ordenCompra,idPCompra,partidaCompra,tiempoProceso,compras);
		}
	}
}