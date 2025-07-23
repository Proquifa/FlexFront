package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.agenteAduanal
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;

	public class EventoCatAgenteContactos extends Event
	{
		public var idContacto:Number; 
		public var idAgente:Number; 
		public var tipo:String;
		public var contacto:Contacto;
		public var isSolicitudDeHabilitados:Boolean;
		public var habilitado:Boolean;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		
		public static const CANCELAR_AGENTE:String = "cancelarEventoCatAgenteContactos";
		public static const OBTENER_CONTACTOS_AGENTE:String = "obtenerContactosEventoCatAgenteContactos";
		
		public static const ELIMINAR_CONTACTO_SERVER_AGENTE:String = "eliminarContactoSolicitudEnServerEventoCatAgenteContactos";
		public static const ELIMINAR_CONTACTO_VISTA_AGENTE:String = "eliminarContactoSolicitudEnVistaEventoCatAgenteContactos";
		
		public static const MODIFICAR_CONTACTO_VISTA_AGENTE:String = "modificarContactoSolicitudEnVistaEventoCatAgenteContactos";
		public static const EDITA_CONTACTO_SERVICE_AGENTE:String = "editaContactoEventoSolicitudEnServerCatProContactosEventoCatAgenteContactos";
		
		public static const AGREGA_CONTACTO_SERVICE_AGENTE:String = "agregaContactoSolicitudEnServerEventoCatAgenteContactos";
		public static const AGREGAR_CONTANTO_VISTA_AGENTE:String = "agregarContactoSolicitudEnVistaEventoCatAgenteContactos";
		
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_CONTACTOS_AGENTE:String = "insertarModificacionContactosAgenteEventoCatAgenteContactos";
		
		
		
		public function EventoCatAgenteContactos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoCatAgenteContactos(type,bubbles,cancelable);
		}
	}
}