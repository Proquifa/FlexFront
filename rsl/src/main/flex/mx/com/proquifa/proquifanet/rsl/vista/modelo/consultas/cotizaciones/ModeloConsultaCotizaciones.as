package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.cotizaciones
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.ventas.consultaCotizaciones.EventoConsultaCotizaciones;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.reportes.seguimientos.HistorialPartidaEnSeguimiento;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.reportes.seguimientos.PartidaCotizacionEnSeguimiento;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloConsultaCotizaciones extends EventDispatcher
	{
		private var _cotizacion:ArrayCollection;
		/**
		 * Funcion de result de busqueda de documento por folio
		 */
		public function cotizacionesResultantes(cotizacion:ArrayCollection):void{
			_cotizacion = new ArrayCollection();
			if(cotizacion != null){
				
				for( var d:int = 0; d < cotizacion.length; d++ ){
					(cotizacion[d] as Cotizacion).numFila = d + 1;
					(cotizacion[d] as Cotizacion).enTiempoFueraDeTiempo == 'false' ? cotizacion[d].enTiempoFueraDeTiempo = 'FT' : cotizacion[d].enTiempoFueraDeTiempo = 'ET';
				}
				_cotizacion = cotizacion;
			}
			dispatchEvent(new Event("regresaCotizacionesModeloConsultaCotizaciones"));
		}
		
		[Bindable(Event="regresaCotizacionesModeloConsultaCotizaciones")]
		public function get regresarCotizaciones():ArrayCollection{
			if(_cotizacion!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaCotizacionesModeloConsultaCotizaciones");
				}
			}
			return this._cotizacion;
		}
		/**
		 * Funcion de result para obtener partidas cotizacion
		 */
		private var _partida:ArrayCollection;
		public function setPartidaCotizacion(cotiza:ArrayCollection):void{
			for( var d:int = 0; d < cotiza.length; d++ ){
				cotiza[d].numFila = d + 1;
				if(cotiza[0].inicioLista == false)	cotiza[0].inicioLista = true;
				if( d == cotiza.length - 1) cotiza[d].finLista = true;
			}
			this._partida = cotiza;
			dispatchEvent(new Event("regresaPartidaCotizacionModeloConsultaCotizaciones"));
		}
		
		[Bindable(Event="regresaPartidaCotizacionModeloConsultaCotizaciones")]
		public function get partidaCotizacion():ArrayCollection{
			return this._partida;
		}
		
		/**
		 * Funcion para obtener resumen cotización empleado para las graficas 
		 */ 
		private var _resumen:ArrayCollection;
		public function setResumenCotizacion(resumen:ArrayCollection):void{
			this._resumen = resumen;
			dispatchEvent( new Event("regresaResumenCotizacionGraficasModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaResumenCotizacionGraficasModeloConsultaCotizaciones")]
		public function get regresaResumenCotizacion():ArrayCollection{
			if(_resumen!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaResumenCotizacionGraficasModeloConsultaCotizaciones");
				}
			}
			return this._resumen;
		}
		/**
		 * Funcion para obtener los totales de cotización  
		 */ 
		private var _total:ArrayCollection;
		public function setResumenTotalesCotizacion(totales:ArrayCollection):void{
			this._total = totales;
			dispatchEvent( new Event("regresaTotalesConsultaCotizacionModeloConsultaCotizaciones"));
		}
		[Bindable(event="regresaTotalesConsultaCotizacionModeloConsultaCotizaciones")]
		public function get resumenTotalesCotizacion():ArrayCollection{
			if(_total!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaTotalesConsultaCotizacionModeloConsultaCotizaciones");
				}
			}
			return this._total;
		}
		
		/**
		 * Funcion para obtener los totales PASADOS de cotización  
		 */ 
		private var _pasado:ArrayCollection;
		public function setResumenTotalesPasado(pasado:ArrayCollection):void{
			for(var d:int = 0 ; d<pasado.length ; d++){
				pasado[d].etiqueta = 'Pasado';
			}
			this._pasado = pasado;
			dispatchEvent( new Event("regresaTotalesConsultaPasadaModeloConsultaCotizaciones"));
		}
		[Bindable(event="regresaTotalesConsultaPasadaModeloConsultaCotizaciones")]
		public function get resumenTotalesPasado():ArrayCollection{
			if(_pasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaTotalesConsultaPasadaModeloConsultaCotizaciones");
				}
			}
			return this._pasado;
		}
		
		/**
		 * Funcion para obtener los totales POSPASADOS de cotización  
		 */ 
		private var _pospasado:ArrayCollection;
		public function setResumenTotalesPosPasado(pospasado:ArrayCollection):void{
			for(var d:int = 0 ; d<pospasado.length ; d++){
				pospasado[d].etiqueta = 'Postpasado';
			}
			this._pospasado = pospasado;
			dispatchEvent( new Event("regresaTotalesConsultaPosPasadaModeloConsultaCotizaciones"));
		}
		[Bindable(event="regresaTotalesConsultaPosPasadaModeloConsultaCotizaciones")]
		public function get resumenTotalesPosPasado():ArrayCollection{
			if(_pospasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaTotalesConsultaPosPasadaModeloConsultaCotizaciones");
				}
			}
			return this._pospasado;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener datos en la tabla HistorialSeguimiento 
		 */ 
		private var _historialSeguimiento:ArrayCollection;
		public function setHistorialSeguimiento(historial:ArrayCollection):void{
			for( var d:int = 0; d < historial.length; d++ ){
				historial[d].numFila = d + 1;
			}
			_historialSeguimiento = historial;
			this._historialSeguimiento = FuncionesEstaticas.getInstance().formatoObjetos(historial);
			dispatchEvent(new Event("cotizacionHistorialSeguimientoModeloConsultaCotizaciones"));
		}
		
		[Bindable(event="cotizacionHistorialSeguimientoModeloConsultaCotizaciones")]
		public function get historialSeguimiento():ArrayCollection{
			return this._historialSeguimiento;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener tiempo PRoceso 
		 */ 
		private var _tiempoP:ArrayCollection;
		public function setTiempoProceso(tProceso:ArrayCollection):void{
			for( var d:int = 0; d < tProceso.length; d++ ){
				tProceso[d].numFila = d + 1;
				if( d == tProceso.length - 1) tProceso[d].finLista = true;
			}
			_tiempoP = tProceso;
			dispatchEvent(new Event("consultaTiempoProcesoModeloConsultaCotizaciones"));
		}
		
		[Bindable(event="consultaTiempoProcesoModeloConsultaCotizaciones")]
		public function get tiempoProceso():ArrayCollection{
			return this._tiempoP;
		}
		
		// etiqueta tipo moneda
		private var _moneda:String;
		public function setObtenerTipoMoneda(etiqueta:String):void{
			this._moneda = etiqueta;
			if(etiqueta == "Dolares") _moneda = "USD";
			if(etiqueta == "Pesos") _moneda = "M.N.";
			dispatchEvent( new Event("regresaTipoMonedaModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaTipoMonedaModeloConsultaCotizaciones")]
		public function get obtenerTipoMoneda():String{
			return this._moneda;
		}
		
		// obtener Folio de cotización seleccionado
		private var _folioCotiza:int;
		public function setObtenerIdPCotiza(folio:int):void{
			this._folioCotiza = folio;
			dispatchEvent( new Event("regresaIdPCotizacionModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaIdPCotizacionModeloConsultaCotizaciones")]
		public function get obtenerIdPCotiza():int{
			return this._folioCotiza;
		}
		
		// etiqueta pzas de partida
		private var _partidas:Object;
		public function setObtenerPiezasPartida(partidas:Object):void{
			this._partidas = partidas;
			dispatchEvent( new Event("regresaPiezasPartidaModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaPiezasPartidaModeloConsultaCotizaciones")]
		public function get obtenerPiezasPartida():Object{
			return this._partidas;
		}
		
		// obtener propiedades tiempo proceso para inspector
		private var _tProceso:TiempoProceso;
		public function setObtenerTiempoProceso(tProceso:TiempoProceso):void{
			this._tProceso = tProceso;
			dispatchEvent( new Event("regresaPropiedadesTiempoProcesoModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaPropiedadesTiempoProcesoModeloConsultaCotizaciones")]
		public function get obtenerTiempoProceso():TiempoProceso{
			return this._tProceso;
		}
		
		// obtener info seguimiento
		public var _partidaSeguimineto:PartidaCotizacionEnSeguimiento = new PartidaCotizacionEnSeguimiento();
		public var _historialPartidaSeg:HistorialPartidaEnSeguimiento = new HistorialPartidaEnSeguimiento();
		private var _seguimiento:ArrayCollection;
		public function setInfoSeguimiento(seguimiento:ArrayCollection):void{
			var j:int =0;
			for(var i:int = seguimiento.length ; i>0 ; i--){
				seguimiento[j].numFila = i;
				j++;
			}
			this._seguimiento = seguimiento;
			dispatchEvent( new Event("obtenerInfoSeguimientoModeloConsultaCotizaciones") );
		}
		[Bindable(event="obtenerInfoSeguimientoModeloConsultaCotizaciones")]
		public function get infoSeguimiento():ArrayCollection{
			return this._seguimiento;
		}
		
		// obtener lista busquedaProducto
		private var _busqueda:ArrayCollection;
		public function setObtenerBusquedaProducto(busqueda:ArrayCollection):void{
			this._busqueda = busqueda;
			dispatchEvent( new Event("regresaListaBusquedaProductoModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaListaBusquedaProductoModeloConsultaCotizaciones")]
		public function get obtenerBusquedaProducto():ArrayCollection{
			return this._busqueda;
		}
		
		// obtener total piezas para info general
		private var _totalPiezas:int;
		public function setTotalPiezas(total:int):void{
			this._totalPiezas = total;
			dispatchEvent( new Event("regresaTotalPiezasModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaTotalPiezasModeloConsultaCotizaciones")]
		public function get totalPiezas():int{
			return this._totalPiezas;
		}
		
		// obtener SNC o SC
		private var _conforme:String;
		public function setServicioConforme(total:String):void{
			this._conforme = total;
			dispatchEvent( new Event("regresaServicioConformeModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaServicioConformeModeloConsultaCotizaciones")]
		public function get servicioConforme():String{
			return this._conforme;
		}
		
		// obtener fecha registro
		private var _fecha:Date;
		public function setFechaRegistro(fecha:Date):void{
			this._fecha = fecha;
			dispatchEvent( new Event("regresaFechaRegistroModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaFechaRegistroModeloConsultaCotizaciones")]
		public function get fechaRegistro():Date{
			return this._fecha;
		}
		
		// obtener clasificacion origen 
		private var _clasificacion:String;
		public function setClasificacionOrigen(clasificacion:String):void{
			this._clasificacion = clasificacion;
			dispatchEvent( new Event("regresaClasificacionOrigenModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaFechaRegistroModeloConsultaCotizaciones")]
		public function get clasificacionOrigen():String{
			return this._clasificacion;
		}
		
		//obtinen lista de clientes 
		private var _cliente:ArrayCollection;
		public function setListaClientes(cliente:ArrayCollection):void{
			this._cliente = cliente;
			dispatchEvent( new Event("regresaListaClientesModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaListaClientesModeloConsultaCotizaciones")]
		public function get listaClientes():ArrayCollection{
			return this._cliente;
		}
		
		//Funcion que muestra tab garficas false- ocultar , true - muestra
		private var _tab:Boolean;
		public function setMostrarOcultaTabGrafica(tab:Boolean):void{
			this._tab = tab;
			dispatchEvent( new Event("regresaTabGraficasModeloConsultaCotizaciones") );
		}
		[Bindable(event="regresaTabGraficasModeloConsultaCotizaciones")]
		public function get mostrarOcultaTabGrafica():Boolean{
			return this._tab;
		}
		
		/**
		 *	Funcion obtiene info para las graficas ET y FT 
		 * 
		 */
		private var _infoVsETFT:ArrayCollection;
		public function setCotizacionesParaETYFT(partidasETyFT:ArrayCollection):void{
			if(partidasETyFT == null) return;
			_infoVsETFT = partidasETyFT;
			dispatchEvent( new Event("enviaCotizacionesParaETYFTModeloConsultaCotizacion") );
		}
		[Bindable(event="enviaCotizacionesParaETYFTModeloConsultaCotizacion")]
		public function get enviarCotizacionesETYFT():ArrayCollection{
			if(_infoVsETFT!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"enviaCotizacionesParaETYFTModeloConsultaCotizacion");
				}
			}
			return this._infoVsETFT;
		}
		
		/**
		 *	Funcion obtiene info para las grafica ET y FT Secundaria 
		 * 
		 */
		private var _infoVsETFTSecundaria:ArrayCollection;
		public function pasarInfoAGraficaETvsFT(array:ArrayCollection):void{
			if(array == null) return;
			_infoVsETFTSecundaria = array;
			dispatchEvent( new Event("pasaInfoaGraficaETvsFTSecundariaModeloConsultaCotizacion") );
		}
		[Bindable(event="pasaInfoaGraficaETvsFTSecundariaModeloConsultaCotizacion")]
		public function get enviarInfoAGraficaETvsFT():ArrayCollection{
			return this._infoVsETFTSecundaria;
		}
		
		/**
		 * Funcion para el tipo de filto de graficos secundarios 
		 */
		private var _filtro:String;
		public function setFiltroGraficoSecundario(tipo:String):void{
			_filtro = tipo;
			dispatchEvent(new Event ("consultaTipoFiltroInfoGraficoModeloConsultaCotizacion"));
		}
		
		[Bindable(event="consultaTipoFiltroInfoGraficoModeloConsultaCotizacion")]
		public function get filtroGraficoSecundario():String{
			return this._filtro;
			
		}
		
		private var _filtrosConsulta:Object;
		public function setSettearValoresDeLaConsultaActual($fInicio:Date,$fFin:Date,$cotizacionObject:Cotizacion,$idEmpleado:uint):void
		{
			if($fInicio == null || $fFin == null) return;
			_filtrosConsulta = new Object();
			_filtrosConsulta.finicio = $fInicio;
			_filtrosConsulta.ffin = $fFin;
			_filtrosConsulta.estado = $cotizacionObject.estado;
			_filtrosConsulta.nombreCliente = $cotizacionObject.nombreCliente;
			_filtrosConsulta.cotizo = $cotizacionObject.cotizo;
			_filtrosConsulta.MSalida = $cotizacionObject.MSalida;
			_filtrosConsulta.idEmpleado = $idEmpleado;
			_filtrosConsulta.folioCotizacion = $cotizacionObject.folioCotizacion;
			
			dispatchEvent(new Event("SettearLosValoresDeLaBusquedaActualModeloConsultaCotizacion"));
		}
		
		[Bindable(event="SettearLosValoresDeLaBusquedaActualModeloConsultaCotizacion")]
		public function get regresaValoresFiltrosDelaBusquedaActual():Object
		{
			return _filtrosConsulta;
		}
		private var _currentVista:String;
		public function setSettearSelectedVista($vistaSelected:String):void{
			if($vistaSelected == null) return;
			_currentVista = $vistaSelected;
			dispatchEvent( new Event("pasaLaVistaSeleccionadaActualmenteModeloConsultaCotizacion") );
		}
		[Bindable(event="pasaLaVistaSeleccionadaActualmenteModeloConsultaCotizacion")]
		public function get enviarVistaSeleccionadaActualmente():String{
			return _currentVista;
		}
		
		private var _actualizarVistaActual:Boolean;
		public function setActualizarDatosVistaActual($actualizar:Boolean):void{
			_actualizarVistaActual = $actualizar;
			dispatchEvent( new Event("actualizarLaVistaActualModeloConsultaCotizacion") );
		}
		[Bindable(event="actualizarLaVistaActualModeloConsultaCotizacion")]
		public function get actualizarLaVistaSeleccionada():Boolean{
			return _actualizarVistaActual;
		}
		
		public function ModeloConsultaCotizaciones(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaCotizaciones[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		
		
		private var _infoGraficaCotiza:ArrayCollection;
		public function setGraficaXCotizacionesParaETYFT($partidasETyFT:ArrayCollection):void{
			if($partidasETyFT == null) 
				return;
			
			_infoGraficaCotiza = $partidasETyFT;
			dispatchEvent( new Event("enviaGraficaXCotizacionesParaETYFTModeloConsultaCotizacion") );
		}
		
		[Bindable(event="enviaGraficaXCotizacionesParaETYFTModeloConsultaCotizacion")]
		public function get enviarGraficaXCotizacionesETYFT():ArrayCollection{
			return this._infoGraficaCotiza;
		}
		
		private var _infoGraficaCotizaAlta:ArrayCollection;
		public function setGraficaAltaProducto($partidas:ArrayCollection):void{
			if($partidas == null) 
				return;
			
			_infoGraficaCotizaAlta = $partidas;
			dispatchEvent( new Event("enviaGraficaAltaProductoModeloConsultaCotizacion") );
		}
		
		[Bindable(event="enviaGraficaAltaProductoModeloConsultaCotizacion")]
		public function get graficaAltaProducto():ArrayCollection{
			return this._infoGraficaCotizaAlta;
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
					trace("INICIA....."+$errorOrWhoFinish);
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
					trace("TERMINA....."+$errorOrWhoFinish);
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
				alertaSingleton.showReintentar($errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
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
		 * el Fault de busqueda de documento por folio
		 */
		
		public function errorInfoSeguimiento(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorTotalesPasado(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorTotalesPosPasado(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorPorFolio(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorPartidaCotizacion(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorMuestraHistorial(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorTiempoProceso(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function error(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorResumenConsulta(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorParaReporte(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
		public function errorTotales(objeto:Object):void{
			alertaSingleton.showReintentar( objeto.toString() );
		}
		
	}
}