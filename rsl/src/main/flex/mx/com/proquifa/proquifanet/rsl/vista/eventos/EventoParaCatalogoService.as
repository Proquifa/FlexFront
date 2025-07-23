package mx.com.proquifa.proquifanet.rsl.vista.eventos
{
	import flash.events.Event;

	public class EventoParaCatalogoService extends Event
	{
		public var tipo:String;
		public var valorAdicional:String;
		public var nombreEmpresa:String;
		public var cotizacion:String;
		public var Folio:Number;
		public static const OBTENER_PARTIDA_COTIZACION:String = "obtenerPartidaCotizacionEventoParaCatalogoService";
		public static const OBTENER_PARTIDA_COTIZACION_MADRE:String = "obtenerPartidaCotizacionMadreEventoParaCatalogoService";
		public static const OBTENER_CLIENTES:String = "obtenerClientesEventoParaCatalogoService";
		public static const OBTENER_CLIENTES_NO_ENCONTRADOS:String = "obtenerClientesNoEncontradosEventoParaCatalogoService";
		public static const OBTENER_PROVEEDORES:String = "obtenerProveedoresEventoParaCatalogoService"
		public static const OBTENER_EMPLEADOS:String = "obtenerEmpleadosEventoParaCatalogoService";
		public static const OBTENER_EMPLEADOS_POR_EMPRESA:String = "obtenerEmpleadosPorEmpresaEventoParaCatalogoService";
		public static const OBTENER_EMPLEADOS_POR_EMPRESA_EN_LLAMADA:String = "obtenerEmpleadosPorEmpresaEnLlamadaEventoParaCatalogoService";
		public function EventoParaCatalogoService(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoParaCatalogoService( type, bubbles, cancelable );
		}
	}
}