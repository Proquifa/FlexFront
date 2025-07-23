package mx.com.proquifa.proquifanet.admonComunicacion.vistas.modelo
{
	import flash.display.DisplayObject;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.Componentes.Documentacion;
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.Componentes.Llamadas;
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.ComprasPorEnviar.Compras;
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.CotizacionPorEnviar.Cotizaciones;
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.NotificacionesPorEnviar.NotificacionesEnviar;
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.PedidosPorEnviar.PedidosEnviar;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.EventoGenerico;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.InformacionVentana;
	
	public class ManejadorVentanas extends EventDispatcher
	{	
		private var diccionarioVentanas:Dictionary = new Dictionary();
		public function getVentana( infoVentana:InformacionVentana ):DisplayObject{
			var ventana:DisplayObject = diccionarioVentanas[infoVentana.idVentana];
			if(ventana == null){
				switch( infoVentana.idVentana ){
					case "cotizacionesPorEnviar":
						var cotizaXEneviar:Cotizaciones = new Cotizaciones();
						cotizaXEneviar.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
						ventana = cotizaXEneviar;
						diccionarioVentanas[ infoVentana.idVentana] = ventana;
					break;
					case "pedidosPorEnviar":
						var peidosXEneviar:PedidosEnviar = new PedidosEnviar();
						peidosXEneviar.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
						ventana = peidosXEneviar;
						diccionarioVentanas[ infoVentana.idVentana] = ventana;
					break; 
					case "notificadosPorEnviar":
						var notifXEneviar:NotificacionesEnviar = new NotificacionesEnviar();
						notifXEneviar.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
						ventana = notifXEneviar;
						diccionarioVentanas[ infoVentana.idVentana] = ventana;
					break;
					case "ComprasPorEnviar":
						var compXEneviar:Compras = new Compras();
						compXEneviar.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
						ventana = compXEneviar;
						diccionarioVentanas[ infoVentana.idVentana] = ventana;
					break;
					case "EnviarDocumentacion":
						var documentos:Documentacion = new Documentacion();
						documentos.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
						ventana = documentos;
						diccionarioVentanas[ infoVentana.idVentana] = ventana;
					break;
					case "LlamadasAdmonComunicaion":
						var llamada:Llamadas = new Llamadas();
						llamada.addEventListener( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES, abrirVentana );
						ventana = llamada;
						diccionarioVentanas[ infoVentana.idVentana] = ventana;
					break;					
				}
			}
			return ventana;
		}
			

		public function ManejadorVentanas()
		{
		}
		
		public function abrirVentana(event:EventoGenerico):void{
			var evento:EventoGenerico = new EventoGenerico( EventoGenerico.ABRIR_VENTANA_EN_PENDIENTES );
			evento.informacion = event.informacion;
			this.dispatchEvent( evento );
		}
		
	}
}
	