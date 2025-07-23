package mx.com.proquifa.proquifanet.rsl.vista.eventos.comun
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;

	public class DiccionarioEventos extends Event
	{
	
		//********************************************************************************************************** TABLERO CLIENTES ***********************************************************************************************************************//
		
		public static const consultaCotPedEventoTableroClientes:String = "CONSULTA_GRID_COT_PED";
		public static const consultaGridMixProductosEventoTableroClientes:String = "CONSULTA_GRID_MIX_PRODUCTOS";
		public static const consultaCotNoPedEventoTableroClientes:String = "CONSULTA_GRID_COT_NO_PED";
		public static const consultaSeguimientosEventoTableroClientes:String = "CONSULTA_GRID_SEGUIMIENTOS";
		public static const consultaCancelacionesCotEventoTableroClientes:String = "CONSULTA_GRID_CANCELACIONES_COT";
		public static const consultaGridPedidosEventoTableroClientes:String = "CONSULTA_GRID_PEDIDOS";
		public static const consultaEntregasEventoTableroClientes:String = "CONSULTA_GRID_ENTREGAS";
		public static const consultaVentasPeriodoEventoTableroClientes:String = "CONSULTA_GRID_VENTAS_PERIODO";
		public static const consultaComportamietoPagosEventoTableroClientes:String = "CONSULTA_GRID_COMPORTAMIENTO_PAGOS";
		public static const obtenerMontosObjetivoEventoTableroClientes:String = "OBTENER_MONTOS_OBJETIVO";
		
		
		public static const consultarDatosGeneralesCientesEventoTableroClientes:String = "CONSULTAR_DATOS_GENERALES_CLIENTES";
		public static const consultaResumenEventoTableroClientes:String = "CONSULTA_RESUMEN";
		public static const consultaInfoClienteEventoTableroClientes:String = "CONSULTA_INFO_CLIENTE";
		public static const rangoMesesSeleccionadosEventoTableroClientes:String = "RANGO_MESES_SELECCIONADOS";
		public static const etiquetaPeriodoEventoTableroClientes:String = "ETIQUETA_PERIODO";
		public static const consultaInfoColaboradorEventoTableroClientes:String = "CONSULTA_INFO_COLABORADOR";
		
		public static const iniciaConsultaEventoTableroClientes:String = "INICIA_CONSULTA";
		public static const siguientesConsultasEventoTableroClientes:String = "SIGUIENTES_CONSULTAS";
		public static const consultaLinealEventoTableroClientes:String = "CONSULTA_LINEAL";
		public static const consultaGraficaVentasNivelIngrespTableroClientes:String = "CONSULTA_GRAFICA_VENTAS_NIVEL_INGRESO";
		public static const setFiltroBusquedaTableroClientes:String = "SET_FILTRO_BUSQUEDA";
		public static const actualizarNumeroDeServiciosConsultadosTableroClientes:String = "SERVICIOS_CONSULTADOS";
		public static const pasarEventoGeneralYParaLabelsTableroClientes:String = "PASAR_EVENTO_GENERAL_Y_PARA_LABELS";
		public static const consultaCotNoPedPorcientoTableroClientes:String = "CONSULTA_COT_NO_PED_PORCIENTO";
		public static const consultaDistribucionMixProductosTableroClientes:String = "CONSULTA_DISTRIBUCION_MIX_PRODUCTOS";
		
		public static const consultaTotalCotPedTableroClientes:String = "CONSULTAR_TOTAL_COTIZACION_PEDIDO";
		public static const consultaTotalCotAPedTableroClientes:String = "CONSULTAR_TOTAL_COTIZACION_A_PEDIDO";
		public static const obtenerClientesPorCorporativoTableroClientes:String = "OBTENER_CLIENTES_POR_CORPORATIVO";
		public static const seleccionOpcionMenuAnalisisTableroClientes:String = "SELECCION_OPCION_MENU_ANALISIS";
		public static const opcionChartAltosAnalisisTableroClientes:String = "OPCION_CHART_ALTOS";
		public static const opcionChartMediosAnalisisTableroClientes:String = "OPCION_CHART_MEDIOS";
		public static const cambiosGraficaAltosAnalisisTableroClientes:String = "CAMBIOS_GRAFICA_ALTOS";
		public static const cambiosGraficaMediosAnalisisTableroClientes:String = "CAMBIOS_GRAFICA_MEDIOS";
		public static const cambiosGraficaBajosAnalisisTableroClientes:String = "CAMBIOS_GRAFICA_BAJOS";
		public static const cambiosGraficaNuevosAnalisisTableroClientes:String = "CAMBIOS_GRAFICA_NUEVOS";
		public static const cambiosGraficaDistriAnalisisTableroClientes:String = "CAMBIOS_GRAFICA_DISTRI";
		public static const enviarArregloCancelacionTableroClientes:String = "ENVIAR_ARREGLO_CANCELACION";
		
		//ESTO SÓLO ES PARA QUE PONGA LA ESPERA 
		public static const solicitarResumenDeVentasTodosEsacEventoTableroClientes:String = "CONSULTAR_RESUMEN_VENTAS_TODOS";
		public static const solicitarResumenDeVentasClientesEsacEsacEventoTableroClientes:String = "CONSULTAR_RESUMEN_VENTAS_CLIENTES";
		
		// MOBIL
		public static const consultaLinealMixProductosEventoTableroClientes:String = "CONSULTA_LINEAL_MIX_PRODUCTOS";
		public static const consultaLinealCorizacionPedidoEventoTableroClientes:String = "CONSULTA_LINEAL_COTIZACION_PEDIDO";
		public static const consultaLinealSeguimientosEventoTableroClientes:String = "CONSULTA_LINEAL_SEGUIMIENTOS";
		public static const consultaPedidosEventoTableroClientes:String = "CONSULTA_LINEAL_PEDIDOS";
		public static const consultaLinealVentasPeriodoEventoTableroClientes:String = "CONSULTA_LINEAL_VENTAS_PERIODO";
		public static const consultaLinealMixMarcasEventoTableroClientes:String = "CONSULTA_LINEAL_MIX_MARCAS";
		public static const consultaLinealCotDiferentePedidosEventoTableroClientes:String = "CONSULTA_LINEAL_COT_DIF_PEDIDOS";
		public static const cancelacionCotizacionEventoTableroClientes:String = "CONSULTA_LINEAL_CANCELACION_COTIZACION";
		public static const consultaLinealEntregasEventoTableroClientes:String = "CONSULTA_LINEAL_ENTREGAS";
		public static const consultaComportamientoPagosEventoTableroClientes:String = "CONSULTA_LINEAL_COMPORTAMIENTO_PAGOS";
		public static const modeloLlenarGraficasMiniEventoTableroClientes:String = "MOB_LLENAR_GRAFICAS_MINI";
		public static const soloDummySoyConsultaLinealEventoTableroClientes:String = "SOLO_DUMMY_SOY_CONSULTA_LINEAL";
		
		//VISTA
		public static const buscarClienteSeleccionadoCorporativoEventoTableroClientes:String = "BUSCAR_CLIENTE_SELECCIONADO_CORPORATIVO";
		
		public static const actualizarNumeroDeServiciosConsultadosEventoResumenVentasEnPeriodoMax:String = "SERVICIOS_CONSULTADOS";
		
		/*public static const CONSULTAR_RESUMEN_VENTAS_TODOS:String = "solicitarResumenDeVentasTodosEsacEventoResumenVentasEnPeriodoMax";
		public static const CONSULTAR_RESUMEN_VENTAS_CLIENTES:String = "solicitarResumenDeVentasClientesEsacEventoResumenVentasEnPeriodoMax";*/
		
		
		
		//VARIABLES ESTATICAS DE VISTA
		/*public static const ENVIAR_SELECCION_GRAFICA_TO_CENTRO_VISTA_CLIENTES_ALTOS:String = "enviarSeleccionDeLaGraficaAlCentroVistaClientesAltosEventoResumenVentasEnPeriodoMax";*/
		public static const enviarSeleccionDelCentroALasGraficasVistaEsacsAltosEventoResumenVentasEnPeriodoMax:String = "ENVIAR_SELECCION_CENTRO_TO_GRAFICA_VISTA_ESAC_ALTOS";
		public static const enviarSeleccionDelCentroALasGraficasVistaEsacsMediosEventoResumenVentasEnPeriodoMax:String = "ENVIAR_SELECCION_CENTRO_TO_GRAFICA_VISTA_ESAC_MEDIOS";
		public static const enviarSeleccionDelCentroALasGraficasVistaEsacsDistribuidorEventoResumenVentasEnPeriodoMax:String = "ENVIAR_SELECCION_CENTRO_TO_GRAFICA_VISTA_ESAC_DISTRIBUIDOR";
		
		/*public static const ENVIAR_SELECCION_GRAFICA_TO_CENTRO_VISTA_CLIENTES_MEDIOS:String = "enviarSeleccionDeLaGraficaAlCentroVistaClientesMediosEventoResumenVentasEnPeriodoMax";*/
		public static const enviarSeleccionDeLaGraficaAlCentroVistaClientesDistribuidorEventoResumenVentasEnPeriodoMax:String = "ENVIAR_SELECCION_CHECK_FROM_CENTRO_TO_VISTA_DEFAULT_ANALISIS_VENTAS";
		
		
		public static const enviarClientesAltosALaVistaDeGridEventoResumenVentasEnPeriodoMax:String = "ENVIAR_CLIENTES_ALTOS_A_OTRA_VISTA_GRID";
		public static const enviarClientesMediosALaVistaDeGridEventoResumenVentasEnPeriodoMax:String = "ENVIAR_CLIENTES_MEDIOS_A_OTRA_VISTA_GRID";
		public static const enviarClientesDistribuidorALaVistaDeGridEventoResumenVentasEnPeriodoMax:String = "ENVIAR_CLIENTES_DISTRIBUIDOR_A_OTRA_VISTA_GRID";
		
		
		//********************************************************************************************************** TABLERO PROVEEDORES ***********************************************************************************************************************//
		
		public static const buscarProveedoresEventoTableroProveedores:String = "BUSCAR_PROVEEDORES";
		public static const buscarDatosGeneralesProveedorEventoTableroProveedores:String ="BUSCAR_DATOS_GENERALES_PROVEEDORES";
		public static const obtenerNumeroStockPorIdEventoTableroProveedores:String = "OBTENER_NUMERO_STOCK_POR_ID";
		public static const obtenerMorosidadTableroProveedores:String = "OBTENER_MOROSIDAD";
		public static const obtenerAdeudoPorIdTableroProveedores:String = "OBTENER_ADEUDO_POR_ID";
		public static const obtenerFacturasPorIdTableroProveedores:String = "OBTENER_FACTURAS_POR_ID";
		public static const topTenProductosTableroProveedores:String = "TOP_TEN_PRODUCTOS";
		public static const obtenerTopTenClientesProvTableroProveedores:String = "OBTENER_TOP_TEN_CLIENTES_PROV";
		public static const obtenerPartidasEnTiempoTableroProveedores:String = "OBTENER_PARTIDAS_EN_TIEMPO";
		public static const obtenerPartidasCompraProveedorRecibidasTableroProveedores:String = "OBTENER_PARTIDAS_COMPRA_PROVEEDOR_RECIBIDAS";
		public static const obtenerPartidasCompraProveedorTransitoTableroProveedores:String = "OBTENER_PARTIDAS_COMPRA_PROVEEDOR_TRANSITO";
		public static const buscarDatoTopClientesTableroProveedores:String = "BUSCAR_DATOS_TOPCLIENTE";
		public static const cargarDatosRecibidasTableroProveedores:String = "CARGA_DATOS_RECIBIDAS";
		public static const cargasDatosTransitoTableroProveedores:String = "CARGA_DATOS_TRANSITO";
		
		public static const cargaDatosComprasEventoTableroProveedores:String = "CARGA_DATOS_COMPRAS";
		public static const cargaDatosPagosEventoTableroProveedores:String = "CARGA_DATOS_PAGOS";
		
		public static const buscaResumenGeneralProveedoresEventoTabProveedores:String = "BUSCA_RESUMEN_GENERAL_PROVEEDORES";
		public static const buscaComparativaGeneralProveedores:String = "BUSCA_COMPARATIVA_GENERAL_PROVEEDORES";
		public static const buscaResumenCondicionesDePagoEventoTabProveedores:String = "BUSCA_RESUMEN_CONDICIONES_DE_PAGO";
		public static const buscarInfoGeneralProveedorEventoTableroProveedores:String = "BUSCAR_INFO_GENERAL_PROVEEDOR";
		public static const etiquetaPeriodoEventoTableroProveedores:String  = "ETIQUETA_PERIODO";
		public static const inicializaComponenteEventoTableroProveedores:String = "INICIALIZA_COMPONENTE";
		public static const bloquearComparativaEventoTableroProveedores:String = "BLOQUEAR_COMPARATIVA";
		public static const buscarMontoAcumuladoEventoTableroProveedores:String = "BUSCAR_MONTO_ACUMULADO";
		public static const enviarDatosFiltrosEventoTableroProveedores:String = "ENVIAR_DATOS_FILTROS"
		
		public static const actualizarNumeroDeServiciosConsultadosEventoTableroProveedores:String = "SERVICIOS_CONSULTADOS";
		public static const pasarEventoGeneralYParaLabelsEventoTableroProveedores:String = "PASAR_EVENTO_GENERAL_Y_PARA_LABELS";
		
		public static const obtenerMontosObjetivosParaLasComprasEventoTableroProveedores:String = "OBTENER_MONTOS_OBJETIVOS_COMPRAS";
		
		//Para eventos Individuales 
		public static const buscaComparativaTop10ProductosEventoTableroProveedores:String = "BUSCA_COMPARATIVA_TOP_10_PRODUCTOS";
		public static const buscaComparativaOcTransitoEventoTableroProveedores:String = "BUSCA_COMPARATIVA_OC_TRANSITO";
		public static const buscaComparativaOCRechazadaEventoTableroProveedores:String = "BUSCA_COMPARATIVA_OC_RECHAZADA";
		public static const buscaComparativaOcComprasEventoTableroProveedores:String = "BUSCA_COMPARATIVA_OC_COMPRAS";
		public static const buscaComparativaCondicionesDePagoEventoTableroProveedores:String = "BUSCA_COMPARATIVA_CONDICIONES_DE_PAGO";
		public static const buscaComparativaTop10ClientesEventoTableroProveedores:String = "BUSCA_COMPARATIVA_TOP_10_CLIENTES";
		public static const buscaComparativaOcRecibidasEventoTableroProveedores:String = "BUSCA_COMPARATIVA_OC_RECIBIDAS";
		public static const buscaComparativaOcAvisoCambiosEventoTableroProveedores:String = "BUSCA_COMPARATIVA_OC_AVISO_CAMBIOS";
		public static const buscaComparativaOcPagosEventoTableroProveedores:String = "BUSCA_COMPARATIVA_OC_PAGOS";
		public static const buscaComparativaLineaCreditoEventoTableroProveedores:String = "BUSCA_COMPARATIVA_LINEA_CREDITO";
		
		
		//PURA VISTA
		public static const setterFiltroSeleccionadoDelMenuEventoTableroProveedores:String = "SETTEAR_FILTRO_DEL_MENU_EN_OTRAS_VISTAS";
		
		//********************************************************************************************************** TABLEROS ***********************************************************************************************************************//
		
		public static const maximizarTablaEvento:String = "MAXIMIZAR_TABLA";
		public static const volverATableroEvento:String = "VOLVER_A_TABLERO";
		public static const maximizarGraficaEvento:String = "MAXIMIZAR_GRAFICA";
		public static const popEsperaEventoTablero:String = "POP_ESPERA";
		public static const panelComparacionEventoTablero:String = "PANEL_COMPARACION";
		public static const consultaTasaIncidentesEventoTasaRealizacionGeneral:String = "CONSULTA_TASA_INCIDENTES";
		public static const consultaPromedioEventoTasaRealizacionGeneral:String = "CONSULTA_PROMEDIO";
		public static const cargaTasaCotizacionesEventoTasaRealizacionGeneral:String = "CARGA_TASA_COTIZACIONES";
		//Vista
		public static const ServiciosConsultadosEventoTableroOperativos:String = "SERVICIOS_CONSULTADOS";
		
		//Servicio
		public static const ConsultaTableroEventoTableroOperativos:String = "CONSULTA_TABLERO"; 
		public static const ConsultaGridConfirmacionFtEventoTableroOperativos:String = "CONSULTA_GRIDCONFIRMACIONOCFT";
		
		//********************************************************************************************************** CONSULTA FACTURACION 2013 ***********************************************************************************************************************//
		
		public static const mostrarListaFacturasAvanzadaEventoConsultaFacturacion2013:String = "MOSTRAR_LISTA_FACTURAS_AVANZADA";
		public static const buscarFacturasFolioEventoConsultaFacturacion2013:String = "BUSCAR_FACTURAS_FOLIO";
		public static const mostrarConsultaPanelMenuEventoConsultaFacturacion2013:String = "MOSTRAR_CONSULTA_PANEL_MENU";
		public static const mostrarConsultaPanelFacturasEventoConsultaFacturacion2013:String = "MOSTRAR_CONSULTA_PANEL_FACTURAS";
		public static const mostrarLineaTiempoEventoConsultaFacturacion2013:String = "MOSTRAR_LINEA_TIEMPO";
		public static const mostrarLineaTiempoPrepagoEventoConsultaFacturacion2013:String = "MOSTRAR_LINEA_TIEMPO_PREPAGO";
		public static const mostrarDetallesFacturacionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_FACTURACION";
		public static const mostrarDetallesEntregaEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_ENTREGA";
		public static const mostrarDetallesRevisionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_REVISION";
		public static const mostrarDetallesCobradaEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_COBRADA";
		public static const mostrarDetallesFacturarRemisionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_FACTURAR_REMISION";
		public static const mostrarDetallesRefacturacionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_REFACTURACION";
		public static const mostrarDetallesCancelacionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_CANCELACION";
		public static const mostrarDetallesSolicitudConsultaFacturacion2013:String = "MOSTRAR_DETALLES_SOLICITUD";
		public static const mostrarFacturaResumenEventoConsultaFacturacion2013:String = "MOSTRAR_FACTURA_RESUMEN";
		public static const consultaHistorialPrepagoEventoConsultaFacturacion2013:String = "CONSULTAR_HISTORIAL_PREPAGO";
		public static const consultaProformaPrepagoEventoConsultaFacturacion2013:String = "CONSULTAR_PROFORMA_PREPAGO";
		public static const consultarFacturasFueraSistemaEventoConsultaFacturacion2013:String= "CONSULTA_FACTURAS_FUERA_LINEA";
		public static const buscarFacturasFolioFueraSistemaEventoConsultaFacturacion2013:String = "BUSCAR_FACTURAS_FOLIO_FUERA_SISTEMA";
		
		//constantes para vista
		public static const mostrarOcultarTabInfoGraficasEventoConsultaFacturacion2013:String = "MOSTRAR_OCULTAR_TAB_INFO_GRAFICAS";
		public static const cambiaIndiceMenFacturacionEventoConsultaFacturacion2013:String = "CAMBIA_INDICE_MENU_FACTURACION";
		public static const traspasarDatosFacturacionEventoConsultaFacturacion2013:String = "TRASPASAR_DATOS_FACTURACION";
		public static const traspasarDatosEntregaEventoConsultaFacturacion2013:String = "TRASPASAR_DATOS_ENTREGAS";
		public static const traspasarDatosCobroEventoConsultaFacturacion2013:String = "TRASPASAR_DATOS_COBRO";
		public static const enviarDatosFacturaFporEventoConsultaFacturacion2013:String = "ENVIAR_DATOS_FACTURA_FPOR";
		public static const enviarInfoRefacturacionEventoConsultaFacturacion2013:String = "ENVIAR_INFO_REFACTURACION";
		public static const enviarInfoRevisionEventoConsultaFacturacion2013:String = "ENVIAR_INFO_REVISION";
		public static const escucharCambiosMenu:String="ESCUCHARCAMBIOSMENU";
		public static const informarSiLaBusquedaEsRapidaOAvanzadaConsultaFacturacion2013:String="INFORMAR_SI_BUSQUEDA_ES_RAPIDA_O_AVANZADA";
		
		
		
		//********************************************************************************************************** FUNCION EMPLEADO ***********************************************************************************************************************//
		
		public static const crearFuncionEmpleadoEvent:String = "CREAR_FUNCIONEMPLEADO";
		public static const eliminarFuncionEmpleadoEvent:String = "ELIMINAR_FUNCIONEMPLEADO";
		public static const traerFuncionesEvent:String = "TRAER_FUNCIONES";
		
		//********************************************************************************************************** PROCESO ***********************************************************************************************************************//
		
		public static const actualizarProceso:String = "ACTUALIZAR_PROCESO";
		
		//********************************************************************************************************** SUBPROCESO ***********************************************************************************************************************//
		
		public static const eliminarSubprocesoEvento:String= "ELIMINAR_SUBPROCESO";
		public static const crearSubprocesoEvento:String = "CREAR_SUBPROCESO";
		public static const detalleSubprocesoEvento:String = "DETALLE_SUBPROCESO";
		public static const asociarSubprocesoFuncionEvento:String = "ASOCIAR_SUBPROCESO_FUNCION";
		public static const actualizarSubprocesoFuncionEvento:String = "ACTUALIZAR_SUBPROCESO";
		
		//********************************************************************************************************** VISTA CATALOGO ***********************************************************************************************************************//
		
		public static const traerEstructuraEvento:String = "TRAER_ESTRUCTURA";
		public static const traerEmpleadosEvento:String = "TRAER_EMPLEADOS";
		public static const TraerUsuariosEvento:String = "TRAER_USUARIOS";
		public static const TraerCatalogoEvento:String = "TRAER_CATALOGO";
		public static const ActualizarEstructuraEvento:String = "ACTUALIZAR_ESTRUCTURA";
		
		//********************************************************************************************************** ALERTA PQNET ***********************************************************************************************************************//
		
		public static const mostrarAlertaEvent:String = "MOSTRAR_ALERTA";
		public static const respuestaAlertaEvent:String = "RESPUESTA_ALERTA";
		public static const CloseAlertAlertaEvent:String = "CLOSE";
		
		//********************************************************************************************************** AGENTE ADUANAL/AGENTE ADUANAL GENERAL ***********************************************************************************************************************//
		
		public static const obtenerAgentesAduanalesEventoCarAgenteAduanalGeneral:String = "OBTENER_AGENTES_ADUANALES";
		public static const cambiaVistaMenuAgenteAEventoCarAgenteAduanalGeneral:String = "CAMBIA_VISTA_MANU_AGENTE_A";
		public static const enviaAgenteAduanalEventoCarAgenteAduanalGeneral:String = "ENVIA_AGENTE_ADUANAL";
		public static const actualizaAgentesAduanalesEventoCarAgenteAduanalGeneral:String = "ACTUALIZA_AGENTES_ADUANALES";
		public static const creaNuevoAgenteEventoCarAgenteAduanalGeneral:String = "CREA_NUEVO_AGENTE";
		public static const guardaAgenteEventoCarAgenteAduanalGeneral:String = "GUARDA_AGENTE";
		public static const regresaIndiceAnteriorAgenteEventoCarAgenteAduanalGeneral:String = "REGRESAR_INDICE_ANTERIOR_AGENTE";
		public static const cargaComponenteEventoCarAgenteAduanalGeneral:String = "CARGA_COMPONENTE";
		public static const muestraBotoneraEventoCarAgenteAduanalGeneral:String = "MUESTRA_BOTONERA";
		public static const insertaNuevoLugarAgenteEventoCarAgenteAduanalGeneral:String = "INSERTA_NUEVO_LUGAR_AGENTE";
		public static const actualizaLugarAgenteEventoCarAgenteAduanalGeneral:String = "ACTUALIZA_LUGAR_AGENTE";
		public static const modificarConceptosLugarAgenteCatAgenteAduanalGeneral:String = "MODIFICAR_CONCEPTOS_LUGAR_AGENTE";
		public static const reubicarPanelModificacionCatAgenteAduanalGeneral:String = "REUBICAR_PANEL_MODIFICACION";
		public static const obtenerReporteAgentesAsociadosCatAgenteAduanalGeneral:String = "OBTENER_REPORTE_AGENTES_ASOCIADOS";
		public static const desasociarMarcaAgenteAduanalCatAgenteAduanalGeneral:String = "DESASOCIOAR_MARCA_AGENTE_ADUANAL";
		public static const eliminarConceptoLugarAgenteAduanalCatAgenteAduanalGeneral:String = "ELIMINAR_CONCEPTO_LUGAR_AGENTE_ADUANAL";
		
		// EVENTOS PARA MARCAS
		public static const obtenerProveedoresEventoCarAgenteAduanalGeneral:String = "OBTENER_PROVEEDORES";
		public static const obtenerListaFamiliaEventoCarAgenteAduanalGeneral:String = "OBTENER_LISTA_FAMILIA";
		public static const guardarMinMaxEventoCarAgenteAduanalGeneral:String = "GUARDAR_MIN_MAX";
		public static const hacerInsercionEventoCarAgenteAduanalGeneral:String = "HACER_INSERCION";
		public static const enviaFuaMarcasVistaEventoCarAgenteAduanalGeneral:String = "ENVIA_FUA_MARCAS_VISTA";
		public static const enviaNombreProveedorEventoCarAgenteAduanalGeneral:String = "ENVIA_NOMBRE_PROVEEDOR";
		public static const recorreTituloSeleccionadoEventoCarAgenteAduanalGeneral:String = "RECORRE_TITULO_SELECCIONADO";
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionAgenteGralEventoCarAgenteAduanalGeneral:String = "INSERTAR_MODIFICACION_AGENTE_GRAL";
		
		//********************************************************************************************************** AGENTE ADUANAL/AGENTE CONTACTOS ***********************************************************************************************************************//
		
		public static const cancelarEventoCatAgenteContactos:String = "CANCELAR_AGENTE";
		public static const obtenerContactosEventoCatAgenteContactos:String = "OBTENER_CONTACTOS_AGENTE";
		public static const eliminarContactoSolicitudEnServerEventoCatAgenteContactos:String = "ELIMINAR_CONTACTO_SERVER_AGENTE";
		public static const eliminarContactoSolicitudEnVistaEventoCatAgenteContactos:String = "ELIMINAR_CONTACTO_VISTA_AGENTE";
		public static const modificarContactoSolicitudEnVistaEventoCatAgenteContactos:String = "MODIFICAR_CONTACTO_VISTA_AGENTE";
		public static const editaContactoEventoSolicitudEnServerCatProContactosEventoCatAgenteContactos:String = "EDITA_CONTACTO_SERVICE_AGENTE";
		public static const agregaContactoSolicitudEnServerEventoCatAgenteContactos:String = "AGREGA_CONTACTO_SERVICE_AGENTE";
		public static const agregarContactoSolicitudEnVistaEventoCatAgenteContactos:String = "AGREGAR_CONTANTO_VISTA_AGENTE";
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionContactosAgenteEventoCatAgenteContactos:String = "INSERTAR_MODIFICACION_CONTACTOS_AGENTE";
		
		//********************************************************************************************************** CLIENTES/CARTERAS ***********************************************************************************************************************//
		
		//SERVICIO
		public static const solicitarListaCarterasEventoCatClientes_Carteras:String = "SOLICITAR_LISTA_CARTERAS";
		public static const solicitarListaClientesEventoCatClientes_Carteras:String = "SOLICITAR_LISTA_CLIENTES";
		public static const guardarCarteraEventoCatClientes_Carteras:String = "GUARDAR_CARTERA";
		public static const eliminarCarteraEventoCatClientes_Carteras:String = "ELIMINAR_CARTERA";
		public static const modificarColaboradoresCarteraEventoCatClientes_Carteras:String = "MODIFICAR_COLABORADORES_CARTERA";
		
		
		//VISTA
		public static const insertarModificacionesCarterasEventoCatClientes_Carteras:String = "INSERTAR_MODIFICACIONES_CARTERAS";
		public static const mandarCarteraSeleccionadaExpandidaEventoCatClientes_Carteras:String = "MANDAR_CARTERA_SELECCIONADA_EXPANDIDA";
		public static const enviarCarterasBuscadasEventoCatClientes_Carteras:String = "ENVIAR_CARTERAS_BUSCADAS";
		public static const enviarUniversoBusquedaEventoCatClientes_Carteras:String = "ENVIAR_NUEVO_UNIVERSO_BUSQUEDA";
		public static const modificacionesColaboradoresCarterasEventoCatClientes_Carteras:String = "MODIFICACIONES_DE_COLABORADORES_CARTERAS";
		public static const modificacionesPrincipalColaboradorCarterasEventoCatClientes_Carteras:String = "MODIFICACIONES_PRINCIPAL_COLABORADOR";
		
		
		//********************************************************************************************************** CLIENTES/OFERTA ***********************************************************************************************************************//
		
		//CONSTANTES PARA EL SERVICIO
		public static const obtenerProveedoresEventoCatClientes_Oferta:String = "OBTENER_PROVEEDORES";
		public static const obtenerInformacionOfertaEventoCatClientes_Oferta:String = "OBTENER_INFORMACION_OFERTA";
		public static const obtenerConfiguracionFamiliaEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACION_FAMILIA";
		public static const obtenerConfiguracionPrecioListaConfiguracionCostoEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACION_PRECIO_LISTA_CONF_COSTO";
		public static const obtenerConfiguracionPrecioListaConfiguracionFamiliaEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACION_PRECIO_LISTA_CONF_FAMILIA";
		public static const guardarFactorClienteServicioEventoCatClientes_Oferta:String = "GUARDAR_FACTOR_CLIENTE_SERVICIO";
		public static const obtenerInformacionDeLaFormulaPrecioEventoCatClientes_Oferta:String = "OBTENER_INFORMACION_DE_LA_FORMULA_PRECIO";
		public static const obtenerTodasfamiliasProveedorClienteEventoCatClientes_Oferta:String = "OBTENER_TODAS_FAMILIAS_PROVEEDOR_CLIENTE";
		public static const obtenerConfiguracionClasificacionEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACION_CLASIFICACION";
		public static const obtenerLosCostosRelacionadosConClasificacionClienteEventoCatClientes_Oferta:String = "OBTENER_LOS_COSTOS_RELACIONADOS_CON_LA_CLASIFICACION_CLIENTE";
		public static const obtenerValoresFormulaClasificacionClasificacionClienteEventoCatClientes_Oferta:String = "OBTENER_VALORES_FORMULA_CLASIFICACION_CLIENTE";
		public static const insertarLaModificacionDatosOfertaEventoCatClientes_General:String = "INSERTAR_LA_MODIFICACION_DATOS_OFERTA";
		public static const restablecerTodasLasConfiguracionesPorNivelEventoCatClientes_Oferta:String = "RESTABLECER_TODAS_CONFIGURACIONES_POR_NIVEL";
		
		// SERIVICIOS QUE SON DE PROVEEDOR
		public static const obtenerConfiguracionPrecioProductoClienteEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACIONES_PRECIO_PRODUCTO_CLIENTE";
		public static const obtenerConfiguracionClasificacionClienteEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACIONES_CLASIFICACION_CLIENTE";
		public static const obtenerConfiguracionPrecioCostoClienteEventoCatClientes_Oferta:String = "OBTENER_CONFIGURACIONES_PRECIO_COSTO_CLIENTE";
		public static const solicitarActualizacionDeLasConfiguracionesClienteEventoCatClientes_Oferta:String ="SOLICITAR_ACTUALIZACION_DE_LAS_CONFIGURACIONES_CLIENTE";
		public static const enviarConfiguracionSeleccionadaClientesEventoCatClientes_Oferta:String ="ENVIAR_CONFIGURACION_SELECCIONADA_CLIENTES";
		
		
		//CONSTANTES PARA USO DE VISTA
		public static const recorreTituloSelecccionadoEventoCatClientes_Oferta:String = "RECORRE_TITULO_SELECCIONADO";
		public static const enviarIdProveedorSeleccionadoEventoCatClientes_Oferta:String = "ENVIAR_ID_PROVEEDOR_SELECCIONADO";
		public static const enviarFechaOfertaSeleccionadoEventoCatClientes_Oferta:String = "ENVIAR_FECHA_OFERTA_SELECCIONADO";
		public static const cambiaNivelenVistaOfertaEventoCatClientes_Oferta:String = "CAMBIA_NIVEL_EN_VISTA_OFERTA";
		public static const abrirPopupActualizarMontoMinimoCompraEventoCatClientes_Oferta:String = "ABRIR_POPUP_ACTUALIZAR_MONTO_MINIMO_COMPRA";
		public static const guardaFactorClienteVistaEventoCatClientes_Oferta:String = "GUARDA_FACTOR_CLIENTE_VISTA";
		
		//********************************************************************************************************** CLIENTES/ESTADISTICAS GENERALES ***********************************************************************************************************************//
		
		public static const consultaLinealEventoCatClientesEstadisticasGenerales:String = "SOLICITAR_LA_CONSULTA_LINEAL";
		public static const obtenerMontosObjetivoEventoCatClientesEstadisticasGenerales:String = "OBTENER_MONTOS_OBJETIVO";
		public static const obtenerEstadisticasGeneralesEventoCatClientesGenerales:String = "OBTENER_ESTADISTICAS_GENERALES"; 
		public static const btnCancelarEventoCatClientesGenerales:String = "CANCELAR_POPUP"; 
		public static const mostrarPopUpEventoCatClientesGenerales:String = "MOSTRAR_POPUP"; 
		public static const limpiarGraficasEventoCatClientesGenerales:String = "LIMPIAR_GRAFICAS"; 

		public static const actualizarNumeroDeServiciosConsultadosEventoCatClientesEstadisticasGenerales:String = "SERVICIOS_CONSULTADOS";
		
		//********************************************************************************************************** CLIENTES/FINANCIEROS ***********************************************************************************************************************//
		
		public static const actualizarCreditoClientesEventoCatClientesFinancieros:String = "ACTUALIZAR_CREDITO_CLIENTES";
		public static const obtenerLasNotasDeCreditoPorClienteCatClientesFinancieros:String = "OBTENER_NOTAS_CREDITO_POR_CLIENTE";
		public static const actualizarFacturacionClientesEventoCatClientesFinancieros:String = "ACTUALIZAR_FACTURACION_CLIENTES";
		public static const insertarLaModificacionDatosFinancierosEventoCatClientes_General:String = "INSERTAR_LA_MODIFICACION_DATOS_FINANCIEROS";
		public static const obtenerElTotalEnNotasDeCreditoPorClienteEventoCatClientes_General:String = "OBTENER_EL_TOTAL_DE_NOTAS_DE_CREDITO_POR_CLIENTE";
		public static const obtenerDireccionPorPaisEventoCatClientesFinancieros:String = "OBTENER_DIRECCION_X_PAIS";
		
		//********************************************************************************************************** CLIENTES/DIRECCIONES ***********************************************************************************************************************//
		
		//SERVICIO
		public static const solicitarHorariosPorDireccionEventoCatClientes_Direcciones:String = "SOLICITAR_HORARIOS_POR_DIRECCION";
		public static const solicitarDireccionesQuePertenecenAlClienteEventoCatClientes_Direcciones:String = "SOLICITAR_DIRECCIONES_DEL_CLIENTE";
		public static const solicitarInformacionDeLaDireccionPorMedioDeCpYPaisEventoCatClientes_Direcciones:String = "SOLICITAR_INFORMACION_PARA_DIRECCION_POR_MEDIO_PAIS_CP";
		public static const actualizarDireccionSeleccionadaEventoCatClientes_Direcciones:String = "ACTUALIZAR_DIRECCION_SELECCIONADA";
		public static const actualizarHorariosDireccionEventoCatClienteS_Direcciones:String = "ACTUALIZAR_HORARIO_DIRECCION";
		public static const obtenerDireccionPorPaisEventoCatClientes_Direcciones:String = "OBTENER_DIRECCION_X_PAIS";
		
		//VISTA
		public static const enviarLasCeldasSeleccionadasParaMostrarLaBarraSeleccionEventoCatClientes_Direcciones:String = "ENVIAR_CELDAS_SELECCIONADAS";
		
		//********************************************************************************************************** CLIENTES/GENERAL ***********************************************************************************************************************//
		
		// EVENTOS SERVICIO
		public static const obtenerClientesHabilitadosEventoCatClientes_General:String = "OBTENER_CLIENTES";
		public static const obtenerClientesDisponiblesEventoCatClientes_General:String = "OBTENER_CLIENTES_DISPONIBLES";
		public static const obtenerClasificacionDeNivelesDeIngresoEventoCatClientes_General:String = "OBTENER_CLASIFICACION_DE_NIVELES_DE_INGRESO";
		
		public static const obtenerObjetivosDeCremientoEventoCatClientes_General:String = "OBTENER_OBJETIVOS_DE_CRECIMIENTO";
		public static const obtenerObjetivosDeCremientoParaVistaEmpresaEventoCatClientes_General:String = "OBTENER_OBJETIVOS_DE_CRECIMIENTO_PARA_VISTA_EMPRESA";
		
		
		public static const obtenerCorporativosClienteEventoCatClientes_General:String = "OBTENER_CORPORATIVOS_CLIENTE";
		public static const guardarClasificacionDeNivelesDeIngresoEventoCatClientes_General:String = "ACTUALIZAR_CLASIFICACION_DE_NIVELES_DE_INGRESO";
		public static const actualizarObjetivosPorNivelesDeIngresoEventoCatClientes_General:String = "ACTUALIZAR_OBJETIVOS_DE_CRECIMIENTO_POR_NIVELES_DE_INGRESO";
		public static const actualizarClientesEventoCatClientes_General:String = "ACTUALIZAR_CLIENTES";
		public static const creaNuevoClienteEventoCatClientes_General:String = "CREA_NUEVO_CLIENTE";
		public static const insertarLaModificacionDatosEventoCatClientes_General:String = "INSERTAR_LA_MODIFICACION_DATOS";
		public static const insertarCorporativoNuevoEventoCatClientes_General:String = "INSERTAR_CORPORATIVO_NUEVO";
		public static const eliminarCorporativoEventoCatClientes_General:String = "ELIMINAR_CORPORATIVO";
		public static const modificarEsacClienteEventoCatClientes_General:String = "MODIFICAR_ESAC_CLIENTE";
		public static const obtenerIndustriasEventoCatClientes_General:String = "OBTENER_INDUSTRIAS";
		public static const obtenerClienteXIdClienteCatClientes_General:String = "OBTENER_CLIENTE_X_ID";
		public static const obtenerComentarioClienteXIdClienteCatClientes_General:String = "OBTENER_COMENTARIO_CLIENTE";
		public static const obtenerDireccionClienteXIdClienteCatClientes_General:String = "OBTENER_DIRECCION_CLIENTE";
		
		public static const obtenerCorporativosPruebaClienteEventoCatClientes_General:String = "OBTENER_CORPORATIVOS_CLIENTE_PRUEBA";
		public static const obtenerDireccionPorPaisEventoCatClientes_General:String = "OBTENER_DIRECCION_X_PAIS";
		public static const enviarCorporativosaCompararEventoCatClientes_General:String = "ENVIAR_CORPORATIVOS_A_COMPARAR";
		
		
		//   EVENTOS VISTA
		
		public static const enviarFuaALaVistaDefaultDeconfiguracionEventoCatClientes_General:String = "ENVIAR_FUA_A_LA_VISTA_DEFAULT_DE_CONFIGURACION";
		public static const cambiaVistaMenuClientesEventoCatClientes_General:String = "CAMBIA_VISTA_MENU_CLIENTES";
		public static const cargaComponenteEventoCatClientes_General:String = "CARGA_COMPONENTE";
		public static const regresarIndiceAnteriorClienteEventoCatClientes_General:String = "REGRESAR_INDICE_ANTERIOR_CLIENTE";
		public static const refrescarClientesEventoCatClientes_General:String = "REFRESCAR_CLIENTES";
		
		public static const enviaClienteEventoCatClientes_General:String = "ENVIA_CLIENTE";
		public static const enviarNumeroContactosEventoCatClientes_General:String = "ENVIAR_NUMERO_CONTACTOS";
		public static const enviarConceptoCorporativoEventoCatClientes_General:String = "ENVIAR_CONCEPTO_CORPORATIVO";
		public static const vendedorModificarCorporativoEventoCatClientes_General:String = "VENDEDOR_A_MODIFICAR_CORPORATIVO";
		public static const envioClientesBuscadosEventoCatClientes_General:String = "ENVIO_CLIENTES_BUSCADOS";
		public static const envioCorporativosBuscadosEventoCatClientes_General:String = "ENVIO_CORPORATIVOS_BUSCADOS";
		public static const obtenerObjetivosNivelIngresoAnterioresEventoCatClientes_General:String = "OBTENER_OBJETIVOS_NIVEL_INGRESO_ANTERIORES";
		public static const obtenerObjetivosNivelIngresoActualesEventoCatClientes_General:String = "OBTENER_OBJETIVOS_NIVEL_INGRESO_ACTUALES";
		public static const cambiarDepthAnimacionEventoCatClientes_General:String = "CAMBIAR_DEPTH_ANIMACION";
		
		//********************************************************************************************************** CLIENTES/CONTACTOS *************************************************************************************************************************************//
		
		public static const obtenerContactosClienteEventoCatClienteContactos:String = "OBTENER_CONTACTOS_CLIENTE";
		public static const editarContactosClienteEventoCarClientesContactos:String = "EDITAR_CONTACTO_SERVICE_CLIENTE";
		public static const eliminarContactoServerClienteEventoCatClientesContactos:String = "ELIMINAR_CONTACTO_SERVER_CLIENTE";
		public static const agregaContactoServiceClienteEventoCatClientesContactos:String = "AGREGA_CONTACTO_SERVICE_CLIENTE";
		public static const insertarLaModificacionDatosContactoEventoCatClientes_General:String = "INSERTAR_LA_MODIFICACION_DATOS_CONTACTO";
		
		public static const modificarContactoVistaClienteEventoCatClientesContactos:String = "MODIFICAR_CONTACTO_VISTA_CLIENTE";
		public static const agregarContactoVistaClienteEventoCatClientesContactos:String = "AGREGAR_CONTACTO_VISTA_CLIENTE";
		public static const eliminarContactoVistaClienteEventoCatClientesContactos:String = "ELIMINAR_CONTACTO_VISTA_CLIENTE";
		
		//********************************************************************************************************** INDICADORES ***********************************************************************************************************************//
		
		//Vista
		public static const recargarDatosEventoCatIndicadores:String = "REFRESCAR_DATOS";
		
		//Servicio
		public static const obtenerEnTienpoEventoCatIndicadores:String = "OBTENER_EN_TIEMPO";
		public static const obtenerIndicadoresEventoCatIndicadores:String = "OBTENER_INDICADORES";
		public static const guardarIndicadorEventoCatIndicadores:String = "GUARDAR_INDICADOR";
		
		//********************************************************************************************************** PROVEEDORES/ACUERDOS ***********************************************************************************************************************//
		
		//EVNTO PARA MODIFICACION
		public static const insertarModificacionEmpresasProveedorEventoCatProAcuerdos:String = "INSERTAR_MODIFICACION_EMPRESAS_PROVEEDOR";
		public static const actualizarInformacionPagoProveedorProveedorEventoCatProAcuerdos:String = "ACTUALIZAR_INFORMACION_PAGO_PROVEEDOR";
		
		
		public static const solicitarInformacionParaPagosDeProveedorEventoCatProAcuerdos:String = "SOLICITAR_INFORMACION_DE_PAGO_PARA_PROVEEDOR";
		public static const solicitarLaRelacionConLasEmpresarPorProveedorEventoCatProAcuerdos:String = "SOLICITAR_LA_RELACION_EMPRESAR_POR_PROVEEDOR";
		public static const solicitarActualizarListaDeEmpresasRelacionadasConElProveedorEventoCatProAcuerdos:String = "SOLICITAR_ACTUALIZAR_LISTA_EMPRESAS_RELACIONADAS_CON_EL_PROVEEDOR";
		
		//********************************************************************************************************** PROVEEDORES/COMERCIALES ***********************************************************************************************************************//
		
		public static const solicitarActualizacionDeLasConfiguracionesEventoAuxiliarEnlaActualizacion:String ="SOLICITAR_ACTUALIZACION_DE_LAS_CONFIGURACIONES";
		
		public static const obtenerMarcasEventoCatProMArcas:String = "OBTENER_MARCAS";
		public static const obtenerMarcasAsociadasEventoCatProMArcas:String = "OBTENER_MARCAS_ASOCIADAS";
		public static const editaAsociacionMarcaEventoCatProMArcas:String = "EDITA_ASOCIACION_MARCA";
		public static const agregarNuevaMarcaEventoCatProMArcas:String = "AGREGAR_NUEVA_MARCA";
		public static const editarMarcaEventoCatProMArcas:String = "EDITAR_MARCA";
		
		public static const editaAsociacionMarcaEnVistaEventoCatProMArcas:String = "EDITA_ASOCIACION_MARCA_ENVISTA";
		public static const editaMarcaEnVistaEventoCatProMArcas:String = "EDITA_MARCA_VISTA";
		
		//constantepara servicio
		public static const obtenerConfiguracionesPrecioCostoEventoCatProOferta:String = "OBTENER_CONFIGURACIONES_PRECIO_COSTO";
		public static const obtenerConfiguracionesPrecioProductoEventoCatProOferta:String = "OBTENER_CONFIGURACIONES_PRECIO_PRODUCTO";
		public static const obtenerConfiguracionesClasificacionEventoCatProOferta:String = "OBTENER_CONFIGURACIONES_CLASIFICACION";
		
		public static const obtenerLosCostosRelacionadosConLaClasificacionEventoCatProOferta:String = "OBTENER_LOS_COSTOS_RELACIONADOS_CON_LA_CLASIFICACION";
		
		public static const obtenerTodasLasFamiliasDelProveedorEventoCatProOferta:String = "OBTENER_TODAS_LAS_FAMILIAS_DEL_PROVEEDOR";
		
		public static const obtenerConfiguracionFamiliaEventoCatProOferta:String = "OBTENER_CONFIGURACION_FAMILIA";
		public static const obtenerConfiguracionPrecioDeListaEventoCatProOferta:String = "OBTENER_CONFIGURACION_PRECIO_LISTA";
		public static const obtenerConfiguracionClasificacionEventoCatProOferta:String = "OBTENER_CONFIGURACION_CLASIFICACION";
		
		
		public static const guardaCostoFactorFamiliaEventoCatProOferta:String = "GUARDA_COSTO_FACTOR_FAMILIA";
		public static const guardaConfiguracionListaEventoCatProOferta:String = "GUARDA_CONFIGURACION_LSITA";
		public static const restablecerEventoCatProOferta:String = "RESTABLECER";
		
		public static const enviarElMontoMinimoDeCompraEventoCatProOferta:String = "ENVIAR_EL_MONTO_MINIMO_DE_COMPRA";
		public static const actualizarPropiedadesDeLaConfiguracionEventoProOferta:String = "ACTUALIZAR_PROPIEDADES_DE_LA_CONFIGURACION"; 
		
		public static const obtenerInformacionDeLaFormulaPrecioEventoCatProOferta:String = "OBTENER_INFORMACION_DE_LA_FORMULA_PRECIO";
		public static const obtenerInformacionDeLaFormulaPrecioClasificacionEventoCatProOferta:String = "OBTENER_INFORMACION_DE_LA_FORMULA_PRECIO_CLASIFICACION";
		public static const obtenerCostoDelProductoALaCompraEventoCatProOferta:String = "OBTENER_EL_COSTO_DEL_PRODUCTO_COMPRA";
		
		public static const restablecerTodasConfiguracionPorNivelEventoCatProOferta:String = "RESTABLECER_TODAS_CONFIGURACIONES_POR_NIVEL";
		
		//vista
		public static const eviarConfiguracionSeleccionadaParaLeerSusPropiedadesEventoCatProOferta:String = "ENVIAR_CONFIGURACION_SELECCIONADA_PARA_LEER_SUS_PROPIEDADES";
		public static const eviarFamiliasOrdenadasParaCinturonEnOtrasVistasEventoCatProOferta:String = "ENVIAR_FAMILIAS_ORDENADAS_PARA_CINTURON_EN_OTRAS_VISTAS";
		public static const recibeConfigDelArbolEventoCatProOferta:String = "RECIBE_CONFIG_DEL_ARBOL";
		public static const cambiaNivelEnVistaOfertaEventoCatProOferta:String = "CAMBIA_NIVEL_EN_VISTA_OFERTA";
		
		public static const abrirPopUpParaVigenciayRestringidoEventoCapProOferta:String = "ABRIR_POPUP_PARA_VIGENCIA_Y_RESTRINGIDO";
		
		public static const enviaSeleccionPopUpEventoCatProOferta:String = "ENVIA_SELECIION_POP_UP";
		public static const recorreTiruloSeleccionadoEventoCatProOferta:String = "RECORRE_TITULO_SELECCIONADO";
		
		public static const guardaCostoFactorVistaEventoCatProOferta:String = "GUARDA_COSTO_FACTOR_VISTA";
		public static const guardaConfiguracionVistaEventoCatProOferta:String = "GUARDA_CONFIGURACION_VISTA";
		
		public static const guardaPrecioPorcentajeEventoCatProOferta:String = "GUARDA_PRECIO_PORCENTAJE";
		
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionOfertaProveedorEventoCatProOferta:String = "INSERTAR_MODIFICACION_OFERTA_PROVEEDOR";
		
		//********************************************************************************************************** PROVEEDORES/EMPRESA ***********************************************************************************************************************//
		
		//constantepara servicio
		public static const obtenerProveedorEventoCatProEmpresa:String = "OBTENER_PROVEEDOR";
		
		//********************************************************************************************************** PROVEEDORES/ESTADISTICAS ***********************************************************************************************************************//
		
		public static const actualizarNumeroDeServiciosConsultadosEventoCatProEstadisticasGenerales:String = "SERVICIOS_CONSULTADOS";
		public static const buscarMontoAcumuladoEventoCatProEstadisticasGenerales:String = "BUSCAR_MONTO_ACUMULADO";
		public static const obtenerObjetivosEventoCatProEstadisticasGenerales:String = "OBTENER_OBJETIVOS";
		
		public static const buscaComparativaGeneralProveedores_EventoCatProEstadisticasGenerales:String = " BUSCA_GRAFICAS_DE_TABLERO_PROVEEDOR";
		
		//********************************************************************************************************** PROVEEDORES/GENERALES ***********************************************************************************************************************//
		public static const cancelarEventoCatProContactos:String = "CANCELAR";
		public static const obtenerContactosEventoCatProContactos:String = "OBTENER_CONTACTOS";
		
		public static const eliminarContactoSolicitudEnServerEventoCatProContactos:String = "ELIMINAR_CONTACTO_SERVER";
		public static const eliminarContactoSolicitudEnVistaEventoCatProContactos:String = "ELIMINAR_CONTACTO_VISTA";
		
		public static const modificarContactoSolicitudEnVistaEventoCatProContactos:String = "MODIFICAR_CONTACTO_VISTA";
		public static const editaContactoEventoSolicitudEnServerCatProContactos:String = "EDITA_CONTACTO_SERVICE";
		
		public static const agregaContactoSolicitudEnServerEventoCatProContactos:String = "AGREGA_CONTACTO_SERVICE";
		public static const agregarContactoSolicitudEnVistaEventoCatProContactos:String = "AGREGAR_CONTANTO_VISTA";
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionContactosProveedorEventoCatProContactos:String = "INSERTAR_MODIFICACION_CONTACTOS_PROVEEDOR";
		
		//SERVICIO
		public static const solicitarHorariosPorDireccionEventoCatProveedores_Direcciones:String = "SOLICITAR_HORARIOS_POR_DIRECCION";
		public static const solicitarDireccionesQuePertenecenAlClienteEventoCatProveedores_Direcciones:String = "SOLICITAR_DIRECCIONES_DEL_CLIENTE";
		public static const solicitarInformacionDeLaDireccionPorMedioDeCpYPaisEventoCatProveedores_Direcciones:String = "SOLICITAR_INFORMACION_PARA_DIRECCION_POR_MEDIO_PAIS_CP";
		public static const actualizarDireccionSeleccionadaEventoCatProveedores_Direcciones:String = "ACTUALIZAR_DIRECCION_SELECCIONADA";
		public static const actualizarHorariosDireccionEventoCatProveedores_Direcciones:String = "ACTUALIZAR_HORARIO_DIRECCION";
		public static const obtenerDireccionPorPaisEventoCatProveedores_Direcciones:String = "OBTENER_DIRECCION_X_PAIS";
		
		//VISTA
		public static const enviarLasCeldasSeleccionadasParaMostrarLaBarraSeleccionEventoCatProveedores_Direcciones:String = "ENVIAR_CELDAS_SELECCIONADAS";
		
		//********************************************************************************************************** PROVEEDORES/EMPRESARIAL  ***********************************************************************************************************************//
		
		//constantepara servicio
		public static const obtenerEmpresasDelGrupoEventoCatalogoGrupoEmpresarial:String = "OBTENER_EMPRESAS_DEL_GRUPO";
		public static const obtenerConceptosEventoCatalogoGrupoEmpresarial:String = "OBTENER_CONCEPTOS";
		public static const obtenerFoliosEventoCatalogoGrupoEmpresarial:String = "OBTENER_FOLIOS";
		public static const guardarFoliosEventoCatalogoGrupoEmpresarial:String = "GUARDAR_FOLIO";
		public static const eliminaConceptosEventoCatalogoGrupoEmpresarial:String = "ELIMINAR_CONCEPTOS";
		public static const eliminaConceptosBDEventoCatalogoGrupoEmpresarial:String = "ELIMINAR_CONCEPTOSBD";
		public static const agregaConceptosEventoCatalogoGrupoEmpresarial:String = "AGREGA_CONCEPTOS";
		public static const asignaTipoFacturaEventoCatalogoGrupoEmpresarial:String = "ASIGNA_TIPO_FACTURA";
		public static const asignaRolesEventoCatalogoGrupoEmpresarial:String = "ASIGNA_ROLES";
		
		//********************************************************************************************************** PROVEEDORES/TECNICOS  ***********************************************************************************************************************//
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionClasificacionProveedorEventoCatProClasificacion:String = "INSERTAR_MODIFICACION_CLASIFICACION_PROVEEDOR";
		
		
		public static const  recorrerFamiliaEnCinturonEventoCatProClasificacion:String = "RECORRER_FAMILIA_EN_CINTURON_DE_ORION";
		public static const  solicitarConceptosDeClasificacionPorFamiliaEventoCatProClasificacion:String = "SOLICITAR_CONCEPTOS_DE_CLASIFICACION_POR_FAMILIA";
		public static const  solicitarModificarConceptoClasificacionEventoCatProClasificacion:String = "SOLICITAR_MODIFICACION_EN_CONCEPTO_CLASIFICACION";
		public static const  agregarActualizarConceptosClasificacionEventoCatProClasificacion:String = "AGREGAR_ACTUALIZAR_CONCEPTOS_CLASIFICACION";
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionLicenciasProveedorEventoCatProLicencias:String = "INSERTAR_MODIFICACION_LICENCIAS_PROVEEDOR";
		
		
		public static const cargaLicenciasEventoCatProLicencias:String = 'CARGAR_LICENCIAS';
		public static const modificarLicenciasEventoCatProLicencias:String = "MODIFICAR_LICENCIAS";
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionProductosProveedorEventoCatProProductos:String = "INSERTAR_MODIFICACION_PRODUCTOS_PROVEEDOR";
		
		
		public static const cargaProductosPorProveedorEventoCatProProductos:String = 'CARGA_PRODUCTOS_POR_PROVEEDOR';
		public static const agregaTipoProductoEventoCatProProductos:String = 'AGREGA_TIPO_PRODUCTO';
		public static const eliminaTipoProductoEventoCatProProductos:String = 'ELIMINA_TIPO_PRODUCTO';
		public static const consultaFUAEventoCatProProductos:String = 'CONSULTA_FUA';
		
		public static const modificaConfiguracionEventoCatProProductos:String = 'MODIFICA_CONFIGURACION';
		
		//********************************************************************************************************** PROVEEDORES/GENERAL  ***********************************************************************************************************************//
		
		//constantepara servicio
		public static const obtenerProveedoresEventoCatProGeneral:String = "OBTENER_PROVEEDORES";
		
		public static const obtenerProductosDesdeProductoEventoCatProGeneral:String = "OBTENER_PRODUCTOS_DESDE_PRODUCTOS";
		
		public static const guardarProveedorEventoCatProGeneral:String = "GUARDAR_PROVEEDOR";
		public static const creaNuevoProveedorEventoCatProGeneral:String = "CREA_NUEVO_PROVEEDOR";
		public static const deshabilitarProveedorEventoCatProGeneral:String = "DESHABILITAR_PROVEEDOR";
		public static const habilitaProveedorEventoCatProGeneral:String = "HABILITA_PROVEEDOR"
		public static const actualizarMonedasCompraVentaDelProveedorEventoCatProGeneral:String = "ACTUALIZAR_MONEDAS_COMPRA_VENTA"
		public static const obtenerListaDeAgentesEventoCatProGeneral:String = "OBTENER_LISTA_DE_AGENTES"
		public static const obtenerListaTipoProductosEventoCatProGeneral:String = "OBTENER_LISTA_TIPO_PRODUCTOS"
		public static const obtenerUniversoAgentesEventoCatProGeneral:String = "OBTENER_UNIVERSO_AGENTES"
		public static const obtenerValoresCompradorEventoCatProGeneral:String = "OBTENER_VALORES_COMPRADOR"
		public static const obtenerValoresPagadorEventoCatProGeneral:String = "OBTENER_VALORES_PAGADOR"
		
		//constantes para vista
		
		public static const enviarProveedorEventoCatProGeneral:String = "ENVIAR_PROVEEDOR";// regresa el provedor al catProMenu para que despues de hacer un focusOut a Empresa este se guarde
		public static const regresaIndiceAnteriorEventoCatProGeneral:String = "REGRESA_INDICE_ANTERIOR"
		public static const cargaComponenteEventoCatProGeneral:String = "CARGA_COMPONENTE"
		public static const muestraBotoneraEventoCatProGeneral:String = "MUESTRA_BOTONERA";
		public static const actualizaProveedoresDeGeneralesEventoCatProContactos:String = "ACTUALIZA_PROVEEDORES_DE_GENERALES"; 
		public static const cambiaVistaMenuProveedoresEventoCatProGeneral:String = "CAMBIA_VISTA_MENU_PROVEEDORES";
		public static const envioProveedoresBuscadosEventoCatProGeneral:String = "ENVIO_PROVEDORES_BUSCADOS";
		public static const envioNumeroContactosEventoCatProGeneral:String = "ENVIAR_NUMERO_CONTACTOS";
		
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificacionGeneralProveedorEventoCatProGeneral:String = "INSERTAR_MODIFICACION_GENERAL_PROVEEDOR";

		
		//********************************************************************************************************** PROVEEDORES/LOGISTICA ***********************************************************************************************************************//
		
		//EVENTO PARA MODIFICACION
		public static const insertarModificarLogisticaProveedorEventoCatProLogistica:String = "INSERTAR_MODIFICACION_LOGISTICA_PROVEEDOR";
		
		
		//SERVICIO
		public static const actualizarLogisticaEventoCatProLogistica:String = "ACTUALIZAR_LOGISTICA_SERVICE";
		public static const obtenerLogisticaProveedorEventoCatProLogistica:String = "OBTENER_LOGISTICA_PROVEEDOR_SERVICE";
		public static const verificarExisteCodigoProductoEventoCatProLogistica:String = "VERIFICAR_EXISTE_CODIGO_PRODUCTO";
		public static const verificarExisteCodigoModificacionFleteEventoCatProLogistica:String = "VERIFICAR_EXISTE_CODIGO_MODIFICACION_FLETE";
		
		//VISTA
		public static const modificarConceptoListaFleteVistaEventoCatProLogisitica:String = "MODIFICAR_CONCEPTO_LISTA_FLETE_VISTA";
		public static const modificarConceptoListaTiempoVistaEventoCatProLogisitica:String = "MODIFICAR_CONCEPTO_LISTA_TIEMPO_VISTA";
			
		//********************************************************************************************************** COMUN/MENU ***********************************************************************************************************************//
		
		public static const itemSeleccionadoEvent:String = "ITEM_SELECCIONADO";
		public static const itemBotonClickEvent:String = "ITEM_BOTONCLICK";
		public static const itemMenuEnCatalogosSeleccionadoEvent:String = "ITEM_SELECCIONADO_MENU_EN_CATALOGOS";
		
		
		//********************************************************************************************************** COMUN/RENDERS ***********************************************************************************************************************//
		
		public static const seleccionarItemRendererPorKeyEventoIRendererListaConEnfoque:String = "SELECCIONAR_ITEM_RENDERER_KEY";
		
		//********************************************************************************************************** COMUN/BUSQUEDACR ***********************************************************************************************************************//
		
		public static const buscarDocumentosPorFolioTodos:String = "BUSCAR_DOCUMENTOS_POR_FOLIO_TODOS";
		/*public static const buscarDocumentoPorFolio:String = "BUSCAR_DOCUMENTOS_POR_FOLIO";*/
		public static const buscarDocumentosRecibidosPorReferencia:String = "BUSCAR_DOCUMENTOS_POR_REF";
		public static const buscarDocumentosXBA:String = "BUSCAR_DOCUMENTOS_POR_BUSQUEDA_AVANZADA";
		public static const buscarCotizacionesPorFecha:String = "BUSCAR_COTIZACIONES_POR_FECHA";
		public static const mostrarHistorialDeSeguimientos:String  = "MOSTRAR_HISTORIAL_DE_SEGUIMIENTOS";
		public static const mostrarConsultaPedidos:String = "MOSTRAR_CONSULTA_PEDIDOS";
		public static const mostrarTiempoProcesoEventoBusquedasCR:String = "MOSTRAR_TIEMPO_PROCESO"
		
		//********************************************************************************************************** COMUN/COMBO CATALOGOS ***********************************************************************************************************************//
		
		public static const busquedaProveedoresEventoComboCatalogos:String = "BUSQUEDA_PROVEEDORES";
		public static const busquedaProveedoresPorTipoEventoComboCatalogos:String = "BUSQUEDA_PROVEEDORES_POR_TIPO";
		public static const busquedaProveedoresPorRolEventoComboCatalogos:String = "BUSQUEDA_PROVEEDORES_POR_ROL";
		public static const busquedaClientesEventoComboCatalogos:String = "BUSQUEDA_CLIENTES";
		public static const busquedaClientesUsuarioLogueadoEventoComboCatalogos:String = "BUSQUEDA_CLIENTES_USUARIO_LOGUEADO";
		public static const busquedaClientesEstadoEventoComboCatalogos:String = "BUSQUEDA_CLIENTES_ESTADO";
		public static const busquedaProductosEventoComboCatalogos:String = "BUSQUEDA_PRODUCTOS";
		public static const busquedaProcesosEventoComboCatalogos:String = "BUSQUEDA_PROCESOS";
		public static const busquedaSubProcesosEventoComboCatalogos:String = "BUSQUEDA_SUBPROCESOS";
		public static const busquedaEmpleadosActivosEventoComboCatalogos:String = "BUSQUEDA_EMPLEADOS_ACTIVOS";
		public static const busquedaEmpleadosPorTipoEventoComboCatalogos:String = "BUSQUEDA_EMPLEADOS_POR_TIPO_TABLERO";
		public static const busquedaMarcasEventoComboCatalogos:String = "BUSQUEDA_MARCAS";
		public static const busquedaContactoPorProveedorEventoComboCatalogos:String = "BUSQUEDA_CONTACTO_POR_PROVEEDOR";
		public static const busquedaEmpleadosPorTableroEventoComboCatalogos:String = "BUSQUEDA_EMPLEADOS_POR_TIPO";
		public static const busquedaEmpleadosSolamentePorTipoEventoComboCatalogos:String = "BUSQUEDA_EMPLEADOS_SOLAMENTE_POR_TIPO";
		public static const busquedaPaisesEventoComboCatalogos:String = "BUSQUEDA_PAISES";
		public static const busquedaUnidadesEventoComboCatalogos:String = "BUSQUEDA_UNIDADES";
		public static const busquedaRutasEventoComboCatalogos:String = "BUSQUEDA_RUTAS";
		public static const busquedaCuentasBancoEventoComboCatalogos:String = "BUSQUEDA_CUENTAS_BANCO";
		public static const busquedaBancosClientesEventoComboCatalogos:String = "BUSQUEDA_BANCOS_CLIENTES";
		
		public static const busquedaNivelIngresoEventoComboCatalogos:String = "BUSQUEDA_NIVEL_INGRESO";
		
		
		public static const busquedaCatalogoProductosComboCatalogos:String = "BUSQUEDA_CATALOGO_PRODUCTOS";
		public static const BusquedaTiemposEntregaEventoComboCatalogos:String = "BUSQUEDA_TIEMPOS_ENTREGA";
		public static const busquedaCatalogoCategoriaComboAsistencia:String = "BUSQUEDA_CATALOGO_CATEGORIA_ASISTENCIA";
		public static const busquedaCatalogoDepartamentoComboAsistencia:String = "BUSQUEDA_CATALOGO_DEPARTAMENTO_ASISTENCIA";
		public static const busquedaCatalogoAreaComboAsistencia:String = "BUSQUEDA_CATALOGO_AREA_ASISTENCIA";
		public static const busquedaCatalogoTipoChecadaComboAsistencia:String = "BUSQUEDA_CATALOGO_TIPO_CHECADA_ASISTENCIA";
		public static const busquedaCatalogoTrabajadorComboAsistencia:String = "BUSQUEDA_CATALOGO_TRABAJADOR_ASISTENCIA";
		public static const busquedaCatalogoTipoIncidenciaComboAsistencia:String = "BUSQUEDA_CATALOGO_TIPO_INCIDENCIA_ASISTENCIA";
		public static const solicitarAgentesAduanalesEventoComboCatalogos:String = "SOLICITAR_AGENTES_ADUANALES";
		public static const solicitarConceptosDeUnLugarAgenteAduanalEventoComboCatalogos:String = "SOLICITAR_CONCEPTOS_DE_UN_LUGAR_AGENTE_ADUANAL";
		public static const solicitarCondicionesDePagoEventoComboCatalogos:String = "SOLICITAR_CONDICIONES_PAGO_PROVEEDOR";
		public static const solicitarBancosPagoProveedorEventoComboCatalogos:String = "SOLICITAR_BANCOS_PAGO_PROVEEDOR";
		public static const busquedaEmpresasEventoComboCatalogos:String = "BUSQUEDA_EMPRESAS";
		public static const busquedaCorporativosEventoComboCatalogos:String = "BUSQUEDA_CORPORATIVOS";
		public static const busquedaComproEmpresasEventoComboCatalogos:String = "BUSQUEDA_COMPRO_EMPRESAS";
		public static const busquedaDistribuidoresEventoComboCatalogos:String = "BUSQUEDA_DISTRIBUIDORES";
		public static const busquedaAgenteAduanalesEventoComboCatalogos:String = "BUSQUEDA_AGENTE_ADUANALES";
		public static const busquedaTipoProductosEventoComboCatalogos:String = "BUSQUEDA_TIPO_PRODUCTOS";
		public static const busquedaEsacConNombresCarteraEventoComboCatalogos:String = "BUSQUEDA_ESAC_CON_NOMBRES_CARTERA";
		
		public static const avisaLlegadaContactosEventoComboCatalogos:String = "AVISA_LLEGADA_CONTACTOS";
		public static const avisaLegadaDatosEventoComboCatalogos:String = "AVISA_LLEGADA_DATOS";
		public static const solicitarInspectoresComboCatalogos:String = "SOLICITAR_INPECTORES";
		
		//********************************************************************************************************** COMUN/GRAFICA PIEPQNET ***********************************************************************************************************************//
		
		public static const cambioInformacionGraficaEvento:String = "CAMBIO_INFORMACION_GRAFICA";
		public static const muestraInformacionGeneralGrafica:String = "MUESTRA_INFORMACION_GENERAL_GRAFICA";
		
		//********************************************************************************************************** CONSULTAS/ASISTENCIA ***********************************************************************************************************************//
		
		public static const buscarAsistenciaxColaboradorConsultaAsistencia:String = "BUSCAR_ASISTENCIAS_COLABORADOR";
		public static const buscarRapidoAsistenciaxColaboradorConsultaAsistencia:String = "BUSCAR_RAPIDO_ASISTENCIAS_COLABORADOR";
		
		//Constante para vista
		public static const cambiaIndiceEventoConsultaAsistencia:String = "CAMBIA_INDICE";
		public static const obtenerBusquedaListaAsistenciaConsultaAsistencia:String = "OBTENER_BUSQUEDA_LISTA_ASISTENCIA";
		public static const generarGraficasConsultaAsistencia:String = "GENERAR_GRAFICAS_ASISTENCIA";
		public static const setIndiceGraficasConsultaAsistencia:String = "SET_INDICE_GRAFICAS";
		public static const getCambiosGridConsultaAsistencia:String = "GET_CAMBIOS_GRID";
		
		//********************************************************************************************************** CONSULTAS/COMPRAS ***********************************************************************************************************************//
		
		//constante para servicios
		
		public static const obtenerConsultaCobrosEventoConsultaCobros:String = "OBTENER_CONSULTA_COBROS";
		public static const obtenrHistorialFacturaEventoConsultaCobros:String = "OBTENER_HISTORIAL_FACTURA";
		public static const obtenerLineaDTiempoEventoConsultaCobros:String = "OBTENER_LINEA_DTIEMPO";
		public static const obtenerInspectorEventoConsultaCobros:String = "OBTENER_INSPECTOR_ENTREGA";
		public static const obtenerInspectorRevisionEventoConsultaCobros:String = "OBTENER_INSPECTOR_REVISION";
		public static const obtnerInspectorCobrosEventoConsultaCobros:String = "OBTENER_INSPECTOR_COBROS";
		public static const obtenerTotalesCobrosEventoConsultaCobros:String = "OBTENER_TOTALES_COBROS";
		public static const obtenerTotalesPasadoCobrosEventoConsultaCobros:String = "OBTENER_TOTALES_COBROS_PASADO";
		public static const obtenerTotalesPostpasadoCobrosEventoConsultaCobros:String = "OBTENER_TOTALES_COBROS_POSTPASADO";
		
		//cosntante para vistas
		public static const mostrarOcultarTabGraficasEventoConsultaCobros:String = "MOSTRAR_OCULTAR_TAB_GRAFICAS";
		public static const cambiarIndiceEventoConsultaCobros:String = "CAMBIA_INDICE";
		public static const obtenerInspectorFacturacionEventoConsultaCobros:String = "OBTENER_INSPECTOR_FACTURACION";
		public static const obtenerInfoEntregaEventoConsultaCobros:String = "OBTENER_INFO_ENTREGA";
		public static const obtenerInfoRevisionEventoConsultaCobros:String = "OBTENER_INFO_REVISION";
		public static const obtenerInfoCobroEventoConsultaCobros:String = "OBTENER_INFO_COBRO";
		public static const listaVaciaEventoConsultaCobros:String = "LISTA_VACIA";
		public static const vistaFentregaFrevisionEventoConsultaCobros:String = "VISTA_FENTREGA_FREVISION";
		public static const obtnerInfoCobradaEventoConsultaCobros:String = "OBTNER_INFO_COBRADA";
		public static const obtnerInfoCanceladaEventoConsultaCobros:String = "OBTENER_INFO_CANCELADA";
		public static const obtenerInfoRefacturadaEventoConsultaCobros:String = "OBTENER_INFO_REFACTURADA";
		public static const obtnerFacturaSeleccionadaEventoConsultaCobros:String = "OBTENER_FACTURA_SELECCIONADA";
		public static const pasarCondicionesATotalesIndividualesEventoConsultaCobros:String = "COPIAR_CONDICIONES_A_TOTALES_INDIVIDUALES";
		public static const pasarInfoAETvsFTSecundariaEventoConsultaCobros:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		public static const mostrarLaGraficaSeleccionadaEventoConsultaCobros:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const obtenerFiltroParaGraficosSecundarioEventoConsultaCobros:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const settearCurrentVistaSelectedEventoConsultaCobros:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoConsultaCobros:String = "ACTUALIZAR_VISTA_ACTUAL";
		public static const escucharCambiosMenuCobros:String="ESCUCHARCAMBIOSMENUCOBROS";
		
		public static const obtenerProveedoresEventoConsultaCompras:String = "OBTENER_PROVEEDORES";
		public static const obtenerPComprasEventoConsultaCompras:String = "OBTENER_PCOMPRAS";
		public static const obtenerTiempodeProcesoComprasEventoConsultaCompras:String = "OBTENER_TIEMPO_PROCESO_COMPRAS";
		public static const obtenerHistorialComprasEventoConsultaCompras:String = "OBTENER_HISTORIAL_COMPRAS";
		
		//constantepara servicio
		public static const obtenerComprasEventoConsultasCompraNuevo:String = "OBTENER_COMPRAS";
		public static const obtenerGraficasXComprasEventoConsultasCompraNuevo:String = "OBTENER_GRAFICA_X_COMPRAS";
		public static const obtenerTiempoProcesoEventoConsultasCompraNuevo:String = "OBTENER_TIEMPO_PROCESO";
		public static const obtenerInfoGraficasEventoConsultaComprasNuevo:String = "OBTENER_INFO_GRAFICAS";
		public static const obtenerTotalesComprasEventoConsultaComprasNuevo:String = "OBTENER_TOTALES_COMPRAS";
		public static const obtenerTotalesComprasPasadoEventoConsultaComprasNuevo:String = "OBTENER_TOTALES_PASADO";
		public static const obtenerTotalesComprasPosPasadoEventoConsultaComprasNuevo:String = "OBTENER_TOTALES_POSPASADO";
		
		//constantes para vista
		public static const settearValoresDeLaBusquedaActualEventoConsultaComprasNuevo:String = "SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL";
		public static const settearCurrentVistaSelectedEventoConsultaComprasNuevo:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoConsultaComprasNuevo:String = "ACTUALIZAR_VISTA_ACTUAL";
		
		public static const mostrarPedidoGeneralEventoConsultaComprasNuevo:String = "MOSTRAR_DATOS_COMPRA_GENERAL";
		public static const cambiaIndiceMenuEventoConsultaComprasNuevo:String = "CAMBIA_INDICE_MENU";
		public static const muestraEnGeneralesEventoConsultaComprasNuevo:String = "MUESTRA_EN_GENERALES";
		public static const mostrarOcultarTabInfoGraficasEventoConsultaComprasNuevo:String = "MOSTRAR_OCULTAR_TAB_INFO_GRAFICAS";
		public static const mostrarSelectedGraficaEventoConsultaComprasNuevo:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const obtnerFiltroGraficoSecundarioEventoConsultaComprasNuevo:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const pasarInfoAETvsFTSecundariaEventoConsultaComprasNuevo:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		
		//constantepara servicio
		public static const buscaPagosPorfolioEventoConsultaPagos:String = "BUSCA_PAGOS_POR_FOLIO";
		public static const buscaPagosInterfacturacionEventoConsultaPagos:String = "BUSCA_PAGOS_INTERFACTURACION";
		public static const obtenerResumenPagosEventoConsultaPagos:String = "OBTENER_RESUMEN_PAGOS";
		
		//constantepara para vistas
		public static const mostrarOcultarTabGraficasEventoConsultaPagos:String = "MOSTRAR_OCULTAR_TAB_GRAFICAS";
		public static const settearValoresDeLaBusquedaActualEventoConsultaPagos:String = "SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL";
		public static const settearCurrentVistaSelectedEventoConsultaPagos:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoConsultaPagos:String = "ACTUALIZAR_VISTA_ACTUAL";
		public static const mostrarLaGraficaSeleccionadaEventoConsultaPagos:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const pasarInformacionAGraficaETvsFTSecundariaEventoConsultaPagos:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		
		public static const obtnerFiltroGraficoSecundarioEventoConsultaPagos:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const obtenerPagosConsultaPagos:String = "OBTENER_PAGOS";
		public static const cambiarIndiceEventoConsultaPagos:String = "CAMBIA_INDICE";
		public static const obtenerPagosInfoPagos:String = "OBTENER_INFO_PAGOS";
		public static const obtenerTiempoProcesoPagosConsultaPagos:String = "OBTENER_TIEMPO_PROCESO_PAGOS";
		public static const obtenerInformacionGeneralesPagosConsultaPagos:String = "OBTENER_INFO_GENERALES_PAGO";
		public static const limpiarHistorialPagosConsultaPagos:String = "LIMPIAR_HISTORIAL_CONSULTA_PAGOS";
		public static const mostrarCargarFacturaSinFacturaConsultaPagos:String = "MOSTRAR_CARGAR_FACTURA_SIN_FACTURA_PAGOS";
		
		//********************************************************************************************************** CONSULTA/COMUN ***********************************************************************************************************************//
		
		public static const obtenerClientesConsultaAvisoDeCambios:String = "OBTENER_CLIENTES";
		public static const obtenerProveedoresConsultaAvisoDeCambios:String = "BUSCAR_PROVEEDORES";
		public static const filtroAvisoDecambios:String = "FILTRO_AVISO_DE_CAMBIOS";
		public static const obtenerDatosGraficaAvisoDeCambios:String = "OBTENER_DATOS_GRAFICA_AC";
		public static const cambiarViewStackAvisoDeCambios:String = "CAMBIAR_VIEW_STACK";
		public static const obtenerDatosClickGraficaAvisoDeCambios:String = "OBTENER_DATOS_CLICK_GRAFICA";
		public static const buscarDocumentoPorFolioEventoDocumentosRecibidos:String = "BUSCAR_DOCUMENTOS_POR_FOLIO";
		public static const buscarDocumentosPorBusquedaAvanzadaEventoDocumentoRecibido:String = "BUSCAR_DOCUMENTOS_POR_BUSQUEDA_AVANZADA";
		public static const obtenerEmpleadosEventoDocumentoRecibido:String = "OBTENER_EMPLEADOS";
		
		//funcionalidad vista
		public static const mostrarOcultarInfoGraficasEventoDocumentoRecibido:String = "MOSTRAR_OCULTAR_INFO_GRAFICAS";
		public static const mostrarSelectedGraficaEventoDocumentoRecibido:String = "MOSTRAR_SELECTED_GRAFICA";
		//public static const CONTROL_GRAFICO:String = "controlGraficoEventoDocumentoRecibido";
		public static const obtnerFiltroGraficoSecundarioEventoDocumentoRecibido:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const obtnerInfoGraficoSecundarioEventoDocumentoRecibido:String = "OBTENER_INFO_GRAFICO_SECUNDARIO";
		public static const obtnerUpdateGraficoEventoDocumentoRecibido:String = "OBTENER_UPDATE_GRAFICO";
		public static const pasarInfoAETvsFTSecundariaEventoDocumentoRecibido:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		public static const settearCurrentVistaSelectedEventoDocumentoRecibido:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoDocumentoRecibido:String = "ACTUALIZAR_VISTA_ACTUAL";
		
		public static const ObtenerClienteConsultaFacturacion:String = "OBTENER_CLIENTES";
		public static const ObtenerBusquedaAvanzadaConsultaFacturacion:String = "OBTENER_BUSQUEDA_AVANZADA";
		
		public static const consultaLlamadasEventoConsultaLLamada:String = "CONSULTA_LLAMADAS";
		
		//funcionalidad vista
		public static const mostrarOcultarTabGraficasEventoConsultaLlamadas:String = "MOSTRAR_OCULTAR_TAB_GRAFICAS";
		public static const mostrarSelectedGraficaEventoConsultaLlamadas:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const obtenerFiltroGraficoSecundarioEventoConsultaLlamadas:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const obtenerInfoGraficoSecundarioEventoConsultaLlamadas:String = "OBTENER_INFO_GRAFICO_SECUNDARIO";
		public static const controlGraficoEventoConsultaLlamadas:String = "CONTROL_GRAFICO";
		public static const pasarInfoAETvsFTSecundariaEventoConsultaLlamadas:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		
		public static const cambiaViewStack:String = "CAMBIA_VIEW_STACK";
		public static const obtnerClienteReporteNotificados:String = "OBTENER_CLIENTE";
		public static const obtenerEmpleadosReporteNotificados:String = "OBTENER_EMPLEADO";
		public static const obtenerNotificadosReporteNotificados:String = "OBTENER_NOTIFICADOS";
		public static const obtenerHistorialNotificadosReporteNotificados:String = "OBTENER_HISTORIAL_NOTIFICADOS";
		
		//********************************************************************************************************** CONSULTA/DESPACHOS ***********************************************************************************************************************//
		
		public static const consultaEntregasEventoConsultaEntregas:String = "CONSULTA_ENTREGAS"; 
		public static const consultaTiempoProcesoEventoConsultaEntregas:String = "CONSULTA_TIEMPO_PROCESO"; 
		public static const muestraHistorialEventoConsultaEntregas:String= "MUESTRA_HISTORIAL";
		public static const consultaRutasEventoConsultaEntregas:String = "CONSULTA_RUTAS";
		public static const muestraHistorialEjecucionEventoConsultaEntregas:String= "MUESTRA_HISTORIAL_EJECUCION";
		public static const obtenComparativasEventoConsultaEntregas:String = "OBTEN_COMPARATIVAS";
		public static const obtenComparativasPasadoEventoConsultaEntregas:String = "OBTEN_COMPARATIVAS_PASADO";
		public static const obtenComparativasPosPasadoEventoConsultaEntregas:String = "OBTEN_COMPARATIVAS_POSPASADO";
		public static const obtenTresGraficasEventoConsultaEntregas:String = "OBTEN_TRES_GRAFICAS";
		
		public static const mostrarSelectedGraficaEventoConsultaEntregas:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const muestraBotonGraficasEventoConsultaEntregas:String = "MUESTRA_BOTON_GRAFICAS";
		public static const muestraColumnasEventoConsultaEntregas:String = "MUESTRA_COLUMAS";
		public static const settearValoresDeLaBusquedaActualEventoConsultaEntregas:String = "SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL";
		public static const settearCurrentVistaSelectedEventoConsultaEntregas:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoConsultaEntregas:String = "ACTUALIZAR_VISTA_ACTUAL";
		public static const obtenerValoresGraficaETvsFTEventoConsultaEntregas:String = "OBTENER_VALORES_GRAFICA_ETVSFT";
		
		//CONSTANTES DE VISTA
		public static const pasarInfoAGraficaETvsFTSecundariaEventoConsultaEntregas:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		
		public static const consultaPermisosEventoConsultaPermisos:String = 'CONSULTA_PERMISOS';
		public static const consultaGraficasEventoConsultaPermisos:String = 'CONSULTA_GRAFICAS';
		public static const consultaPermisosRapidaEventoConsultaPermisos:String = 'CONSULTA_PERMISOS_RAPIDA';
		public static const consultaHistorialEventoConsultaPermisos:String = 'CONSULTA_HISTORIAL';
		public static const consultaGeneralesEventoConsultaPermisos:String = 'CONSULTA_GENERALES';
		
		public static const consultaPermisoDetalladoEventoConsultaPermisos:String = "CONSULTA_PERMISO_DETALLADO";
		public static const cambiaIndiceEventoConsultaPermisos:String = "CAMBIA_INDICE";
		public static const transportaDatosTotalesEventoConsultaPermisos:String = "TRNASPORTA_DATOS_PARA_TOTALES";		
		
		public static const mostrarSelectedGraficaEventoConsultaPermisos:String = 'MOSTRAR_SELECTED_GRAFICA';
		public static const obtenerTotalesPorPeriodoEventoConsultaPermisos:String = 'OBTENER_TOTALES_POR_PERIODO';
		
		public static const obtenerTotalesPorPeriodoPasadoEventoConsultaPermisos:String = 'OBTENER_TOTALES_POR_PERIODO_PASADO';
		public static const obtenerTotalesPorPeriodoPostpasadoEventoConsultaPermisos:String = 'OBTENER_TOTALES_POR_PERIODO_POSTPASADO';
		
		public static const validaIndiceEventoConsultaPermisos:String = 'VALIDA_INDICE';
		
		public static const desbloqueaEventoConsultaPermisos:String = 'DESBLOQUEA'
		
		//********************************************************************************************************** CONSULTA/DOCUMENTOS ENVIADOS ***********************************************************************************************************************//
		
		public static const busquedaRapidaEventoConsultaDocumentosEnviados:String="BUSQUEDA_RAPIDA";
		public static const busquedaAvanzadaEventoConsultaDocumentosEnviados: String ="BUSQUEDA_AVANZADA";
		
		//********************************************************************************************************** CONSULTA/FINANZAS FACTURACION ***********************************************************************************************************************//
		
		//constantepara servicio
		/*public static const mostrarListaFacturasAvanzadaEventoConsultaFacturacion2013:String = "MOSTRAR_LISTA_FACTURAS_AVANZADA";
		public static const buscarFacturasFolioEventoConsultaFacturacion2013:String = "BUSCAR_FACTURAS_FOLIO";
		public static const mostrarConsultaPanelMenuEventoConsultaFacturacion2013:String = "MOSTRAR_CONSULTA_PANEL_MENU";
		public static const mostrarConsultaPanelFacturasEventoConsultaFacturacion2013:String = "MOSTRAR_CONSULTA_PANEL_FACTURAS";
		public static const mostrarLineaTiempoEventoConsultaFacturacion2013:String = "MOSTRAR_LINEA_TIEMPO";
		public static const mostrarLineaTiempoPrepagoEventoConsultaFacturacion2013:String = "MOSTRAR_LINEA_TIEMPO_PREPAGO";
		public static const mostrarDetallesFacturacionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_FACTURACION";
		public static const mostrarDetallesEntregaEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_ENTREGA";
		public static const mostrarDetallesRevisionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_REVISION";
		public static const mostrarDetallesCobradaEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_COBRADA";
		public static const mostrarDetallesFacturarRemisionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_FACTURAR_REMISION";
		public static const mostrarDetallesRefacturacionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_REFACTURACION";
		public static const mostrarDetallesCancelacionEventoConsultaFacturacion2013:String = "MOSTRAR_DETALLES_CANCELACION";
		public static const mostrarDetallesSolicitudConsultaFacturacion2013:String = "MOSTRAR_DETALLES_SOLICITUD";
		public static const mostrarFacturaResumenEventoConsultaFacturacion2013:String = "MOSTRAR_FACTURA_RESUMEN";
		public static const consultaHistorialPrepagoEventoConsultaFacturacion2013:String = "CONSULTAR_HISTORIAL_PREPAGO";
		public static const consultaProformaPrepagoEventoConsultaFacturacion2013:String = "CONSULTAR_PROFORMA_PREPAGO";
		public static const consultarFacturasFueraSistemaEventoConsultaFacturacion2013:String= "CONSULTA_FACTURAS_FUERA_LINEA";
		public static const buscarFacturasFolioFueraSistemaEventoConsultaFacturacion2013:String = "BUSCAR_FACTURAS_FOLIO_FUERA_SISTEMA";
		
		//constantes para vista
		public static const mostrarOcultarTabInfoGraficasEventoConsultaFacturacion2013:String = "MOSTRAR_OCULTAR_TAB_INFO_GRAFICAS";
		public static const cambiaIndiceMenFacturacionEventoConsultaFacturacion2013:String = "CAMBIA_INDICE_MENU_FACTURACION";
		public static const traspasarDatosFacturacionEventoConsultaFacturacion2013:String = "TRASPASAR_DATOS_FACTURACION";
		public static const traspasarDatosEntregaEventoConsultaFacturacion2013:String = "TRASPASAR_DATOS_ENTREGAS";
		public static const traspasarDatosCobroEventoConsultaFacturacion2013:String = "TRASPASAR_DATOS_COBRO";
		public static const enviarDatosFacturaFporEventoConsultaFacturacion2013:String = "ENVIAR_DATOS_FACTURA_FPOR";
		public static const enviarInfoRefacturacionEventoConsultaFacturacion2013:String = "ENVIAR_INFO_REFACTURACION";
		public static const enviarInfoRevisionEventoConsultaFacturacion2013:String = "ENVIAR_INFO_REVISION";
		public static const escucharCambiosMenu:String="ESCUCHARCAMBIOSMENU";
		public static const informarSiLaBusquedaEsRapidaOAvanzadaConsultaFacturacion2013:String="INFORMAR_SI_BUSQUEDA_ES_RAPIDA_O_AVANZADA";*/
		
		//********************************************************************************************************** CONSULTA/NOTA CREDITO ***********************************************************************************************************************//
		
		public static const cambiaIndiceEventoConsultaNotaDeCredito:String = "CAMBIA_INDICE";
		public static const buscarNotaDeCreditoConsultaNotaDeCredito:String = "BUSCAR_NOTA_CREDITO";
		public static const busquedaRapidaNotaDeCreditoConsultaNotaDeCredito:String = "BUSCAR_RAPIDO_NOTA_CREDITO";
		public static const setBotoneraNotaDeCredito:String = "SET_BOTONERA_NOTA_CREDITO";
		public static const setIndiceGraficaConsultaNotaDeCredito:String = "SET_INDICE_GRAFICA";
		public static const getCambiosGridConsultaNotaDeCredito:String = "GET_CAMBIOS_GRID";
		public static const generarGraficasConsultaNotaDeCredito:String = "GENERAR_GRAFICAS_NOTA_CREDITO"
		
		//********************************************************************************************************** CONSULTA/VENTAS ***********************************************************************************************************************//
		
		//Vista
		public static const cambiarIndiceEventoConsultaConfirmacion:String = "CAMBIA_INDICE";
		public static const configurarInicioEsperaEventoConsultaConfirmacion:String = "CONFIGURAR_ESPERA";
		public static const mostrarOcultarTabGraficasEventoConsultaConfirmacion:String = "MOSTRAR_OCULTAR_TAB_GRAFICAS";
		
		//Servicio
		public static const obtenerTopCotPharmaEventoConsultaConfirmacion:String = "OBTENER_TOP_COTPHARMA";
		public static const buscarDocumentoPorFolioEventoConsultaConfirmacion:String = "BUSCAR_DOCUMENTOS_POR_FOLIO";
		
		public static const buscarCotizacionesPorFechaEventoConsultaCotizaciones:String = "BUSCAR_COTIZACIONES_POR_FECHA";
		public static const buscarDocumentoPorFolio:String = "BUSCAR_DOCUMENTOS_POR_FOLIO";
		public static const obtenerPartidaCotizacionEventoConsultaCotizaciones:String = "OBTENER_PARTIDA_COTIZACION";
		public static const mostrarHistorialEventoConsultaCotizaciones:String  = "MOSTRAR_HISTORIAL";
		public static const mostrarTiempoProcesoEventoConsultaCotizaciones:String = "MOSTRAR_TIEMPO_PROCESO";
		public static const obtenerInfoSeguimientoEventoConsultaCotizacion:String = "OBTENER_INFO_SEGUIMINETO";
		public static const obtenerResumenCotizacionGraficasEventoConsultaCotizacion:String = "OBTENER_RESUMEN_COTIZACION_GRAFICAS";
		public static const obtenerCosnultaTotalesEventoConsultaCotizacion:String = "OBTENER_CONSULTA_TOTALES";
		public static const obtenerCosnultaTotalesPasadoEventoConsultaCotizacion:String = "OBTENER_CONSULTA_TOTALES_PASADO";
		public static const obtenerCosnultaTotalesPosPasadoEventoConsultaCotizacion:String = "OBTENER_CONSULTA_TOTALES_POSPASADO";
		
		public static const obteenrInfoGraficaPorCoTizacionEventoConsultaCotizacion:String = "OBTENER_INFO_GRAFICA_X_COTIZACION"
		
		//constantes para funciones de vista
		public static const settearValoresDeLaBusquedaActualEventoConsultaCotizaciones:String = "SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL";
		public static const settearCurrentVistaSelectedEventoConsultaCotizaciones:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoConsultaCotizaciones:String = "ACTUALIZAR_VISTA_ACTUAL";
		
		public static const visualizarCotEventoConsultaCotizaciones:String = "VISUALIZAR_COT";
		public static const cambiaIndiceEventoConsultaCotizaciones:String = "CAMBIA_INDICE";
		public static const muestraHistorialEventoConsultaCotizaciones:String = "MUESTRA_HISTORIAL";
		public static const itemTiempoCotizacionEventoConsultaCotizacion:String = "ITEM_TIEMPO_COTIZACION";
		public static const tipoMonedaCotizacionEventoConsultaCotizacion:String = "TIPO_MONEDA";
		public static const inspectorCotizacionEventoConsultaCotizacion:String = "INSPECTOR_COTIZACION_TIEMPO_PROCESO";
		public static const obtenerBusquedaProductoEventoConsultaCotizacion:String = "OBTENER_BUSQUEDA_PRODUCTO";
		public static const totalPiezasCotizacionEventoConsultaCotizacion:String = "TOTAL_PIEZAS_COTIZACION";
		public static const obtenerSCSNCEventoConsultaCotizaciones:String = "OBTENER_SC_SNC";
		public static const obtenerIdPcotizaEventoCosnultaCotizacion:String = "OBTENER_ID_PCOTIZA";
		public static const obetenerFecahaDeRegistroEventoConsultaCotizacion:String = "OBTENER_FECHA_DE_REGISTRO";
		public static const obtenerClasificacionOrigenEventoConsultaCotizacion:String = "OBTENER_CLASIFICACION_ORIGEN";
		public static const obtenerVieneDeEventoConsultaCotizacion:String = "OBTENER_LISTA_CLIENTES";
		public static const mostrarOcultarTabInfoGraficasEventoConsultaCotizacion:String = "MOSTRAR_OCULTAR_TAB_INFO_GRAFICAS";
		public static const obtenerConsultaTotalesPeriodoEventoConsultaCotizacion:String = "OBTENER_CONSULTA_TOTALES_PERIODO";
		public static const obtenerInfoGraficasSecundariasEventoConsultaCotizacion:String= "OBTENER_INFO_GRAFICAS_SECUNDARIAS";
		public static const obtenerInfoGraficasAltaProductoEventoConsultaCotizacion:String= "OBTENER_INFO_GRAFICAS_ALTA_PRODUCTO";
		public static const mostrarSelectedGraficaEventoConsultaCotizacion:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const obtnerFiltroGraficoSecundarioEventoConsultaCotizacion:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const controlGraficoEventonEventoConsultaCotizacion:String = "CONTROL_GRAFICO";
		public static const pasarInfoAETvsFTSecundariaEventoConsultaCotizacion:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		
		/*public static const obtenerClientesConsultaPedidos:String = "OBTENER_CLIENTES";
		public static const obtenerPPedidosConsultaPedidos:String = "OBTENER_PPEDIDOS";
		public static const obtenerHistorialAvisoCambiosConsultaPedidos:String = "OBTENER_HISTORIAL_AVISO_CAMBIOS";*/
		public static const obtenerTiempoProcesoConsultaPedidos:String = "OBTENER_TIEMPO_PROCESO";
		
		public static const buscarPedidosResultantesEventoConsultaPedidosNuevo:String = "BUSCAR_PEDIDOS_RESULTANTES"; 
		public static const obtenerClientesConsultaPedidos:String = "OBTENER_CLIENTES";
		public static const obtenerPPedidosConsultaPedidos:String = "OBTENER_PPEDIDOS";
		public static const obtenerHistorialAvisoCambiosConsultaPedidos:String = "OBTENER_HISTORIAL_AVISO_CAMBIOS";
		public static const obtenerTiempoProcesoEventoConsultaPedidosNuevo:String = "OBTENER_TIEMPO_PROCESO";	
		public static const obtenerTiempoProcesoEtiquetaEventoConsultaPedidosNuevo:String = "OBTENER_TIEMPO_PROCESO_ETIQUETA";	
		public static const buscarDocumentoPorFolioEventoConsultaPedidosNuevo:String = "BUSCAR_DOCUMENTOS_POR_FOLIO";
		public static const obtenerGeneralesEventoConsultaPedidosNuevo:String = "OBTENER_GENERALES";
		public static const obtenerInfoGraficaEventoConsultaPedidosNuevo:String = "OBTENER_INFO_GRAFICA";	
		public static const obtenerInfoGraficasSecundariasEventoConsultaPedidosNuevo:String = "OBTENER_INFO_GRAFICA_SECUNDARIAS";
		public static const obtenerInfoGraficasXPedidoEventoConsultaPedidosNuevo:String = "OBTENER_INFO_GRAFICA_X_PEDIDO";	
		public static const mostrarOcultarInfoGarficasEventoConsultaPedidosNuevo:String = "MOSTRAR_OCULTAR_INFO_GRAFICAS";
		public static const obtenerTotalesPorPeridoEventoConsultaPedidosNuevo:String = "OBTENER_TOTALES_POR_PERIODO";
		public static const obtenerProformaEventoConsultaPedidosNuevo:String = "OBTENER_PROFORMA";
		
		//funcionalidad
		
		public static const cambiarIndiceEventoConsultaPedidosNuevo:String = "CAMBIA_INDICE";
		public static const mostrarSelectedGraficaConsultaPedidosNuevo:String = "MOSTRAR_SELECTED_GRAFICA";
		public static const obtnerObjetoTotalesXPeriodoFinicioFfinConsultaPedidosNuevo:String = "OBTENER_OBJETO_TOTALES_X_PERIODO";
		public static const obtenerTotalesPorPeriodoPasadoConsultaPedidosNuevo:String = "OBTENER_TOTALES_POR_PERIODO_PASADO";
		public static const obtenerTotalesPorPeriodoPosPasadoConsultaPedidosNuevo:String = "OBTENER_TOTALES_POR_PERIODO_POSPASADO";		
		public static const obtnerFiltroGraficoSecundarioEventoConsultaPedidoNuevo:String = "OBTENER_FILTRO_GRAFICO_SECUNDARIO";
		public static const obtenerComponenteEnvioActivoEventoConsultaPedidoNuevo:String = "OBTNER_COMPONENTE_ENVIO_ACTIVO";
		public static const actualizarGraficasSecundariasEventoConsultaPedidoNuevo:String = "ACTUALIZAR_GRAFICAS_SECUNDARIAS";
		public static const pasarInfoAETvsFTSecundariaEventoConsultaPedidoNuevo:String = "PASAR_INFO_A_ETVSFT_SECUNDARIA";
		public static const settearValoresDeLaBusquedaActualEventoConsultaPedidoNuevo:String = "SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL";
		public static const settearCurrentVistaSelectedEventoConsultaPedidoNuevo:String = "SETTEAR_CURRENT_VISTA_SELECTED";
		public static const actualizarVistaActualEventoConsultaPedidoNuevo:String = "ACTUALIZAR_VISTA_ACTUAL";
		
		//********************************************************************************************************** EVENTO ***********************************************************************************************************************//
		
		/*Servicio*/
		public static const obtenerParticipantesRegistroEventoEventoProquifa:String = "OBTENER_PARTICIPANTES_REGISTRO_EVENTO";
		public static const guardarCambiosDataGridEventoEventoProquifa:String = 'GUARDA_CAMBIOS_DATAGRID_EVENTO';
		public static const guardarARegistradoEventoEventoProquifa:String = 'GUARDAR_A_REGISTRADO_EVENTO';
		public static const eliminarAPreRegistradoEventoEventoProquifa:String = 'ELIMINAR_A_PREREGISTRADO_EVENTO';
		public static const obtenerGanadorEventoProquifaEventoProquifa:String = 'OBTENER_GANADOR_EVENTO_PROQUIFA';
		public static const obtenerListaEventosEventoProquifa:String = 'OBTENER_LISTA_EVENTOS_PROQUIFA';
		/*Vista*/
		public static const enviarBotonPulsadoConsultaEventoEventoProquifa:String = 'ENVIAR_BOTON_PULSADO_CONSULTA_EVENTO';
		public static const enviarBotonPulsadoEditarEventoEventoProquifa:String = 'ENVIAR_BOTON_PULSADO_EDITAR_EVENTO';
		public static const enviarBotonPulsadoGuardarEventoEventoProquifa:String = 'ENVIAR_BOTON_PULSADO_GUARDAR_EVENTO';
		
		public static const pulsoCancelarEnPopUpEventoEventoProquifa:String = 'PULSO_CANCELAR_POPUP_EVENTO';
		public static const pulsoRegistrarEnPopUpEventoEventoProquifa:String = 'PULSO_REGISTRAR_POPUP_EVENTO';
		public static const pulsoEliminarEnPopUpEventoEventoProquifa:String = 'PULSO_ELIMINAR_POPUP_EVENTO';
		
		public static const EscucharParaPopUpEventoEventoProquifa:String = 'ESCUCHAR_PARA_POPUP_EVENTO';
		public static const EscucharEliminarParaPopUpEventoEventoProquifa:String = 'ESCUCHAR_ELIMINAR_PARA_POPUP_EVENTO';
		
		public static const evniarCadenaTextoSearchEventoEventoProquifa:String = 'ENVIAR_CADENA_TEXTO_SEARCH_EVENTO';
		public static const cambiarVistaGraficaExpoEvento:String = 'CAMBIAR_VISATA_GRAFICA_EXPO_EVENTO';
		public static const exportarGridEventoEventoProquifa:String = 'EXPORTAR_GRID_EVENTO';
		
		public static const sinEfectoEventoProquifa:String = 'SIN_EFECTO_EVENTO';
		public static const cambiaVistaRegistroBusquedaClieteEventoEventoProquifa:String = 'CAMBIA_VISTA_REGISTRO_BUSQUEDA_CLIENTE';
		public static const limpiarTextoBusquedaExpoEventoEventoProquifa:String = 'LIMPIAR_TEXTO_BUSQUEDA_EXPO_EVENTO';
		
		/*PopUpExpoFarma*/
		
		/*EnVista*/
		public static const escuchaCheckrutasEventoEventoProquifa:String = "ESCUCHA_CHECK_RUTAS";
		public static const cancelaDireccionContactoPopUpEventoEventoProquifa:String = "CANCELA_DIRECCIONES_CONTACTO_POUP";
		public static const recibeDireccionSeleccionadaEventoEventoProquifa:String = "RECIBE_DIRECCION_SELECCIONADA";
		public static const cancelaDatosContactoPopUpEventoEventoProquifa:String = "CANCELA_DATOS_CONTACTO_POUP";
		public static const cierraPopUpCuestionarioExpoFarmaEventoEventoProquifa:String = "CIERRA_POPUP_CUESTIONARIO_EXPO_FARMA";
		public static const limpiaBusquedaDesdeCuestionarioEventoEventoProquifa:String = "LIMPIA_BUSQUEDA_CONTACTO_DESDE_CUESTIONARIO";
		public static const muestraNuevoClienteEventoEventoProquifa:String = "MUESTRA_NUEVO_CLIENTE";
		public static const recibeDatosContactoPopUpEventoEventoProquifa:String = "RECIBE_DATOS_CONTACTO_POUP";
		public static const seleccionaContactoEventoEventoProquifa:String = "SELECCIONA_CONTACTO";
		public static const muestraVistaEventoEventoProquifa:String = "MUESTRA_VISTA";
		public static const cancelaPartidaRequisicionEventoEventoProquifa:String = "CANCELA_PARTIDA_REQUISICION";
		public static const recibePartidaRequisicionEventoEventoProquifa:String = "RECIBE_PARTIDA_REQUISICION";
		public static const editaPartidaRequisicionEventoEventoProquifa:String = "EDITA_PARTIDA_REQUISICION";
		/*MapaEVReqMovil*/
		public static const cargarDireccionClienteEventoEventoProquifa:String = "CARGAR_DIRECCIONES_CLIENTE";
		public static const guardaContactoNuevoEventoEventoProquifa:String = "GUARDA_CONTACTO_NUEVO";
		public static const editaContactoEventoEventoEventoProquifa:String = "EDITAR_CONTACTO_EXPO_MED";
		public static const editaContactoEventoEventoProquifa:String = "EDITA_CONTACTO";
		public static const cargarTodosLosContactosHabilitadosEventoEventoProquifa:String = "CARGAR_TODOS_LOS_CONTACTOS_HABILITADOS";
		public static const cargarContactosEventoEventoProquifa:String = "CARAGAR_CONTACTOS";
		public static const limpiaIdContactoEventoEventoProquifa:String = "LIMPIA_ID_CONTACTO";
		public static const obtenerInfoGraficosExpoMedEventoEventoProquifa:String = "OBTENER_INFO_GRAFICOS_EXPO_MED";
		public static const mandarCuetionarioExpoMedEventoEventoProquifa:String = "MANDAR_CUESTIONARIO_EXPO_MED";
		public static const cargarEsacAleatoriamenteEventoEventoProquifa:String = "CARGA_ESAC_ALEATORIAMENTE";
		public static const guardaClienteNuevoEventoEventoProquifa:String = "GUARDA_CLIENTE_NUEVO";
		public static const limpiaIdClienteEventoEventoProquifa:String = "LIMPIA_ID_CLIENTE";
		public static const obtenerInfoGraficosExpofarmaEventoEventoProquifa:String = "OBTENER_INFO_GRAFICOS_EXPOFARMA";
		public static const registroExpoFarmaEventoEventoProquifa:String = "REGISTRO_EXPO_FARMA";
		public static const registrarEnExpoMedEventoEventoProquifa:String = "REGISTRO_EXPO_MED";
		public static const generaRequisicionEventoEVReqMovil:String = "GENERA_REQUISICION";
		
		
		/*Cuestionario ExpoFarma 2013*/
		/*EnVista*/
		public static const avisaPregunta2ExpoFarmaregistroExpoEventoEventoProquifa:String = "AVISA_PREGUNTA_2_FARMA";
		public static const avisaPreguntaClinicaExpoFarmaregistroExpoEventoEventoProquifa:String = "AVISA_PREGUNTA_CLINICA";
		public static const avisaPreguntaAlimentosExpoFarmaregistroExpoEventoEventoProquifa:String = "AVISA_PREGUNTA_ALIMENTOS";
		public static const avisaPreguntaAlimentos2ExpoFarmaregistroExpoEventoEventoProquifa:String = "AVISA_PREGUNTA_ALIMENTOS2";
		/*MapaEVReqMovil*/
		public static const guardaExpoFarmaClinicaEventoEventoProquifa:String = "GUARDA_EXPORFARMA_CLINICA";
		public static const guardaExpoFarmaAlimentosEventoEventoProquifa:String = "GUARDA_EXPORFARMA_ALIMENTOS";
		public static const guardaExpoFarmaEventoEventoProquifa:String = "GUARDA_EXPORFARMA";
		
		//********************************************************************************************************** INCIDENTES ***********************************************************************************************************************//
		
		public static const traerAccionesEvent:String = "TRAER_ACCIONES";
		public static const obtenerAccionEvent:String = "OBTENER_ACCION";
		public static const acttualizarAccionEvent:String = "ACTUALIZAR_ACCION"
		public static const ejecutarAccionEvent:String = "EJECUTAR_ACCION";
		public static const eliminarReferencia:String = "ELIMINAR_REFERENCIA";
		public static const actualizaAccionYreferenciasEventoAccion:String = "ACTUALIZA_ACCION_Y_REFERENCIAS";
		public static const iravistaeventoAdministrador:String = "IR_A_VISTA";
		public static const regresaravistaeventoAdministrador:String = "REGRESAR_A_VISTA"
		public static const cierraPopUpRefrenciaseventoAdministrador:String = "CIERRA_POP_UP_REFERENCIAS";
		public static const cierraPopUpRefrenciaseventoAdministradorVP:String = "CIERRA_POP_UP_REFERENCIASAVP";
		public static const regresaListaReferenciaseventoAdministrador:String = "REGRESA_LISTA_REFERENCIAS";
		public static const regresaOrigeneventoAdministrador:String = "REGRESA_ORIGEN";
		public static const regresarListaReferenciaseventoAdministrador:String = "REGRESAR_LISTA_REFRENCIAS";
		public static const cargaClientesEnElComboAnalisisIncidente:String = "CARGA_CLIENTES_EN_ELCOMBO";
		public static const cargaProveedoresEnElComboAnalisisIncidente:String = "CARGA_PROVEEDORES_EN_ELCOMBO";
		public static const cargaOrigenEnElComboAnalisisIncidente:String = "CARGA_ORIGEN_EN_ELCOMBO";
		public static const cargarCatalogoPorIdEmpresaAnalisisIncidente:String = "CARGA_CATALOGO_POR_ID_EMPRESA";
		public static const cargaProductoPorNombreAnalisisIncidente:String = "CARGA_PRODUCTO_POR_NOMBRE";
		public static const cargaProcedimientosSGCAnalisisIncidente:String = "CARGAR_PROCEMIENTOS_SGC";
		
		public static const regresaListaProcedimientosAnalisisIncidente:String = "REGRESA_LISTA_PROCEDIMIENTOS";
		public static const regresaListaReferenciasAnalisisIncidente:String = "REGRESA_LISTA_REFERENCIAS";
		public static const regresaListaReferenciasDecisionAnalisisIncidente:String = "REGRESA_LISTA_REFERENCIAS_DECISION";
		public static const regresaIdEmpresaAnalisisIncidente:String = "REGRESA_ID_EMPRESA";
		public static const regresaIdProductoAnalisisIncidente:String = "REGRESA_ID_PRODUCTO";
		public static const regresaValoresPopProveedoresAnalisisIncidente:String = "REGRESA_VALORES_POP_PROVEEDORES";
		
		public static const cierraProcedimientosAnalisisIncidente:String = "CIERRA_POP_UP_PROCEDIMIENTOS";	
		public static const cierraPopUpReferenciasAnalisisIncidente:String = "CIERRA_POP_UP_REFERENCIAS";
		public static const registraAnalisisIncidente:String = "REGISTRA_ANALISIS_INSIDENTE";
		public static const guardaAnalisisIncidenteAnalisisincidente:String = "GUARDA_ANALISIS_INCIDENTE";
		public static const actualizaAnalisisEventoAnalisisincidente:String = "ACTUALIZA_ANALISIS_INCIDENTE";	
		public static const verificaProductoEventoAnalisisincidente:String = "VERIFICA_PRODUCTO";
		public static const cargaGestionEventoAnalisisincidente:String = "CARGA_GESTION";
		public static const cargaGestionEnDecisionEventoAnalisisincidente:String = "CARGA_GESTION_EN_DECISION";
		public static const obtenerGerentePilotoEventoAnalisisincidente:String = "OBTENER_GERENTE_PILOTO"; 
		public static const validaGestionExistenteEventoAnalisisincidente:String = "VALIDA_GESTION_EXISTENTE";
		public static const validaDecisionExistenteEventoAnalisisincidente:String = "VALIDA_DECISION_EXISTENTE";
		public static const traerCostosNoCalidadEvent:String = "TRAER_COSTOS_NO_CALIDAD";
		public static const detalleCostosNoCalidadEvent:String = "DETALLE_COSTOS_NO_CALIDAD";
		public static const traerColaboradoresEvent:String = "TRAER_COLABORADORES";
		public static const cargaListaPendientesGestionPendientes:String = "CARGA_LISTA_DE_INCIDENTES";
		public static const obtenEmpleadoPorIdGestionPendiente:String = "OBTEN_EMPLEADO_POR_ID";
		public static const cargaListaContactosGestionIncidente:String = "CARGA_LISTA_CONTACTOS_GESTION_INCIDENTE";
		public static const redireccionarIncidenteGestionIncidente:String = "REDIRECCIONAR_INCIDENTE";
		
		public static const avanzaAListadoIncidentesGestionIncidente:String = "AVANZA_A_LISTADO_INCIDENTES";
		public static const avanzaAAnalisisIncidenteGestionIncidente:String = "AVANZA_A_ANALISIS_INCIDENTE";
		public static const avanzaAGestionIncidenteGestionIncidente:String = "AVANZA_A_GESTION_INCIDENTE";
		public static const avanzaADecisionIncidenteGestionIncidente:String = "AVANZA_A_DECISION_INCIDENTE";
		
		public static const seleccionaUbicacionInc:String = "SELECCIONA_UBICACION_INCIDENTE";
		
		public static const regresaAListadoIncidentesGestionIncidente:String = "REGRESA_A_LISTADO_INCIDENTES";
		public static const regresaAAnalisisIncidenteGestionIncidente:String = "REGRESA_A_ANALISIS_INCIDENTE";
		public static const regresaAGestionIncidenteGestionIncidente:String = "REGRESA_A_GESTION_INCIDENTE";
		
		public static const gestionarIncidente:String = "CAMBIA_A_GESTIONAR_INCIDENTE";
		public static const cargaGestionEventoGestionIncidente:String = "CARGA_GESTION";
		public static const seleccionaUbicacionIncidenteEventoGestionIncidente:String = "CARGA_GESTION_UBICACION";
		public static const cargaIncidentePorIdIncidenteEventoGestionIncidente:String = "CARGA_INCIDENTE_POR_ID_INCIDENTE";
		public static const cargaMarcadoresPorIdUsuarioEventoGestionIncidente:String = "CARGA_MARCADORES_POR_ID_USUARIO";
		
		public static const resetEventoGestionIncidente:String = "RESET";
		public static const resetARegistroIncidenteEventoGestionIncidente:String = "RESET_A_REGISTRO_INCIDENTE";
		
		public static const guardaCambioDeOrigenEventoGestionIncidente:String = "GUARDA_CAMBIO_DE_ORIGEN";
		public static const guardaListaMarcadoresEventoGestionIncidente:String = "GUARDA_LISTA_MARCADORES";
		
		public static const borrarIncidenteMultipleOrigenGestionIncidente:String = "BORRAR_INCIDENTE_MULTIPLE_ORIGEN";
		public static const obtnerUbicacionDropEventoGestionIncidente:String = "OBTENER_UBICACION_DROP";
		public static const obtenerLineaDTiempoxIncidente:String= "OBTENER_LINEA_DE_TIEMPO_X_INCIDENTE";
		public static const cerrarPopUpRegistroIncidenteEventoIncidente:String = "CERRAR_POP_UP_REGISTRO_INCIDENTE";
		public static const cerrarPopUpReferenciasIncidenteEventoIncidente:String = "CERRAR_POP_UP_REFERENCIAS_INICIDENTE";
		public static const recibirArrayCollectionDeReferenciasIncidenteEventoIncidente:String = "RECIBIR_ARRAY_COLLECTION_DE_REFERENCIAS_INCIDENTE";
		public static const recibirArrayCollectionDeReferenciasIncidenteVerificacionEventoIncidente:String = "RECIBIR_ARRAY_COLLECTION_DE_REFERENCIAS_INCIDENTE_VERIFICACION";
		public static const recibirArrayCollectionDeReferenciasIncidenteAccionEventoIncidente:String = "RECIBIR_ARRAY_COLLECTION_DE_REFERENCIAS_INCIDENTE_ACCIONES";
		public static const registrarIncidenteEventoIncidente:String = "REGISTRA_INCIDENTE";	
		public static const resetEventoIncidente:String = "RESET";
		public static const cerrarComponenteEventoIncidente:String= "CERRAR_COMPONENTE";
		public static const eventoAsociadoPonderacion:String = "EVENTO_ASOCIADO_PONDERACION";
		public static const eventoAsociadoRechazado:String = "EVENTO_ASOCIADO_RECHAZADO";
		public static const eventoAsociadoCancelar:String = "EVENTO_ASOCIADO_CANCELAR";
		public static const eventoAsociadoRegistrar:String = "EVENTO_ASOCIADO_REGISTRAR";
		public static const eventoAsociadoTermino:String = "EVENTO_ASOCIADO_TERMINO";
		public static const cambiaEstadoEventoIncidenteConsulta:String = "CAMBIA_ESTADO";
		public static const realizaBusquedaConsultaEventoIncidenteConsulta:String = "REALIZA_BUSQUEDA_CONSULTA";
		public static const cambiaADetalleEventoIncidenteConsulta:String	= "CAMBIA_A_DETALLE";
		public static const regresaAlGridEventoIncidenteConsulta:String = "REGRESA_AL_GRID";
		public static const consultaIncidentePorIDEventoIncidenteConsulta:String = "CONSULTA_INCIDENTE_POR_ID";
		public static const cierraReferenciasEventoIncidenteConsulta:String = "CIERRA_REFERENCIAS";
		public static const cargaGestionEventoIncidenteConsulta:String = "CARGA_GESTION";
		public static const cierraPopUpDetalleEventoIncidenteConsulta:String = "CIERRA_POP_UP_DETALLE";
		public static const consultaAccionesEventoIncidenteConsulta:String = "CONSULTA_ACCIONES";
		public static const consultaPonderacionEventoIncidenteConsulta:String = "CONSULTA_PONDERACION";
		public static const consultaHistorialIncidenteEventoIncidenteConsulta:String = "CONSULTA_HISTORIAL_INCIDENTE";
		public static const avanzaAAccionEvendtoIncidenteDecision:String = "AVANZA_A_ACCION";
		public static const guardaDecisionEvendtoIncidenteDecision:String = "GUARDA_DECISION";
		public static const seleccionaUbicacionEventoIncidenteDecision:String = "SELECCIONA_UBICACION";
		public static const consultausuariosEventoIncidenteDecision:String = "CONSULTA_USUARIOS";
		public static const registrarAccionsEventoIncidenteDecision:String = "GUARDAR_ACCIONES";
		public static const consultarAccionsEventoIncidenteDecision:String = "CONSULTAR_ACIONES";
		public static const consultarAccionsLecturaEventoIncidenteDecision:String = "CONSULTAR_ACIONES_LECTURA";
		public static const regresarListaREferenciasEventoIncidenteProgramarAccion:String = "REGRESAR_LISTA_REFRENCIA";
		public static const actualizaReferenciasEventoIncidenteProgramarAccion:String = "ACTUALIZA_REFERENCIAS";
		public static const cerrarPopUpReferenciasEventoIncidenteProgramarAccion:String = "CERRAR_POP_UP_REFERENCIAS";
		public static const actualizaAnalisisEventoIncidenteProgramarAccion:String = "ACTUALIZA_ANALISIS_INCIDENTE";	
		public static const finalizarAccionEventoIncidenteProgramarAccion:String = "FINALIZAR_ACCION";
		public static const validaProgramacionExistenteEventoIncidenteProgramarAccion:String = "VALIDA_PROGRAMACION_EXISTENTE";
		public static const consultaGestionEventoIncidenteRechazado:String = "CONSULTA_GESTION";
		public static const cargaListaIncidentesEventoIncidenteRechazado:String = "CARGA_LISTA_DE_INCIDENTES";
		public static const cambiaHijoEventoIncidenteRechazado:String = "CAMBIA_HIJO";
		public static const guardaParcialmenteEventoIncidenteRechazado:String = "GUARDA_PARCIALMENTE";
		public static const aeptaRechazadoEventoIncidenteRechazado:String = "ACEPTA_RECHAZADO";
		public static const seleccionaRegistroIncidenteEventoIncidenteRechazado:String = "SELECCIONA_REGISTRO_INCIDENTE";
		public static const actualizaReferenciasEventoIncidenteRechazado:String = "ACTUALIZA_REFERENCIAS";
		public static const cargaDatosTopGraficasTableroIncidente:String = "OBTENER_DATOS_TOP_GRAFICAS";
		public static const traerPonderacionEvent:String = "TRAER_PONDERACION";
		public static const obtenerPonderacionEvent:String = "OBTENER_PONDERACION";
		//public static const PASAR_ACCIONES_PONDERACION:String = "pasarAccionesPonderacionEvent";
		
		public static const traerPonderacionconIncidenteEvent:String = "TRAER_PONDERACION_CON_INCIDENTE";
		
		public static const traerImplicadosPonderacionEvent:String = "TRAER_IMPLICADOS_PONDERACION";
		public static const traerColaboradoresPonderacionEvent:String = "TRAER_COLABORADORES_PONDERACION";
		public static const obtenerTodosColaboradoresPonderacionEvent:String = "OBTENER_TODOS_COLABORADORES_PONDERACION";
		
		public static const actualizarPonderacionEvent:String = "ACTUALIZAR_PONDERACION";
		public static const regresarEficienciaPonderacionEvent:String = "REGRESAR_EFICIENCIA_PONDERACION";
		
		//public static const MODIFICAR_IMPLICADOS_PONDERACION:String = "modificarImplicadosPonderacionEvent";
		
		public static const borrarListaReferenciaEventoReferenciaIncidente:String = "BORRAR_LISTA_REFERENCIA";
		public static const totalReferenciasEventoReferenciaIncidente:String = "TOTAL_REFERENCIAS";
		public static const enviarReferenciasEventoReferenciaIncidente:String = "ENVIAR_REFERENCIAS";
		public static const cargaListaReferenciaEventoReferenciaIncidente:String = "CARGA_LISTA_REFERENCIA";
		public static const cargaLineaDTiempo:String = "REFERENCIA_LINEA_DTIEMPO";
		public static const obtenerIdIncidenteEventoReferenciaIncidente:String = "OBTENER_ID_INCIDENTE";
		public static const resetEventoReferenciaIncidente:String = "RESET";
		public static const reformulaIncidenteEventoReformulaIncidente:String = "REFORMULA_INCIDENTE";
		public static const actualizarReformulacionEventoReformulacionIncidente:String = "ACTUALIZAR_REFORMULACION";
		public static const registraReformulacionEventoReforualcionIncidente:String = "REGISTRAR_REFORMULACION";
		public static const registraReformulacionParaIncidenteEventoReformualcionIncidente:String = "REGISTRAR_REFORMULACION_PARA_INCIDENTE";
		public static const traerIncidentesEvent:String = "TRAER_INCIDENTES";
		public static const traerIncidentesPorUsuarioEvent:String = "TRAER_INCIDENTES_POR_USUARIO";
		public static const traerVerificacionEvent:String = "TRAER_VERIFICACION";
		public static const obtenerVerificacionEvent:String = "OBTENER_VERIFICACION";
		public static const actualizarVerificacionEvent:String = "ACTUALIZAR_VERIFICACION";
		public static const ejecutarVerificacionEvent:String = "EJECUTAR_VERIFICACION";
		public static const eliminarVerificacionEvent:String = "ELIMINAR_REFERENCIA";
		public static const pruebaVerificacionEvent:String = "PRUEBA";		
		public static const traerVerificacionModoLecturaEventoVerificacion:String = "TRAER_VERIFICACION_MODO_LECTURA";
		public static const traerVerificacionParaReferenciasEventoVerificacion:String = "TRAER_VERIFICACION_PARA_REFERENCIAS";
		
		//********************************************************************************************************** REGISTRO WEB ***********************************************************************************************************************//
		
		public static const altaRegistroWebEventoSeminario:String = "ALTA_REGISTRO_WEB";
		public static const clientesWebEventoSeminario:String = "PRUEBA_COMBO_CLIENTES_REGISTRO_WEB";
		
		//********************************************************************************************************** REPORTES ***********************************************************************************************************************//
		
		public static const buscarProductoAlmacenAvanzadaEventoRepProAlmacen2012:String = "BUSCAR_PRODUCTO_ALMACEN_AVANZADA";
		public static const regresaProductoPorFechaEventoRepProAlmacen2012:String = "REGRESA_PRODUCTO_POR_FECHA";
		public static const obtenerProductoPorFechaGraficoEventoRepProAlmacen2012:String = "OBTENER_PRODUCTO_POR_FECHA_GRAFICO";
		public static const enviarProductosSigVistaEventoRepProAlmacen2012:String = "ENVIAR_PRODUCTOS_SIG_VISTA";
		public static const enviarPedidoSigVistaEventoRepProAlmacen2012:String = "ENVIAR_PEDIDOS_SIG_VISTA";
		public static const obtenerPartidasEventoRepProAlmacen2012:String = "OBTENER_PARTIDAS_SIG_VISTA";
		public static const obtenerPartidasSiguienteVistaEventoRepProdAlmacen2012:String = "OBTENER_PARTIDAS_SIGUIENTE_VISTA";
		public static const obtenerInfoGeneralEventoRepProAlmacen2012:String = "OBTENER_INFO_GENERAL"
		public static const buscarProductoAlmacenRapidaPorPedidoEventoRepProAlmacen2012:String = "BUSCAR_PRODUCTO_ALMACEN_RAPIDA_POR_PEDIDO";
		public static const enviarEtiquetaEventoRepProAlmacen2012:String = "ENVIAR_ETIQUETA";
		/////////////////////////////////////////////////////////////
		
		
		public static const cambiaViewStackEventoRepProAlmacen2012:String = "CAMBIA_VIEW_STACK";
		public static const obtenerProductoAlmacenEventoRepProAlmacen2012:String = "OBTENER_PRODUCTO_ALMACEN";
		public static const obtenerProductoAlmacenStockEventoRepProAlmacen2012:String = "OBTENER_PRODUCTO_ALMACEN_STOCK";
		/*	public static const OBTENER_PRODUCTO_ALMACEN_CHACHE:String = "obtenerProductoEnCacheAlmacenEventoRepProAlmacen2012";*/
		
		public static const obtenerDatosGraficaEventoBusquedaProdAlmacen:String="OBTENER_DATOS_GRAFICA";
		public static const obtenerFiltroProductosEventoBusquedaProdAlmacen:String ="OBTENER_FILTRO_PRODUCTOS";
		public static const obtenerProductosParaGridEventoBusquedaProdAlmacen:String ="OBTENER_PRODUCTOS_PARA_GRID";
		public static const obtenerInspectorPorFDEventoBusquedaProdAlmacen:String = "OBTENER_INSPECTOR_POR_FD";
		public static const obtenerDatoBotonEventoBusquedaProdAlmacen:String = "OBTENER_DATO_BOTON";
		public static const obtenerPromedioTimepoBusquedaProdAlmacen:String = "OBTENER_PROMEDIO_TIEMPO";
		public static const cambiaIndiceEventoBusquedaProdAlmacen:String = "CAMBIA_INDICE";
		public static const enviarBotonBarraEventoBusquedaProdAlmacen:String = "ENVIAR_BOTON_BARRA";
		public static const contadorPorFechaEventoBusquedaProdAlmacen:String = "CONTADOR_POR_FECHA";
		public static const filtroComboBoxEventoBusquedaProdAlmacen:String = "FILTRO_COMBO_BOX";
		public static const limpiarPanelTresReporteProductoAlmacen:String = "LIMPIAR_PANEL_TRES";
		
		
		public static const buscarProductoAlmacenRapidaPorFolioDespachoEventoRepProAlmacen2012:String = "BUSCAR_PRODUCTO_ALMACEN_RAPIDA_POR_FOLIO_DESPACHO";
		public static const obtenerTipoBusquedaEventoBusquedaProdAlmacen:String = "ENVIAR_TIPO_BUSQUEDA_A_PANELS";
		
		public static const buscarFuncionEmpleadoRepProdAlamacen2012:String = "BUSCAR_FUNCION_EMPLEADO_REPORTE_ALMACEN";
		
		
		//NUEVAS CONSTANTES
		public static const filtrarComprasEnVistaEventoReporteProductoAlmacen:String =  "FILTRAR_PRODUCTOS_VISTA";
		public static const settearFiltrosParaBusquedaEventoReportProductoAlmacen:String = "SETTEAR_FILTROS_PARA_BUSQUEDA";
		
		public static const EnviarPedidosSiguienteVistaColumnaDosReporteProductosAlmacen2012:String = "ENVIAR_PEDIDOS_SIGUIENTE_VISTA_COLUMNA_DOS";
		public static const obtenerMontosBotoneraRepProdAlamacen2012Menu:String = "BUSCAR_MONTO_BOTONERA";
		public static const obtenerPermisosUniversoEventoReporteDePermisos:String = "OBTENER_UNIVERSO_PERMISOS";
		
		//Para vista
		public static const filtrarPermisosVistaEventoReporteDePermisos:String = "FILTRAR_PERMISOS_VISTA";
		public static const tiposDeSolicitudPermisoEventoReporteDePermisos:String = "TIPOS_DE_SOLICITUD_DE_PERMISO_POR_PROVEEDOR";	
		public static const obtenerLotesPorProveedorEventoReporteDePermisos:String = "OBTENER_LOTES_POR_PROVEEDOR";	
		public static const obtenerProductosPorTipoDeSolicitudPermisoEventoReporteDePermisos:String = "OBTENER_PRODUCTOS_POR_TIPO_DE_SOLICITUD_PERMISO";
		public static const obtenerProductosPorLotePermisoEventoReporteDePermisos:String = "OBTENER_PRODUCTOS_POR_LOTE_PERMISO";
		public static const obtenerInformeProductoEventoReporteDePermisos:String = "OBTENER_INFORME_PRODUCTO";
		
		public static const obtenerMonnitoreoDeLaSolicitudReporteDePermisos:String = "OBTENER_MONITOREO_DE_LA_SOLICITUD";
		
		public static const settearFiltrosParaBusquedaEventoReporteDePermisos:String = "SETTEAR_FILTROS_PARA_BUSQUEDA";
		public static const buscarProductoAlmacenAvanzadaEvento:String = "BUSCAR_PRODUCTO_ALMACEN_AVANZADA";
		/*public static const cambiaViewStack:String = "CAMBIA_VIEW_STACK";*/
		public static const obtenerProductoAlmacenEventoBusquedaProductoAlmacen:String = "OBTENER_PRODUCTO_ALMACEN";
		public static const obtenerClientesEventoProductoAlmacen:String = "OBTENER_CLIENTES";
		
		/*public static const obtenerDatosGraficaEventoBusquedaProdAlmacen:String="OBTENER_DATOS_GRAFICA";
		public static const obtenerFiltroProductosEventoBusquedaProdAlmacen:String ="OBTENER_FILTRO_PRODUCTOS";
		public static const obtenerProductosParaGridEventoBusquedaProdAlmacen:String ="OBTENER_PRODUCTOS_PARA_GRID";
		public static const obtenerInspectorPorFDEventoBusquedaProdAlmacen:String = "OBTENER_INSPECTOR_POR_FD";
		public static const obtenerDatoBotonEventoBusquedaProdAlmacen:String = "OBTENER_DATO_BOTON";
		public static const obtenerPromedioTimepoBusquedaProdAlmacen:String = "OBTENER_PROMEDIO_TIEMPO";*/
		//CONSTANTE PARA SERVICIO
		public static const obtenerConsultaComprasEventoReporteCompras:String = "OBTENER_REPORTE_COMPRAS";
		
		
		//NUEVAS CONSTANTES PARA VISTA
		public static const obtenerOrdenesDeCompraParaPanelDosEventoReporteCompras:String = "OBTENER_ORDENES_DE_COMPRA_PARA_PANEL_DOS";
		public static const obtenerPartidasDeLaCompraParaPanelTresEventoReporteCompras:String = "OBTENER_PARTIDAS_PARA_PANEL_TRES";
		public static const obtenerDetallePartidaParaPanelCuatroEventoReporteCompras:String = "OBTENER_DETALLE_DE_PARTIDA_PARA_PANEL_CUATRO";
		public static const filtrarComprasEnVistaEventoReporteCompras:String =  "FILTRAR_COMPRAS_VISTA";
		public static const settearFiltrosParaBusquedaEventoReporteCompras:String = "SETTEAR_FILTROS_PARA_BUSQUEDA";
		
		public static const consultaLlamadasPendientesEventoReporteLamadas:String = "CONSULTA_LLAMADAS_PENDIENTES";
		public static const cambiaHijoEventoReporteLamadas:String = "CAMBIA_HIJO";
		public static const cargaProductosPorMarcasEventoReporteLamadas:String = "CARGA_PRODUCTOS_POR_MARCA";
		public static const cierraLlamadasEventoReporteLamadas:String = "CIERRA_LLAMADA";
		public static const obtenerUniversoFacturasEventoReporteCobros:String = "OBTENER_UNIVERSO_FACTURAS"; 
		
		public static const cambiaIndiceEventoReporteCobros:String = "CAMBIA_INDICE";
		public static const obtenerLabelMontoEventoReporteCobros:String = "OBTENER_LABEL_MONTO";
		public static const filtrarCobrosEventoReporteCobros:String = "FILTRAR_COBROS";
		public static const filtrarFiltroPorMontoEventoReporteCobros:String = "FILTRAR_FILTRO_COBROS";	
		public static const obtenrFacturasSigVistaEventoReporteCobros:String = "OBTENER_FACTURAS_SIG_VISTA";	
		public static const obtenrFolioFacturaSigVistaEventoReporteCobros:String = "OBTENER_FOLIO_FACTURA_SIG_VISTA";
		
		public static const obtenrFolioFacturaSigVistaHistorialEventoReporteCobros:String = "OBTENER_HISTORIAL_FACTURA_SIG_VISTA";
		public static const obtenerPedidosSigVistaReporteCobros:String = "OBTENER_PEDIDOS_SIG_VISTA";
		public static const obtenerFacturaSeleccionadaSiguienteVistaReporteCobros:String = "OBTENER_FACTURA_SELECCIONADA_SIG_VISTA";
		public static const obtenerFacturaBusquedaRapidaReporteCobros:String = "OBTENER_BUSQUEDA_FACTURA_RAPIDA";
		public static const generarGraficasListaClientesReporteCobros:String = "GENERAR_GRAFICAS_LISTA_CLIENTES";
		public static const mostrarGraficasReporteCobros:String = "MOSTRAR_GRAFICAS_REPORTE_COBROS";
		public static const setIndiceReporteCobros:String = "SET_INDICE_REPORTE_COBROS";
		public static const limpiarListaCpedidosReporteCobros:String = "LIMPIAR_LISTA_CPEDIDOS_COBROS";
		
		public static const configurarInicioEsperaReporteCobros:String = "CONFIGURAR_ESPERA_REPORTE_COBRO";
		public static const obtenerPCotPharmaReporteConfirmacion:String = "OBTENER_PARTIDA_COTPHARMA";
		public static const obtenerPCotPharmaPorFolioReporteConfirmacion:String = "OBTENER_PROVEEDOR_TIPO";
		public static const obtenerTopPartidaCotPharmaReporteConfirmacion:String = "OBTENER_TOP_COTPHARMA";
		public static const obtenerEmpleadoPorTipoReporteConfirmacion:String = "OBTENER_EMPLEADO_TIPO";
		public static const obtenerReporteNotificadosEvent:String = "OBTENER_REPORTE_NOTIFICADOS";
		public static const obtenerReporteNotificadosModificadosEvent:String = "OBTENER_REPORTE_NOTIFICADOS_MODIFICADOS";
		public static const obtenerReporteNotificadosAvanzadaEvent:String = "OBTENER_REPORTE_NOTIFICADOS_AVANZADA";
		public static const filtrarDatosVistaEventoReporteNotificadosNew:String = "FILTRAR_DATOS_VISTA";
		public static const filtrarDatosVistaModifEventoReporteNotificadosNew:String = "FILTRAR_DATOS_VISTA_MODIF";
		public static const pasaClienteEmpresaEventoReporteNotificadosNew:String = "PASA_CLIENTE_EMPRESA";
		public static const filtrarDatosClienteEventoReporteNotificadosNew:String = "FILTRAR_DATOS_CLIENTE";
		public static const filtrarDatosClienteModifEventoReporteNotificadosNew:String = "FILTRAR_DATOS_CLIENTE_MODIF";
		public static const filtrarDatosCpedidoEventoReporteNotificadosNew:String = "FILTRAR_DATOS_CPEDIDO";
		public static const filtrarDatosCpedidoModifEventoReporteNotificadosNew:String = "FILTRAR_DATOS_CPEDIDO_MODIF";
		public static const filtrarDatosDetallesEventoReporteNotificadosNew:String = "FILTRAR_DATOS_DETALLES";
		public static const filtrarDatosDetallesModifEventoReporteNotificadosNew:String = "FILTRAR_DATOS_DETALLES_MODIF";
		public static const etiquetasBotoneraEventoReporteNotificadosNew:String = "ETIQUETAS_BOTONERA";
		public static const tituloFechaEventoReporteNotificadosNew:String = "TITULO_FECHA";
		public static const filtrarDatosInconsistenciaEventoReporteNotificadosNew:String = "FILTRAR_DATOS_INCONSITENCIA";
		public static const datosSwitchEventoReporteNotificadosNew:String = "DATOS_SWITCH";
		public static const datosBotoneraGeneralEventoReporteNotificadosNew:String = "DATOS_BOTONERA_GENERAL";
		public static const regresarAtodosEventoReporteNotificadosNew:String = "REGRESAR_A_TODOS";
		public static const cambioIndexEventoNotificadosReporteNotificadosNew:String = "CAMBIAR_INDEX_NOTIFICADOS";
		public static const generarGraficasEventoNotificadosReporteNotificadosNew:String = "GENERAR_GRAFICAS";
		public static const obtenerLabelMontoEventoReporteNotificadosNew:String = "OBTENER_LABEL_MONTO";
		//Para vista
		//public static const SETEAR_TITULO_PANEL_COTENPHARMA:String = "setearTituloDelPanelEventoReporteConfirmacionDeDatos";
		public static const filtrarCotizacionesVistaEventoReporteConfirmacionDeDatos:String = "FILTRAR_COTIZACIONES_VISTA";
		public static const cotizacionesPorProveedorEventoReporteConfirmacionDeDatos:String = "COTIZACIONES_POR_PROVEEDOR";
		public static const partidasPorCotizacionEventoReporteConfirmacionDeDatos:String = "OBTENER_PARTIDAS_POR_COTIZACION";
		public static const InfoPartidasBusquedaProductoEventoReporteConfirmacionDeDatos:String = "OBTENER_INFO_PARTIDA_BUSQUEDAPRODUCTO";
		public static const settearFiltrosParaBusquedaEventoReporteConfirmacionDeDatos:String = "SETTEAR_FILTROS_PARA_BUSQUEDA";
		public static const cotizacionesPorClienteEventoReporteConfirmacionDeDatos:String = "COTIZACIONES_POR_CLIENTE";
		public static const obtenerCotizacionesUniversoEventoReporteSeguimiento:String = "OBTENER_UNIVERSO_COTIZACIONES_TODO";
		public static const obtenerCotizacionesSeguimientoEventoReporteSeguimiento:String = "OBTENER_UNIVERSO_COTIZACIONES_EN_SEGUIMIENTO";
		public static const filtrarCotizacionesVistaUniversoEventoReporteSeguimiento:String = "FILTRAR_COTIZACIONES_VISTA_BOTON_TODO";
		public static const filtrarCotizacionesVistaEventoReporteSeguimiento:String = "FILTRAR_COTIZACIONES_VISTA";
		public static const cotizacionesPorClienteEventoReporteSeguimiento:String = "COTIZACIONES_POR_CLIENTE";
		public static const partidasPorCotizacionEventoReporteSeguimiento:String = "PARTIDAS_POR_COTIZACION";
		public static const buscarCotizacionPorFolioEvent:String = "BUSCAR_COTIZACION_POR_FOLIO";
		public static const buscarCotizacionPorClienteEventoReporteSeguimiento:String = "BUSCAR_COTIZACION_POR_CLIENTE";
		public static const settterParaOrigenEventoReporteSeguimiento:String = "SETEAR_ORIGEN";
		
		public static const obtenerCotizacionesEnSeguimientoEvent:String = "OBTENER_COTIZACIONES_EN_SEGUIMIENTO";
		public static const obtenerCotizacionesEnSeguimientoFiltroEvent:String = "OBTENER_COTIZACIONES_EN_SEGUIMIENTO_FILTRO";
		public static const cotizacionesAgrupadasEvent:String = "COTIZACIONES_AGRUPADAS";
		public static const obtenerPartidasPorCotizacionesEvent:String = "OBTENER_PARTIDAS_POR_COTIZACION";
		public static const historialPartidasPorCotizacionEvent:String = "HISTORIAL_PARTIDAS_POR_COTIZACION";
		public static const filtrarCotizacionesPorDiaEvent:String = "FILTRAR_COTIZACIONES_POR_DIA";
		public static const obtenerCotizacionesVistaRapidaEvent:String = "OBTENER_COTIZACIONES_VISTA_RAPIDA";
		public static const filtrarCotizacionesVistaRapidaEvent:String = "FILTRAR_COTIZACIONES_VISTA_RAPIDA";
		public static const filtrarCotizacionesVistaRapidaEventEventoReporteSeguimiento:String =  "LIMPIA_PANELES_POR_BOTON";
		
		//********************************************************************************************************** SOLICITUD ***********************************************************************************************************************//
		
		public static const cerrrPopUpEventoSolicitudGeneral:String = 'CERRAR_POP_UP';
		public static const eliminarReferenciaEventoSolicitudGeneral:String = 'ELIMINAR_REFERENCIAS';
		public static const cargaContactosEventoSolicitudGeneral:String = 'CARAGAR_CONTACTOS';
		public static const guardaVisitaEventoSolicitudGeneral:String = 'GUARDA_VISITA';
		public static const enviaReferenciasEventoSolicitudGeneral:String = 'ENVIA_REFERENCIAS';
		public static const consultaPopReferenciasEventoSolicitudGeneral:String = "CONSULTA_POP_REFERENCIAS";
		public static const gestionarVisitaPrincipalEventoSolicitudGeneral:String = "GESTIONAR_VISITA_PRINCIPAL";
		
		//********************************************************************************************************** GENERALES ***********************************************************************************************************************//
		
		public static const cambioIndexEvent:String = "CAMBIAR_INDEX";
		public static const iniciarEsperaEvent:String = "INICIA_ESPERA";
		public static const terminaEsperaEvent:String = "TERMINA_ESPERA";
		public static const errorEsperaEvent:String = "ERROR_ESPERA";
		public static const configurarInicioEsperaEvent:String = "CONFIGURAR_ESPERA";
		public static const abrirVentanaEnPendientes:String = "ABRIR_VENTANA_EN_PENDIENTES";
		public static const mostarDatosEnPestanasDocumentacion:String = "MOSTRAR_DATOS_EN_PESTANAS_DOCUMENTACION";
		public static const mostrarDatosEnPestanaLlamadas:String = "MOSTARA_DATOS_EN_PESTANA_LLAMADAS";
		public static const cerrarVentanaEnPendientes:String = "CERRAR_VENTANA_BUSQUEDAPRODUCTOS";
		public static const abrirVentanaEnCatalogos:String = "ABRIR_VENTANA_EN_CATALOGOS";
		public static const abrirVentanaLogin:String = "ABRIR_VENTANA_LOGIN";
		
		
		public static const cerrarPdFEventoGenerico:String = "CERRAR_PDF";
		public static const cerrarPopUpContactosEventoGenerico:String = "CERRAR_POP_UP_CONTACTOS";
		public static const regresaContactoPopUpContactosEventoGenerico:String = "REGRESA_CONTACTO_POP_UP_CONTACTOS";
		public static const muestraPopUpInformacionontactosEventoGenerico:String = "MUESTRA_POPUP_INFORMACION_CONTACTOS";
		/**
		 * Constantes del Evento para subir los PdF´s al Servidor
		 */
		public static const subirDocumentoPdfEventoGenerico:String = "SUBIR_DOCUMENTO_PDF";
		public static const modificarDocumentoPdfEventoGenerico:String = "MODIFICAR_DOCUMENTO_PDF";
		
		/**
		 * Constantes para validar un Usuario en el Login
		 */ 
		public static const validarEmpleadoLoginEventoGenerico:String = "VALIDAR_EMPLEADO_LOGIN";
		public static const validarAutorizacionEventoGenerico:String = "VALIDAR_AUTORIZACION";
		public static const usuarioLogueado:String = "ENVIAR_USUARIO_LOGIN";
		public static const obtnerIdPorUsuarioEventoGenerico:String = "OBTENER_ID_POR_USUARIO";
		public static const traerPermisosUsuarioLogueadoEventoG:String = "TRAER_PERMISOS_USUARIO_LOGIN";
		
		public static const cacharMovimientoRedimensionarEventoGenerico:String = "CACHAR_MOVIMIENTO_REDIMENSIONAR";
		
		public static const obtenerEmpleadosHabilitadosEventoGenerico:String = "OBTENER_EMPLEADOS_HABILITADOS";
		
		public static const changeTextInputBordeado:String = "CHANGE_TEXT_INPUT_BORDEADO";
		//public static const CACHAR_REDIMENSION_DE_COMPRESOR_VENTANA:String = "cacharRedimensionDeCompresorVentanaEventoGenerico";
		public static const cacharRedimensionDeCompresorVentanaEventoGenerico:String = "CACHAR_REDIMENSION_DE_COMPRESOR_VENTANA";
		/**
		 * Movimientos en los textInputsGlobales
		 */
		public static const generaChangeTextInputGeneralEventoGenerico:String = "CARGA_CHANGE_TEXT_INPUT_PUNTEADO_GENERAL";
		public static const actualizaTextoTextInputGeneralEventoGenerico:String = "ACTUALIZA_TEXTO";
		
		public static const pushViewEventoGenerico:String = "MOBIL_LOGIN_PUSH_VIEW";
		
		public static const obtenerPartidaCotizacionEventoParaCatalogoService:String = "OBTENER_PARTIDA_COTIZACION";
		public static const obtenerPartidaCotizacionMadreEventoParaCatalogoService:String = "OBTENER_PARTIDA_COTIZACION_MADRE";
		public static const obtenerClientesEventoParaCatalogoService:String = "OBTENER_CLIENTES";
		public static const obtenerClientesNoEncontradosEventoParaCatalogoService:String = "OBTENER_CLIENTES_NO_ENCONTRADOS";
		public static const obtenerProveedoresEventoParaCatalogoService:String = "OBTENER_PROVEEDORES"
		public static const obtenerEmpleadosEventoParaCatalogoService:String = "OBTENER_EMPLEADOS";
		public static const obtenerEmpleadosPorEmpresaEventoParaCatalogoService:String = "OBTENER_EMPLEADOS_POR_EMPRESA";
		public static const obtenerEmpleadosPorEmpresaEnLlamadaEventoParaCatalogoService:String = "OBTENER_EMPLEADOS_POR_EMPRESA_EN_LLAMADA";
		
		public static const obtenerContactosEventoParaContactoService:String = "OBTENER_CONTACTOS";
		public static const obtenerContactosAvanzadaEventoParaContactoService:String = "OBTENER_CONTACTOS_AVANZADA";
		public static const obtenerContactosIdContactoContactoService:String = "OBTENER_CONTACTOS_IDCONTACTO";
		public static const obtenerContactoProveedorContactoService:String = "OBTENER_CONTACTO_PROVEEDOR_CLIENTE";
		public static const obtenDescripcionContactoService:String = "OBTEN_DESCRIPCION_CONTACTO";
		public static const obtenerTipoConsulaContactoService:String = "OBTENER_TIPO_CONSULTA";
		public static const agregaBotonContactoService:String = "AGREGA_BOTON";
		public static const seleccionarContactoService:String = "SELECCIONAR_CONTACTO";
		
		//-----
		public static const busquedaLocal:String = "BUSQUEDA_LOCAL";
		
		//----- Prueba para popup contactos
		public static const recibirDatosContactoEventoGenerico:String = "RECIBIR_DATOS_CONTACTO";
		public static const recibirDatosContactoEventoGenerico2:String = "CIERRA_POPUP";
		public static const recibirDatosContactoEventoGenerico3:String = "ENVIAR_DATOS_POPUP";
		public static const recibirDatosContactoEventoGenerico4:String = "HAS_VISIBLE_POPUP_CONTACTOS";
		public static const recibirDatosContactoEventoGenerico5:String = "RECIBIR_DATOS_CONTACTO_DE_PLANTILLA";
		
		public static const ocultarCheckBox:String = "OCULTAR_CHECKBOX";
		public static const checkBoxEventoParaContactosService:String = "CHECKBOX_ASOCIAR";
		
		public static const obtenerPendientesObtenerPendientesEvento:String = "OBTENER_PENDIENTES";
		
		//********************************************************************************************************** CONSULTA/COMUN ***********************************************************************************************************************//
		
		
		public function DiccionarioEventos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new DiccionarioEventos( type, bubbles, cancelable );
		}
	}
}