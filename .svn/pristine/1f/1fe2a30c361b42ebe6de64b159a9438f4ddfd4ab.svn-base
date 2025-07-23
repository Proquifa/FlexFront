package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.compras.compras
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Compra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	
	
	
	public class EventoConsultasCompraNuevo extends Event
	{
		public var indiceVistas:Number;
		public var finicio:Date;
		public var ffin:Date;
		public var idProveedor:Number;
		public var estado:int;
		public var coloco:int;
		public var compro:String;
		public var ordenCompra:String;
		public var idPCompra:Number;
		public var partida:Number;
		public var cantidad:int;
		public var compra:Compra;		
		public var tiempoProceso:TiempoProceso;
		public var arregloExtra:ArrayCollection;
		public var usuario:Number;
		public var tabGrafica:Boolean = false;
		public var individual:Boolean = false;
		public var estadoPartida:Boolean;
		public var valorAdicional:String;
		public var tipo:String;
		public var seleccionarGraficas:int;
		public var selectedVista:String;
		public var actualizarVistaCurrent:Boolean;
		
		//constantepara servicio
		public static const OBTENER_COMPRAS:String = "obtenerComprasEventoConsultasCompraNuevo";
		public static const OBTENER_GRAFICA_X_COMPRAS:String = "obtenerGraficasXComprasEventoConsultasCompraNuevo";
		public static const OBTENER_TIEMPO_PROCESO:String = "obtenerTiempoProcesoEventoConsultasCompraNuevo";
		public static const OBTENER_INFO_GRAFICAS:String = "obtenerInfoGraficasEventoConsultaComprasNuevo";
		public static const OBTENER_TOTALES_COMPRAS:String = "obtenerTotalesComprasEventoConsultaComprasNuevo";
		public static const OBTENER_TOTALES_PASADO:String = "obtenerTotalesComprasPasadoEventoConsultaComprasNuevo";
		public static const OBTENER_TOTALES_POSPASADO:String = "obtenerTotalesComprasPosPasadoEventoConsultaComprasNuevo";
			
		//constantes para vista
		public static const SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL:String = "settearValoresDeLaBusquedaActualEventoConsultaComprasNuevo";
		public static const SETTEAR_CURRENT_VISTA_SELECTED:String = "settearCurrentVistaSelectedEventoConsultaComprasNuevo";
		public static const ACTUALIZAR_VISTA_ACTUAL:String = "actualizarVistaActualEventoConsultaComprasNuevo";
		
		public static const MOSTRAR_DATOS_COMPRA_GENERAL:String = "mostrarPedidoGeneralEventoConsultaComprasNuevo";
		public static const CAMBIA_INDICE_MENU:String = "cambiaIndiceMenuEventoConsultaComprasNuevo";
		public static const MUESTRA_EN_GENERALES:String = "muestraEnGeneralesEventoConsultaComprasNuevo";
		public static const MOSTRAR_OCULTAR_TAB_INFO_GRAFICAS:String = "mostrarOcultarTabInfoGraficasEventoConsultaComprasNuevo";
		public static const MOSTRAR_SELECTED_GRAFICA:String = "mostrarSelectedGraficaEventoConsultaComprasNuevo";
		public static const OBTENER_FILTRO_GRAFICO_SECUNDARIO:String = "obtnerFiltroGraficoSecundarioEventoConsultaComprasNuevo";
		public static const PASAR_INFO_A_ETVSFT_SECUNDARIA:String = "pasarInfoAETvsFTSecundariaEventoConsultaComprasNuevo";
		
		public function EventoConsultasCompraNuevo(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoConsultasCompraNuevo(type,bubbles,cancelable);
		}
	}
}