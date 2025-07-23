package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.ventas.pedidos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.ventas.pedidos.EventoConsultaPedidosNuevo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaPedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Pedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	

	
	public class ModeloConsultaPedidosNuevo extends EventDispatcher
	{
		public function ModeloConsultaPedidosNuevo(target:IEventDispatcher=null)
		{
			super(target);
		}
		/**
		 * Funcion que busca los datos para obtener clientes 
		 */ 
		public var pp:PartidaPedido = new PartidaPedido();
		public var p:Pedido = new Pedido();
		private var _cliente:ArrayCollection;
		public function setClientesPedidos(cliente:ArrayCollection):void{
			_cliente = cliente;
			dispatchEvent(new Event ("clientesConsultaPedidosModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="clientesConsultaPedidosModeloConsultaPedidoNuevo")]
		public function get clientesPedidos():ArrayCollection{
			return this._cliente;
		}
		
		/**
		 * Funcion para lista de Pedidos en busqueda rapida 
		 */
		private var _pedidos:ArrayCollection;
		public function setFolioPedido(pedido:ArrayCollection):void{
			_pedidos = new ArrayCollection();
			if (pedido != null ){
				for( var d:int = 0; d < pedido.length; d++ ){
					pedido[d].numFila = d + 1;
					if(	pedido[d].estado == "ABIERTA"){	pedido[d].estado = "Abierta";}
					if(	pedido[d].estado == "CERRADA"){	pedido[d].estado = "Cerrada";}
				}
				//_pedidos = pedido;
				this._pedidos = FuncionesEstaticas.getInstance().formatoObjetos(pedido);
				dispatchEvent(new Event ("consultaRapidaPedidosModeloConsultaPedidoNuevo"));
			}
		}
		
		[Bindable(event="consultaRapidaPedidosModeloConsultaPedidoNuevo")]
		public function get folioPedido():ArrayCollection{
			if(_pedidos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaRapidaPedidosModeloConsultaPedidoNuevo");
				}
			}
			return this._pedidos;
			
		}
		
		/**
		 * Funcion para info de graficos secundarios 
		 */
		private var _grafico:ArrayCollection;
		public function setInfoGraficoSecundario(infoGrafico:ArrayCollection):void{
			_grafico = infoGrafico;
			dispatchEvent(new Event ("consultaInfoGraficoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaInfoGraficoModeloConsultaPedidoNuevo")]
		public function get infoGraficoSecundario():ArrayCollection{
			return this._grafico;
			
		}
		
		/**
		 * Funcion para el tipo de filto de graficos secundarios 
		 */
		private var _filtro:String;
		public function setFiltroGraficoSecundario(tipo:String):void{
			_filtro = tipo;
			dispatchEvent(new Event ("consultaTipoFiltroInfoGraficoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaTipoFiltroInfoGraficoModeloConsultaPedidoNuevo")]
		public function get filtroGraficoSecundario():String{
			return this._filtro;
			
		}
		
		/**
		 * Funcion que busca las partidas de pedidos 
		 */ 
		private var _ppedidos:ArrayCollection;
		public function setFolioPPedido(ppedido:ArrayCollection):void{
			if( ppedido == null){
				return;
			}
			for( var d:int = 0; d < ppedido.length; d++ ){
				ppedido[d].numFila = d + 1;
				if(	ppedido[d].estado == "ABIERTA"){	ppedido[d].estado = "Abierta";}
				if(	ppedido[d].estado == "CERRADA"){	ppedido[d].estado = "Cerrada";}
			}
			//_ppedidos = ppedido;
			this._ppedidos = FuncionesEstaticas.getInstance().formatoObjetos(ppedido);
			dispatchEvent(new Event ("consultaPPedidosModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaPPedidosModeloConsultaPedidoNuevo")]
		public function get folioPPedidoN():ArrayCollection{
			return this._ppedidos;
		}
		
		/**
		 * Funcion que busca historial aviso de cambios
		 */ 
		private var _historialAC:ArrayCollection;
		public function setHistorialAC(historial:ArrayCollection):void{
			for( var d:int = 0; d < historial.length; d++ ){
				historial[d].numFila = d + 1;
			}
			//_historialAC = historial;
			this._historialAC = FuncionesEstaticas.getInstance().formatoObjetos(historial);
			dispatchEvent(new Event ("consultaHistorialAvisodeCambiosModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaHistorialAvisodeCambiosModeloConsultaPedidoNuevo")]
		public function get historialAC():ArrayCollection{
			return this._historialAC;
		}
		
		/**
		 * Funcion que busca el tiempo de proceso 
		 */ 
		private var _tiempoP:ArrayCollection;
		public function setTiempodeProceso(proceso:ArrayCollection):void{
			for( var d:int = 0; d < proceso.length; d++ ){
				proceso[d].numFila = d + 1;
			}
			_tiempoP = proceso;
			this._tiempoP = FuncionesEstaticas.getInstance().formatoObjetos(proceso);
			dispatchEvent(new Event ("consultaTiempoProcesoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaTiempoProcesoModeloConsultaPedidoNuevo")]
		public function get tiempodeProceso():ArrayCollection{
			return this._tiempoP;
		}
		
		/**
		 * Funcion que busca las partidas de pedidos 
		 */ 
		private var _timeProcesos:ArrayCollection;
		private var _parametrosEtiqueta:EventoConsultaPedidosNuevo = new EventoConsultaPedidosNuevo(EventoConsultaPedidosNuevo.OBTENER_TIEMPO_PROCESO);
		public function setTiempoProcesos(procesos:ArrayCollection, $evt:EventoConsultaPedidosNuevo ):void{
			if( procesos== null){
				return;
			}
			for( var d:int = 0; d < procesos.length; d++ ){
				procesos[d].numFila = d + 1;
				if(procesos[d].etapa ==	"ENTREGADO" && $evt.tipo ==	"ABIERTO"){
					procesos[d - 1].totalDiasProceso = -1;
					procesos.removeItemAt(d);
				}
			}
			this._timeProcesos = procesos;
			_parametrosEtiqueta = $evt;
			dispatchEvent(new Event ("consultaTProcesosModeloConsultaPedidoNuevo"));
			dispatchEvent(new Event ("consultaTProcesosEtiuetaModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaTProcesosModeloConsultaPedidoNuevo")]
		public function get TiempoProcesos():ArrayCollection{
			return this._timeProcesos;
		}
		[Bindable(event="consultaTProcesosEtiuetaModeloConsultaPedidoNuevo")]
		public function get TiempoProcesosEtiqueta():EventoConsultaPedidosNuevo{
			return this._parametrosEtiqueta;
		}
		
		/**
		 * Funcion que información de graficas
		 */ 
		public var resumen:ResumenConsulta;
		private var _infoGraficas:ArrayCollection;
		public function setInfoGraficas(info:ArrayCollection):void{
			_infoGraficas = info;
			dispatchEvent(new Event ("consultaInfoGraficasModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaInfoGraficasModeloConsultaPedidoNuevo")]
		public function get infoGraficas():ArrayCollection{
			if(_infoGraficas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaInfoGraficasModeloConsultaPedidoNuevo");
				}
			}
			return this._infoGraficas;
		}
		
		/**
		 * Funcion que información pedido graficas
		 */ 
		private var _infoPedidoGrafica:ArrayCollection;
		public function setInfoPedidoGraficas(info:ArrayCollection):void{
			_infoPedidoGrafica = info;
			dispatchEvent(new Event ("consultaInfoPedidoGraficasModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaInfoPedidoGraficasModeloConsultaPedidoNuevo")]
		public function get infoPedidoGraficas():ArrayCollection{
			if(_infoPedidoGrafica!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaInfoPedidoGraficasModeloConsultaPedidoNuevo");
				}
			}
			return this._infoPedidoGrafica;
		}
		
		
		private var _graficaXPedidoGrafica:ArrayCollection;
		public function setGraficaXPedidoGraficas(info:ArrayCollection):void{
			_graficaXPedidoGrafica = info;
			dispatchEvent(new Event ("consultaGraficaXPedidoGraficasModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="consultaGraficaXPedidoGraficasModeloConsultaPedidoNuevo")]
		public function get graficaXPedidoGraficas():ArrayCollection{
			/*if(_infoPedidoGrafica!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaInfoPedidoGraficasModeloConsultaPedidoNuevo");
				}
			}*/
			return this._graficaXPedidoGrafica;
		}	
		
		/**
		 * Funcion que muestra tab garficas false- ocultar , true - muestra
		 */ 
		//private var _evt:EventoConsultaPedidosNuevo = new EventoConsultaPedidosNuevo(EventoConsultaPedidosNuevo.ACTUALIZAR_GRAFICAS_SECUNDARIAS);
		private var _evt:EventoConsultaPedidosNuevo;
		public function setActualizarGraficasSecundarias(evt:EventoConsultaPedidosNuevo):void{
			_evt = evt;
			dispatchEvent(new Event ("ActualizarGraficasSecModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="ActualizarGraficasSecModeloConsultaPedidoNuevo")]
		public function get actualizarGraficasSecun():EventoConsultaPedidosNuevo{
			return this._evt;
		}
		
		/**
		 * Funcion que ejecutafunción para actualizar graficas secundarias ET y FT
		 */ 
		private var _tab:Boolean;
		public function setMostrarOcultaInfoGrafica(tab:Boolean):void{
			_tab = tab;
			dispatchEvent(new Event ("muestraOcultaTabGraficaModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="muestraOcultaTabGraficaModeloConsultaPedidoNuevo")]
		public function get mostrarOcultaInfoGrafica():Boolean{
			return this._tab;
		}
		
		/**
		 * Función que muestra los totales por periodo
		 */ 
		private var _periodo:ArrayCollection;
		public function setEncuentraTotalPorPeriodo(periodo:ArrayCollection):void{
			_periodo = periodo;
			dispatchEvent(new Event ("obtenerTotalPeriodoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="obtenerTotalPeriodoModeloConsultaPedidoNuevo")]
		public function get encuentraTotalPorPeriodo():ArrayCollection{
			if(_periodo!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerTotalPeriodoModeloConsultaPedidoNuevo");
				}
			}
			return this._periodo;
		}
		
		/**
		 * Función que muestra los totales por periodo PASADO
		 */ 
		private var _periodoPasado:ArrayCollection;
		public function setEncuentraTotalPorPeriodoPasado(pasado:ArrayCollection):void{
			for(var d:int = 0 ; d<pasado.length ; d++){
				pasado[d].conceptoResultado = 'pasado';
			}
			_periodoPasado = pasado;
			dispatchEvent(new Event ("obtenerTotalPeriodoPasadoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="obtenerTotalPeriodoPasadoModeloConsultaPedidoNuevo")]
		public function get encuentraTotalPorPeriodoPasado():ArrayCollection{
			if(_periodoPasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerTotalPeriodoPasadoModeloConsultaPedidoNuevo");
				}
			}
			return this._periodoPasado;
		}
		
		/**
		 * Función que muestra los totales por periodo POSPASADO
		 */ 
		private var _periodoPosPasado:ArrayCollection;
		public function setEncuentraTotalPorPeriodoPosPasado(posPasado:ArrayCollection):void{
			for(var d:int = 0 ; d<posPasado.length ; d++){
				posPasado[d].conceptoResultado = 'postpasado';
			}
			_periodoPosPasado = posPasado;
			dispatchEvent(new Event ("obtenerTotalPeriodoPosPasadoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="obtenerTotalPeriodoPosPasadoModeloConsultaPedidoNuevo")]
		public function get encuentraTotalPorPeriodoPosPasado():ArrayCollection{
			if(_periodoPosPasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerTotalPeriodoPosPasadoModeloConsultaPedidoNuevo");
				}
			}
			return this._periodoPosPasado;
		}
		
		/**
		 * Función que muestra finicio y ffin en contenedor de totales
		 */ 
		private var _fecha:Object;
		public function setMostrarTotalesXPeriodo(fechas:Object):void{
			_fecha = fechas;
			dispatchEvent(new Event ("obtenerFinicioFfinModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="obtenerFinicioFfinModeloConsultaPedidoNuevo")]
		public function get mostrarTotalesXPeriodo():Object{
			return this._fecha;
		}
		
		/**
		 * Función para control de graficos secundarios
		 */ 
		private var _control:Object;
		public function setControlGrafico(grafico:Object):void{
			_control = grafico;
			dispatchEvent(new Event ("obtenerControlGraficoModeloConsultaPedidoNuevo"));
		}
		
		[Bindable(event="obtenerControlGraficoModeloConsultaPedidoNuevo")]
		public function get controlGrafico():Object{
			return this._control;
		}

		/**
		 *	Funcion obtiene info para la grafica ET y FT Secundaria
		 * 
		 */
		private var _infoVsETFTSecundaria:ArrayCollection;
		public function pasarInfoAGraficaETvsFTSecundaria(array:ArrayCollection):void{
			if(array == null) return;
			_infoVsETFTSecundaria = array;
			dispatchEvent( new Event("pasaInfoaGraficaETvsFTSecundariaModeloConsultaPedidosNuevo") );
		}
		[Bindable(event="pasaInfoaGraficaETvsFTSecundariaModeloConsultaPedidosNuevo")]
		public function get enviarInfoAGraficaETvsFTSecundaria():ArrayCollection{
			return this._infoVsETFTSecundaria;
		}
		
		
		/**
		 ************************************************************** PROFORMA Tramitado ********************************************************
		 */
		private var proforma:String;
		public function setProforma( $proforma:String ):void{	
			proforma = $proforma;
			dispatchEvent(new Event ("proformaModeloConsultaPedidosNuevo"));
		}
		
		[Bindable(event="proformaModeloConsultaPedidosNuevo")]
		public function get Proforma():String{
			return this.proforma;
		}
		
		
		/**
		 *	********************************************************FUNCIONES PARA TRAER DATOS DE SERVICIO A DEMANDA********************************************************
		 * 
		 */
		private var _filtrosConsulta:Object;
		public function setSettearValoresDeLaConsultaActual($fInicio:Date,$fFin:Date,$idCliente:int,$tramito:String,$edo:String,$referencia:String,$folioText:String,$individual:Boolean):void
		{
			if($fInicio == null || $fFin == null) return;
			_filtrosConsulta = new Object();
			_filtrosConsulta.finicio = $fInicio;
			_filtrosConsulta.ffin = $fFin;
			_filtrosConsulta.idCliente = $idCliente;
			_filtrosConsulta.tramito = $tramito;
			_filtrosConsulta.edo = $edo;
			_filtrosConsulta.referencia = $referencia;
			_filtrosConsulta.folioText = $folioText;
			_filtrosConsulta.individual = $individual;
			
			dispatchEvent(new Event("SettearLosValoresDeLaBusquedaActualModeloConsultaPedidosNuevo"));
		}
		
		[Bindable(event="SettearLosValoresDeLaBusquedaActualModeloConsultaPedidosNuevo")]
		public function get regresaValoresFiltrosDelaBusquedaActual():Object
		{
			return _filtrosConsulta;
		}
		private var _currentVista:String;
		public function setSettearSelectedVista($vistaSelected:String):void{
			if($vistaSelected == null) return;
			_currentVista = $vistaSelected;
			dispatchEvent( new Event("pasaLaVistaSeleccionadaActualmenteModeloConsultaPedidosNuevo") );
		}
		[Bindable(event="pasaLaVistaSeleccionadaActualmenteModeloConsultaPedidosNuevo")]
		public function get enviarVistaSeleccionadaActualmente():String{
			return _currentVista;
		}
	
		private var _actualizarVistaActual:Boolean;
		public function setActualizarDatosVistaActual($actualizar:Boolean):void{
			_actualizarVistaActual = $actualizar;
			dispatchEvent( new Event("actualizarLaVistaActualModeloConsultaPedidosNuevo") );
		}
		[Bindable(event="actualizarLaVistaActualModeloConsultaPedidosNuevo")]
		public function get actualizarLaVistaSeleccionada():Boolean{
			return _actualizarVistaActual;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaPedidosNuevo[$tiposEventos[i]])== null){
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
		 ************************************************************** error **************************************************************
		 */
		public function errorTotalesPosPasado(error:Object):void{
			alertaSingleton.showReintentar(error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		public function errorTotalesPasado(error:Object):void{
			alertaSingleton.showReintentar(error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		public function errorTotales(error:Object):void{
			alertaSingleton.showReintentar(error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		public function faultError(error:Object):void{
			//Alert.show("Error en el nuevo servicio");
			alertaSingleton.showReintentar( error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		public function faultErrorPorFolio(error:Object):void{
			//Alert.show("Error en el nuevo servicio");
			alertaSingleton.showReintentar( error.toString(), catalogoAlertas.TIT_ERR);
		}

		public function faultErrorInfoGrafica(error:Object):void{
			//Alert.show("Error en el nuevo servicio");
			alertaSingleton.showReintentar( error.toString(), catalogoAlertas.TIT_ERR);
		}
	}
}