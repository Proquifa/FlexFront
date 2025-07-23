package mx.com.proquifa.proquifanet.desPhsUsa.vistas.eventos
{
	import flash.events.Event;
	
	public class EventoGenericoDespachoPhsUsa extends Event
	{
		public var idOpcionSeleccionada:String;
		public var idEmpleado:Number;
		public var usuario:String;
		public var accion:Boolean;
		public var nombreCliente:String;
		public var paisCliente:String;
		
		public static const UTILIZA_OPCION_MENU:String = "utilizaOpcionMenuEventoGenericoDespachoPhsUsa";
		public static const ACTIVIDADES_X_USUARIO:String = "actividadesXUsuarioEventoGenericoDespachoPhsUsa";
		public static const SELECCIONA_OPCION:String = "seleccionaOpcionEventoGenericoDespachoPhsUsa";
		public static const PARTIDAS_A_DESPACHO:String = "partidasADespachoEventoGenericoInspectorPhs";
		
		public function EventoGenericoDespachoPhsUsa(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoGenericoDespachoPhsUsa( type, bubbles, cancelable );
		}
	}
}