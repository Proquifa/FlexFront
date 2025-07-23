package asistenteCalidad.vistas.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.UsuarioPConnect;
	
	public class EventoAsistenteCalidad extends Event
	{
		
		[Bindable]
		public static var nombreContacto:String;
		
		[Bindable]
		public static var nombreEmpresa:String;
		
		[Bindable]
		public static var correoContacto:String;

		[Bindable] 
		public static var vinculada:Boolean;
		
		public static var solicitudSelect:UsuarioPConnect;
		public static var usuarioSelect:UsuarioPConnect;
		public static var idClienteStatic:Number;
		
		
		public var idEmpleado:Number;
		public var contactos:ArrayCollection;
		public var solicitudUsuario:UsuarioPConnect;
		public var pendiente:String;
		public var contactoSelect:Contacto;
		public var idCliente:Number;
		
		
		
		//SERIVICIO
		public static const CARGAR_PENDIENTES_REGISTRO_USUARIOS_PCONECT:String = "cargarPendientesRegistroUsuariosPconectEventoAsistenteCalidad";
		public static const CARGAR_LISTA_CONTACTOS_CLIENTE:String = "cargarListaContactosClienteEventoAsistenteCalidad";
		public static const DESCARTAR_SOLICITUD_USUARIO_PCONECT:String = "descartarSolicitudUsuarioPconectEventoAsistenteCalidad";
		public static const VALIDAR_USUARIO_PCONNECT:String = "validarUsuarioPConnectEventoAsistenteCalidad";
		
		
		
		//VISTA
		public static const VISTA_ANTERIOR:String = "vistaAnterior";
		public static const BOTONERA_CLIC:String = "botoneraClic";
		public static const PENDIENTE_SELECCIONADO_PLANTILLA_ASISTENTE_CALIDAD:String = "pendienteSeleccionadoPlantillaEventoAsistenteCalidad";
		public static const PENDIENTE_SELECCIONADO:String = "pendienteSeleccionadoAsistenteCalidad";
		public static const CLIENTE_CON_CONTACTOS_SELECCIONADO:String = "clienteConContactosSeleccionadoEventoAsistenteCalidad";
		
		
		public function EventoAsistenteCalidad(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoAsistenteCalidad(type,bubbles,cancelable);
		}
	}
}