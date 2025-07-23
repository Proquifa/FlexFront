package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	
	public class EventoCatClientesContactos extends Event
	{
		public var idContacto:Number; 
		public var idCliente:Number; 
		public var tipo:String;
		public var contacto:Contacto;
		public var isSolicitudDeHabilitados:Boolean;
		public var habilitado:int;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
		
		public static const OBTENER_CONTACTOS_CLIENTE:String = "obtenerContactosClienteEventoCatClienteContactos";
		public static const EDITAR_CONTACTO_SERVICE_CLIENTE:String = "editarContactosClienteEventoCarClientesContactos";
		public static const ELIMINAR_CONTACTO_SERVER_CLIENTE:String = "eliminarContactoServerClienteEventoCatClientesContactos";
		public static const AGREGA_CONTACTO_SERVICE_CLIENTE:String = "agregaContactoServiceClienteEventoCatClientesContactos";
		public static const INSERTAR_LA_MODIFICACION_DATOS_CONTACTO:String = "insertarLaModificacionDatosContactoEventoCatClientes_General";
		
		public static const MODIFICAR_CONTACTO_VISTA_CLIENTE:String = "modificarContactoVistaClienteEventoCatClientesContactos";
		public static const AGREGAR_CONTACTO_VISTA_CLIENTE:String = "agregarContactoVistaClienteEventoCatClientesContactos";
		public static const ELIMINAR_CONTACTO_VISTA_CLIENTE:String = "eliminarContactoVistaClienteEventoCatClientesContactos";
		
		public function EventoCatClientesContactos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			return new EventoCatClientesContactos(type,bubbles,cancelable);
		}
	}
}