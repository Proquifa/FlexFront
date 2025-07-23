package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class EventoAsignarSprint extends Event
	{
		public var usuarioEV:String;
		public var tipoSelect:String;
		public var idUsuario:Number;
		public var indice:int;
		public var visitasComplemento:ArrayCollection;
		public var visitas:ArrayCollection;
		public var asignar:Boolean;
		public var idSprint:Number;
		public var visitaCliente:VisitaCliente
		
		/////////////////////////////	  VISTA  	/////////////////////////////
		public static const ENVIAR_EV_USUARIO:String = "enviarVendedorEventoAsignarSprint";
		public static const CLIC_BOTONERA_ASIGNAR:String = "clicBotoneraEventoAsignarSprint";
		public static const CLIC_BOTONERA_FILTRO:String = "clicBotoneraFiltroEventoAsignarSprint";
		public static const ELIMINAR_ACTIVIDAD:String = "eliminarActividadVistaCompletarEventoAsignarSprint";
		public static const ENVIAR_VISITAS_COMPLEMENTARIAS:String = "enviarListaVisitaComplentariasEventoAsignarSprint";
		public static const ELIMINAR_VISITA_ASGINAR:String = "eliminarVisitarAsignarVistaEventoAsignarSprint";
		public static const MOSTRAR_INFORMACION_LIGHT:String = "mostrarPopUpDetallesVisitaEventoAsignarSprint";
		
		/////////////////////////////	SERVICIOS	/////////////////////////////	
		public static const OBTENER_VISITAS_ASIGNAR_SPRINT:String = "obtenerVisitasParaCoordinadorEVEventoAsignarSprint";
		public static const OBTENER_VISITA_CLIENTE_POR_EMPLEADO:String = "obtenerVisitasParaCompletarAsignacionEventoAsignarSprint";
		public static const ASIGNAR_VISITAS_COMPLEMENTARIAS:String = "asignarVisitasComplementariasEventoAsignarSprint";
		public static const GUARDAR_VISITAS_SPRINT:String = "guardarVisitasSprintEventoAsignarSprint";
		public static const ASIGNAR_VISITAS_SPRINT:String = "asignarVisitasSprintEventoAsignarSprint";
		
		public function EventoAsignarSprint(type:String, bubbles:Boolean=true, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoAsignarSprint( type, bubbles, cancelable );
		}
	}
}