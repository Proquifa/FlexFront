package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.compras.proveedores
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.compras.proveedores.ObjetoTabla;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.ParametrosBusquedaProveedor;
	
	public class EventoTabProveedores extends Event
	{
		public var imgComparativa:Boolean;
		public var mesInicio:Number;
		public var mesFin:Number;
		public var mesInicioFiscal:Number = 7;
		public var mesFinFiscal:Number = 6;
		public var monto:Number;
		public var numeroDeFila:Number;
		
		public var idProveedor:int = 0;
		public var anioInt:int = 0;
		public var periodo:String = "";
		public var tipoPeriodo:int = 0;
		public var mes:int = 0;
		public var idUsuario:Number;
		public var lineal:int;
		
		public var valorAdicional:String = "";
		public var anio:String;
		public var tipo:String;
		public var codigo:String;
		public var fabrica:String;
		public var provee:String;
		public var total:String;
		public var cant:String;
		public var cantidad:String;
		public var labelPeriodo1:String = "unset";
		public var labelPeriodo2:String = "unset";
		public var labelPeriodo3:String = "unset";
		public var labelPeriodo4:String = "unset";
		public var labelPeriodo5:String = "unset";
		public var listaProveedores:ArrayCollection = new ArrayCollection();
		public var _datos:ObjetoTabla = new ObjetoTabla(); 
		public var tipoConsulta:String = "hab";
		public var metodoConsultado:String;
		public var isIndividual:Boolean;
		public var copiaEvento:EventoTabProveedores;
		public var currentFiltro:String;
		public var anioFiscal:Boolean;
		
		public var currentVista:String;
		public var seleccionChart:String;
		public var seleccionMenuAnalisis:String;
		
		public var parametros:ParametrosBusquedaProveedor;
		
		public static const BUSCA_RESUMEN_GENERAL_PROVEEDORES:String = "buscaResumenGeneralProveedoresEventoTabProveedores";
		public static const BUSCA_COMPARATIVA_GENERAL_PROVEEDORES:String = "buscaComparativaGeneralProveedores";
		public static const BUSCA_RESUMEN_CONDICIONES_DE_PAGO:String = "buscaResumenCondicionesDePagoEventoTabProveedores";
		public static const BUSCAR_DATOS_GENERALES_PROVEEDORES:String = "buscarDatosGeneralesProveedorEventoTableroProveedores";
		public static const BUSCAR_INFO_GENERAL_PROVEEDOR:String = "buscarInfoGeneralProveedorEventoTableroProveedores";
		public static const ETIQUETA_PERIODO:String  = "etiquetaPeriodoEventoTableroProveedores";
		public static const INICIALIZA_COMPONENTE:String = "inicializaComponenteEventoTableroProveedores";
		public static const BLOQUEAR_COMPARATIVA:String = "bloquearComparativaEventoTableroProveedores";
		public static const BUSCAR_MONTO_ACUMULADO:String = "buscarMontoAcumuladoEventoTableroProveedores";
		public static const ENVIAR_DATOS_FILTROS:String = "enviarDatosFiltrosEventoTableroProveedores"
		
		public static const SERVICIOS_CONSULTADOS:String = "actualizarNumeroDeServiciosConsultadosEventoTableroProveedores";
		public static const PASAR_EVENTO_GENERAL_Y_PARA_LABELS:String = "pasarEventoGeneralYParaLabelsEventoTableroProveedores";
		
		public static const OBTENER_MONTOS_OBJETIVOS_COMPRAS:String = "obtenerMontosObjetivosParaLasComprasEventoTableroProveedores";
		
		//Para eventos Individuales 
		public static const BUSCA_COMPARATIVA_TOP_10_PRODUCTOS:String = "buscaComparativaTop10ProductosEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_OC_TRANSITO:String = "buscaComparativaOcTransitoEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_OC_RECHAZADA:String = "buscaComparativaOCRechazadaEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_OC_COMPRAS:String = "buscaComparativaOcComprasEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_CONDICIONES_DE_PAGO:String = "buscaComparativaCondicionesDePagoEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_TOP_10_CLIENTES:String = "buscaComparativaTop10ClientesEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_OC_RECIBIDAS:String = "buscaComparativaOcRecibidasEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_OC_AVISO_CAMBIOS:String = "buscaComparativaOcAvisoCambiosEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_OC_PAGOS:String = "buscaComparativaOcPagosEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_LINEA_CREDITO:String = "buscaComparativaLineaCreditoEventoTableroProveedores";
		public static const BUSCA_COMPARATIVA_LINEA_PRODUCTOS:String = "buscaComparativaLineaDeProductosEventoTableroClientes";
		public static const SELECCION_OPCION_MENU_ANALISIS:String = "seleccionOpcionMenuAnalisisTableroProveedores";
		public static const CONSULTAR_RESUMEN_COMPRAS:String = "consultarResumenComprasTableroProveedores";
		public static const CONSULTAR_RESUMEN_AGRUPADAS_COMPRADOR:String = "consusltarResumenAgrupadasCompradorTableroProveedores";
		public static const CONSULTAR_RESUMEN_AGRUPADAS_PAGADOR:String = "consusltarResumenAgrupadasPagadorTableroProveedores";
		public static const BUSCAR_ANIOFISCAL:String = "buscarAnioFiscalProveedores";
		
		//Para los Grids
		public static const CONSULTA_GRID_TOP_TEN_PRODUCTOS:String = "consultaCotPedEventoTableroClientes";
		public static const CONSULTA_GRID_TOP_TEN_CLIENTES:String = "consultaGridMixProductosEventoTableroClientes";
		public static const CONSULTA_GRID_OCTRANSITO:String = "consultaCotNoPedEventoTableroClientes";
		public static const CONSULTA_GRID_OCRECIBIDAS:String = "consultaSeguimientosEventoTableroClientes";
		public static const CONSULTA_GRID_RECHAZO:String = "consultaCancelacionesCotEventoTableroClientes";
		public static const CONSULTA_GRID_COMPRAS:String = "consultaGridPedidosEventoTableroClientes";
		public static const CONSULTA_GRID_PAGOS:String = "consultaEntregasEventoTableroClientes";
		public static const CONSULTA_GRID_AVISO_CAMBIOS:String = "consultaVentasPeriodoEventoTableroClientes";
		/*public static const CONSULTA_GRID_COMPORTAMIENTO_PAGOS:String = "consultaComportamietoPagosEventoTableroClientes";*/
		
		
		//PURA VISTA
		public static const SETTEAR_FILTRO_DEL_MENU_EN_OTRAS_VISTAS:String = "setterFiltroSeleccionadoDelMenuEventoTableroProveedores";
		public static const CAMBIO_GRAFICAS_ESTRATEGICOS:String = "cambioGraficasEstrategicosEventoTableroProveedores";
		public static const CAMBIO_GRAFICAS_NORMALES:String = "cambioGraficasNormalesEventoTableroProveedores";
		
		
		public function get keyConsulta():String{
			return parametros.tipoConsulta.toString() + '_' +
				parametros.idProveedor.toString() + '_' +
				parametros.idUsuario.toString() + '_' +
				parametros.anio.toString() + '_' +
				parametros.periodo.toString() + '_' +
				parametros.tipoPeriodo.toString() + '_' +
				parametros.mes.toString() + '_' +
				parametros.region.toString() + '_' +
				parametros.idAgenteAduanal.toString() + '_' +
				parametros.tipoProducto.toString();
			
			/*idProveedor.toString() 
			+ anioInt.toString() + '_'
			+ periodo + '_'
			+ tipoPeriodo.toString() + '_'
			+ mes.toString() + '_'	
			+ idUsuario.toString() + '_'
			+ lineal.toString() + '_'
			+ mesInicio.toString() + '_'
			+ mesFin.toString();*/
			
			
		}
		
		public function EventoTabProveedores(type:String, bubbles:Boolean=true, cancelable:Boolean=false, parametros:ParametrosBusquedaProveedor = null, valorAdicional:String = null, idProveedor:int = 0,anioInt:int = 0,periodo:String = null,tipoPeriodo:int = 0,mes:int = 0)
		{
			
			mesInicio=0;
			mesFin=0;
			anio="";
			codigo="";
			fabrica="";
			provee="";
			total="";
			cant="";
			cantidad="";
			monto=0;
			numeroDeFila=0;
			
			//TODO: implement function
			super(type, bubbles, cancelable);
			this.parametros = parametros;
			this.valorAdicional = valorAdicional;
			this.idProveedor = idProveedor;
			this.anioInt = anioInt;
			this.periodo = periodo;
			this.tipoPeriodo = tipoPeriodo;
			this.mes = mes;
		}
		public override function clone():Event
		{
			return new EventoTabProveedores( type, bubbles, cancelable, parametros, valorAdicional, idProveedor, anioInt, periodo, tipoPeriodo, mes);
		}
	}
}