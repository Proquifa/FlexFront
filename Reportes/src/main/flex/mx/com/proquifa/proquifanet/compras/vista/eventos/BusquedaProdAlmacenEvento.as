package mx.com.proquifa.proquifanet.compras.vista.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;
	
	public class BusquedaProdAlmacenEvento extends Event
	{
		public static const  TRAER_CLIENTES:String = "traerClientesBusquedaProdAlmacenEvento";
		public static const  BUSCAR_PRODUCTO_ALMACEN_RAPIDA:String = "buscarProductoAlmacenRapidaEvento";
		public static const  BUSCAR_PRODUCTO_ALMACEN_AVANZADA:String = "buscarProductoAlmacenAvanzadaEvento";

		public var productoBuscado:ProductoAlmacen;
		public var folioFD:String;
		public var valorAdicional:String;
		
		public function BusquedaProdAlmacenEvento(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{	
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new BusquedaProdAlmacenEvento( type, bubbles, cancelable );
		}
	}
}