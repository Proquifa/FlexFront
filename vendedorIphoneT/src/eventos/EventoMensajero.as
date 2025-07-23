package eventos
{
	import flash.events.Event;
	
	import modelo.objetos.Coordenada;
	import modelo.objetos.Documento;
	import modelo.objetos.PendientesMensajero;
	import modelo.objetos.itemPendientes;
	
	import mx.collections.ArrayCollection;

	public class EventoMensajero extends Event
	{
		
		public static const CONSULTAR_PENDIENTES_MENSAJERO:String ="consultarPendientesMensajeroEvent";
		public static const IR_A_VISTA_PENDIENTES_MENSAJERO:String="iraVistaPendientesMensajeroEvent";
		public static const IR_A_VISTA_PENDIENTES_RUTA:String = "iraVistaPendientesRutaEvent";
		public static const SELECCIONAR_PENDIENTE_MENSAJERO:String = "seleccionarPendienteMensajeroEvent";
		public static const SELECCIONAR_DOCUMENTO_MENSAJERO:String = "seleccionarDocumentoMensajeroEvent";
		public static const REGRESAR_DOCUMENTO_VERIFICADO:String = "regresarDocumentoVerificadoMensajeroEvent";
		public static const IR_A_MAPA_MENSAJERO:String = "iraMapaMensajeroEvent";
		public static const REALIZAR_RUTA_MENSAJERO:String = "realizarRutaMensajeroEvent";
		public static const ACTUALIZAR_PENDIENTES_MENSAJERO:String = "actualizarPendientesMensajeroEvent";
		public static const ACTUALIZAR_COORDENADAS_MENSAJERO:String = "actualizarCoordenadasMensajeroEvent";
		public static const VALIDAR_VISITA_MENSAJERO:String = "validarVisitaMensajero";
		public static const EVENTO_PRUEBA:String = "eventoPruebaEvent";
		public static const CERRAR_PENDIENTES_EN_PROQUIFA:String = "cerrarPendientesEnProquifaEvent";
		
		
		public var _usuario:String;
		public var _pendientesSeleccionados:itemPendientes = new itemPendientes();
		public var _pendientesSeleccionadosArreglo:ArrayCollection = new ArrayCollection();
		public var _pendienteSeleccionado:PendientesMensajero = new PendientesMensajero();
		public var _documentoSeleccionado:Documento = new Documento();
		public var _documentoVerificado:Documento = new Documento();
		/*public var _coordenadas:Coordenada = new Coordenada();*/
		
		public var _pendientesACerrar:ArrayCollection = new ArrayCollection();
		//public static const 		
		
		public function EventoMensajero(type:String,bubbles:Boolean=true,cancelable:Boolean=true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoMensajero(type,bubbles,cancelable);
		}
	}
}