package mx.com.proquifa.vista.eventos.registrarConfirmacion
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.OrdenDespacho;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RegistroConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	
	public class EventoRegistrarConfirmacion extends Event
	{
		public var usuario:String;
		public var origen:String;
		public var empleado:Empleado;
		public var idProveedor:int;
		public var ordenDespacho:OrdenDespacho;
		public var idOrdenDespacho:Number;
		public var indiceDividir:int;
		public var indiceActualDividido:Number;
		public var piezas:int;
		public var tipoSelect:String;
		public var indiceActual:int;
		public var partidas:ArrayCollection;
		public var todasPartidas:Boolean;
		public var registrarConfirmacion:RegistroConfirmacion;
		public var segundaVista:Boolean;
		public var indiceAcambiar:int;
		public var tipoCambio:String;
		public var costoNuevo:Number;
		public var idOC:Number;
		public var numPiezas:int;
		public var internacionales:Boolean;
		public var nombreProveedor:String;
		
		/*public static var editando:Boolean;
		public static var indiceEditando:int;*/
		
		//SERVICIO
		public static const OBTENER_INDICADOR_PENDIENTES:String = "obtenerIndicadorPendientesRegistrarConfirmacion";
		public static const OBTENER_INFO_COMPRA_AGRUPADA:String = "obtenerInfoRegistrarConfirmacionEventoRegistrarconfirmacion";
		public static const OBTENER_PARTIDAS_POR_PROVEEDOR:String = "obtenerPartidasPorProveedorEventoRegistrarconfirmacion";
		public static const OBTENER_FAMILIAS_POR_PROVEEDOR:String = "obtenerFamiliasPorProveedorEventoRegistrarconfirmacion";
		public static const REGISTRAR_PARTIDAS_COMPRA:String = "registraPartidasComprasEventoRegistrarconfirmacion";
		/*public static const OBTENER_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTENER_PARTIDAS_PRODUCTO_ORDEN_DESPACHO_REGISTRADAS:String = "obtenerPartidasOrdenesDespachoRegistradasEventoRegistrarDespacho";
		public static const CERRAR_PENDIENTE_ORDEN_DESPACHO_REGISTRADAS:String = "cerrarPendienteDespachoRegistradasEventoRegistrarDespacho";
		public static const OBTIENE_IMAGENES_ORDEN_DESPACHO_REGISTRADAS:String = "obtieneImagenesEventoRegistrarDespacho";*/
		
		//VISTA
		public static const IR_ORDEN_SELECCIONADA:String = "irAOrdenSeleccionadaEventoRegistrarConfirmacion";
		public static const CLIC_BOTONERA:String = "clicBotoneraRegistrarConfirmacion";
		public static const CLIC_BOTONERA_FOOT:String = "clicBotoneraFootRegistrarConfirmacion";
		public static const CLIC_ACEPTAR_DIVIDIR_LISTA:String = "clicAceptarDividirPiezasGridRegistrarConfirmacion";
		public static const CLIC_ACEPTAR_RESTABLECER_LISTA:String = "clicRestablecerPiezasGridRegistrarConfirmacion";
		public static const OBTENER_ID_ORDENCOMPRA_MODIFICADA:String = "obtineIdOrdenCompraAmodificar";
		public static const ENVIAR_DATOS_DEL_POPUP:String = "enviaDAtosDelPopUp";
		public static const RECIBE_DATOS_DEL_POPUP:String = "enviaDAtosDelPopUp";
		public static const CAMBIA_EL_PRECIO_DE_LA_LISTA:String = "cambiaMontodeListaOc";
		public static const OBTENER_INDEX_LISTA_OC:String = "ObtieneElindiceListaOC";
		public static const INICIA_ESPERA:String = "iniciaEsperaVista";
		
		public static const CLIC_CHECKBOX:String = "clickOverCheck";
		public static const CLIC_RESTABLECER:String = "clickOverRestablecer";
		public static const CLIC_DESMARCAR:String = "clickOverDesmarcar";
		public static const CLIC_EDITAR:String = "clickOverEditar";
		public static const CLIC_MANDAINDEX:String = "clickitemindex";
		
		public static const CLIC_CANCELAR_BOTON:String = "clickCancelarBoton";
		public static const CLIC_DESMARCAR_BOTON:String = "clickDesmarcarBoton";
		public static const CLIC_ACEPTAR_BOTON:String = "clickAceptarBoton";
		/*public static const BLOQUEAR_LISTA_EDITANDO:String = "editandoListaRegistrarConfirmacion";*/
		public static const SEGUNDA_VISTA_ACTIVA:String = "guardarVistaAbierta";
		
		////////////////////////////////////REGISTRO CONFIRMACION NACIONALES//////////////////////////////////////////////////////////////////////////////////
		
		public static const OBTENER_INFO_COMPRA_AGRUPADA_NACIONAL:String = "obtenerInfoRegistrarConfirmacionEventoRegistrarconfirmacionNacional";
		public static const OBTENER_PARTIDAS_POR_PROVEEDOR_NACIONAL:String = "obtenerPartidasPorProveedorEventoRegistrarconfirmacionNacional";
		public static const REGISTRAR_PARTIDAS_COMPRA_NACIONAL:String = "registraPartidasComprasEventoRegistrarconfirmacionNacional";
		public static const RECIBE_DATOS_DEL_POPUP_NACIONAL:String = "enviaDAtosDelPopUpNacional";
		
		public function EventoRegistrarConfirmacion(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoRegistrarConfirmacion(type,bubbles,cancelable);
		}
	}
}

