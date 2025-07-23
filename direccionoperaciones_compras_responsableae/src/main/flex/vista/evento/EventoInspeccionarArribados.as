package vista.evento
{
	import flash.events.Event;
	
	public class EventoInspeccionarArribados extends Event
	{
		public var ocultaMenu:Boolean;
		public var tipoDoc:String;
		
		/*SERVICIO*/
		public static const OBTENER_INSPECCIONAR_ARRIBADOS:String = "obtenerInspeccionarArribados";
		public static const CONTADOR_SECCION_ARRIBADOS:String = "contadorSeccionArribados";
		public static const OBTENER_INFORMACION_AGRUPADA:String = "obtenerInformacionAgrupadaInspeccion";
		public static const OBTENER_CONSECUTIVO_DE_LOTE_INSPECCION:String = "obtenerConsecutivoDeLoteInspeccion";
		
		/*VISTA*/
		public static const ABRIR_DOCUMENTO_SELECCIONADO:String = "abrirDocumentoSeleccionado";
		public static const ABRIR_POPUP_EDITAR_PIEZA:String = "abrirPopUpEditarPieza";
		
		
	/*	EVENTOS SERVICIO */
		
		public static const CAMBIAR_DEPTH_ANIMACION:String = "cambiarDepthAnimacionEventoRegistrarArribados";
		
		
		public function EventoInspeccionarArribados(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			return new EventoInspeccionarArribados(type,bubbles,cancelable);
		}
		
	}
}