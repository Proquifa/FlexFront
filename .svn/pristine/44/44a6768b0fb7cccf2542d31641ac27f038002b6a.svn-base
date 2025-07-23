package mx.com.proquifa.vista.eventos
{
	import flash.events.Event;
	
	public class EventoInterlocutor extends Event
	{
		
		public var current:*;
		public var complete:Boolean;
		public var email:String;
		public var cc:String;
		public var cuerpo:String;
		public var item:int;
		public var respuestaGestion:Boolean;
		public var tiporadio:String;
		public var idPCompra:int;
		public var cPedido:String;
		public var mandacorreo:Boolean;
		
		//SERVICIO
		public static const OBTENER_AVISOS_CAMBIOS:String = "obtnerAvisosDeCambiosEVentoInterlocutor";
		public static const GUARDAR_NOTIFICADOS:String = "guardarPartidasNotificadosEventoInterlocutor";
		public static const OBTENER_CONTADORES:String = "obtenerContadoresEventoInterlocutor";
		public static const ENVIAR_CORREO:String = "enviarCorreoGestionarACEventoInterlocutor";
		public static const PHISTORIAL:String = "phistorialGestionarACEventoInterlocutor";
		public static const OBTENER_HISTORIAL_X_ID_COMPRA:String = "obtenerUltimaActualizacion";
		
		//VISTA
		public static const SELECCCIONAR_PENDIENTE:String = "seleccionarPendienteEventoInterlocutor";
		public static const CAMBIAR_VISTAS:String = "cambiarVistasEventoInterlocutor";
		public static const DECIDE_SI_ABRE_POPUP_CORREO:String = "decideSiabrePopUpCorreo";

		public static const CLIC_BOTONERA:String = "clickBotoneraDias";
		public static const CLIC_BOTONERA_GESTIONAR:String = "clickBotoneraGestionar";

		public static const TODOS_DATOS:String = "todosLosDatos";
		public static const VERIFICAR_TODOS_DATOS:String = "verificiarTodosCampos";
		public static const MANDA_ITEM_ACTUAL:String ="mandaItemActual";
		public static const MANDA_CPDIDO:String = "mandaCpedido";
		
		public function EventoInterlocutor(type:String, bubbles:Boolean = true, cancelable:Boolean = false, current:* = null)
		{
			super(type,bubbles,cancelable);
			this.current = current;
		}
		
		public override function clone():Event{
			return new EventoInterlocutor(type,bubbles,cancelable);
		}
	}
}

