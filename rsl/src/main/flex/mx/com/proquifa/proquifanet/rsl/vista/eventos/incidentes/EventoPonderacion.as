package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Ponderacion;
	
	public class EventoPonderacion extends Event
	{
		
		public static const TRAER_PONDERACION:String = "traerPonderacionEvent";
		public static const OBTENER_PONDERACION:String = "obtenerPonderacionEvent";
		//public static const PASAR_ACCIONES_PONDERACION:String = "pasarAccionesPonderacionEvent";
		
		public static const TRAER_PONDERACION_CON_INCIDENTE:String = "traerPonderacionconIncidenteEvent";
		
		public static const TRAER_IMPLICADOS_PONDERACION:String = "traerImplicadosPonderacionEvent";
		public static const TRAER_COLABORADORES_PONDERACION:String = "traerColaboradoresPonderacionEvent";
		public static const OBTENER_TODOS_COLABORADORES_PONDERACION:String = "obtenerTodosColaboradoresPonderacionEvent";
		
		public static const ACTUALIZAR_PONDERACION:String = "actualizarPonderacionEvent";
		public static const REGRESAR_EFICIENCIA_PONDERACION:String = "regresarEficienciaPonderacionEvent";
		
		//public static const MODIFICAR_IMPLICADOS_PONDERACION:String = "modificarImplicadosPonderacionEvent";
		
		public var _usuario:String;
		public var _incidente:Incidente;
		public var _ponderacion:Ponderacion;
		public var accion:String;
		
		//public var _implicados:ArrayCollection;
		
		public function EventoPonderacion(type:String,bubbles:Boolean=true,cancelable:Boolean=true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoPonderacion(type,bubbles,cancelable);
		}
	}
}