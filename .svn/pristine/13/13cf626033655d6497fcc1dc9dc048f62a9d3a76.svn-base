package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.ventas.notificados
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Inconsistencia;
	import mx.messaging.channels.StreamingAMFChannel;
	
	public class EventoReporteNotificadosNew extends Event
	{
		public static const OBTENER_REPORTE_NOTIFICADOS:String = "obtenerReporteNotificadosEvent";
		public static const OBTENER_REPORTE_NOTIFICADOS_MODIFICADOS:String = "obtenerReporteNotificadosModificadosEvent";
		public static const OBTENER_REPORTE_NOTIFICADOS_AVANZADA:String = "obtenerReporteNotificadosAvanzadaEvent";
		public static const FILTRAR_DATOS_VISTA:String = "filtrarDatosVistaEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_VISTA_MODIF:String = "filtrarDatosVistaModifEventoReporteNotificadosNew";
		public static const PASA_CLIENTE_EMPRESA:String = "pasaClienteEmpresaEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_CLIENTE:String = "filtrarDatosClienteEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_CLIENTE_MODIF:String = "filtrarDatosClienteModifEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_CPEDIDO:String = "filtrarDatosCpedidoEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_CPEDIDO_MODIF:String = "filtrarDatosCpedidoModifEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_DETALLES:String = "filtrarDatosDetallesEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_DETALLES_MODIF:String = "filtrarDatosDetallesModifEventoReporteNotificadosNew";
		public static const ETIQUETAS_BOTONERA:String = "etiquetasBotoneraEventoReporteNotificadosNew";
		public static const TITULO_FECHA:String = "tituloFechaEventoReporteNotificadosNew";
		public static const FILTRAR_DATOS_INCONSITENCIA:String = "filtrarDatosInconsistenciaEventoReporteNotificadosNew";
		public static const DATOS_SWITCH:String = "datosSwitchEventoReporteNotificadosNew";
		public static const DATOS_BOTONERA_GENERAL:String = "datosBotoneraGeneralEventoReporteNotificadosNew";
		public static const REGRESAR_A_TODOS:String = "regresarAtodosEventoReporteNotificadosNew";
		public static const CAMBIAR_INDEX_NOTIFICADOS:String = "cambioIndexEventoNotificadosReporteNotificadosNew";
		public static const GENERAR_GRAFICAS:String = "generarGraficasEventoNotificadosReporteNotificadosNew";
		public static const OBTENER_LABEL_MONTO:String = "obtenerLabelMontoEventoReporteNotificadosNew";
		
		
		
		public var cliente:String="";
		public var concepto:String="";
		public var responsable:String="";
		public var tipoResponsable:String="";
		public var tipoNotificacion:int=2; 
		public var diaFiltro:String="";	
		public var avisoCambio:String = "";
		public var etiqueta:String="AVISO";
		public var empresa:String="";	
		public var cpedido:String="";
		public var comentario:String="";
		public var folio:String="";
		public var incosistencia:String="";
		public var swtichBotonera:String="";
		public var tipoProducto:String="";
		public var marca:String="";
		public var clasificacion:String="";
		public var control:String="";
		public var todos:String="";
		public var nivel:String = "";
		public var ev:String = "";
		public var edoNotif:String = "";
		public var folioNT:String = "";
		public var folioDoc:String = "";
		public var master:String="";
		
		public var nuevoIndex:int = 0;
		public var vieneD:String = "";
		
		
		
		
		
		
		
		public function EventoReporteNotificadosNew(type:String,bubbles:Boolean=true,cancelable:Boolean=false,cliente:String="",concepto:String="",responsable:String="",tipoResponsable:String="",
													tipoNotificacion:int=2,diaFiltro:String="",avisoCambio:String = "",etiqueta:String="AVISO",empresa:String="",cpedido:String="",comentario:String="",
													folio:String="",incosistencia:String="",swtichBotonera:String="",tipoProducto:String="",marca:String="",clasificacion:String="",
													control:String="",todos:String="",nivel:String = "",ev:String = "",edoNotif:String = "",folioNT:String = "",folioDoc:String = "",
													master:String="",nuevoIndex:int = 0,vieneD:String = "")
		{
			super(type,bubbles,cancelable);
			this.cliente = cliente;
			this.concepto = concepto;
			this.responsable = responsable;
			this.tipoResponsable = tipoResponsable;
			this.tipoNotificacion = tipoNotificacion;
			this.diaFiltro = diaFiltro;
			this.avisoCambio = avisoCambio;
			this.etiqueta = etiqueta;
			this.empresa = empresa;
			this.cpedido = cpedido;
			this.comentario = comentario;
			this.folio = folio;
			this.incosistencia = incosistencia;
			this.swtichBotonera = swtichBotonera;
			this.tipoProducto = tipoProducto;
			this.marca = marca;
			this.clasificacion = clasificacion;
			this.control = control;
			this.todos = todos;
			this.nivel = nivel;
			this.ev = ev;
			this.edoNotif = edoNotif;
			this.folioNT = folioNT;
			this.folioDoc = folioDoc;
			this.master = master;
			this.nuevoIndex = nuevoIndex;
			this.vieneD = vieneD;
		}
		
		public override function clone():Event{
			return new EventoReporteNotificadosNew(type,bubbles,cancelable,cliente,concepto,responsable,tipoResponsable,tipoNotificacion,diaFiltro,avisoCambio,etiqueta,empresa,cpedido,comentario,folio,incosistencia,swtichBotonera,tipoProducto,marca,clasificacion,control,todos,nivel,ev,edoNotif,folioNT,folioDoc,master,nuevoIndex,vieneD);
		}
	}
}