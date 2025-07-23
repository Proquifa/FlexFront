package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.compras
{
	import flash.events.Event;
	import flash.sampler.NewObjectSample;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;
	
	public class EventoBusquedaProdAlmacen extends Event
	{
		public var tabla:int;
		public var prueba:String;
		public var productoBuscado:ProductoAlmacen;
		public var valorAdicional:String;
		
		public var tiempoPromedio:String;
		public var productosAlmacenGrafica:ArrayCollection;
		public var productosFiltroParaGrid:ArrayCollection;
		public var maxProductosAlmacenGrafica:ArrayCollection;
		public var folioD:String;
		public var boton:String;
		
		public static const  BUSCAR_PRODUCTO_ALMACEN_AVANZADA:String = "buscarProductoAlmacenAvanzadaEvento";
		public static const CAMBIA_VIEW_STACK:String = "cambiaViewStack";
		public static const OBTENER_PRODUCTO_ALMACEN:String = "obtenerProductoAlmacenEventoBusquedaProductoAlmacen";
		public static const OBTENER_CLIENTES:String = "obtenerClientesEventoProductoAlmacen";
		
		public static const OBTENER_DATOS_GRAFICA:String="obtenerDatosGraficaEventoBusquedaProdAlmacen";
		public static const OBTENER_FILTRO_PRODUCTOS:String ="obtenerFiltroProductosEventoBusquedaProdAlmacen";
		public static const OBTENER_PRODUCTOS_PARA_GRID:String ="obtenerProductosParaGridEventoBusquedaProdAlmacen";
		public static const OBTENER_INSPECTOR_POR_FD:String = "obtenerInspectorPorFDEventoBusquedaProdAlmacen";
		public static const OBTENER_DATO_BOTON:String = "obtenerDatoBotonEventoBusquedaProdAlmacen";
		public static const OBTENER_PROMEDIO_TIEMPO:String = "obtenerPromedioTimepoBusquedaProdAlmacen";
		
		public function EventoBusquedaProdAlmacen(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{	
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoBusquedaProdAlmacen( type, bubbles, cancelable );
		}
	}
}