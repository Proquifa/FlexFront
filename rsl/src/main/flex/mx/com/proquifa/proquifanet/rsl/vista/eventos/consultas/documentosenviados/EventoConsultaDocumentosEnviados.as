package mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.documentosenviados
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.doctosenviados.EnvioDocumentos;

	public class EventoConsultaDocumentosEnviados extends Event
	{
		public var envioDocumentos:EnvioDocumentos = new EnvioDocumentos;
		public static const BUSQUEDA_RAPIDA:String="busquedaRapidaEventoConsultaDocumentosEnviados";
		public static const BUSQUEDA_AVANZADA : String ="busquedaAvanzadaEventoConsultaDocumentosEnviados";
		
		public function EventoConsultaDocumentosEnviados(type:String, bubbles:Boolean = true, cancelable:Boolean = false,envioDocumentos:EnvioDocumentos = null)
		{
			super(type,bubbles,cancelable)
			if(envioDocumentos!=null){
			this.envioDocumentos = envioDocumentos;
			}
		}
		
		public function existTypeInThisEvent(type:String):Boolean
		{
			return hasOwnProperty(type);
		}
		public override function clone():Event{
			return new EventoConsultaDocumentosEnviados(type,bubbles,cancelable,envioDocumentos);
		}
	}
}