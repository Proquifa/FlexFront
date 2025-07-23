package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.llamadas
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Llamada;
	
	public class EventoConsultaLLamada extends Event
	{
		/*public var procesosAsociados:String = "";*/
		public var tabGrafica:Boolean = false;
		public var llamada:Llamada;
		public var tipo:String;
		public var valorAdicional:String;
		public var seleccionGrafico:Boolean = true;
		public var arregloExtra:ArrayCollection;
		public var objeto:Object = new Object();
		public var seleccionarGraficas:int;
		
		public static const CONSULTA_LLAMADAS:String = "consultaLlamadasEventoConsultaLLamada";
		
		//funcionalidad vista
		public static const MOSTRAR_OCULTAR_TAB_GRAFICAS:String = "mostrarOcultarTabGraficasEventoConsultaLlamadas";
		public static const MOSTRAR_SELECTED_GRAFICA:String = "mostrarSelectedGraficaEventoConsultaLlamadas";
		public static const OBTENER_FILTRO_GRAFICO_SECUNDARIO:String = "obtenerFiltroGraficoSecundarioEventoConsultaLlamadas";
		public static const OBTENER_INFO_GRAFICO_SECUNDARIO:String = "obtenerInfoGraficoSecundarioEventoConsultaLlamadas";
		public static const CONTROL_GRAFICO:String = "controlGraficoEventoConsultaLlamadas";
		public static const PASAR_INFO_A_ETVSFT_SECUNDARIA:String = "pasarInfoAETvsFTSecundariaEventoConsultaLlamadas";
		
		public function EventoConsultaLLamada(type:String, bubbles:Boolean=true, cancelable:Boolean=false,tabGrafica:Boolean = false,llamada:Llamada = null,tipo:String = null,valorAdicional:String = null,
											  seleccionGrafico:Boolean = true,arregloExtra:ArrayCollection = null,objeto:Object = null,seleccionarGraficas:int = 0)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
			this.tabGrafica = tabGrafica;
			this.llamada = llamada;
			this.tipo = tipo;
			this.valorAdicional = valorAdicional;
			this.seleccionGrafico = seleccionGrafico;
			this.arregloExtra = arregloExtra;
			this.objeto = objeto;
			this.seleccionarGraficas = seleccionarGraficas;
		}
		public override function clone():Event
		{
			return new EventoConsultaLLamada( type, bubbles, cancelable,tabGrafica,llamada,tipo,valorAdicional,seleccionGrafico,arregloExtra,objeto,seleccionarGraficas);
		}
	}
}