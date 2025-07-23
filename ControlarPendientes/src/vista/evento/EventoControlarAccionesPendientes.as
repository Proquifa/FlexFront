package vista.evento
{
	import flash.events.Event;
	import flash.utils.ByteArray;
	
	public class EventoControlarAccionesPendientes extends Event
	{
		public var idUsuario:int;
		public var tipo:Boolean;
		public var idContacto:int;
		public var fecha:Date;
		public var fecha2:String;
		public var idCliente:int;
		public var Observaciones:String;
		public var folioVisita:String;
		
		//VARIABLES PARA GUARDAR CAMBIOS
		public var PK_HallazgosAcciones:int;
		public var IdCotizacion:int;
		public var Pk_Formulario:int;
		public var IdPedido:int;
		public var docPDF:ByteArray;

		public var checkADeseleccionar:String;
		
		/*SERVICIO*/
		public static const OBTENER_CONTROLAR_PENDIENTES:String = 'obtenerControlarPendientesEventoControlarAccionesPendientes';

		public static const OBTENER_CONTROLAR_ACCIONES:String = 'obtenerControlarAccionesEventoControlarAccionesPendientes';
		
		public static const OBTENER_COTIZAS:String = 'obtenerCotizasEventoControlarAccionesPendientes';

		public static const OBTENER_PEDIDOS:String = 'obtenerPedidosEventoControlarAccionesPendientes';

		public static const OBTENER_VISITAS:String = 'obtenerVisitasEventoControlarAccionesPendientes';

		public static const GUARDA_CAMBIOS:String = 'guardaCambiosEventoControlarAccionesPendientes';

		public static const GUARDA_CAMBIOS_ACCIONES:String = 'guardaCambiosAccionesEventoControlarAccionesPendientes';
		
		/*VISTA*/
		
		public static const DESELECCIONAR_CHECK:String = 'deseleccionarCheckEventoControlarAccionesPendientes'
		
		public function EventoControlarAccionesPendientes(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}
		override public function clone():Event{
			return new EventoControlarAccionesPendientes(type, bubbles, cancelable)
		}
		
	}
}