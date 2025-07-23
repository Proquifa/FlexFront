package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.compras
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.compras.compras.EventoConsultasCompraNuevo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;

	public class EventoReporteComprasV2 extends Event
	{
		
		public var idPartidaCompra:int;
		public var idProveedor:int;
		public var controlProducto:String;
		public var manejoProducto:String;
		public var tipoProducto:String;
		public var marcaProducto:String;
		public var folioCompra:String;
		public var idComprador:int;
		public var etiqueta:String;
		public var estado:String;
		
		
		//VARIABLES NUEVAS
		public var nombreProveedor:String;
		public var ordenCompra:String;
		public var diaSeleccionado:String;
		public var vistaSelected:String;
		public var nombreComprador:String;
		public var isBusquedaAvanzada:Boolean;
		public var textoBusquedaRapida:String;
		public var catalogoProducto:String;
		
		
		//CONSTANTE PARA SERVICIO
		public static const OBTENER_REPORTE_COMPRAS:String = "obtenerConsultaComprasEventoReporteCompras";
		
		
		//NUEVAS CONSTANTES PARA VISTA
		public static const OBTENER_ORDENES_DE_COMPRA_PARA_PANEL_DOS:String = "obtenerOrdenesDeCompraParaPanelDosEventoReporteCompras";
		public static const OBTENER_PARTIDAS_PARA_PANEL_TRES:String = "obtenerPartidasDeLaCompraParaPanelTresEventoReporteCompras";
		public static const OBTENER_DETALLE_DE_PARTIDA_PARA_PANEL_CUATRO:String = "obtenerDetallePartidaParaPanelCuatroEventoReporteCompras";
		public static const FILTRAR_COMPRAS_VISTA:String =  "filtrarComprasEnVistaEventoReporteCompras";
		public static const SETTEAR_FILTROS_PARA_BUSQUEDA:String = "settearFiltrosParaBusquedaEventoReporteCompras";
		
		
		public function EventoReporteComprasV2(type:String, bubbles:Boolean=true, cancelable:Boolean=false,idPartidaCompra:int = 0,idProveedor:int = 0,controlProducto:String = null,
											   manejoProducto:String = null,tipoProducto:String = null,marcaProducto:String = null,folioCompra:String = null,idComprador:int = 0,
											   etiqueta:String = null,estado:String = null,nombreProveedor:String = null,ordenCompra:String = null,diaSeleccionado:String = null,
											   vistaSelected:String = null,nombreComprador:String = null,isBusquedaAvanzada:Boolean = false,textoBusquedaRapida:String = null,catalogoProducto:String = null)
		{
			super(type,bubbles,cancelable)
			this.idPartidaCompra = idPartidaCompra;
			this.idProveedor = idProveedor;
			this.controlProducto = controlProducto;
			this.manejoProducto = manejoProducto;
			this.tipoProducto = tipoProducto;
			this.marcaProducto = marcaProducto;
			this.folioCompra = folioCompra;
			this.idComprador = idComprador;
			this.etiqueta = etiqueta;
			this.estado = estado;
			this.nombreProveedor = nombreProveedor;
			this.ordenCompra = ordenCompra;
			this.diaSeleccionado = diaSeleccionado;
			this.vistaSelected = vistaSelected;
			this.nombreComprador = nombreComprador;
			this.isBusquedaAvanzada = isBusquedaAvanzada;
			this.textoBusquedaRapida = textoBusquedaRapida;
			this.catalogoProducto = catalogoProducto;
			
		}
		
		public override function clone():Event{
			return new EventoReporteComprasV2(type,bubbles,cancelable,idPartidaCompra,idProveedor,controlProducto,manejoProducto,tipoProducto,marcaProducto,folioCompra,idComprador,etiqueta,estado,nombreProveedor,ordenCompra,diaSeleccionado,vistaSelected,nombreComprador,isBusquedaAvanzada,textoBusquedaRapida,catalogoProducto);
		}
	}
}