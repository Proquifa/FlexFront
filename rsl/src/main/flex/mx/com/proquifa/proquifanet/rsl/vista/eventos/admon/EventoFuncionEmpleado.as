package mx.com.proquifa.proquifanet.rsl.vista.eventos.admon
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos.Funcion;

	//import flex.mx.com.proquifa.proquifanet.catalogos.vistas.modelo.objetos.Empleado;
	
	
	public class EventoFuncionEmpleado extends Event
	{
		
		public static const CREAR_FUNCIONEMPLEADO:String = "crearFuncionEmpleadoEvent";
		public static const ELIMINAR_FUNCIONEMPLEADO:String = "eliminarFuncionEmpleadoEvent";
		public static const TRAER_FUNCIONES:String = "traerFuncionesEvent";
		
		public var _usuario:Empleado;
		public var _funcion:Funcion;
		public var _empleado:Empleado;
		public var _idProceso:int;
		public var _idfuncion:int;
		
		public function EventoFuncionEmpleado(type:String,bubbles:Boolean=true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoFuncionEmpleado(type,bubbles,cancelable);
		}

	}
}