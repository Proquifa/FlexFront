package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.compras.compras
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.compras.compras.EventoConsultasCompraNuevo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class MedoloConsultaComprasNuevo extends EventDispatcher
	{
		
		/**
		  ************************************************************** lista de compras *****************************************************************
		 */
		private var _compras:ArrayCollection;
		public function setListaCompras(compra:ArrayCollection):void{
			_compras = new ArrayCollection();
			if(compra != null)
				this._compras = compra;
			dispatchEvent(new Event ("OrdenComprasMedoloConsultaComprasNuevo"));
		}
		

		
		[Bindable(event="OrdenComprasMedoloConsultaComprasNuevo")]
		public function get ListaCompras():ArrayCollection{
			if(_compras!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"OrdenComprasMedoloConsultaComprasNuevo");
				}
			}
			return this._compras;
		}
		
		
		private var _graficaXCompras:ArrayCollection;
		public function setListaGraficaXCompras(compra:ArrayCollection):void{
			_graficaXCompras = new ArrayCollection();
			if(_graficaXCompras != null)
				this._graficaXCompras = compra;
			dispatchEvent(new Event ("OrdenGraficaXComprasMedoloConsultaComprasNuevo"));
		}
		
		
		
		[Bindable(event="OrdenGraficaXComprasMedoloConsultaComprasNuevo")]
		public function get ListaGraficaXCompras():ArrayCollection{
			
			return this._graficaXCompras;
		}
		
		/**
		 ************************************************************** partidas de compras **************************************************************
		 */
		private var _pcompras:ArrayCollection;
		public function setPartidaCompra(pcompra:ArrayCollection):void{
			for( var d:int = 0; d < pcompra.length; d++ ){
				pcompra[d].numFila = d + 1;
			}
			_pcompras = pcompra;
			dispatchEvent(new Event ("partidaComprasMedoloConsultaComprasNuevo"));
		}
		
		[Bindable(event="partidaComprasMedoloConsultaComprasNuevo")]
		public function get partidaCompra():ArrayCollection{
			return this._pcompras;
		}
		/**
		 ************************************************************** tiempos proceso **************************************************************
		 */ 
		private var _timeProcesos:ArrayCollection;
		private var _procesoAnterior:String=null;
		private var _parametrosEtiqueta:EventoConsultasCompraNuevo = new EventoConsultasCompraNuevo(EventoConsultasCompraNuevo.OBTENER_TIEMPO_PROCESO);
		public function setTiempoProcesos(procesos:ArrayCollection, $evt:EventoConsultasCompraNuevo ):void{
			if( procesos== null){
				return;
			}
			for( var i:int = 0; i < procesos.length; i++ ){
				var j:int;
				if(!$evt.estadoPartida && (procesos[i] as TiempoProceso).nivel == 1){
						if(i-1>=0){
							j=i-1;
							while((procesos[j] as TiempoProceso).nivel !=1 && j>=0){
								j--;
							}
								
							_procesoAnterior = (procesos[j] as TiempoProceso).etapa;
						}
				}
			}
			for( var d:int = 0; d < procesos.length; d++ ){
				procesos[d].numFila = d + 1;
				if(!$evt.estadoPartida && (procesos[d] as TiempoProceso).etapa == _procesoAnterior){
					procesos[d].fechaAzul = true;
				}

			}
			this._timeProcesos = procesos;
			_parametrosEtiqueta = $evt;
			dispatchEvent(new Event ("consultaTProcesosMedoloConsultaComprasNuevo"));
			dispatchEvent(new Event ("consultaTProcesosEtiuetaMedoloConsultaComprasNuevo"));
		}
		
		[Bindable(event="consultaTProcesosMedoloConsultaComprasNuevo")]
		public function get TiempoProcesos():ArrayCollection{
			return this._timeProcesos;
		}
		[Bindable(event="consultaTProcesosEtiuetaMedoloConsultaComprasNuevo")]
		public function get TiempoProcesosEtiqueta():EventoConsultasCompraNuevo{
			return this._parametrosEtiqueta;
		}
		
		/**
		 **************************************************************  Funcion que información de graficas **************************************************************
		 */  
		public var resumen:ResumenConsulta;
		private var _infoGraficas:ArrayCollection;
		public function setObtenerInfoGraficas(info:ArrayCollection):void{
			_infoGraficas = info;
			dispatchEvent(new Event ("obtnerConsultaInfoGraficasMedoloConsultaComprasNuevo"));
		}
		
		[Bindable(event="obtnerConsultaInfoGraficasMedoloConsultaComprasNuevo")]
		public function get obtenerInfoGraficas():ArrayCollection{
			if(_infoGraficas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtnerConsultaInfoGraficasMedoloConsultaComprasNuevo");
				}
			}
			return this._infoGraficas;
		}
		
		
		/**
		 **************************************************************  Funcion que obtine totales de compras **************************************************************
		 */  
		private var _total:ArrayCollection;
		public function setObtenerTotalesCompras(totales:ArrayCollection):void{
			_total = totales;
			dispatchEvent(new Event ("obtnerTotalesConsultaComprasMedoloConsultaComprasNuevo"));
		}
		
		[Bindable(event="obtnerTotalesConsultaComprasMedoloConsultaComprasNuevo")]
		public function get obtenerTotalesCompras():ArrayCollection{
			if(_total!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtnerTotalesConsultaComprasMedoloConsultaComprasNuevo");
				}
			}
			return this._total;
		}
		
		/**
		 **************************************************************  Funcion que obtine totales de compras Pasadas**************************************************************
		 */  
		private var _pasada:ArrayCollection;
		public function setObtenerTotalPasadoCompras(pasado:ArrayCollection):void{
			for(var d:int = 0 ; d<pasado.length ; d++){
				(pasado[d] as ResumenConsulta).etiqueta = 'Pasado';
			}
			_pasada = pasado;
			dispatchEvent(new Event ("obtnerTotalPasadoConsultaComprasMedoloConsultaComprasNuevo"));
		}
		
		[Bindable(event="obtnerTotalPasadoConsultaComprasMedoloConsultaComprasNuevo")]
		public function get obtenerTotalPasadoCompras():ArrayCollection{
			if(_pasada!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtnerTotalPasadoConsultaComprasMedoloConsultaComprasNuevo");
				}
			}
			return this._pasada;
		}
		
		/**
		 **************************************************************  Funcion que obtine totales de compras PosPasadas **************************************************************
		 */  
		private var _posPasado:ArrayCollection;
		public function setObtenerTotalPosPasadoCompras(posPasado:ArrayCollection):void{
			for(var d:int = 0 ; d<posPasado.length ; d++){
				(posPasado[d] as ResumenConsulta).etiqueta = 'Postpasado';
			}
			_posPasado = posPasado;
			dispatchEvent(new Event ("obtnerTotalPosPasadoConsultaComprasMedoloConsultaComprasNuevo"));
		}
		
		[Bindable(event="obtnerTotalPosPasadoConsultaComprasMedoloConsultaComprasNuevo")]
		public function get obtenerTotalPosPasadoCompras():ArrayCollection{
			if(_posPasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtnerTotalPosPasadoConsultaComprasMedoloConsultaComprasNuevo");
				}
			}
			return this._posPasado;
		}
		
		/**
		 **************************************************************  Funcion que muestra tab garficas false- ocultar , true - muestra **************************************************************
		 */ 
		private var _tab:Boolean;
		public function setMostrarOcultaTabGrafica(tab:Boolean):void{
			_tab = tab;
			dispatchEvent(new Event ("muestraOcultaTabGraficaModeloConsultaCompras"));
		}
		
		[Bindable(event="muestraOcultaTabGraficaModeloConsultaCompras")]
		public function get mostrarOcultaTabGrafica():Boolean{
			return this._tab;
		}
		
		/**
		 ****************************************************************** Funcion para el tipo de filto de graficos secundarios *******************************************************
		 */
		private var _filtro:String;
		public function setFiltroGraficoSecundario(tipo:String):void{
			_filtro = tipo;
			dispatchEvent(new Event ("consultaTipoFiltroInfoGraficoModeloConsultaComprasNuevo"));
		}
		
		[Bindable(event="consultaTipoFiltroInfoGraficoModeloConsultaComprasNuevo")]
		public function get filtroGraficoSecundario():String{
			return this._filtro;
			
		}
		
		/**
		 *****************************************************************	Funcion obtiene info para las graficas ET y FT ****************************************************************
		 * 
		 */
		private var _infoVsETFT:ArrayCollection;
		public function setCotizacionesParaETYFT(coloco:int):void{
			var item:ResumenConsulta = new ResumenConsulta();
			item.totalCompras =1;
			item.total = 100;
			item.totalCompras = 1;
			item.partidas = 1;
			item.piezasTotal = 1;
			item.clientes_proveedores = 1;
			item.etiqueta = "PRUEBA";
			_infoVsETFT = new ArrayCollection();
			_infoVsETFT.addItem(item);
			dispatchEvent( new Event("enviaComprasParaETYFTModeloConsultaComprasNuevo") );
		}
		[Bindable(event="enviaComprasParaETYFTModeloConsultaComprasNuevo")]
		public function get enviarCotizacionesETYFT():ArrayCollection{
			return this._infoVsETFT;
		}
		
		/**
		 *	********************************************************Funcion obtiene info para las grafica ET y FT Secundaria ********************************************************
		 * 
		 */
		private var _infoVsETFTSecundaria:ArrayCollection;
		public function pasarInfoAGraficaETvsFT(array:ArrayCollection):void{
			if(array == null) return;
			_infoVsETFTSecundaria = array;
			dispatchEvent( new Event("pasaInfoaGraficaETvsFTSecundariaModeloConsultaComprasNuevo") );
		}
		[Bindable(event="pasaInfoaGraficaETvsFTSecundariaModeloConsultaComprasNuevo")]
		public function get enviarInfoAGraficaETvsFT():ArrayCollection{
			return this._infoVsETFTSecundaria;
		}
		/**
		 *	********************************************************FUNCIONES PARA TRAER DATOS DE SERVICIO A DEMANDA********************************************************
		 * 
		 */
		
		private var _filtrosConsulta:Object;
		public function setSettearValoresDeLaConsultaActual($fInicio:Date,$fFin:Date,$idProveedor:Number,$estado:int,$coloco:int, $ordenCompra:String, $usuario:Number):void
		{
			if($fInicio == null || $fFin == null) return;
			_filtrosConsulta = new Object();
			_filtrosConsulta.finicio = $fInicio;
			_filtrosConsulta.ffin = $fFin;
			_filtrosConsulta.idProveedor = $idProveedor;
			_filtrosConsulta.estado = $estado;
			_filtrosConsulta.coloco = $coloco;
			_filtrosConsulta.ordenCompra = $ordenCompra;
			_filtrosConsulta.usuario = $usuario;
			
			dispatchEvent(new Event("SettearLosValoresDeLaBusquedaActualModeloConsultaComprasNuevo"));
		}
		
		[Bindable(event="SettearLosValoresDeLaBusquedaActualModeloConsultaComprasNuevo")]
		public function get regresaValoresFiltrosDelaBusquedaActual():Object
		{
			return _filtrosConsulta;
		}
		private var _currentVista:String;
		public function setSettearSelectedVista($vistaSelected:String):void{
			if($vistaSelected == null) return;
			_currentVista = $vistaSelected;
			dispatchEvent( new Event("pasaLaVistaSeleccionadaActualmenteModeloConsultaComprasNuevo") );
		}
		[Bindable(event="pasaLaVistaSeleccionadaActualmenteModeloConsultaComprasNuevo")]
		public function get enviarVistaSeleccionadaActualmente():String{
			return _currentVista;
		}
		
		private var _actualizarVistaActual:Boolean;
		public function setActualizarDatosVistaActual($actualizar:Boolean):void{
			_actualizarVistaActual = $actualizar;
			dispatchEvent( new Event("actualizarLaVistaActualModeloConsultaComprasNuevo") );
		}
		[Bindable(event="actualizarLaVistaActualModeloConsultaComprasNuevo")]
		public function get actualizarLaVistaSeleccionada():Boolean{
			return _actualizarVistaActual;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if(new EventoConsultasCompraNuevo(EventoConsultasCompraNuevo[$tiposEventos[i]])== null){
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
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		public function errorObtenerCompras(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		public function errorInfoGrafica(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		public function errorTotalesActual(objeto:Object):void{
			alertaSingleton.showReintentar(objeto.toString());
		}
		
		public function MedoloConsultaComprasNuevo(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
	}
}