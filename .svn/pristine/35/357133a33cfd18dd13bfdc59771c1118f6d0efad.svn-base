package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.cobros
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.Cobros;

	public class EventoReporteCobros extends Event
	{
		
		public var indice:int;
		public var factura:String;
		public var pedido:String;
		public var cliente:int;
		public var idFactura:int;
		public var nombreCliente:String;
		public var facturo:String;
		public var cpago:String; 
		public var mpago:String;
		public var clasificacion:String;
		public var diaSeleccionado:String;
		public var cobro:Cobros;
		public var cpedido:String;
		public var clientes:Array;
		public var cobrador:String;
		public var lista:ArrayCollection;
		public var usuario:Number;
		
		public var esac:String;
		public var idUsuarioLogueado:Number;
		
		public var mensaje:String;
		public var error:Object;
		public var tipoEventos:Array;
		public var idButtons:Array;
		
		public static const OBTENER_UNIVERSO_FACTURAS:String = "obtenerUniversoFacturasEventoReporteCobros"; 
		
		public static const CAMBIA_INDICE:String = "cambiaIndiceEventoReporteCobros";
		public static const OBTENER_LABEL_MONTO:String = "obtenerLabelMontoEventoReporteCobros";
		public static const FILTRAR_COBROS:String = "filtrarCobrosEventoReporteCobros";
		public static const FILTRAR_FILTRO_COBROS:String = "filtrarFiltroPorMontoEventoReporteCobros";	
		public static const OBTENER_FACTURAS_SIG_VISTA:String = "obtenrFacturasSigVistaEventoReporteCobros";	
		public static const OBTENER_FOLIO_FACTURA_SIG_VISTA:String = "obtenrFolioFacturaSigVistaEventoReporteCobros";
		public static const OBTENER_HISTORIAL_FACTURA_SIG_VISTA:String = "obtenrFolioFacturaSigVistaHistorialEventoReporteCobros";
		public static const OBTENER_PEDIDOS_SIG_VISTA:String = "obtenerPedidosSigVistaReporteCobros";
		public static const OBTENER_FACTURA_SELECCIONADA_SIG_VISTA:String = "obtenerFacturaSeleccionadaSiguienteVistaReporteCobros";
		public static const OBTENER_BUSQUEDA_FACTURA_RAPIDA:String = "obtenerFacturaBusquedaRapidaReporteCobros";
		public static const GENERAR_GRAFICAS_LISTA_CLIENTES:String = "generarGraficasListaClientesReporteCobros";
		public static const MOSTRAR_GRAFICAS_REPORTE_COBROS:String = "mostrarGraficasReporteCobros";
		public static const SET_INDICE_REPORTE_COBROS:String = "setIndiceReporteCobros";
		public static const LIMPIAR_LISTA_CPEDIDOS_COBROS:String = "limpiarListaCpedidosReporteCobros";
		
		public static const CONFIGURAR_ESPERA_REPORTE_COBRO:String = "configurarInicioEsperaReporteCobros";
		
		public override function clone():Event
		{
			return new EventoReporteCobros( type, bubbles, cancelable,indice,factura,pedido,cliente,idFactura,nombreCliente,facturo,cpago,mpago,clasificacion,diaSeleccionado,cobro,cpedido,clientes,cobrador,lista,usuario,esac,idUsuarioLogueado,mensaje,error,tipoEventos,idButtons);
		}
		public function EventoReporteCobros(type:String, bubbles:Boolean=true, cancelable:Boolean=false,indice:int = 0,factura:String = null,pedido:String = null,cliente:int = 0,idFactura:int = 0,
											nombreCliente:String = null,facturo:String = null,cpago:String = null,mpago:String = null,clasificacion:String = null,diaSeleccionado:String = null,
											cobro:Cobros = null,cpedido:String = null,clientes:Array = null,cobrador:String = null,lista:ArrayCollection = null,usuario:Number = 0,esac:String = null,
											idUsuarioLogueado:Number = 0,mensaje:String = null,error:Object = null,tipoEventos:Array = null,idButtons:Array = null)
		{
			super(type, bubbles, cancelable);
			this.indice = indice;
			this.factura = factura;
			this.pedido = pedido;
			this.cliente = cliente;
			this.idFactura = idFactura;
			this.nombreCliente = nombreCliente;
			this.facturo = facturo;
			this.cpago = cpago;
			this.mpago = mpago;
			this.clasificacion = clasificacion;
			this.diaSeleccionado = diaSeleccionado;
			if(cobro!=null){
			this.cobro = cobro;
			}
			this.cpedido = cpedido;
			this.clientes = clientes;
			this.cobrador = cobrador;
			this.lista = lista;
			this.usuario = usuario;
			this.esac = esac;
			this.idUsuarioLogueado = idUsuarioLogueado;
			this.mensaje = mensaje;
			this.error = error;
			this.tipoEventos = tipoEventos;
			this.idButtons = idButtons;
		}
	}
}
