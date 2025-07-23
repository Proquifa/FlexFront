package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.comun.llamadas.EventoConsultaLLamada;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloConsultaLlamadas extends EventDispatcher
	{
		private var _listaLlamadas:ArrayCollection;
		/**
		 * Funcion de result de busqueda de documento por folio
		 */
		public function setRegresaListaLlamadas( datos:ArrayCollection ):void{
			for( var i:int = 0; i < datos.length; i++ ){
				datos[i].numFila = i + 1;
			}
			this._listaLlamadas = FuncionesEstaticas.getInstance().formatoObjetos( datos );
			dispatchEvent(new Event("regresaLlamadasModeloConsultaLlamadas"));
		}
		
		[Bindable(Event="regresaLlamadasModeloConsultaLlamadas")]
		public function get regresaListaLlamadas():ArrayCollection{
			if(_listaLlamadas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLlamadasModeloConsultaLlamadas");
				}
			}
			return this._listaLlamadas;
		}
		
		/**
		////////////////////////////////////// * Funcion para el tipo de filto de graficos secundarios ////////////////////////////////////// 
		 */
		private var _filtro:String;
		public function setFiltroGraficoSecundario(tipo:String):void{
			_filtro = tipo;
			dispatchEvent(new Event ("consultaTipoFiltroInfoGraficoModeloConsultaLlamadas"));
		}
		
		[Bindable(event="consultaTipoFiltroInfoGraficoModeloConsultaLlamadas")]
		public function get filtroGraficoSecundario():String{
			return this._filtro;
			
		}
		
		/**
		 //////////////////////////////////////* Funcion para info de graficos secundarios////////////////////////////////////// 
		 */
		private var _grafico:ArrayCollection;
		public function setInfoGraficoSecundario(infoGrafico:ArrayCollection):void{
			_grafico = infoGrafico;
			dispatchEvent(new Event ("consultaInfoGraficoModeloConsultaLlamadas"));
		}
		
		[Bindable(event="consultaInfoGraficoModeloConsultaLlamadas")]
		public function get infoGraficoSecundario():ArrayCollection{
			return this._grafico;
			
		}
		
		/**
		 //////////////////////////////////////* Función para control de graficos secundarios //////////////////////////////////////
		 */ 
		private var _control:Object;
		public function setControlGrafico(grafico:Object):void{
			_control = grafico;
			dispatchEvent(new Event ("obtenerControlGraficoModeloConsultaLlamadas"));
		}
		
		[Bindable(event="obtenerControlGraficoModeloConsultaLlamadas")]
		public function get controlGrafico():Object{
			return this._control;
		}
		/**
		 *	********************************************************Funcion que obtiene la  info para la gráfica ET y FT Secundaria ********************************************************
		 * 
		 */
		private var _infoVsETFTSecundaria:ArrayCollection;
		public function pasarInfoAGraficaETvsFT(array:ArrayCollection):void{
			if(array == null) return;
			_infoVsETFTSecundaria = array;
			dispatchEvent( new Event("pasaInfoaGraficaETvsFTSecundariaModeloConsultaLlamadas") );
		}
		[Bindable(event="pasaInfoaGraficaETvsFTSecundariaModeloConsultaLlamadas")]
		public function get enviarInfoAGraficaETvsFT():ArrayCollection{
			return _infoVsETFTSecundaria;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaLLamada[$tiposEventos[i]])== null){
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
		
		
		////////////////////////////////////////////////////////////////////Funciones de fallo ///////////////////////////////////////////////////
		public function falloLlamada( objecto:Object, numero:String ):void{
			alertaSingleton.showReintentar("Fallo consulta de Llamadas","ATENCION!");
		}
		
		public function ModeloConsultaLlamadas(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}