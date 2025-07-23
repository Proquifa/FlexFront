package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.seguimiento
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaCotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.SeguimientoCotizacionAgrupada;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.reportes.seguimientos.PartidaCotizacionEnSeguimiento;
	
	public class EventoReporteSeguimiento extends Event
	{
		
		public static const OBTENER_UNIVERSO_COTIZACIONES_TODO:String = "obtenerCotizacionesUniversoEventoReporteSeguimiento";
		public static const OBTENER_UNIVERSO_COTIZACIONES_EN_SEGUIMIENTO:String = "obtenerCotizacionesSeguimientoEventoReporteSeguimiento";
		public static const FILTRAR_COTIZACIONES_VISTA_BOTON_TODO:String = "filtrarCotizacionesVistaUniversoEventoReporteSeguimiento";
		public static const FILTRAR_COTIZACIONES_VISTA:String = "filtrarCotizacionesVistaEventoReporteSeguimiento";
		public static const COTIZACIONES_POR_CLIENTE:String = "cotizacionesPorClienteEventoReporteSeguimiento";
		public static const PARTIDAS_POR_COTIZACION:String = "partidasPorCotizacionEventoReporteSeguimiento";
		public static const BUSCAR_COTIZACION_POR_FOLIO:String = "buscarCotizacionPorFolioEvent";
		public static const BUSCAR_COTIZACION_POR_CLIENTE:String = "buscarCotizacionPorClienteEventoReporteSeguimiento";
		public static const SETEAR_ORIGEN:String = "settterParaOrigenEventoReporteSeguimiento";
		
		public static const OBTENER_COTIZACIONES_EN_SEGUIMIENTO:String = "obtenerCotizacionesEnSeguimientoEvent";
		public static const OBTENER_COTIZACIONES_EN_SEGUIMIENTO_FILTRO:String = "obtenerCotizacionesEnSeguimientoFiltroEvent";
		public static const COTIZACIONES_AGRUPADAS:String = "cotizacionesAgrupadasEvent";
		public static const OBTENER_PARTIDAS_POR_COTIZACION:String = "obtenerPartidasPorCotizacionesEvent";
		public static const HISTORIAL_PARTIDAS_POR_COTIZACION:String = "historialPartidasPorCotizacionEvent";
		public static const FILTRAR_COTIZACIONES_POR_DIA:String = "filtrarCotizacionesPorDiaEvent";
		public static const OBTENER_COTIZACIONES_VISTA_RAPIDA:String = "obtenerCotizacionesVistaRapidaEvent";
		public static const FILTRAR_COTIZACIONES_VISTA_RAPIDA:String = "filtrarCotizacionesVistaRapidaEvent";
		public static const LIMPIA_PANELES_POR_BOTON:String =  "filtrarCotizacionesVistaRapidaEventEventoReporteSeguimiento";
		
		public static const CONFIGURAR_ESPERA_REPORTE_SEGUIMIENTO:String = "configurarInicioEsperaReporteSeguimiento";
		
		public var cliente:String ="";
		public var empleado:String ="";
		public var confirmacionFiltro:int = 2;
		public var folioCotizacion:String = "";
		public var cotizacionesAgrupadas:SeguimientoCotizacionAgrupada = new SeguimientoCotizacionAgrupada();
		public var partidaSeleccionada:PartidaCotizacionEnSeguimiento = new PartidaCotizacionEnSeguimiento();
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
		public var etiqueta2:String = "";
		public var mensaje:String;
		public var error:Object;
		public var tipoEventos:Array;
		
		public function EventoReporteSeguimiento(type:String,bubbles:Boolean=true,cancelable:Boolean=false,cliente:String ="",empleado:String ="",confirmacionFiltro:int = 2,folioCotizacion:String = "",cotizacionesAgrupadas:SeguimientoCotizacionAgrupada = null,
												 partidaSeleccionada:PartidaCotizacionEnSeguimiento = null,valorFiltro:int = 0,origenFiltro:String = "",tipoFiltro:String = "",marcaFiltro:String = "",controlFiltro:String = "",
												 esacMaster:String = "",esacMasterActivado:int = 0,diaSeleccionado:String = "0",vistaSelected:String = "tabla",regresa:String = "",etiqueta1:String ="",etiqueta2:String = "")
		{
			super(type,bubbles,cancelable);
			this.cliente = cliente;
			this.empleado = empleado;
			this.confirmacionFiltro = confirmacionFiltro;
			this.folioCotizacion = folioCotizacion;
			this.cotizacionesAgrupadas = cotizacionesAgrupadas;
			this.partidaSeleccionada = partidaSeleccionada;
			this.valorFiltro = valorFiltro;
			this.origenFiltro = origenFiltro;
			this.tipoFiltro = tipoFiltro;
			this.marcaFiltro = marcaFiltro;
			this.controlFiltro = controlFiltro;
			this.esacMaster = esacMaster;
			this.esacMasterActivado = esacMasterActivado;
			this.diaSeleccionado = diaSeleccionado;
			this.vistaSelected = vistaSelected;
			this.regresa = regresa;
			this.etiqueta1 = etiqueta1;
			this.etiqueta2 = etiqueta2;
		}
		
		public override function clone():Event{
			return new EventoReporteSeguimiento(type,bubbles,cancelable,cliente,empleado,confirmacionFiltro,folioCotizacion,cotizacionesAgrupadas,partidaSeleccionada,valorFiltro,origenFiltro,tipoFiltro,marcaFiltro,controlFiltro,esacMaster,esacMasterActivado,diaSeleccionado,vistaSelected,regresa,etiqueta1,etiqueta2);
		}
	}
}