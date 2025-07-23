package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.doctosenviados
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.documentosenviados.EventoConsultaDocumentosEnviados;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.doctosenviados.EnvioDocumentos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;

	public class ModeloConsultaDocumentosEnviados extends EventDispatcher
	{
		private var listaFolios:ArrayCollection;
		private var listaAdjuntos:ArrayCollection;
		private var envio:EnvioDocumentos = new EnvioDocumentos();
		
		public function setrecibeConsultaRapida(dato:ArrayCollection):void{
			if(dato){
				var fila:int = 1;
				for  each(var documentos:EnvioDocumentos in dato){
					documentos.numFila = fila++;
				}
			}
			listaFolios = dato;
			dispatchEvent(new Event("enviarListaFoliosModeloConsultaDocumentosEnviados"));
		}
		[Bindable(event="enviarListaFoliosModeloConsultaDocumentosEnviados")]
		public function get enviaConsultaRapida():ArrayCollection{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"enviarListaFoliosModeloConsultaDocumentosEnviados");
			}
			return listaFolios;	
		}
		public function setrecibeConsultaAvanzada(dato:ArrayCollection):void{
			if(dato){
				var fila:int = 1;
				for  each(var documentos:EnvioDocumentos in dato){
					documentos.numFila = fila++;
				}
			}
			listaAdjuntos = dato;
			dispatchEvent(new Event("enviarListaFoliosAdjuntosModeloConsultaDocumentosEnviados"));
		}
		[Bindable(event="enviarListaFoliosAdjuntosModeloConsultaDocumentosEnviados")]
		public function get enviaConsultaAvanzada():ArrayCollection{
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"enviarListaFoliosAdjuntosModeloConsultaDocumentosEnviados");
			}
			return listaAdjuntos;
		}
		public function ModeloConsultaDocumentosEnviados(target:IEventDispatcher = null)
		{
			super(target);
		}
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaDocumentosEnviados[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
					numServicioCompletos=0;
					numServices = 0;
					actualizarEspera = new Object();
					serviciosCompletosDifKey = new Object();
					numServices = $tiposEvento.length;
					currentEnEspera = true;
					actualizarEspera.isBusy = true;
					actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
					alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				if(numServicioCompletos == numServices){
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
				}
			}else if(mensaje =="error"){
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaCompras") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloConsultaCompras")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
	}
}