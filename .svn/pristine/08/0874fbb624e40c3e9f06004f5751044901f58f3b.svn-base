package mx.com.proquifa.vista.eventos.gestionarBackOrder
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.OrdenDespacho;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RegistroConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;

	public class EventoGestionarBackOrder extends Event
	{
		public var usuario:String;
		public var empleado:Empleado;
		public var idProveedor:int;
		public var nombreProveedor:String;
		public var familias:ArrayCollection;
		
		public var ordenDespacho:OrdenDespacho;
		public var idOrdenDespacho:Number;
		public var indiceDividir:int;
		public var piezas:int;
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
		public var tipoPartida:String;
		
		public static const IR_ORDEN_SELECCIONADA:String = "irAOrdenSeleccionadaEventoGestionarBO";
		public static const OBTENER_HISTORIAL_X_ID_COMPRA:String = "obtenerHistorialXidCompraEventoGestionarBackOrder";
		public static const OBTENER_PARTIDAS_AGRUPADAS:String = "obtenerPartidasAgrupadasEventoGestionarBackOrder";
		public static const OBTENER_ULTIMA_MODIFICACION_HISTORIAL:String = "obtenerUltimaModificacionHistorial";
		public static const ENVIAR_PARTIDAS_BO:String = "enviarPartidasGBG";

		//VISTA
		public static const CLIC_BOTONERA_FOOT:String = "clicBotoneraFootGestionarBackOrder";
		public static const ORDENAR_DIASBO:String = "ordenarDiasBO";
		public static const BUSCA_TEXTO:String = "buscaTexto";
		public static const SE_ACTIVO_UN_CAMBIO:String = "activoCambioscheckGBG";
		public static const ACTIVA_DESACTIVA_BOTON_REGISTRO:String = "activaBotonBOG";
		public static const INICIA_ESPERA:String = "iniciaEspera";
		public static const REVISA_BOTON:String = "revisarBoton";

		public function EventoGestionarBackOrder(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoGestionarBackOrder(type,bubbles,cancelable);
		}
	}
}