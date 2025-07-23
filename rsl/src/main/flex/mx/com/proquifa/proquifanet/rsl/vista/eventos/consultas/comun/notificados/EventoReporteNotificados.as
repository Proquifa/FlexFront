package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.notificados
{
	import flash.events.Event;
	
	import mx.olap.aggregators.AverageAggregator;
	
	public class EventoReporteNotificados extends Event
	{
		public var valorAdicional:String;
		public var tipo:String;
		
		public var  cliente:String;
		public var  claveDePedido:String;
		public var  folio:String;
		public var  fechaInicioEspera:Date;
		public var  fechaEstimadaRealizacion:Date;
		public var  diasDeAtraso:int;
		public var  responsable:String;
		public var  tipoDeNotificacion:String;
		public var  claveDeCompra:String;
		public var  fechaDeFinalizacion:Date;
		public var  idEmpresa:int;
		public var  folioInt:int;
		
		public static const OBTENER_CLIENTE:String = "obtnerClienteReporteNotificados";
		public static const OBTENER_EMPLEADO:String = "obtenerEmpleadosReporteNotificados";
		public static const OBTENER_NOTIFICADOS:String = "obtenerNotificadosReporteNotificados";
		public static const OBTENER_HISTORIAL_NOTIFICADOS:String = "obtenerHistorialNotificadosReporteNotificados";
		
		public function EventoReporteNotificados(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			valorAdicional = "";
			super(type,bubbles,cancelable)
		}
		public override function clone():Event{
			return new EventoReporteNotificados(type,bubbles,cancelable);
		}
	}
}