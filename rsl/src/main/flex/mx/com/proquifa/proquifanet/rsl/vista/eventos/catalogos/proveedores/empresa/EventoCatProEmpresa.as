package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.empresa
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	
	public class EventoCatProEmpresa extends Event
	{
		public var idProveedor:Number;
		
		//constantepara servicio
		public static const OBTENER_PROVEEDOR:String = "obtenerProveedorEventoCatProEmpresa";
		
		public function EventoCatProEmpresa(type:String, bubbles:Boolean=true, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoCatProEmpresa(type,bubbles,cancelable);
		}
	}
}