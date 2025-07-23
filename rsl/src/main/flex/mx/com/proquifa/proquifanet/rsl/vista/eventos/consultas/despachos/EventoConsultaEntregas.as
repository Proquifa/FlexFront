package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.despachos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.Factura;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	
	public class EventoConsultaEntregas extends Event
	{
		public var idVista:Number;
		public var idCliente:Number;
		public var estado:String;
		public var mensajero:String;
		public var rutaCombo:String;
		public var conforme:String;
		public var finicio:Date;
		public var ffin:Date;
		public var facturaString:String;
		public var idFactura:Number;
		public var factura:Factura;
		public var listaEntregas:ArrayCollection;
		public var idDP:String;
		public var idEntrega:String;
		public var idRuta:String;
		public var etiquetaTitulo:String;
		public var tiempoProceso:TiempoProceso;
		public var individual:Boolean;
		public var cpedido:String;
		public var selectedVista:String;
		public var actualizarVistaCurrent:Boolean;
		
		public var tipo:String;
		public var seleccionGrafico:Boolean = true;
		public var valorAdicional:String;
		public var seleccionarGraficas:int;
		public var tabGrafica:Boolean = false;
		public var arrayTemp:ArrayCollection;
		
		public static const CONSULTA_ENTREGAS:String = "consultaEntregasEventoConsultaEntregas"; 
		public static const CONSULTA_TIEMPO_PROCESO:String = "consultaTiempoProcesoEventoConsultaEntregas"; 
		public static const MUESTRA_HISTORIAL:String= "muestraHistorialEventoConsultaEntregas";
		public static const CONSULTA_RUTAS:String = "consultaRutasEventoConsultaEntregas";
		public static const MUESTRA_HISTORIAL_EJECUCION:String= "muestraHistorialEjecucionEventoConsultaEntregas";
		public static const OBTEN_COMPARATIVAS:String = "obtenComparativasEventoConsultaEntregas";
		public static const OBTEN_COMPARATIVAS_PASADO:String = "obtenComparativasPasadoEventoConsultaEntregas";
		public static const OBTEN_COMPARATIVAS_POSPASADO:String = "obtenComparativasPosPasadoEventoConsultaEntregas";
		public static const OBTEN_TRES_GRAFICAS:String = "obtenTresGraficasEventoConsultaEntregas";
		
		public static const MOSTRAR_SELECTED_GRAFICA:String = "mostrarSelectedGraficaEventoConsultaEntregas";
		public static const MUESTRA_BOTON_GRAFICAS:String = "muestraBotonGraficasEventoConsultaEntregas";
		public static const MUESTRA_COLUMAS:String = "muestraColumnasEventoConsultaEntregas";
		public static const SETTEAR_VALORES_DE_LA_BUSQUEDA_ACTUAL:String = "settearValoresDeLaBusquedaActualEventoConsultaEntregas";
		public static const SETTEAR_CURRENT_VISTA_SELECTED:String = "settearCurrentVistaSelectedEventoConsultaEntregas";
		public static const ACTUALIZAR_VISTA_ACTUAL:String = "actualizarVistaActualEventoConsultaEntregas";
		public static const OBTENER_VALORES_GRAFICA_ETVSFT:String = "obtenerValoresGraficaETvsFTEventoConsultaEntregas";
		
		//CONSTANTES DE VISTA
		public static const PASAR_INFO_A_ETVSFT_SECUNDARIA:String = "pasarInfoAGraficaETvsFTSecundariaEventoConsultaEntregas";
		
		public function EventoConsultaEntregas(type:String, bubbles:Boolean=true, cancelable:Boolean=false,idVista:Number = 0,idCliente:Number = 0,estado:String = null,mensajero:String = null,
											   rutaCombo:String = null,conforme:String = null,finicio:Date = null,ffin:Date = null,facturaString:String = null,idFactura:Number = 0,factura:Factura = null,
											   listaEntregas:ArrayCollection = null,idDP:String = null,idEntrega:String = null,idRuta:String = null,etiquetaTitulo:String = null,tiempoProceso:TiempoProceso = null,
											   individual:Boolean = false,cpedido:String = null,selectedVista:String = null,actualizarVistaCurrent:Boolean = false,tipo:String = null,seleccionGrafico:Boolean = true,
											   valorAdicional:String = null,seleccionarGraficas:int = 0,tabGrafica:Boolean = false,arrayTemp:ArrayCollection = null)
		{
			super(type, bubbles, cancelable);
			this.idVista = idVista;
			this.idCliente = idCliente;
			this.estado = estado;
			this.mensajero = mensajero;
			this.rutaCombo = rutaCombo;
			this.conforme = conforme;
			this.finicio = finicio;
			this.ffin = ffin;
			this.facturaString = facturaString;
			this.idFactura = idFactura;
			if(factura!=null){				
			this.factura = factura;
			}
			this.listaEntregas = listaEntregas;
			this.idDP = idDP;
			this.idEntrega = idEntrega;
			this.idRuta = idRuta;
			this.etiquetaTitulo = etiquetaTitulo;
			if(tiempoProceso!=null){				
			this.tiempoProceso = tiempoProceso;
			}
			this.individual = individual;
			this.cpedido = cpedido;
			this.selectedVista = selectedVista;
			this.actualizarVistaCurrent = actualizarVistaCurrent;
			this.tipo = tipo;
			this.seleccionGrafico = seleccionGrafico;
			this.valorAdicional = valorAdicional;
			this.seleccionarGraficas = seleccionarGraficas;
			this.tabGrafica = tabGrafica;
			if(arrayTemp!=null){				
			this.arrayTemp = arrayTemp;
			}
		}
		
		public override function clone():Event{
			return new EventoConsultaEntregas(type,bubbles,cancelable,idVista,idCliente,estado,mensajero,rutaCombo,conforme,finicio,ffin,facturaString,idFactura,factura,listaEntregas,idDP,idEntrega,idRuta,etiquetaTitulo,tiempoProceso,individual,cpedido,selectedVista,actualizarVistaCurrent,tipo,seleccionGrafico,valorAdicional,seleccionarGraficas,tabGrafica,arrayTemp);
		}	
		
	}
}