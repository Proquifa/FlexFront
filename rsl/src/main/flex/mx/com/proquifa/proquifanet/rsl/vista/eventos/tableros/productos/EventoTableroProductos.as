package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.productos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Producto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.productos.ParametrosBusquedaProducto;
	import mx.core.IVisualElement;

	public class EventoTableroProductos extends Event
	{
		
		// argumentos vista
		public var idProducto:int;
		public var parametros:ParametrosBusquedaProducto =  new ParametrosBusquedaProducto();
		public var metodoConsultado:String;
		public var comparacionCharts:IVisualElement;
		public var maxChart:IVisualElement;
		public var anioInt:int = 0;
		public var isIndividual:Boolean;
		public var lineal:int;		
		public var periodo:String = "";
		public var mesInicio:Number;
		public var mesFin:Number;
		public var seleccionMenuAnalisis:String;
		public var currentVista:String;
		public var productoSeleccionado:Producto;
		public var idProductoString:String;
		public var arregloCancelacion:ArrayCollection;
		
		public var labelPeriodo1:String = "unset";
		public var labelPeriodo2:String = "unset";
		public var labelPeriodo3:String = "unset";
		public var labelPeriodo4:String = "unset";
		public var labelPeriodo5:String = "unset";
		public var copiaEvento:EventoTableroProductos;
		[Bindable] public static var mostrarVacio:Boolean = true;
		[Bindable] public static var mostrarGrafica:Boolean = false;
		[Bindable] public static var indiceBusqueda:int = -1;
		
		public static const DESELECCIONA_RADIO_PRODUCTOS:String = "deseleccionarRadioTableroProductos";
		public static const LLENAR_LISTA_PRODUCTOS:String = "llenarListaProductosTableroProductos";
		public static const CONSULTA_PRODUCTO_TABPROD:String = "consultaProductoTableroProductos";
		public static const LLENAR_GRIDS_GRAL_TABPROD:String = "llenarGridsGralTableroProductos";
		public static const OBTENER_INFORMACION_PRODUCTO:String = "obtenerInformacionProductoEventoTableroProductos";
		
	
		//Vista
		public static const SERVICIOS_CONSULTADOS:String = "ServiciosConsultadosEventoTableroProductos";
		public static const MAXIMIZAR_GRAFICA_TABPROD:String = "maximizarGraficaEventoTableroProductos";
		public static const VOLVER_A_TABLERO_PRODUCTOS:String = "volverATableroProdEventoTableroProductos";
		public static const MAXIMIZAR_TABLA_TABPROD:String = "maximizarTablaEventoTableroProductos";
		public static const ENVIAR_DATOS_FILTROS_TABPROD:String = "enviarDatosFiltrosEventoTableroProductos"
		public static const ETIQUETA_PERIODO_TABPROD:String = "etiquetaPeriodoEventoTableroProductos"
		public static const PASAR_EVENTO_GENERAL_Y_PARA_LABELS:String = "pasarEventoGeneralYParaLabelsEventoTableroProductos";
		public static const ETIQUETA_PERIODO:String  = "etiquetaPeriodoEventoTableroProductos";
		public static const MOSTRAR_GRAFICA_COMPARATIVA:String = "mostrarGraficaComparativaEventoTableroProductos";
		public static const TOTAL_COTIZACION_PEDIDO_TABPROD:String = "totalCotizacionPedidoTableroProductos";		
		public static const CONSULTAR_RESUMEN_CLIENTES:String = "consultarResumenClientesTableroProductos";
		public static const CONSULTAR_RESUMEN_AGRUPADAS_ESAC:String = "consusltarResumenAgrupadasESACTableroProductos";
		public static const CONSULTAR_RESUMEN_AGRUPADAS_EV:String = "consusltarResumenAgrupadasEVTableroProductos";
		public static const CAMBIO_GRAFICAS_ANALISIS_VENTASPER:String = "cambioGraficasAnalisisVentasPerTableroProductos";
		public static const FICHA_TECNICA_CONFIGURACION_PRECIOS:String = "configuracionDeFichaTecnica";
		public static const ENVIAR_ARREGLO_CANCELACION_PRODUCTOS:String = "enviarArregloCancelacionProductosEventoTabProductos";
		
		//Para eventos Individuales
		public static const BUSCA_COMPARATIVA_OC_TRANSITO_PROD:String = "buscaComparativaOcTransitoEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_OC_RECIBIDAS_PROD:String = "buscaComparativaOcRecibidasEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_CLIENTES_PROD:String = "buscaComparativaClientesEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_OC_RECHAZADA_PROD:String = "buscaComparativaOCRechazadaEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_AVISO_CAMBIOS_PROD:String = "buscaComparativaAvisoDeCambiosEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_COMPRAS_REALIZADAS_PROD:String = "buscaComparativaComprasRealizadasEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_PAGOS_PROD:String = "buscaComparativaPagosEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_CANCELACION_COT_TAB_PROD:String = "buscaComparativaCancelacionCotTabProdEventoTableroProductos";
		public static const BUSCA_COMPARATIVA_COT_PED_TAB_PROD:String = "buscaComparativaCotPedTabProdEventoTableroProductos";
		public static const ENVIAR_PRODUCTO_DESCRIPCION:String = "enviaProductoDescripcion";

			
		public function EventoTableroProductos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoTableroClientes( type, bubbles, cancelable );
		}
	}
}