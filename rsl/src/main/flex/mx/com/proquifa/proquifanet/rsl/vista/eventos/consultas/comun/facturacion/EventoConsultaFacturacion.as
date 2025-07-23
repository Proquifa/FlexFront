package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.facturacion
{
	import flash.events.Event;

	public class EventoConsultaFacturacion extends Event
	{
		public var valorAdicional:String;
		public var factura:String;
		public var busqueda:String;
		public var finicio:Date;
		public var ffin:Date;
		public var cliente:String;
		public var medio:String;
		public var facturo:String;
		public var estado:String;
		public var tipo:String;
		public var refacturada:String;
		
		public static const OBTENER_CLIENTES:String = "ObtenerClienteConsultaFacturacion";
		public static const OBTENER_BUSQUEDA_AVANZADA:String = "ObtenerBusquedaAvanzadaConsultaFacturacion";
		
		public function EventoConsultaFacturacion(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			valorAdicional = "";
			super(type,bubbles,cancelable)
		}
		public override function clone():Event{
			return new EventoConsultaFacturacion(type,bubbles,cancelable);
		}
	}
}