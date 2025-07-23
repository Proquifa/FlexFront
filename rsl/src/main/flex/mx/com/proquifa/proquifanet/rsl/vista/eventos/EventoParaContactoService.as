package mx.com.proquifa.proquifanet.rsl.vista.eventos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;

	public class EventoParaContactoService extends Event
	{		
		/**
		 * Variables del evento.
		 */
		public var descripcion:String;
		public var origen:String;
		public var empresa:String;
		public var nombre:String;
		public var mail:String;
		public var busca:String;
		public var tipoBusqueda:int;
		public var obtenContacto:int;
		public var descripcionContacto:ArrayCollection;
		public var consulta:String;
		public var asociar:Boolean;
		public var contactoSeleccionado:ArrayCollection;
		public var vieneD:String;
		public var idContacto:Number;
		public var checkBox:Boolean;
		public var busquedaPorEmpresa:String = "";
		
		public static const OBTENER_CONTACTOS:String = "obtenerContactosEventoParaContactoService";
		public static const OBTENER_CONTACTOS_AVANZADA:String = "obtenerContactosAvanzadaEventoParaContactoService";
		public static const OBTENER_CONTACTOS_IDCONTACTO:String = "obtenerContactosIdContactoContactoService";
		public static const OBTENER_CONTACTO_PROVEEDOR_CLIENTE:String = "obtenerContactoProveedorContactoService";
		public static const OBTEN_DESCRIPCION_CONTACTO:String = "obtenDescripcionContactoService";
		public static const OBTENER_TIPO_CONSULTA:String = "obtenerTipoConsulaContactoService";
		public static const AGREGA_BOTON:String = "agregaBotonContactoService";
		public static const SELECCIONAR_CONTACTO:String = "seleccionarContactoService";
		
		//-----
		public static const BUSQUEDA_LOCAL:String = "busquedaLocal";
		
		//----- Prueba para popup contactos
		public static const RECIBIR_DATOS_CONTACTO:String = "recibirDatosContactoEventoGenerico";
		public static const CIERRA_POPUP:String = "recibirDatosContactoEventoGenerico2";
		public static const ENVIAR_DATOS_POPUP:String = "recibirDatosContactoEventoGenerico3";
		public static const HAS_VISIBLE_POPUP_CONTACTOS:String = "recibirDatosContactoEventoGenerico4";
		public static const RECIBIR_DATOS_CONTACTO_DE_PLANTILLA:String = "recibirDatosContactoEventoGenerico5";
		
		public static const OCULTAR_CHECKBOX:String = "ocultarCheckBox";
		public static const CHECKBOX_ASOCIAR:String = "checkBoxEventoParaContactosService";
		
		public function EventoParaContactoService(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoParaContactoService( type, bubbles, cancelable );
		}
	}
}