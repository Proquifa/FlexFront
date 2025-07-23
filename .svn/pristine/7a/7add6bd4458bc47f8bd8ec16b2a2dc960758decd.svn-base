package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.documentosRecibidos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Parametros;

	public class EventoDocumentosRecibidos extends Event
	{
		
		public var folio:String;
		public var finicio:Date;
		public var ffin:Date;
		public var empresa:String;
		public var referencia:String;
		public var destinatario:String;
		public var tipo:String;
		public var cpago:String;
		public var abiertoCerrado:String;
		public var valorAdicional:String;
		public var tabGrafica:Boolean = false;
		public var seleccionGrafico:Boolean = true;
		public var actualizarGrafico:Boolean = false;
		public var arregloExtra:ArrayCollection;
		public var objeto:Object = new Object();
		public var seleccionarGraficas:int;
		public var selectedVista:String;
		public var actualizarVistaCurrent:Boolean;
		public var porFolio:Boolean = true;
		public var parametros:Parametros = new Parametros();
		
		public static const BUSCAR_DOCUMENTOS_POR_FOLIO:String = "buscarDocumentoPorFolioEventoDocumentosRecibidos";
		public static const BUSCAR_DOCUMENTOS_POR_BUSQUEDA_AVANZADA:String = "buscarDocumentosPorBusquedaAvanzadaEventoDocumentoRecibido";
		public static const OBTENER_EMPLEADOS:String = "obtenerEmpleadosEventoDocumentoRecibido";
		
		//funcionalidad vista
		public static const MOSTRAR_OCULTAR_INFO_GRAFICAS:String = "mostrarOcultarInfoGraficasEventoDocumentoRecibido";
		public static const MOSTRAR_SELECTED_GRAFICA:String = "mostrarSelectedGraficaEventoDocumentoRecibido";
		//public static const CONTROL_GRAFICO:String = "controlGraficoEventoDocumentoRecibido";
		public static const OBTENER_FILTRO_GRAFICO_SECUNDARIO:String = "obtnerFiltroGraficoSecundarioEventoDocumentoRecibido";
		public static const OBTENER_INFO_GRAFICO_SECUNDARIO:String = "obtnerInfoGraficoSecundarioEventoDocumentoRecibido";
		public static const OBTENER_UPDATE_GRAFICO:String = "obtnerUpdateGraficoEventoDocumentoRecibido";
		public static const PASAR_INFO_A_ETVSFT_SECUNDARIA:String = "pasarInfoAETvsFTSecundariaEventoDocumentoRecibido";
		public static const SETTEAR_CURRENT_VISTA_SELECTED:String = "settearCurrentVistaSelectedEventoDocumentoRecibido";
		public static const ACTUALIZAR_VISTA_ACTUAL:String = "actualizarVistaActualEventoDocumentoRecibido";
		
		public function EventoDocumentosRecibidos(type:String, bubbles:Boolean= true, cancelable:Boolean=false,folio:String = null,finicio:Date = null,ffin:Date = null,empresa:String = null,
												  referencia:String = null,destinatario:String = null,tipo:String = null,cpago:String = null,abiertoCerrado:String = null,valorAdicional:String = null,
												  tabGrafica:Boolean = false,seleccionGrafico:Boolean = true,actualizarGrafico:Boolean = false,arregloExtra:ArrayCollection = null,objeto:Object = null,
												  seleccionarGraficas:int = 0,selectedVista:String = null,actualizarVistaCurrent:Boolean = false,parametros:Parametros = null,porFolio:Boolean = false)
		{
			super(type,bubbles,cancelable)
			this.folio = folio;
			this.finicio = finicio;
			this.ffin = ffin;
			this.empresa = empresa;
			this.referencia = referencia;
			this.destinatario = destinatario;
			this.tipo = tipo;
			this.cpago = cpago;
			this.abiertoCerrado = abiertoCerrado;
			this.valorAdicional = valorAdicional;
			this.tabGrafica = tabGrafica;
			this.seleccionGrafico = seleccionGrafico;
			this.actualizarGrafico = actualizarGrafico;
			this.arregloExtra = arregloExtra;
			this.objeto = objeto;
			this.seleccionarGraficas = seleccionarGraficas;
			this.selectedVista = selectedVista;
			this.actualizarVistaCurrent = actualizarVistaCurrent;
			this.porFolio = porFolio;
			this.parametros = parametros;
		}
		public override function clone():Event{
			return new EventoDocumentosRecibidos(type,bubbles,cancelable,folio,finicio,ffin,empresa,referencia,destinatario,tipo,cpago,abiertoCerrado, valorAdicional,tabGrafica,seleccionGrafico,actualizarGrafico,arregloExtra,objeto,seleccionarGraficas,selectedVista,actualizarVistaCurrent,parametros,porFolio);
		}
	}
}