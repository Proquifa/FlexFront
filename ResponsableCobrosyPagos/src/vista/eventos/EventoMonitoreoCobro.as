package vista.eventos
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.Cobros;

	public class EventoMonitoreoCobro extends Event
	{
		
		public var currentCobro:Cobros;
		public var idEmpleado:int;
		public var listaCobros:ArrayCollection;		
		public var indice:int;
		
		/**
		 * Servicio
		 */
		public static const CONSULTA_COBROS_MONITOREO:String = "consultaCobrosMonitoreoEventoMonitoreoCorbro";
		public static const CAMBIA_INDICE:String = "cambiaIndiceEventoMonitoreoCobro";		
		public static const LLENADO_DE_LISTA:String = "llenadoDeListaEventoMonitoreoCorbro";
		public static const LLENAR_LISTA_FACTURAS:String = "llenarListaFacturasEventoMonitoreoCorbro";
		
		public function EventoMonitoreoCobro(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoMonitoreoCobro( type, bubbles, cancelable );
		}
	}
}