package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.despachos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.despachos.EventoConsultaEntregas;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloConsultaEntregas extends EventDispatcher
	{
		
		/**
		 * //////////////////////////////////////////////////////////// Funcion para lista de Pedidos en busqueda rapida //////////////////////////////////////////////////////////// 
		 */
		private var _entregas:ArrayCollection;
		public function setRecibeEntregas($datos:ArrayCollection):void{
			_entregas = new ArrayCollection();
			this._entregas = ObjectUtil.copy( $datos ) as ArrayCollection;
			dispatchEvent(new Event("consultaEntregasModeloConsultaEntregas"));
		}
		
		[Bindable(event="consultaEntregasModeloConsultaEntregas")]
		public function get RecibeEntregas():ArrayCollection{
			if(_entregas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaEntregasModeloConsultaEntregas");
				}
			}
			return this._entregas;
		}
		/**
		 * //////////////////////////////////////////////////////////// Funcion para recibir la factura //////////////////////////////////////////////////////////// 
		 */
		private var _listaRutas:ArrayCollection;
		public function setRecibeListaRutas($datos:ArrayCollection):void{
			_listaRutas = $datos;
			dispatchEvent(new Event("regresaListaRutasModeloConsultaEntregas"));
		}
		
		[Bindable(event="regresaListaRutasModeloConsultaEntregas")]
		public function get RecibeListaRutas():ArrayCollection{
			return this._listaRutas;
			
		}
		/**
		 * //////////////////////////////////////////////////////////// Tiempos del proceso //////////////////////////////////////////////////////////// 
		 */
		private var _listaProcesos:ArrayCollection;
		public function setRecibeTiempoProceso($datos:ArrayCollection):void{
			_listaProcesos = $datos;
			dispatchEvent(new Event("regresatiempoProcesoModeloConsultaEntregas"));
		}
		
		[Bindable(event="regresatiempoProcesoModeloConsultaEntregas")]
		public function get RegresaTiempoProceso():ArrayCollection{
			return this._listaProcesos;
			
		}
		/**
		 * //////////////////////////////////////////////////////////// Historial //////////////////////////////////////////////////////////// 
		 */
		private var _listaHistorial:ArrayCollection;
		public function setRecibeHistorial($datos:ArrayCollection):void{
			_listaHistorial = $datos;
			dispatchEvent(new Event("regHistorialModeloConsultaEntregas"));
		}
		
		[Bindable(event="regHistorialModeloConsultaEntregas")]
		public function get RecibeHistorial():ArrayCollection{
			return this._listaHistorial;
			
		}
		/**
		 * //////////////////////////////////////////////////////////// Historial //////////////////////////////////////////////////////////// 
		 */
		private var _listaHistorialejecucion:ArrayCollection;
		public function setHistorialEjecucion($datos:ArrayCollection):void{
			_listaHistorialejecucion = $datos;
			dispatchEvent(new Event("historilaEjecucionModeloConsultaEntregas"));
		}
		
		[Bindable(event="historilaEjecucionModeloConsultaEntregas")]
		public function get HistorialEjecucion():ArrayCollection{
			return this._listaHistorialejecucion;
			
		}
		/**
		 * //////////////////////////////////////////////////////////// Comprativas //////////////////////////////////////////////////////////// 
		 */
		private var _listaComprativas:ArrayCollection;
		public function setComprativas($datos:ArrayCollection):void{
			_listaComprativas = $datos;
			dispatchEvent(new Event("compartivasModeloConsultaEntregas"));
		}
		
		[Bindable(event="compartivasModeloConsultaEntregas")]
		public function get Comprativas():ArrayCollection{
			if(_listaComprativas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"compartivasModeloConsultaEntregas");
				}
			}
			return this._listaComprativas;
		}
		
		private var _listaComprativasPasado:ArrayCollection;
		public function setComprativasPasado($datos:ArrayCollection):void{
			for(var d:int = 0 ; d<$datos.length ; d++){
				($datos[d] as ResumenConsulta).etiqueta = 'Pasado';
			}
			_listaComprativasPasado = $datos;
			dispatchEvent(new Event("compartivasPasadoModeloConsultaEntregas"));
		}
		[Bindable(event="compartivasPasadoModeloConsultaEntregas")]
		public function get ComprativasPasado():ArrayCollection{
			if(_listaComprativasPasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"compartivasPasadoModeloConsultaEntregas");
				}
			}
			return this._listaComprativasPasado;
		}
		
		private var _listaComprativasPosPasado:ArrayCollection;
		public function setComprativasPosPasado($datos:ArrayCollection):void{
			for(var d:int = 0 ; d<$datos.length ; d++){
				($datos[d] as ResumenConsulta).etiqueta = 'Postpasado';
			}
			_listaComprativasPosPasado = $datos;
			dispatchEvent(new Event("compartivasPosPasadoModeloConsultaEntregas"));
		}
		[Bindable(event="compartivasPosPasadoModeloConsultaEntregas")]
		public function get ComprativasPosPasado():ArrayCollection{
			if(_listaComprativasPosPasado!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"compartivasPosPasadoModeloConsultaEntregas");
				}
			}
			return this._listaComprativasPosPasado;
		}
		/**
		 * //////////////////////////////////////////////////////////// Comprativas //////////////////////////////////////////////////////////// 
		 */
		private var _listaTresGraficas:ArrayCollection;
		public function setTresGraficas( $datos:ArrayCollection ):void{
			_listaTresGraficas = new ArrayCollection();
			_listaTresGraficas = $datos;
			dispatchEvent(new Event("listaTresGraficasModeloConsultaEntregas"));
		}
		
		[Bindable(event="listaTresGraficasModeloConsultaEntregas")]
		public function get TresGraficas():ArrayCollection{
			if(_listaTresGraficas!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"listaTresGraficasModeloConsultaEntregas");
				}
			}
			return this._listaTresGraficas;
		}
		/**
		 **************************************************************  Funcion que muestra tab garficas false- ocultar , true - muestra **************************************************************
		 */ 
		private var _tab:Boolean;
		public function setMostrarOcultaTabGrafica(tab:Boolean):void{
			_tab = tab;
			dispatchEvent(new Event ("muestraOcultaTabGraficaModeloConsultaEntregas"));
		}
		
		[Bindable(event="muestraOcultaTabGraficaModeloConsultaEntregas")]
		public function get mostrarOcultaTabGrafica():Boolean{
			return this._tab;
		}
		
		
		/**
		 * //////////////////////////////////////////////////////////// ENTREGAS SIN AVISO DE CAMBIOS //////////////////////////////////////////////////////////// 
		 */
		private var _entregasSinAviso:ArrayCollection;
		public function setRecibeEntregasSinAviso($datos:ArrayCollection):void{
			_entregasSinAviso = new ArrayCollection();
			this._entregasSinAviso = ObjectUtil.copy( $datos ) as ArrayCollection;
			dispatchEvent(new Event("consultaEntregasSinAvisoModeloConsultaEntregas"));
		}
		
		[Bindable(event="consultaEntregasSinAvisoModeloConsultaEntregas")]
		public function get RecibeEntregasSinAviso():ArrayCollection{
			/*if(_entregasSinAviso!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaEntregasModeloConsultaEntregas");
				}
			}*/
			return this._entregasSinAviso;
		}
		
		
		/**
		 * //////////////////////////////////////////////////////////// ENTREGAS SIN AVISO DE CAMBIOS //////////////////////////////////////////////////////////// 
		 */
		private var _entregasConAviso:ArrayCollection;
		public function setRecibeEntregasConAviso($datos:ArrayCollection):void{
			_entregasConAviso = new ArrayCollection();
			this._entregasConAviso = ObjectUtil.copy( $datos ) as ArrayCollection;
			dispatchEvent(new Event("consultaEntregasConAvisoModeloConsultaEntregas"));
		}
		
		[Bindable(event="consultaEntregasConAvisoModeloConsultaEntregas")]
		public function get RecibeEntregasConnAviso():ArrayCollection{
			/*if(_entregasSinAviso!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaEntregasModeloConsultaEntregas");
				}
			}*/
			return this._entregasConAviso;
		}
		
		/**
		 *	********************************************************Funcion que obtiene la  info para la gráfica ET y FT Secundaria ********************************************************
		 * 
		 */
		private var _infoVsETFTSecundaria:ArrayCollection;
		public function pasarInfoAGraficaETvsFT(array:ArrayCollection):void
		{
			_infoVsETFTSecundaria = array;
			dispatchEvent( new Event("pasaInfoaGraficaETvsFTSecundariaModeloConsultaEntregas") );
		}
		[Bindable(event="pasaInfoaGraficaETvsFTSecundariaModeloConsultaEntregas")]
		public function get enviarInfoAGraficaETvsFT():ArrayCollection
		{
			return _infoVsETFTSecundaria;
		}
		
		/**
		 *	********************************************************FUNCIONES PARA TRAER DATOS DE SERVICIO A DEMANDA********************************************************
		 * 
		 */
		private var _filtrosConsulta:Object;
		public function setSettearValoresDeLaConsultaActual($idCliente:Number, $estado:String, $mensajero:String, $rutaCombo:String, $conforme:String, $finicio:Date, $ffin:Date, $facturaString:String,$cpedido:String):void
		{
			if($finicio == null || $ffin == null) return;
			_filtrosConsulta = new Object();
			_filtrosConsulta.finicio = $finicio;
			_filtrosConsulta.ffin = $ffin;
			_filtrosConsulta.idCliente = $idCliente;
			_filtrosConsulta.estado = $estado;
			_filtrosConsulta.mensajero = $mensajero;
			_filtrosConsulta.rutaCombo = $rutaCombo;
			_filtrosConsulta.conforme = $conforme;
			_filtrosConsulta.facturaString = $facturaString;
			_filtrosConsulta.cpedido = $cpedido;
			
			dispatchEvent(new Event("SettearLosValoresDeLaBusquedaActualModeloConsultaEntregas"));
		}
		
		[Bindable(event="SettearLosValoresDeLaBusquedaActualModeloConsultaEntregas")]
		public function get regresaValoresFiltrosDelaBusquedaActual():Object
		{
			return _filtrosConsulta;
		}
		private var _currentVista:String;
		public function setSettearSelectedVista($vistaSelected:String):void{
			if($vistaSelected == null) return;
			_currentVista = $vistaSelected;
			dispatchEvent( new Event("pasaLaVistaSeleccionadaActualmenteModeloConsultaEntregas") );
		}
		[Bindable(event="pasaLaVistaSeleccionadaActualmenteModeloConsultaEntregas")]
		public function get enviarVistaSeleccionadaActualmente():String{
			return _currentVista;
		}
		
		private var _actualizarVistaActual:Boolean;
		public function setActualizarDatosVistaActual($actualizar:Boolean):void{
			_actualizarVistaActual = $actualizar;
			dispatchEvent( new Event("actualizarLaVistaActualModeloConsultaEntregas") );
		}
		[Bindable(event="actualizarLaVistaActualModeloConsultaEntregas")]
		public function get actualizarLaVistaSeleccionada():Boolean{
			return _actualizarVistaActual;
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaEntregas[$tiposEventos[i]])== null){
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
		 * //////////////////////////////////////////////////////////// Error //////////////////////////////////////////////////////////// 
		 */
		public function error(obj:Object):void{
			alertaSingleton.showReintentar(obj.toString());
		}
		
		public function ModeloConsultaEntregas(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}