package vista.evento.reportarVisita
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaCotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Producto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;
	
	public class EventoReportarVisita extends Event
	{
		public var current:*;
		public var index:int;
		public var solicitudIndex:int;
		public var idVisita:int;
		public var idCliente:Number;
		public var nivelCliente:String;
		public var idProveedor:Number;
		public var producto:Producto;
		public var listaCotizaciones:ArrayCollection;
		public var codigo:String;
		public var idProducto:Number;
		public var tipo:String;
		public var subtipo:String;
		public var control:String;
		public var finalizarVisita:Boolean;
		public var idProductoString:String;
		public var tipoMoneda:String;
		public var eliminarCotizaciones:Boolean;
		
		
		
	/*	vista*/
		
		public var marca:String;
		public var idcampana:Number;
		public var familia:String;
		public var costo:Number;
		public var listaProductos:ArrayCollection;
		public var cotizacion:Cotizacion;
		public var vieneDe:String;
		public var partidaCo:PartidaCotizacion;
		public var tipoAutorizacion:String;
		public var visitaCli:VisitaCliente;
		
		//SERVICIO
		public static const OBTENER_VISITA_CLIENTES_POR_SPRINT:String = "obtenerTodasLasVisitasClientePorSprintEventReportarVisita";
		public static const OBTENER_INFORMACION_TIME_LINE:String = "obtenerInforrmacionTimeLineEventoReportarVisita";
		public static const GUARDADO_GENERAL:String = "guardadoGeneralEventoReportarVisita";
		public static const OBTENER_PRODUCTOS_CON_CAMPANA:String = "obtenerProductosConCampana";
		public static const OBTENER_CAMPANAS_COMERCIALES_REPORTAR:String = "obtenerCampanasComerciaonesVigentes"
		public static const OBTENER_LISTA_DE_EMPRESAS_PARA_COMBO:String = "obtenerListaDeEmperesasParaCombo";
		public static const GUARDAR_GENERAR_COTIZACION_REPORTAR_VISITA:String = "guardarGenerarCotizacion";
		public static const OBTENER_COTIZACIONES_DE_VISITA:String = "obtenerCotizacionesDeVisita";
		public static const OBTENER_INFORMACION_PRODUCTO_PARA_GRAFICAR:String = "obtenerInformacionDelProductoParaGraficar";
		public static const FINALIZAR_REPORTE_VISITA:String = "finalizarReporteDeVisita";
		public static const OBTENER_CONTRASENAS_VALIDAS_CAMBIO_PRECIO:String = "obtenerContraseñasParaCambioDeprecioProducto";
		public static const OBTENER_PRECIO_MAXIMO_Y_PRECIO_MINIMO_DE_PRODUCTO:String = "obtenerPreciosMaximoYminimoDeProducto";
		public static const OBTENER_INSPECCIONAR_ARRIBADOS_RE:String = "repotarvisitainspeccion";
		
		//VISTA
		public static const CAMBIAR_VISTA:String = "cambiarVistaEventoReportarVisita";
		public static const APLICAR_FILTROS_A_LISTA_PRODUCTOS:String = "aplicarFiltrosAlistaProductos";
		public static const ABRIR_POPUP_COTIZACION:String = "abrisPopUpCotizacion";	
		public static const AGREGAR_PRODUCTO_A_COTIZACION:String = "agregarProductoParaCotizar";	
		public static const SELECCIONAR_EMPRESA_FORMULARIO:String = "seleccionaEmpreza";
		public static const CREAR_NUEVA_COTIZACION:String = "crearNuevaCotizacionReportarVisita";
		public static const CAMBIAR_PRODUCTO_DE_COTIZACION:String = "cambiarProductoDeCotizacion";
		public static const ELIMINAR_PRODUCTOS_DEL_CARRITO:String = "eliminarProductosDelCarrito";
		public static const ACTIVAR_DESACTIVAR_BOTONES_ELIMINAR_CAMBIAR:String = "activarDesactivarBotones";
		
		
		public static const CAMBIO_COMBO:String = "cambiosComboDeDatos";
		
		
		public function EventoReportarVisita(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}