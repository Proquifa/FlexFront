package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.comerciales
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Campana;

	public class EventoCatProCampanas extends Event
	{
		
		
		public var camp:Campana; 
		public var idProveedor:Number;
		public var tipoSelect:String;
		public var idCampana:Number;
		
		
		public static const AGREGAR_ACTUALIZAR_CAMPANA_COMERCIAL:String = "agregarActualizarCampañaComercialCatProCampanas";
		public static const ELIMINAR_CAMPANA_COMERCIAL:String = "eliminarCampañaComercialCatProCampanas"
		public static const OBTENER_CAMPANAS_COMERCIALES:String = "obtenerCampanasComercialesCatProCampanas";
		public static const OBTENER_TODOS_LOS_PRODUCTOS_DEL_PROVEEDOR:String = "obtenerTodosLosProductosDelProveedor";
		public static const CLIC_BOTONERA_CAMPANAS:String = "clicBotoneraCampanasCatPro";
		
		
		
		public function EventoCatProCampanas(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoCatProCampanas(type,bubbles,cancelable);
		}
	}
}