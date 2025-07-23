package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	public class EventoAdministrador extends Event
	{
		public var datos:Object = {};
		public var listaReferencias:ArrayCollection;		
		public static const IR_A_VISTA:String = "iravistaeventoAdministrador";
		public static const REGRESAR_A_VISTA:String = "regresaravistaeventoAdministrador"
		public static const CIERRA_POP_UP_REFERENCIAS:String = "cierraPopUpRefrenciaseventoAdministrador";
		public static const CIERRA_POP_UP_REFERENCIASAVP:String = "cierraPopUpRefrenciaseventoAdministrador";
		public static const REGRESA_LISTA_REFERENCIAS:String = "regresaListaReferenciaseventoAdministrador";
		public static const REGRESA_ORIGEN:String = "regresaOrigeneventoAdministrador";
		public static const REGRESAR_LISTA_REFRENCIAS:String = "regresarListaReferenciaseventoAdministrador";
		public function EventoAdministrador(type:String,bubbles:Boolean=true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable);
		}
		
		public override function clone():Event{
			return new EventoAdministrador(type,bubbles,cancelable);
		}
		
	}
}