package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.ventas.consultaCotizaciones
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaCotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	
	public class EventoConsultaCotizaciones extends Event
	{
		public var finicio:Date;
		public var ffin:Date;
		public var objCotizacion:Cotizacion = new Cotizacion();
		public var cotizacion:String;
		public var Folio:Number;
		public var tiempoProceso:TiempoProceso = new TiempoProceso();
		public var partida:PartidaCotizacion = new PartidaCotizacion();
		public var busquedaProducto:ArrayCollection = new ArrayCollection();
		public var idPcotiza:Number;
		public var indice:Number;
		public var idEmpleado:int;
		public var vieneDe:String;
		public var moneda:String;
		public var piezas:Object = new Object();
		public var totalPiezas:Number;
		public var conforme:String;
		public var clasificacion:String;
		public var valorAdicional:String;
		public var tabGrafica:Boolean = false;
		public var individual:Boolean = false;
		public var cotizaciones:ArrayCollection = new ArrayCollection();
		public var tipo:String;
		public var seleccionGrafico:Boolean = true;
		public var seleccionarGraficas:int;
		public var objeto:Object = new Object();
		public var controlLocalGrafico:Boolean = false;
		public var selectedVista:String;
		public var actualizarVistaCurrent:Boolean;

		
		public static const BUSCAR_COTIZACIONES_POR_FECHA:String = "buscarCotizacionesPorFechaEventoConsultaCotizaciones";
		public static const BUSCAR_DOCUMENTOS_POR_FOLIO:String = "buscarDocumentoPorFolio";
		public static const OBTENER_PARTIDA_COTIZACION:String = "obtenerPartidaCotizacionEventoConsultaCotizaciones";
		public static const MOSTRAR_HISTORIAL:String  = "mostrarHistorialEventoConsultaCotizaciones";
		public static const MOSTRAR_TIEMPO_PROCESO:String = "mostrarTiempoProcesoEventoConsultaCotizaciones";
		public static const OBTENER_INFO_SEGUIMINETO:String = "obtenerInfoSeguimientoEventoConsultaCotizacion";
		public static const OBTENER_RESUMEN_COTIZACION_GRAFICAS:String = "obtenerResumenCotizacionGraficasEventoConsultaCotizacion";
		public static const OBTENER_CONSULTA_TOTALES:String = "obtenerCosnultaTotalesEventoConsultaCotizacion";
		public static const OBTENER_CONSULTA_TOTALES_PASADO:String = "obtenerCosnultaTotalesPasadoEventoConsultaCotizacion";
		public static const OBTENER_CONSULTA_TOTALES_POSPASADO:String = "obtenerCosnultaTotalesPosPasadoEventoConsultaCotizacion";
		
		public static const OBTENER_INFO_GRAFICA_X_COTIZACION:String = "obteenrInfoGraficaPorCoTizacionEventoConsultaCotizacion"
		
		//constantes para funciones de vista
		public static const SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL:String = "settearValoresDeLaBusquedaActualEventoConsultaCotizaciones";
		public static const SETTEAR_CURRENT_VISTA_SELECTED:String = "settearCurrentVistaSelectedEventoConsultaCotizaciones";
		public static const ACTUALIZAR_VISTA_ACTUAL:String = "actualizarVistaActualEventoConsultaCotizaciones";
		
		public static const VISUALIZAR_COT:String = "visualizarCotEventoConsultaCotizaciones";
		public static const CAMBIA_INDICE:String = "cambiaIndiceEventoConsultaCotizaciones";
		public static const MUESTRA_HISTORIAL:String = "muestraHistorialEventoConsultaCotizaciones";
		public static const ITEM_TIEMPO_COTIZACION:String = "itemTiempoCotizacionEventoConsultaCotizacion";
		public static const TIPO_MONEDA:String = "tipoMonedaCotizacionEventoConsultaCotizacion";
		public static const INSPECTOR_COTIZACION_TIEMPO_PROCESO:String = "inspectorCotizacionEventoConsultaCotizacion";
		public static const OBTENER_BUSQUEDA_PRODUCTO:String = "obtenerBusquedaProductoEventoConsultaCotizacion";
		public static const TOTAL_PIEZAS_COTIZACION:String = "totalPiezasCotizacionEventoConsultaCotizacion";
		public static const OBTENER_SC_SNC:String = "obtenerSCSNCEventoConsultaCotizaciones";
		public static const OBTENER_ID_PCOTIZA:String = "obtenerIdPcotizaEventoCosnultaCotizacion";
		public static const OBTENER_FECHA_DE_REGISTRO:String = "obetenerFecahaDeRegistroEventoConsultaCotizacion";
		public static const OBTENER_CLASIFICACION_ORIGEN:String = "obtenerClasificacionOrigenEventoConsultaCotizacion";
		public static const OBTENER_LISTA_CLIENTES:String = "obtenerVieneDeEventoConsultaCotizacion";
		public static const MOSTRAR_OCULTAR_TAB_INFO_GRAFICAS:String = "mostrarOcultarTabInfoGraficasEventoConsultaCotizacion";
		public static const OBTENER_CONSULTA_TOTALES_PERIODO:String = "obtenerConsultaTotalesPeriodoEventoConsultaCotizacion";
		public static const OBTENER_INFO_GRAFICAS_SECUNDARIAS:String= "obtenerInfoGraficasSecundariasEventoConsultaCotizacion";
		public static const OBTENER_INFO_GRAFICAS_ALTA_PRODUCTO:String= "obtenerInfoGraficasAltaProductoEventoConsultaCotizacion";
		public static const MOSTRAR_SELECTED_GRAFICA:String = "mostrarSelectedGraficaEventoConsultaCotizacion";
		public static const OBTENER_FILTRO_GRAFICO_SECUNDARIO:String = "obtnerFiltroGraficoSecundarioEventoConsultaCotizacion";
		public static const CONTROL_GRAFICO:String = "controlGraficoEventonEventoConsultaCotizacion";
		public static const PASAR_INFO_A_ETVSFT_SECUNDARIA:String = "pasarInfoAETvsFTSecundariaEventoConsultaCotizacion";
		
		public function EventoConsultaCotizaciones(type:String, bubbles:Boolean=true, cancelable:Boolean=false,finicio:Date = null,ffin:Date = null,objCotizacion:Cotizacion = null,cotizacion:String = null,
												   tiempoProceso:TiempoProceso = null,busquedaProducto:ArrayCollection = null,idPcotiza:Number = 0,idEmpleado:int = 0,moneda:String = null,piezas:Object = null,
												   totalPiezas:Number = 0,conforme:String = null,clasificacion:String = null,valorAdicional:String = null,tabGrafica:Boolean = false,individual:Boolean = false,
												   tipo:String = null,selectedVista:String = null,actualizarVistaCurrent:Boolean = false)
		{
			super(type, bubbles, cancelable);
			if(objCotizacion!=null){				
			this.objCotizacion = objCotizacion;
			}
			this.finicio = finicio;
			this.ffin = ffin;
			this.cotizacion = cotizacion;
			this.tiempoProceso = tiempoProceso;
			this.busquedaProducto = busquedaProducto;
			this.idPcotiza = idPcotiza;
			this.idEmpleado = idEmpleado;
			this.moneda = moneda;
			this.piezas = piezas;
			this.totalPiezas = totalPiezas;
			this.conforme = conforme;
			this.clasificacion = clasificacion;
			this.valorAdicional = valorAdicional;
			this.tabGrafica = tabGrafica;
			this.individual = individual;
			this.tipo = tipo;
			this.selectedVista = selectedVista;
			this.actualizarVistaCurrent = actualizarVistaCurrent;
			
			
		}
		public override function clone():Event
		{
			return new EventoConsultaCotizaciones( type, bubbles, cancelable,finicio,ffin,objCotizacion,cotizacion,tiempoProceso,busquedaProducto,idPcotiza,idEmpleado,moneda,piezas,totalPiezas,conforme,clasificacion,valorAdicional,tabGrafica,individual,tipo,selectedVista,actualizarVistaCurrent);
		}
	}
}