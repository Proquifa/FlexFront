package mx.com.proquifa.proquifanet.rsl.vista.eventos.reportes.comun.llamadas
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Llamada;
	
	public class EventoReporteLamadas extends Event
	{
		public var vieneDe:String;
		public var llamada:Llamada;
		public var idFabricante:Number;
		public var listaPartidas:ArrayCollection;
		public static const CONSULTA_LLAMADAS_PENDIENTES:String = "consultaLlamadasPendientesEventoReporteLamadas";
		public static const CAMBIA_HIJO:String = "cambiaHijoEventoReporteLamadas";
		public static const CARGA_PRODUCTOS_POR_MARCA:String = "cargaProductosPorMarcasEventoReporteLamadas";
		public static const CIERRA_LLAMADA:String = "cierraLlamadasEventoReporteLamadas";
		public function EventoReporteLamadas(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoReporteLamadas( type, bubbles, cancelable );
		}
	}
}