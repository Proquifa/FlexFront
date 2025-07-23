package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ResumenVentasESAC;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class EventoTableroClientes extends Event
	{
		// argumentos en mobil
		public var mobIndexOrigen:int;
		public var mobComboSelectedIndex:int;
		public var mobLegend:String = "";
		
		// argumentos servicio
		public var idCliente:int;
		public var idUsuario:int;
		public var idColaborador:int;
		public var anio:Number;
		public var periodo:String;
		public var tipoPeriodo:Number;
		public var mes:Number;
		public var esacString:String="";
		public var idVentas:Number=0;
		public var lineal:int = 0;
		public var tipoT:String="hab";
		public var idCorporativo:Number=0;
		public var tipoProducto:String;
		public var nivelIngreso:String;
		public var ruta:String;
		// argumentos para vista
		public var rangoMinMes:int= 1;
		public var rangoMaxMes:int= 12;
		public var labelPeriodo1:String = "unset";
		public var labelPeriodo2:String = "unset";
		public var labelPeriodo3:String = "unset";
		public var labelPeriodo4:String = "unset";
		public var labelPeriodo5:String = "unset";
		public var currentFiltro:String;
		
		public var metodoConsultado:String;
		public var isIndividual:Boolean;
		public var copiaEvento:EventoTableroClientes;
		public var fabrica:String;
		
		public var corporativo:int;
		public var idProveedor:int;

		public var generada:int;
		
		public var idEsacMaster:Number;
		public var conEsacMaster:Boolean;
		public var seleccionMenuAnalisis:String;
		public var seleccionChart:String;
		public var currentVista:String;
		public var esacSelecionado:ResumenVentasESAC;
		public var arregloCancelacion:ArrayCollection;
		public var idVisitaCliente:int;
		public var visitaCliente:VisitaCliente;
		
		public var parametros:ParametrosBusquedaCliente = new ParametrosBusquedaCliente();
		
		public function get keyConsulta():String
		{
			return parametros.cliente.toString() + '_'
				+ parametros.anio.toString() + '_'
				+ parametros.periodo + '_'
				+ parametros.tipoPeriodo.toString() + '_'
				+ parametros.mes.toString() + '_'
				+ parametros.esac + '_'
				+ parametros.eventas.toString() + '_'
				+ parametros.lineal.toString() + '_'
				+ parametros.rangoMinMes.toString() + '_'
				+ parametros.rangoMaxMes.toString() + '_'
				+ parametros.tipo.toString()+ '_'
				+ parametros.conEsacMaster.toString();
		}
		
		public static const CONSULTA_GRID_COT_PED:String = "consultaCotPedEventoTableroClientes";
		public static const CONSULTA_GRID_MIX_PRODUCTOS:String = "consultaGridMixProductosEventoTableroClientes";
		public static const CONSULTA_GRID_COT_NO_PED:String = "consultaCotNoPedEventoTableroClientes";
		public static const CONSULTA_GRID_SEGUIMIENTOS:String = "consultaSeguimientosEventoTableroClientes";
		public static const CONSULTA_GRID_CANCELACIONES_COT:String = "consultaCancelacionesCotEventoTableroClientes";
		public static const CONSULTA_GRID_PEDIDOS:String = "consultaGridPedidosEventoTableroClientes";
		public static const CONSULTA_GRID_ENTREGAS:String = "consultaEntregasEventoTableroClientes";
		public static const CONSULTA_GRID_VENTAS_PERIODO:String = "consultaVentasPeriodoEventoTableroClientes";
		public static const CONSULTA_GRID_COMPORTAMIENTO_PAGOS:String = "consultaComportamietoPagosEventoTableroClientes";
		public static const OBTENER_MONTOS_OBJETIVO:String = "obtenerMontosObjetivoEventoTableroClientes";
		public static const OBTENER_INFORMACION_TIME_LINE:String = "obtenerInformacionTimeLineEventoTableroClientes";
		public static const OCULTAR_TITULO:String = "ocultarTituloEventoTableroClientes";
		
		
		public static const CONSULTAR_DATOS_GENERALES_CLIENTES:String = "consultarDatosGeneralesCientesEventoTableroClientes";
		public static const CONSULTA_RESUMEN:String = "consultaResumenEventoTableroClientes";
		public static const CONSULTA_INFO_CLIENTE:String = "consultaInfoClienteEventoTableroClientes";
		public static const RANGO_MESES_SELECCIONADOS:String = "rangoMesesSeleccionadosEventoTableroClientes";
		public static const ETIQUETA_PERIODO:String = "etiquetaPeriodoEventoTableroClientes";
		public static const CONSULTA_INFO_COLABORADOR:String = "consultaInfoColaboradorEventoTableroClientes";
		
		public static const INICIA_CONSULTA:String = "iniciaConsultaEventoTableroClientes";
		public static const SIGUIENTES_CONSULTAS:String = "siguientesConsultasEventoTableroClientes";
		public static const CONSULTA_LINEAL:String = "consultaLinealEventoTableroClientes";
		public static const CONSULTA_GRAFICA_VENTAS_NIVEL_INGRESO:String = "consultaGraficaVentasNivelIngrespTableroClientes";
		public static const SET_FILTRO_BUSQUEDA:String = "setFiltroBusquedaTableroClientes";
		public static const SERVICIOS_CONSULTADOS:String = "actualizarNumeroDeServiciosConsultadosTableroClientes";
		public static const PASAR_EVENTO_GENERAL_Y_PARA_LABELS:String = "pasarEventoGeneralYParaLabelsTableroClientes";
		public static const CONSULTA_COT_NO_PED_PORCIENTO:String = "consultaCotNoPedPorcientoTableroClientes";
		public static const CONSULTA_DISTRIBUCION_MIX_PRODUCTOS:String = "consultaDistribucionMixProductosTableroClientes";
		
		public static const CONSULTAR_TOTAL_COTIZACION_PEDIDO:String = "consultaTotalCotPedTableroClientes";
		public static const CONSULTAR_TOTAL_COTIZACION_A_PEDIDO:String = "consultaTotalCotAPedTableroClientes";
		public static const OBTENER_CLIENTES_POR_CORPORATIVO:String = "obtenerClientesPorCorporativoTableroClientes";
		public static const SELECCION_OPCION_MENU_ANALISIS:String = "seleccionOpcionMenuAnalisisTableroClientes";
		public static const OPCION_CHART_TODOS:String = "opcionChartTodosAnalisisTableroClientes";
		public static const OPCION_CHART_ALTOS:String = "opcionChartAltosAnalisisTableroClientes";
		public static const OPCION_CHART_MEDIOS:String = "opcionChartMediosAnalisisTableroClientes";
		public static const CAMBIOS_GRAFICA_TODOS:String = "cambiosGraficaTodosAnalisisTableroClientes";
		public static const CAMBIOS_GRAFICA_ALTOS:String = "cambiosGraficaAltosAnalisisTableroClientes";
		public static const CAMBIOS_GRAFICA_MEDIOS:String = "cambiosGraficaMediosAnalisisTableroClientes";
		public static const CAMBIOS_GRAFICA_BAJOS:String = "cambiosGraficaBajosAnalisisTableroClientes";
		public static const CAMBIOS_GRAFICA_NUEVOS:String = "cambiosGraficaNuevosAnalisisTableroClientes";
		public static const CAMBIOS_GRAFICA_DISTRI:String = "cambiosGraficaDistriAnalisisTableroClientes";
		public static const ENVIAR_ARREGLO_CANCELACION:String = "enviarArregloCancelacionTableroClientes";
		public static const OBTENER_RESUMEN_VISITAS_VS_VENTAS:String = "obtenerResumenVisitasVsVentas";
		public static const OBTENER_RESUMEN_VISITAS_TIPO:String = "obtenerResumenVisitasTipo";
		
		
		
		
		//ESTO SÓLO ES PARA QUE PONGA LA ESPERA 
		
		public static const CONSULTAR_RESUMEN_VENTAS_TODOS:String = "solicitarResumenDeVentasTodosEsacEventoTableroClientes";
		public static const CONSULTAR_RESUMEN_VENTAS_TODOS_AGRUPADOS:String = "solicitarResumenDeVentasTodosAgrupadosEsacEventoTableroClientes";
		public static const CONSULTAR_RESUMEN_VENTAS_CLIENTES:String = "solicitarResumenDeVentasClientesEsacEsacEventoTableroClientes";
		
		
		// MOBIL
		public static const CONSULTA_LINEAL_MIX_PRODUCTOS:String = "consultaLinealMixProductosEventoTableroClientes";
		public static const CONSULTA_LINEAL_COTIZACION_PEDIDO:String = "consultaLinealCorizacionPedidoEventoTableroClientes";
		public static const CONSULTA_LINEAL_SEGUIMIENTOS:String = "consultaLinealSeguimientosEventoTableroClientes";
		public static const CONSULTA_LINEAL_PEDIDOS:String = "consultaPedidosEventoTableroClientes";
		public static const CONSULTA_LINEAL_VENTAS_PERIODO:String = "consultaLinealVentasPeriodoEventoTableroClientes";
		public static const CONSULTA_LINEAL_MIX_MARCAS:String = "consultaLinealMixMarcasEventoTableroClientes";
		public static const CONSULTA_LINEAL_COT_DIF_PEDIDOS:String = "consultaLinealCotDiferentePedidosEventoTableroClientes";
		public static const CONSULTA_LINEAL_CANCELACION_COTIZACION:String = "cancelacionCotizacionEventoTableroClientes";
		public static const CONSULTA_LINEAL_ENTREGAS:String = "consultaLinealEntregasEventoTableroClientes";
		public static const CONSULTA_LINEAL_COMPORTAMIENTO_PAGOS:String = "consultaComportamientoPagosEventoTableroClientes";
		public static const MOB_LLENAR_GRAFICAS_MINI:String = "modeloLlenarGraficasMiniEventoTableroClientes";
		
		
		public static const SOLO_DUMMY_SOY_CONSULTA_LINEAL:String = "soloDummySoyConsultaLinealEventoTableroClientes";
		
		//VISTA
		public static const BUSCAR_CLIENTE_SELECCIONADO_CORPORATIVO:String = "buscarClienteSeleccionadoCorporativoEventoTableroClientes";

		public static const CIERRA_VISTA_DETALLES:String = 'cierraVistaDetallesEventoTableroClientes'

		public static const CAMBIAR_VISTA:String = 'cambiaVistaEventoTableroClientes'
		
		
		public function EventoTableroClientes(type:String, bubbles:Boolean=true, cancelable:Boolean=false, parametros:ParametrosBusquedaCliente = null, metodoConsultado:String = "")
		{
			super(type, bubbles, cancelable);
			this.parametros = parametros;
			this.metodoConsultado = metodoConsultado;
		}
		public override function clone():Event
		{
			return new EventoTableroClientes( type, bubbles, cancelable, parametros);
		}
	}
}