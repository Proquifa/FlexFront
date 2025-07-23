package mx.com.proquifa.proquifanet.rsl.vista.eventos.admon
{
	import flash.events.Event;
	
	public class EventoVistaCatalogo extends Event
	{
		
		public static const TRAER_ESTRUCTURA:String = "traerEstructuraEvento";
		public static const TRAER_EMPLEADOS:String = "traerEmpleadosEvento";
		public static const TRAER_USUARIOS:String = "TraerUsuariosEvento";
		public static const TRAER_CATALOGO:String = "TraerCatalogoEvento";
		public static const ACTUALIZAR_ESTRUCTURA:String = "ActualizarEstructuraEvento";
		
		public var datos:Object;
		public var titulo:String;
		
		public function EventoVistaCatalogo(type:String,bubbles:Boolean = true,cancelable:Boolean = true)
		{	
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoVistaCatalogo(type,bubbles,cancelable);
		}
	}
}