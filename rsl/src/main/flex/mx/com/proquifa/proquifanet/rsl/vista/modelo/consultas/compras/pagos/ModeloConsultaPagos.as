package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.compras.pagos
{
	import com.asfusion.mate.events.DispatcherEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.compras.pagos.EventoConsultaPagos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;

	public class ModeloConsultaPagos extends EventDispatcher
	{
		public function ModeloConsultaPagos(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		/**
		 * Función para obtener lista de pagos
		 */ 
		private var _pagos:ArrayCollection;
		public function setListaPagos(info:ArrayCollection):void{
			for(var d:int = 0 ; d<info.length ; d++){
				info[d].numFila = d + 1;
			}
			_pagos = info;
			dispatchEvent(new Event ("obtenerInfoPagosModeloConsultaPagos"));
		}
		
		[Bindable(event="obtenerInfoPagosModeloConsultaPagos")]
		public function get listaPagos():ArrayCollection{
			if(_pagos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerInfoPagosModeloConsultaPagos");
				}
			}
			return this._pagos;
		}
		
		/**
		 * Función para obtener resumen de consulta pagos
		 */ 
		private var _resumen:ArrayCollection;
		public function setResumenPagos(tendencia:ArrayCollection):void{
			_resumen = tendencia;
			dispatchEvent(new Event ("obtenerResumenConsultaPagosModeloConsultaPagos"));
		}
		
		[Bindable(event="obtenerResumenConsultaPagosModeloConsultaPagos")]
		public function get resumenPagos():ArrayCollection{
			if(_resumen!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerResumenConsultaPagosModeloConsultaPagos");
				}
			}
			return this._resumen;
		}
		
		/**
		 * Funcion que muestra tab garficas false- ocultar , true - muestra
		 */ 
		private var _tab:Boolean;
		public function setMostrarOcultaTabGrafica(tab:Boolean):void{
			_tab = tab;
			dispatchEvent(new Event ("muestraOcultaInfoTabGraficaModeloConsultaPagos"));
		}
		
		[Bindable(event="muestraOcultaInfoTabGraficaModeloConsultaPagos")]
		public function get mostrarOcultaTabGrafica():Boolean{
			return this._tab;
		}
		/**
		 *	********************************************************FUNCIONES PARA TRAER DATOS DE SERVICIO A DEMANDA********************************************************
		 * 
		 */
		private var _filtrosConsulta:Object;
		public function setSettearValoresDeLaConsultaActual($idProveedor:Number, $estado:String, $empresa:String, $factura:String, $moneda:String, $finicio:Date, $ffin:Date, $oc:String, $idUsuario:Number):void
		{
			if($finicio == null || $ffin == null) return;
			_filtrosConsulta = new Object();
			_filtrosConsulta.finicio = $finicio;
			_filtrosConsulta.ffin = $ffin;
			_filtrosConsulta.idProveedor = $idProveedor;
			_filtrosConsulta.estado = $estado;
			_filtrosConsulta.empresa = $empresa;
			_filtrosConsulta.factura = $factura;
			_filtrosConsulta.moneda = $moneda;
			_filtrosConsulta.oc = $oc;
			_filtrosConsulta.idUsuario = $idUsuario;
			
			dispatchEvent(new Event("SettearLosValoresDeLaBusquedaActualModeloConsultaPagos"));
		}
		
		[Bindable(event="SettearLosValoresDeLaBusquedaActualModeloConsultaPagos")]
		public function get regresaValoresFiltrosDelaBusquedaActual():Object
		{
			return _filtrosConsulta;
		}
		private var _currentVista:String;
		public function setSettearSelectedVista($vistaSelected:String):void{
			if($vistaSelected == null) return;
			_currentVista = $vistaSelected;
			dispatchEvent( new Event("pasaLaVistaSeleccionadaActualmenteModeloConsultaPagos") );
		}
		[Bindable(event="pasaLaVistaSeleccionadaActualmenteModeloConsultaPagos")]
		public function get enviarVistaSeleccionadaActualmente():String{
			return _currentVista;
		}
		
		private var _actualizarVistaActual:Boolean;
		public function setActualizarDatosVistaActual($actualizar:Boolean):void{
			_actualizarVistaActual = $actualizar;
			dispatchEvent( new Event("actualizarLaVistaActualModeloConsultaPagos") );
		}
		[Bindable(event="actualizarLaVistaActualModeloConsultaPagos")]
		public function get actualizarLaVistaSeleccionada():Boolean{
			return _actualizarVistaActual;
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaPagos[$tiposEventos[i]])== null){
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
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaPagos") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloConsultaPagos")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private var _ppagos:ArrayCollection;
		public function setConsultaPagos(ppagos:ArrayCollection):void{
			if ( ppagos == null ){
				return;
			}
			this._ppagos = ppagos;
			dispatchEvent(new Event ("obtenerPagosModeloConsultaPagos") );
		}
		
		[Bindable(event="obtenerPagosModeloConsultaPagos")]
		public function get consultaPagos():ArrayCollection{
			return this._ppagos;
		}
		
		private var _parametrosEtiqueta:EventoConsultaPagos;
		private var _ptiempoProceso:ArrayCollection;
		public function setTiempoProceso(procesos:ArrayCollection, $evt:EventoConsultaPagos):void{

			
			if (procesos == null ){
				return;
			}
			for (var i:int = 0; i < procesos.length; i++ ){
				if (procesos[i].etapa == "Pago"){
					$evt.estado = "pago";
					break;
				}
			}
			this._parametrosEtiqueta = $evt;
			this._ptiempoProceso = procesos;
			dispatchEvent(new Event("consultaParametrosProcesoConsultaPagos"));
			dispatchEvent(new Event("consultaTProcesoConsultaPagos"));
		}
		
		[Bindable(event="consultaTProcesoConsultaPagos")]
		public function get tiempoProcesoPagos():ArrayCollection{
			return this._ptiempoProceso;
		}
		
		[Bindable(event="consultaParametrosProcesoConsultaPagos")]
		public function get parametrosConsultaPagos():EventoConsultaPagos{
			return this._parametrosEtiqueta;
		}
		
		private var _presumenGeneral:ArrayCollection;
		private var _parametrosHistorial:EventoConsultaPagos;
		public function setResumenInfoGeneral($infoGeneral:ArrayCollection, $evt:EventoConsultaPagos):void{
			if ($infoGeneral == null ){
				return;
			}
			this._presumenGeneral = $infoGeneral;
			this._parametrosHistorial = $evt;
			dispatchEvent(new Event("consultaParametrosHistorialConsultaPagos"));
			dispatchEvent(new Event("obtenerInformacionGeneralConsultaPagos"));
		}
		
		[Bindable(event="obtenerInformacionGeneralConsultaPagos")]
		public function get resumenInfoGeneralPagos():ArrayCollection{
			return this._presumenGeneral;
		}
		
		[Bindable(event="consultaParametrosHistorialConsultaPagos")]
		public function get parametrosHistorialConsultaPagos():EventoConsultaPagos{
			return this._parametrosHistorial;
		}
		
		public function faultError(error:Object):void{
			alertaSingleton.showReintentar( error.toString(), catalogoAlertas.TIT_ERR);
		}
		
		private var _cargarFactura:EventoConsultaPagos;
		public function setCargarFactura($evt:EventoConsultaPagos):void{
			dispatchEvent(new Event("cargarFacturaConsultaPagos"));
		}
		
		[Bindable(event="cargarFacturaConsultaPagos")]
		public function get cargarFacturaConsultaPagos():EventoConsultaPagos{
			return this._cargarFactura;
		}
		
		/**
		 * Funcion para el tipo de filto de graficos secundarios 
		 */
		private var _filtro:String;
		public function setFiltroGraficoSecundario(tipo:String):void{
			_filtro = tipo;
			dispatchEvent(new Event ("consultaTipoFiltroInfoGraficoModeloConsultaPagos"));
		}
		
		[Bindable(event="consultaTipoFiltroInfoGraficoModeloConsultaPagos")]
		public function get filtroGraficoSecundario():String{
			return this._filtro;
			
		}
		
		/**
		 *	Funcion obtiene info para la grafica ET y FT Secundaria
		 * 
		 */
		private var _infoVsETFTSecundaria:ArrayCollection;
		public function pasarInfoAGraficaETvsFTSecundaria(array:ArrayCollection):void{
			_infoVsETFTSecundaria = array;
			dispatchEvent( new Event("pasaInfoaGraficaETvsFTSecundariaModeloConsultaPagos") );
		}
		[Bindable(event="pasaInfoaGraficaETvsFTSecundariaModeloConsultaPagos")]
		public function get enviarInfoAGraficaETvsFTSecundaria():ArrayCollection{
			return this._infoVsETFTSecundaria;
		}
		
		
		/**
		 * Función para obtener lista de pagos Interfacturacion
		 */ 
		private var _pagosInter:ArrayCollection;
		public function setListaPagosInter(info:ArrayCollection):void{
			for(var d:int = 0 ; d<info.length ; d++){
				info[d].numFila = d + 1;
			}
			_pagosInter = info;
			dispatchEvent(new Event ("obtenerInfoPagosInterfacturacionModeloConsultaPagos"));
		}
		
		[Bindable(event="obtenerInfoPagosInterfacturacionModeloConsultaPagos")]
		public function get listaPagosInter():ArrayCollection{
			if(_pagosInter!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerInfoPagosInterfacturacionModeloConsultaPagos");
				}
			}
			return this._pagosInter;
		}
		
	}
}