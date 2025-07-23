package vista.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.SolicitudCFDI;
	
	public class EventoFacturaciones extends Event
	{
		public var cfdi:SolicitudCFDI;
		public static const CONSULTA_FACTURAS:String = "consultaEmpresasEventoFacturaciones"; 
		public static const CANCELA_FACTURA:String = "cancelaEmpresasEventoFacturaciones"; 
		
		public static const CONSULTA_COMPLEMENTOS_PAGO:String = "consultaComplementosDePagoEventoFavturaciones";
		
		
		public function EventoFacturaciones(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoFacturaciones( type, bubbles, cancelable );
		}
	}
}