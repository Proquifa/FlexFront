package source.eventos
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.Ruta;
	

	public class EventoPendientesMensajeroGdl extends Event
	{
		
		////////////////////////////// VARIABLES //////////////////////////////
		public var idOpcionSeleccionada:String;
		public var usuario:String;
		public var pendienteSeleccionado:Ruta;
		
		
		
		
		////////////////////////////// VISTA //////////////////////////////
		
		public static const UTILIZA_OPCION_MENU_COMPRADOR_GDL:String = "utlizaOpcionMenuEventoPendientesCompradorGdl";
		public static const SELECCIONA_OPCION:String = "SeleccionaOpcionEventoPendientesCompradorGdl";
		public static const ENVIA_PENDIENTE_SELECCIONADO:String = "enviaPendienteSeleccionadoEventoPendientesCompradorGdl";
		
		
		////////////////////////////// SERVICIO //////////////////////////////
		
		public static const PENDIENTES_MENSAJERO:String = "pendientesMensajeroEventoPendientesCompradorGdl";
		public static const GUARDAR_PENDIENTE_MENSAJERO:String = "guardarPendienteMensajeroEventoPendientesCompradorGdl";
		
		
		
		public function EventoPendientesMensajeroGdl(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoPendientesMensajeroGdl( type, bubbles, cancelable );
		}
	}
}