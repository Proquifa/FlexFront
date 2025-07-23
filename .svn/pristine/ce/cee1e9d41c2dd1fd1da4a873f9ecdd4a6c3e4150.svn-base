package mx.com.proquifa.proquifanet.rsl.vista.eventos.soliciud
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.SolicitudVisita;  
	
	public class EventoSolicitarVisita extends Event
	{
		
		public var pendiente:String;
		public var user:Empleado;
		public var habilitado:Number;
		public var idEjecutivoVentas:Number;
		public var idCliente:Number;
		public var solicitudVisita:SolicitudVisita;
		public var contacto:Contacto;
		public var tipo:String;
		public var indexTab:int;
		
		static public var bloqueoEditarDoc:Boolean;
		[Bindable]public static var indiceSiguiente:Number; 
		
		//  EVENTOS DE SERVICIO
		public static const OBTENER_LISTA_VISITA:String = 'obtenerDatosVisitaEventoSolicitarVisitas';
		public static const OBTENER_CONTACTOS_CLIENTE:String = 'obtenerDatosContactosEventoSolicitarVisitas';
		public static const REGISTRAR_SOLICITUD_VISITA:String = 'registrarSolicitudVisitaEventoSolicitarVisitas';
		public static const GUARDAR_CONTACTO_NUEVO:String = 'guardarContactoNuevoEventoSolicitarVisitas';
		public static const OBTENER_INFORMACION_DE_VISITA_CLIENTE:String = 'obtenerInformacionVisitaCliente';
		
		
		//  EVENTOS DE VISTA
		public static const CLIC_BOTONERA:String = 'clicBotonera';
		public static const VISTA_ANTERIOR:String = 'vistaAnterior';
		public static const CLIC_PENDIENTES_SOLICITAR_VISITAS:String = 'clicPendientesSolicitarVisitasEventoSolicitarVisitas';
		public static const OBTENER_CLIENTES:String = 'obtenerClientesEventoSolicitarVisitas';
		public static const CHANGE_TAB_VIEW:String ='cambioTabMenu';
		public static const VISITA_SIN_INFORMACIÓN:String = 'vistaSinInformacion';
		
		
		
		
		public function EventoSolicitarVisita(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoSolicitarVisita( type, bubbles, cancelable );
		}
	}
}