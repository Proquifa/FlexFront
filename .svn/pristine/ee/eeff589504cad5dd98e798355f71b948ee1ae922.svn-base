package mx.com.proquifa.vista.eventos.MonitorearNacionales
{
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.OrdenDespacho;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RegistroConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	
	public class EventoMonitorearNacionales extends Event
	{
		public var usuario:String;
		public var empleado:Empleado;
		public var idProveedor:int;
		public var ordenDespacho:OrdenDespacho;
		public var idOrdenDespacho:Number;
		public var indiceDividir:int;
		public var piezas:int;
		public var indiceActualDividido:Number;
		public var tipoSelect:String;
		public var indiceActual:int;
		public var partidas:ArrayCollection;
		public var todasPartidas:Boolean;
		public var origen:String;
		public var registrarConfirmacion:RegistroConfirmacion;
		public var segundaVista:Boolean;
		public var diac:String;
		public var historial:ArrayCollection;
		public var idPCompra:int;
		public var tamcomplemento:Number;
		public var tipoDePop:String;
		public var internacional:Boolean;
		
		
		/*public static var editando:Boolean;
		public static var indiceEditando:int;*/
		
		//SERVICIO
		public static const OBTENER_INFO_COMPRA_AGRUPADA:String = "obtenerInfoRegistrarConfirmacionEventoMonitorearOcNoArribadaNacionales";
		public static const OBTENER_INFO_COMPRA_TODAS_AGRUPADA:String = "obtenerInfoRegistrarConfirmacionTodosEventoMonitorearOcNoArribadaNacionales";
		public static const OBTENER_INFO_MONITOREAR_INTERNACIONALES:String ="obtenerInformacionMonitorearINacionales";
		public static const OBTENER_INFO_MONITOREAR_NACIONALES:String = "obtenerInformacionMonitorearNacionalesNacionales";
		public static const OBTENER_INDICADOR_PENDIENTES:String = "obtenerIndicadorPendientesMonitorearOcNoArribadaNacionales";
		public static const OBTENER_PARTIDAS_POR_PROVEEDOR:String = "obtenerPartidasPorProveedorEventoMonitorearOcNoArribadaNacionales";
		public static const OBTENER_PARTIDAS_COMPRAS_POR_PROVEEDOR:String = "obtenerPartidasComprasPorProveedorEventoMonitorearOcNoArribadaNacionales";
		public static const OBTENER_PARTIDAS_POR_PROVEEDOR_NACIONALES:String = "obtenerPartidasDelProveedorMonitorearNacionales";
		public static const OBTENER_FAMILIAS_POR_PROVEEDOR:String = "obtenerFamiliasPorProveedorEventoMonitorearOcNoArribadaNacionales";
		public static const REGISTRAR_PARTIDAS_COMPRA:String = "registraPartidasComprasEventoMonitorearOcNoArribadaNacionales";
		public static const OBTENER_HISTORIAL_X_ID_COMPRA:String = "obtenerHistorialXidCompraEventoMonitorearOcNoArribadaNacionales";
		/*public static const OBTENER_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTENER_PARTIDAS_PRODUCTO_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerPartidasOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const CERRAR_PENDIENTE_ORDEN_DESPACHO_REGISTRADAS:String = "cerrarPendienteDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTIENE_IMAGENES_ORDEN_DESPACHO_REGISTRADAS:String = "obtieneImagenesEventoRegistrarDespacho";*/
		
		//VISTA
		public static const IR_ORDEN_SELECCIONADA:String = "irAOrdenSeleccionadaEventoMonitorearOcNoArribadaNaiconales";
		public static const IR_ORDEN_SELECCIONADA_INTERNACIONAL:String = "irAOrdenSeleccionadaEventoMonitorearOcNoArribadaInternacionalNacionales";
		public static const IR_ORDEN_SELECCIONADA_NACIONAL:String = "irAOrdenSeleccionadaEventoMonitorearOcNoArribadaNacionalNacionales";
		public static const CLIC_BOTONERA:String = "clicBotoneraMonitorearOcNoArribadaNaiconales";
		public static const CLIC_BOTONERA_FOOT:String = "clicBotoneraFootMonitorearOcNoArribadaNacionalesNaiconales";
		public static const CLIC_ACEPTAR_DIVIDIR_LISTA:String = "clicAceptarDividirPiezasGridMonitorearOcNoArribadaNacionales";
		public static const CLIC_ACEPTAR_RESTABLECER_LISTA:String = "clicRestablecerPiezasGridMonitorearOcNoArribadaNacionales";
		public static const MOSTRAR_TODAS_ORDENES_COMPRA:String = "clicBotonFiltradosNacionales";
		public static const ABRIR_HISTORIAL:String = "clicHistorialNacionales";
		public static const BUSCA_TEXTO:String = "buscaTextoNacionales";
		public static const SEGUNDA_VISTA_ACTIVA:String = "verificaSegundaVistaActivaNacionales";
		public static const INICIA_ESPERA:String = "iniciaEsperaEnVistaNacionales";
		public static const ORDENAR_DIAS:String = "ordenarDiasNacionales";
			
		
		public static const CLIC_CHECKBOX:String = "clickOverCheck";
		public static const CLIC_RESTABLECER:String = "clickOverRestablecer";
		public static const CLIC_DESMARCAR:String = "clickOverDesmarcar";
		public static const CLIC_EDITAR:String = "clickOverEditar";
		
		public static const CLIC_CANCELAR_BOTON:String = "clickCancelarBoton";
		public static const CLIC_DESMARCAR_BOTON:String = "clickDesmarcarBoton";
		public static const CLIC_ACEPTAR_BOTON:String = "clickAceptarBoton";
		public static const CLIC_MANDAINDEX:String = "clickitemindex";
	    public static const MANDA_TIPO_DE_POP:String = "tipoDePopNacionales";
		
		/*public static const BLOQUEAR_LISTA_EDITANDO:String = "editandoListaRegistrarConfirmacion";*/
		
		
		public function EventoMonitorearNacionales(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoMonitorearNacionales(type,bubbles,cancelable);
		}
	}
}





