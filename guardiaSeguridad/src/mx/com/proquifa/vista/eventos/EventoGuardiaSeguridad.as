package mx.com.proquifa.vista.eventos
{
	import flash.events.Event;
	import flash.text.StaticText;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaProquifa;

	public class EventoGuardiaSeguridad extends Event
	{
		
		public var pendiente:String;
		public var usuario:String;
		public var rol:String;
		public var fletera:String;
		public var agenteAduanal:String;
		public var visitantes:String;
		public var visita:VisitaProquifa;
		public var todosBoton:String;
		
		public var habilitados:Boolean;
		public var tipo:Boolean;
		public static var idFleteraModificada:int;
		public var docto:int;
		public var contacto:Contacto;
		public var tipoContacto:String;
		public var empresa:String;
		public var index:Number;
		[Bindable]public static var idFletera:int;
		[Bindable]public static var indiceSeleccionado:int = -1;
		
		
		//SERVICIO
		public static const CARGAR_NUMERO_PENDIENTES_MENU:String = "cargarPendientesEventoGuardiaSeguridad";
		public static const OBTENER_ORDENES_PENDIENTES_GUARDIA_SEGURIDAD:String = "obtenerOrdenesEventoGuardiaSeguridad";
		public static const GUARDAR_CONTACTO_MENSAJERO:String = "guardaContactoNuevoModificadoEventoGuardiaSeguridad";
		public static const REGISTRAR_VISITA:String = "registrarVisitaEventoGuardiaSeguridad";
		public static const ACTUALIZAR_CONTACTO:String = "actualizarContactoEventoGuardiaSeguridad";
		/*public static const OBTENER_CONTACTOS_FLETERA:String = "contactosFleteraEventoGuardiaSeguridad";*/
		
		//VISTA
		public static const PENDIENTE_SELECCIONADO:String = "pendienteSeleccionado";
		public static const VISTA_ANTERIOR:String = "vistaAnterior";
		public static const CLIC_BOTONERA:String = "clicBotonera";
		public static const CAMBIO_LISTA_TIPO_FLETERA:String = "cambioEnListaFletera";
		public static const CAMBIO_LISTA_TIPO_AGENTE_ADUANAL:String = "cambioEnListaAgenteAduanal";
		public static const ABRIR_POPUP_REGISTRAR_VISITANTE:String = "abrirPopupRegistrarVisita";
		public static const CLIC_MANDAINDEX:String = "clickitemindex";
		public static const VERIFICA_INFO_CONTACTO:String = "verificaInfoContacto";

		
		
		public function EventoGuardiaSeguridad(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoGuardiaSeguridad(type,bubbles,cancelable);
		}
	}
}