package vista.evento
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class EventoEVPlanificarSprint extends Event
	{
		public var tipoSelect:String;
		public var indice:int;
		public var usuario:Number;
		public var idSprint:Number;
		public static var maximizada:Boolean;
		public var visita:VisitaCliente;
		public var visitaCliente:ArrayCollection;
		public var visita1:ArrayCollection;
		public var visita2:ArrayCollection;
		public var visita3:ArrayCollection;
		public var visita4:ArrayCollection;
		public var visita5:ArrayCollection;
		
		/*SERVICIO*/
		public static const OBTENER_TOTALES_VISITA_CLIENTE:String = "obtenerVisitaClienteAgrupadasEVPlanificarSprint";
		public static const OBTENER_VISITA_CLIENTE_POR_EMPLEADO:String = "obtenerVisitasClientePorEmpleadoEVPlanificarSprint";
		public static const OBTENER_SPRINST_EN_CURSO:String = "obtenerSprintsEnCursoEVPlanificarSprint";
		public static const GUARDAR_PLANIFICACION_DE_SPRINT:String = "guardarCambiosAsignadosEVPlanificarSprint";
		public static const PLANIFICAR_SPRINT_VISITA_CLIENTE:String = "planificarSprintVisitaClienteEVPlanificarSprint";
		
		/*VISTA*/
		public static const CLIC_BOTONERA_SPRINT:String = "clicBotoneraPlanificar";
		public static const ELIMINAR_ACTIVIDAD:String = "eliminarActividadPlanificarSprint";
		public static const MOSTRAR_INFORMACION_LIGHT:String = "mostarInformacionEventoEVPlanificarSprint";
		
		public function EventoEVPlanificarSprint(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoEVPlanificarSprint( type, bubbles, cancelable );
		}
	}
}