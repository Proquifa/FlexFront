package mx.com.proquifa.vista.eventos.tramitarCompra
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empresa;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaPedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	
	
	public class EventoTramitarComprarMateriales extends Event
	{
		[Bindable] public static var folioSelect:String;
		
		public var usuario:String;
		public var internacional:Boolean;
		public var publicaciones:Boolean;
		public var partidaSelect:PartidaPedido;
		public var idProveedor:int;
		public var idProducto:int;
		public var idEmpleado:int;
		
		
		public var posicionDeLaConfEnElCinturon:int;
		public var familiaSelect:String;
		public var configuracionSelect:ConfiguracionPrecio;
		
		public var listaPedidos:ArrayCollection;
		public var currentProveedor:Proveedor;
		public var empresaCompra:Empresa;
		public var empresaEmbarque:Empresa;
		public var usuarioEmp:Empleado;
		public var contacto:Contacto;
		public var subTotal:Number;
		public var mensaje:String;
		public var cc:String;
		public var proveedor:Proveedor;
		
		
		
		//SERVICIO INTERNACIONALES
		public static const OBTENER_PEDIDOS_PENDIENTES_TRAMITAR_COMPRA_MATERIALES:String = "obtenerPedidosEventoTramitarCompra";
		public static const OBTENER_UNIVERSO_PRODUCTOS:String = "obtenerUniversoProductosEventoTramitarCompra";
		public static const OBTENER_FAMILIAS_POR_PROVEEDOR:String = "obtenerFamiliaPorProveedorEventoTramitarCompra";
		public static const GENERAR_OC_DE_PARTIDAS:String = "generarOCdePartidasEventoTramitarCompra";
		public static const CAMBIO_PROVEEDOR:String = "cambioDeProveedorInternacional";
		public static const VERIFICA_PROCEDE_COMPRA:String = "verificaSiProcedeCompra";
		
		
		
		//VISTA
		public static const CLIC_LISTA_PROVEEDOR:String = "clicListaProveedorEventoTramitarCompra";
		public static const CAMBIA_NIVEL_VISTA_COVERFLOW:String = "cambiaNivelVistaCoverflowEventoTramitarCompra";
		public static const BOTONERA_CLIC:String = "botoneraClic";
		
		
		
		//SERVICIO NACIONALES
		public static const OBTENER_PEDIDOS_PENDIENTES_TRAMITAR_COMPRA_MATERIALES_NACIONAL:String = "obtenerPedidosEventoTramitarCompraNacional";
		public static const OBTENER_UNIVERSO_PRODUCTOS_NACIONAL:String = "obtenerUniversoProductosEventoTramitarCompraNacional";
		public static const OBTENER_FAMILIAS_POR_PROVEEDOR_NACIONAL:String = "obtenerFamiliaPorProveedorEventoTramitarCompraNacional";
		public static const GENERAR_OC_DE_PARTIDAS_NACIONAL:String = "generarOCdePartidasEventoTramitarCompraNacional";
		public static const CAMBIO_PROVEEDOR_NACIONAL:String = "cambioDeProveedorNacional";
		
		public function EventoTramitarComprarMateriales(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoTramitarComprarMateriales(type,bubbles,cancelable);
		}
	}
}

