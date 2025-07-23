package mx.com.proquifa.proquifanet.rsl.vista.eventos
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ValidadorDataGrid;

	public class EventoGenerico extends Event
	{
		public var idVentana:String;
		public var informacion:Object;
		public var campoTexto:String;
		public var text:String;
		public var name:String;
		public var contacto:ValidadorDataGrid;
		public var height:int;
		public var idContacto:Number;
		public var tipoSolicitud:String;
		public var razones:String;
		public var cliente:String;
		public var solicitante:String;
				
		public static const ABRIR_VENTANA_EN_PENDIENTES:String = "abrirVentanaEnPendientes";
		public static const MOSTRAR_DATOS_EN_PESTANAS_DOCUMENTACION:String = "mostarDatosEnPestanasDocumentacion";
		public static const MOSTARA_DATOS_EN_PESTANA_LLAMADAS:String = "mostrarDatosEnPestanaLlamadas";
		public static const CERRAR_VENTANA_BUSQUEDAPRODUCTOS:String = "cerrarVentanaEnPendientes";
		public static const ABRIR_VENTANA_EN_CATALOGOS:String = "abrirVentanaEnCatalogos";
		public static const ABRIR_VENTANA_LOGIN:String = "abrirVentanaLogin";
		
		
		public static const CERRAR_PDF:String = "cerrarPdFEventoGenerico";
		public static const CERRAR_POP_UP_CONTACTOS:String = "cerrarPopUpContactosEventoGenerico";
		public static const REGRESA_CONTACTO_POP_UP_CONTACTOS:String = "regresaContactoPopUpContactosEventoGenerico";
		public static const MUESTRA_POPUP_INFORMACION_CONTACTOS:String = "muestraPopUpInformacionontactosEventoGenerico";
		/**
		 * Constantes del Evento para subir los PdF´s al Servidor
		 */
		public static const SUBIR_DOCUMENTO_PDF:String = "subirDocumentoPdfEventoGenerico";
		public static const MODIFICAR_DOCUMENTO_PDF:String = "modificarDocumentoPdfEventoGenerico";
		public var tipoArchivo:String; 
		public var bytes:ByteArray;
		public var folioDocumento:String;
		
		/**
		 * Constantes para validar un Usuario en el Login
		 */ 
		public static const VALIDAR_EMPLEADO_LOGIN:String = "validarEmpleadoLoginEventoGenerico";
		public static const VALIDAR_AUTORIZACION:String = "validarAutorizacionEventoGenerico";
		public static const ENVIAR_USUARIO_LOGIN:String = "usuarioLogueado";
		public static const OBTENER_ID_POR_USUARIO:String = "obtnerIdPorUsuarioEventoGenerico";
		public static const TRAER_PERMISOS_USUARIO_LOGIN:String = "traerPermisosUsuarioLogueadoEventoG";
		public var idEmpledo:Number;
		public var usuario:String;
		public var empleado:Empleado;
		
		/**
		 * Constantes que funcionan para datos globales
		 */
		
		
		public static const CACHAR_MOVIMIENTO_REDIMENSIONAR:String = "cacharMovimientoRedimensionarEventoGenerico";
		
		public static const OBTENER_EMPLEADOS_HABILITADOS:String = "obtenerEmpleadosHabilitadosEventoGenerico";
		
		public static const CHANGE_TEXT_INPUT_BORDEADO:String = "changeTextInputBordeado";
		//public static const CACHAR_REDIMENSION_DE_COMPRESOR_VENTANA:String = "cacharRedimensionDeCompresorVentanaEventoGenerico";
		public static const CACHAR_REDIMENSION_DE_COMPRESOR_VENTANA:String = "cacharRedimensionDeCompresorVentanaEventoGenerico";
		/**
		 * Movimientos en los textInputsGlobales
		 */
		public static const CARGA_CHANGE_TEXT_INPUT_PUNTEADO_GENERAL:String = "generaChangeTextInputGeneralEventoGenerico";
		public static const ACTUALIZA_TEXTO:String = "actualizaTextoTextInputGeneralEventoGenerico";
		
		public static const MOBIL_LOGIN_PUSH_VIEW:String = "pushViewEventoGenerico";
		
		public var actividad:String;
		
		public function EventoGenerico(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoGenerico( type, bubbles, cancelable );
		}
		
	}
}