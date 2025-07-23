package mx.com.proquifa.proquifanet.rsl.vista.eventos.soliciud
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.SolicitudVisita;

	public class EventoSolicitudGeneral extends Event
	{
		public var idREferencia:Number;
		public var idEmpleado:Number;
		public var listaReferencias:ArrayCollection;
		public var solicitudVisita:SolicitudVisita;
		public var vieneD:String;
		public static const CERRAR_POP_UP:String = 'cerrrPopUpEventoSolicitudGeneral';
		public static const ELIMINAR_REFERENCIAS:String = 'eliminarReferenciaEventoSolicitudGeneral';
		public static const CARAGAR_CONTACTOS:String = 'cargaContactosEventoSolicitudGeneral';
		public static const GUARDA_VISITA:String = 'guardaVisitaEventoSolicitudGeneral';
		public static const ENVIA_REFERENCIAS:String = 'enviaReferenciasEventoSolicitudGeneral';
		public static const CONSULTA_POP_REFERENCIAS:String = "consultaPopReferenciasEventoSolicitudGeneral";
		public static const GESTIONAR_VISITA_PRINCIPAL:String = "gestionarVisitaPrincipalEventoSolicitudGeneral";
		
		
		public function EventoSolicitudGeneral(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new EventoSolicitudGeneral( type, bubbles, cancelable );
		}
	}
}