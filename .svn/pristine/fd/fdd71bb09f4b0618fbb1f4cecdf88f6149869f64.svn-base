package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.generales
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Modificacion;
	
	public class EventoCatProContactos extends Event
	{
		public var idContacto:Number; 
		public var tipo:String;
		public var contacto:Contacto;
		public var isSolicitudDeHabilitados:Boolean;
		
		//VARIABLES VISTA PARA MODIFICACION
		public var modif:Modificacion;
		public var idEmpleado:Number;
		public var metodo:String;
		public var servicio:String;
		public var ventana:String;
	    public var firmaEvento:ByteArray;
		public var rutaFirmaEvento:String;
		
		
		public static const CANCELAR:String = "cancelarEventoCatProContactos";
		public static const OBTENER_CONTACTOS:String = "obtenerContactosEventoCatProContactos";
		public static const MODIFICA_CONTACTO_NAFTA:String = "editaContactoNafta";
		
		public static const ELIMINAR_CONTACTO_SERVER:String = "eliminarContactoSolicitudEnServerEventoCatProContactos";
		public static const ELIMINAR_CONTACTO_VISTA:String = "eliminarContactoSolicitudEnVistaEventoCatProContactos";
		
		public static const MODIFICAR_CONTACTO_VISTA:String = "modificarContactoSolicitudEnVistaEventoCatProContactos";
		public static const EDITA_CONTACTO_SERVICE:String = "editaContactoEventoSolicitudEnServerCatProContactos";
		public static const EDITA_CONTACTO_SERVICE2:String = "editaContactoEventoSolicitudEnServerCatProContactos2";
		public static const VERIFICACONTACTONAFTA:String = "verificarContactoNafta";
		
		public static const AGREGA_CONTACTO_SERVICE:String = "agregaContactoSolicitudEnServerEventoCatProContactos";
		public static const AGREGAR_CONTANTO_VISTA:String = "agregarContactoSolicitudEnVistaEventoCatProContactos";
		
		//EVENTO PARA MODIFICACION
		public static const INSERTAR_MODIFICACION_CONTACTOS_PROVEEDOR:String = "insertarModificacionContactosProveedorEventoCatProContactos";
		
		
		public function EventoCatProContactos(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoCatProContactos(type,bubbles,cancelable);
		}
	}
}