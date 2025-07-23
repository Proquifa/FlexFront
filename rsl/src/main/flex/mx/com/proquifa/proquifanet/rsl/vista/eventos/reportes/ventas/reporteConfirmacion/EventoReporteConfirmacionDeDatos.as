package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.reporteConfirmacion
{
	import flash.events.Event;
	
	public class EventoReporteConfirmacionDeDatos extends Event
	{
		//para vista
		public var tipoProveedor:String;
		public var proveedor:String;
		public var esac:String;
		public var ev:String;
		public var cliente:String;
		public var tipoProducto:String;
		public var fabrica:String;
		public var diaSeleccionado:String;
		public var vistaSelected:String = "tabla";
		public var empleado:String;
		public var folioCotizacion:String;
		public var isEnEnfoque:Boolean;
		public var idpCotiza:String;
		public var isBusquedaAvanzada:Boolean;
		
		
		public static const OBTENER_UNIVERSO_COTIZACIONES:String = "obtenerCotizacionesEnPharmaUniversoEventoReporteConfirmacionDeDatos";
		
		//Para vista
		//public static const SETEAR_TITULO_PANEL_COTENPHARMA:String = "setearTituloDelPanelEventoReporteConfirmacionDeDatos";
		public static const FILTRAR_COTIZACIONES_VISTA:String = "filtrarCotizacionesVistaEventoReporteConfirmacionDeDatos";
		public static const COTIZACIONES_POR_PROVEEDOR:String = "cotizacionesPorProveedorEventoReporteConfirmacionDeDatos";
		public static const OBTENER_PARTIDAS_POR_COTIZACION:String = "partidasPorCotizacionEventoReporteConfirmacionDeDatos";
		public static const OBTENER_INFO_PARTIDA_BUSQUEDAPRODUCTO:String = "InfoPartidasBusquedaProductoEventoReporteConfirmacionDeDatos";
		public static const SETTEAR_FILTROS_PARA_BUSQUEDA:String = "settearFiltrosParaBusquedaEventoReporteConfirmacionDeDatos";
		public static const COTIZACIONES_POR_CLIENTE:String = "cotizacionesPorClienteEventoReporteConfirmacionDeDatos";
		
		
/*		public var cliente:String ="";
		public var empleado:String ="";
		public var confirmacionFiltro:int = 2;
		public var folioCotizacion:String = "";
		public var cotizacionesAgrupadas:SeguimientoCotizacionAgrupada = new SeguimientoCotizacionAgrupada();
		public var valorFiltro:int = 0;
		public var origenFiltro:String = "";
		public var tipoFiltro:String = "";
		public var marcaFiltro:String = "";
		public var controlFiltro:String = "";
		public var esacMaster:String = "";
		public var esacMasterActivado:int = 0;
		public var diaSeleccionado:String = "0";
		public var vistaSelected:String = "tabla";
		
		public var regresa:String = "";
		
		public var etiqueta1:String ="";
		public var etiqueta2:String = "";*/
		
		public function EventoReporteConfirmacionDeDatos(type:String,bubbles:Boolean=true,cancelable:Boolean=false,tipoProveedor:String = null,proveedor:String = null, esac:String = null, ev:String = null, 
														 cliente:String = null,tipoProducto:String = null,fabrica:String = null,diaSeleccionado:String = null,vistaSelected:String = null,empleado:String = null,
														 folioCotizacion:String = null,isEnEnfoque:Boolean = false,idpCotiza:String = null,isBusquedaAvanzada:Boolean = false)
		{
			super(type,bubbles,cancelable);
			this.tipoProveedor = tipoProveedor;
			this.proveedor = proveedor;
			this.esac = esac;
			this.ev = ev;
			this.cliente = cliente;
			this.tipoProducto = tipoProducto;
			this.fabrica = fabrica;
			this.diaSeleccionado = diaSeleccionado;
			this.vistaSelected = vistaSelected;
			this.empleado = empleado;
			this.folioCotizacion = folioCotizacion;
			this.isEnEnfoque = isEnEnfoque;
			this.idpCotiza = idpCotiza;
			this.isBusquedaAvanzada = isBusquedaAvanzada;
		}
		
		public override function clone():Event{
			return new EventoReporteConfirmacionDeDatos(type,bubbles,cancelable,tipoProveedor,proveedor,esac,ev,cliente,tipoProducto,fabrica,diaSeleccionado,vistaSelected,empleado,folioCotizacion,isEnEnfoque,idpCotiza,isBusquedaAvanzada);
		}
	}
}