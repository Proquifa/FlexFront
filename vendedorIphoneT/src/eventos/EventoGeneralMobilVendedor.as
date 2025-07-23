package eventos
{
	import flash.events.Event;

	public class EventoGeneralMobilVendedor extends Event
	{
		public var usuario:Number;
		public var vista:String;
		
		/////////////////////////////	  VISTA  	/////////////////////////////
		public static const CAMBIAR_VISTA_MENU:String = "cambiarVistaMenuEventoGeneralMobilVendedor";
		/*public static const CAMBIAR_VISTA_VISITAS:String = "cambiarVistaVisitasEventoGeneralMobilVendedor";
		public static const CAMBIAR_VISTA_COTIZACIONES:String = "cambiarVistaCotizacionesEventoGeneralMobilVendedor";
		public static const CAMBIAR_VISTA_REPORTES:String = "cambiarVistaReportesEventoGeneralMobilVendedor";
		public static const CAMBIAR_VISTA_SECCION:String = "cambiarVistaSeccionEventoGeneralMobilVendedor";*/
		
		public function EventoGeneralMobilVendedor(type:String, bubbles:Boolean=true, cancelable:Boolean=false) 
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoGeneralMobilVendedor( type, bubbles, cancelable );
		}
	}
}