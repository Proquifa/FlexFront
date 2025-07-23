package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.compras.pagos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PagoProveedor;

	public class EventoConsultaPagos extends Event
	{
		public var idFxPagar:String;
		public var idProveedor:Number; 
		public var idUsuario:Number;
		public var estado:String; 
		public var empresa:String;
		public var factura:String; 
		public var moneda:String;
		public var oc:String;
		public var finicio:Date; 
		public var ffin:Date;
		public var tabGrafica:Boolean = false;
		public var selectedVista:String;
		public var actualizarVistaCurrent:Boolean;
		public var pagos:PagoProveedor;
		public var indiceVista:Number;
		public var nivel:String;
		public var tipo:String;
		public var seleccionarGraficas:Number;
		public var valorAdicional:String;
		public var arregloExtra:ArrayCollection;
		
		public var idPagador:Number;
		public var pagador:String;
		public var idComprador:Number;
		public var comprador:String;
		
		public var idEmpresa:Number;
		
		
		public var empresaCompro:String;
		public var empresaVendio:String;
		
		//constantepara servicio
		public static const BUSCA_PAGOS_POR_FOLIO:String = "buscaPagosPorfolioEventoConsultaPagos";
		public static const BUSCA_PAGOS_INTERFACTURACION:String = "buscaPagosInterfacturacionEventoConsultaPagos";
		public static const OBTENER_RESUMEN_PAGOS:String = "obtenerResumenPagosEventoConsultaPagos";
		
		//constantepara para vistas
		public static const MOSTRAR_OCULTAR_TAB_GRAFICAS:String = "mostrarOcultarTabGraficasEventoConsultaPagos";
		public static const SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL:String = "settearValoresDeLaBusquedaActualEventoConsultaPagos";
		public static const SETTEAR_CURRENT_VISTA_SELECTED:String = "settearCurrentVistaSelectedEventoConsultaPagos";
		public static const ACTUALIZAR_VISTA_ACTUAL:String = "actualizarVistaActualEventoConsultaPagos";
		public static const MOSTRAR_SELECTED_GRAFICA:String = "mostrarLaGraficaSeleccionadaEventoConsultaPagos";
		public static const PASAR_INFO_A_ETVSFT_SECUNDARIA:String = "pasarInformacionAGraficaETvsFTSecundariaEventoConsultaPagos";
		
		public static const OBTENER_FILTRO_GRAFICO_SECUNDARIO:String = "obtnerFiltroGraficoSecundarioEventoConsultaPagos";
		public static const OBTENER_PAGOS:String = "obtenerPagosConsultaPagos";
		public static const CAMBIA_INDICE:String = "cambiarIndiceEventoConsultaPagos";
		public static const OBTENER_INFO_PAGOS:String = "obtenerPagosInfoPagos";
		public static const OBTENER_TIEMPO_PROCESO_PAGOS:String = "obtenerTiempoProcesoPagosConsultaPagos";
		public static const OBTENER_INFO_GENERALES_PAGO:String = "obtenerInformacionGeneralesPagosConsultaPagos";
		public static const LIMPIAR_HISTORIAL_CONSULTA_PAGOS:String = "limpiarHistorialPagosConsultaPagos";
		public static const MOSTRAR_CARGAR_FACTURA_SIN_FACTURA_PAGOS:String = "mostrarCargarFacturaSinFacturaConsultaPagos";
		
		public function EventoConsultaPagos(type:String, bubbles:Boolean = true, cancelable:Boolean = false,idFxPagar:String = null,idProveedor:Number = 0,idUsuario:Number = 0,estado:String = null,
											empresa:String = null,factura:String = null,moneda:String = null,oc:String = null,finicio:Date = null,ffin:Date = null,tabGrafica:Boolean = false,
											selectedVista:String = null,actualizarVistaCurrent:Boolean = false,pagos:PagoProveedor = null,indiceVista:Number = 0,nivel:String = null,tipo:String = null,
											seleccionarGraficas:Number = 0,valorAdicional:String = null,arregloExtra:ArrayCollection = null,idPagador:Number = 0,pagador:String = null,idComprador:Number = 0,
											comprador:String = null,idEmpresa:Number = 0,empresaCompro:String = null,empresaVendio:String = null)
		{
			super(type,bubbles,cancelable);
			this.idFxPagar = idFxPagar;
			this.idProveedor = idProveedor;
			this.idUsuario = idUsuario;
			this.estado = estado;
			this.empresa = empresa;
			this.factura = factura;
			this.moneda = moneda;
			this.oc = oc;
			this.finicio = finicio;
			this.ffin = ffin;
			this.tabGrafica = tabGrafica;
			this.selectedVista = selectedVista;
			this.actualizarVistaCurrent = actualizarVistaCurrent;
			this.pagos = pagos;
			this.indiceVista = indiceVista;
			this.nivel = nivel;
			this.tipo = tipo;
			this.seleccionarGraficas = seleccionarGraficas;
			this.valorAdicional = valorAdicional;
			this.arregloExtra = arregloExtra;
			this.idPagador = idPagador;
			this.pagador = pagador;
			this.idComprador = idComprador;
			this.comprador = comprador;
			this.idEmpresa = idEmpresa;
			this.empresaCompro = empresaCompro;
			this.empresaVendio = empresaVendio;
		}
		
		public override function clone():Event{
			return new EventoConsultaPagos(type,bubbles,cancelable,idFxPagar,idProveedor,idUsuario,estado,empresa,factura,moneda,oc,finicio,ffin,tabGrafica,selectedVista,actualizarVistaCurrent,pagos,indiceVista,nivel,tipo,seleccionarGraficas,valorAdicional,arregloExtra,idPagador,pagador,idComprador,comprador,idEmpresa,empresaCompro,empresaVendio);
		}

	}
}