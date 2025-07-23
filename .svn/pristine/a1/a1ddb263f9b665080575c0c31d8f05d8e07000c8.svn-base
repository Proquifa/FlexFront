package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.compras.proveedores
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.compras.proveedores.EventoTabProveedores;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PagoProveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ResumenProveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ResumenVentasESAC;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.BalanceDeCredito;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.ConsumoClientePorProveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.OCTableroProveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor.ProductoProveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.plantillaProquifa.gestion.VistaDefaultGestion;
	import mx.utils.ObjectUtil;
	
	import org.apache.flex.collections.ArrayList;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloTabProveedores extends EventDispatcher
	{
		public function ModeloTabProveedores(target:IEventDispatcher=null) 
		{
			super(target);
		}
		
		/**
		 * Funcion que busca los datos del proveedor
		 */
		
		private var _datoProveedor:Proveedor; 
		public function setDatosProveedor(info:Proveedor):void{
			_datoProveedor = info;
			dispatchEvent(new Event ("informacionProveedoresModeloTabProveedores"));
			if(_datoProveedor!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"informacionProveedoresModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="informacionProveedoresModeloTabProveedores")]
		public function get datosProveedor():Proveedor{
			return this._datoProveedor;
		}
		
		/**
		 * Funcion de result que busca los datos para resumen de proveedores
		 */ 
		private var _resumen:ArrayCollection = new ArrayCollection();
		public function setResumenProveedores(resumen:ArrayCollection):void{
			_resumen = resumen;
			dispatchEvent(new Event ("obtenerResumenProveedoresModeloTabProveedores"));
		}
		
		[Bindable(event="obtenerResumenProveedoresModeloTabProveedores")]
		public function get resumenProveedores():ArrayCollection{
			return this._resumen;
		}
		
		
		/**
		 * Funcion de result que busca los datos para la descripcion de PRODUCTOS de un proveedor tabla y grafica
		 */ 
		public var prod:ProductoProveedor = new ProductoProveedor();
		private var _producto:ArrayCollection = new ArrayCollection();
		public function setDescripcionTopTenProductosTabla(productoTabla:ArrayCollection):void{
			_producto = productoTabla;
			for(var d:int = 0 ; d<_producto.length ; d++){
				_producto[d].numFila = d + 1;
			}
			dispatchEvent(new Event ("descripcionTopTenProductosModeloTabProveedores"));
			if(_producto!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"descripcionTopTenProductosModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="descripcionTopTenProductosModeloTabProveedores")]
		public function get descripcionTopTenProductosTabla():ArrayCollection{
			return this._producto;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener todos los CLIENTES 
		 */ 
		private var _clientes:ArrayCollection;
		public var _clienteProveedor:ConsumoClientePorProveedor = new ConsumoClientePorProveedor();
		public function setClientesProveedor(clientesGrafica:ArrayCollection):void{ 
			_clientes = clientesGrafica;
			for(var d:int = 0 ; d < _clientes.length ; d++){
				_clientes[d].numFila = d + 1;
			}
			dispatchEvent(new Event ("clientesProveedorModeloTabProveedores"));
			if(_clientes!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"clientesProveedorModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="clientesProveedorModeloTabProveedores")]
		public function get clientesProveedor():ArrayCollection{
			return this._clientes;
		}	
		
		/**
		 * Funcion de result que busca los datos para obtener RECHAZOS Grid y Chart
		 */
		private var _rechazos:ArrayCollection;
		public function setOCRechazadas(rechazos:ArrayCollection):void{
			_rechazos = rechazos;
			for(var d:int = 0 ; d < this._rechazos.length ; d++){
				(this._rechazos[d] as OCTableroProveedor).numFila = d + 1;
			}
			dispatchEvent(new Event ("obtenerRechazosModeloTabProveedores"));
			if(_rechazos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerRechazosModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="obtenerRechazosModeloTabProveedores")]
		public function get ocRechazadas():ArrayCollection{
			return this._rechazos;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener OCTRANSITO de la Grafica y Gird
		 */
		private var _ocTransito:ArrayCollection;
		private var datosTransito:ObjetoTabla;
		
		public function setOCenTransito(transito:ArrayCollection):void{ 			
			_ocTransito = transito;
			for(var d:int = 0 ; d < this._ocTransito.length ; d++){
				(this._ocTransito[d] as OCTableroProveedor).numFila = d + 1;
			}
			
			dispatchEvent(new Event ("OrdenCompraTransitoModeloTabProveedores"));
			if(_ocTransito!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"OrdenCompraTransitoModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="OrdenCompraTransitoModeloTabProveedores")]
		public function get ocEnTransito():ArrayCollection{
			return this._ocTransito;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener OCRECIBIDAS para Grafica y Grid
		 * 
		 */ 
		private var _partidaTiempo:ArrayCollection;
		private var datosRecibida:ObjetoTabla;
		public function setOCRecibidas(partida:ArrayCollection):void{ 			
			_partidaTiempo = partida;
			if (partida != null)
			{
				for(var d:int = 0 ; d < partida.length ; d++)
				{
					(this._partidaTiempo[d] as OCTableroProveedor).numFila = d + 1;
				}
				dispatchEvent(new Event ("partidasenTiempoModeloTabProveedores"));
			}
			else
			{
				_partidaTiempo = new ArrayCollection();
			}
			
			if(_partidaTiempo!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"partidasenTiempoModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="partidasenTiempoModeloTabProveedores")]
		public function get ocRecibidas():ArrayCollection{
			return this._partidaTiempo
		}
		
		
		/**
		 * Funcion de result que busca los datos para obtener COMPRAS de Grid y Grafica
		 */
		private var _ocCompras:ArrayCollection;
		private var datosCompras:ObjetoTabla;
		public function setOCCompras(compras:ArrayCollection):void{ 			
			_ocCompras = compras;
			for(var m:int = 0; m< compras.length;m++){
				(this._ocCompras[m] as OCTableroProveedor).numFila = m + 1;
			}	
			dispatchEvent(new Event ("OrdenComprasModeloTabProveedores"));
			if(_ocCompras!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"OrdenComprasModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="OrdenComprasModeloTabProveedores")]
		public function get ocCompras():ArrayCollection{
			return this._ocCompras;
		}
		
		
		/**
		 * Funcion que busca los datos para obtener PAGOS
		 */
		private var _pagos:ArrayCollection;
		private var datosPagos:ObjetoTabla;
		public function setPagos(pagos:ArrayCollection):void{ 			
			_pagos = pagos;
			for(var m:int = 0; m< pagos.length;m++){
				(this._pagos[m] as PagoProveedor).numeroDeFila = m + 1;
			}	
			dispatchEvent(new Event ("OrdenPagosModeloTabProveedores"));
			if(_pagos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"OrdenPagosModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="OrdenPagosModeloTabProveedores")]
		public function get obtenerPagos():ArrayCollection{
			return this._pagos;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener AVISO DE CAMBIOS de Garfica y tabla
		 */
		private var _avisoCambios:ArrayCollection;
		public function setAvisoDeCambios(avisoCambios:ArrayCollection):void{
			for( var d:int = 0; d < avisoCambios.length; d++ ){
				avisoCambios[d].numFila = d + 1;
			}
			this._avisoCambios = FuncionesEstaticas.getInstance().formatoObjetos(avisoCambios);
			
			dispatchEvent(new Event ("AvisoDeCambiosGraficaGridModeloTabProveedores"));
			if(_avisoCambios!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"AvisoDeCambiosGraficaGridModeloTabProveedores");
				}
			}
		}
		
		[Bindable(event="AvisoDeCambiosGraficaGridModeloTabProveedores")]
		public function get obtenerAvisoDeCambios():ArrayCollection{
			return this._avisoCambios;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener CONDICIONES DE PAGO Tabla
		 */
		private var _cPagos:ArrayCollection;
		public function setCondicionesDePagoTabla(cpagos:ArrayCollection):void{
			for( var d:int = 0; d < cpagos.length; d++ ){
				cpagos[d].numFila = d + 1;
			}
			_cPagos = cpagos;
			dispatchEvent(new Event ("CondicionesDePagoGridModeloTabProveedores"));
		}
		
		[Bindable(event="CondicionesDePagoGridModeloTabProveedores")]
		public function get condicionesDePagoTabla():ArrayCollection{
			return this._cPagos;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener LINEA DE CREDITO Tabla
		 */
		private var _lCredito:ArrayCollection;
		public function setLineaDeCreditoTabla(lcredito:ArrayCollection):void{
			for( var d:int = 0; d < lcredito.length; d++ ){
				lcredito[d].numFila = d + 1;
			}
			_lCredito = lcredito;
			dispatchEvent(new Event ("LineaDeCreditoGridModeloTabProveedores"));
		}
		
		[Bindable(event="LineaDeCreditoGridModeloTabProveedores")]
		public function get lineaDeCreditoTabla():ArrayCollection{
			return this._lCredito;
		}
		
		/**
		 * mix Productos
		 * Funcion para obtener info comparativa de top Productos
		 */
		private var _productos:ArrayCollection;
		public function setComparativaProductos( $datos:ArrayCollection,$evento:EventoTabProveedores= null ):void{
			for(var d:int = 0; d<$datos.length ; d++){
				($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				($datos[d] as ResumenConsulta).provedorIndividual = ($datos[d] as ResumenConsulta).clientes_proveedores;
			}
			_productos = $datos;
			dispatchEvent( new Event("regresaLinealProductosModeloTabProveedores") );
			if(_productos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealProductosModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealProductosModeloTabProveedores")]
		public function get comparativaProductos():ArrayCollection{
			return _productos;
		}
		
		/**
		 * Funcion para obtener info de filtros proveedores
		 */
		
		//		FILTROS GLOBALES
		private var _event:EventoTabProveedores;
		public function setEventoParaSacarLabelsPeriodos(evt:EventoTabProveedores):void
		{
			if(evt == null ) return;
			_event = evt;
			generarLabelsPeriodo( _event.parametros.mesInicio, _event.parametros.mesFin,_event.lineal );
			_event.labelPeriodo1 = _periodo1;
			_event.labelPeriodo2 = _periodo2;
			_event.labelPeriodo3 = _periodo3;
			_event.labelPeriodo4 = _periodo4;
			_event.labelPeriodo5 = _periodo5;
			dispatchEvent( new Event("regresaFiltrosProveedoresModeloTabProveedores") );
		}
		[Bindable(event="regresaFiltrosProveedoresModeloTabProveedores")]
		public function get eventoFiltros():EventoTabProveedores
		{
			return _event;
		}
		
		//		FILTROS ESPECIFICOS
		private var _eventFiltrosTop10Productos:EventoTabProveedores;
		private var _eventFiltrosOcTransito:EventoTabProveedores;
		private var _eventFiltrosOcRechazada:EventoTabProveedores;
		private var _eventFiltrosOcCompras:EventoTabProveedores;
		private var _eventFiltrosCondicionesPago:EventoTabProveedores;
		private var _eventFiltrosLineaDeProductos:EventoTabProveedores;
		private var _eventFiltrosTop10Clientes:EventoTabProveedores;
		private var _eventFiltrosOcRecibidas:EventoTabProveedores;
		private var _eventFiltrosOcAvisoCambios:EventoTabProveedores;
		private var _eventFiltrosOcPagos:EventoTabProveedores;
		private var _eventFiltrosLienaCredito:EventoTabProveedores;
		
		public function calcularLabelsIndividuales(evt:EventoTabProveedores):void
		{
			var evtRegresaAVista:EventoTabProveedores;
			if(evt == null ) return;
			evtRegresaAVista = evt;
			generarLabelsPeriodo( evt.mesInicio, evt.mesFin,evt.lineal);
			evtRegresaAVista.labelPeriodo1 = _periodo1;
			evtRegresaAVista.labelPeriodo2 = _periodo2;
			evtRegresaAVista.labelPeriodo3 = _periodo3;
			evtRegresaAVista.labelPeriodo4 = _periodo4;
			evtRegresaAVista.labelPeriodo5 = _periodo5;
			
			switch(evt.type)
			{
				case "buscaComparativaTop10ProductosEventoTableroProveedores":
				{
					_eventFiltrosTop10Productos = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorTop10ProductosComparacion") );
					break;
				}
				case "buscaComparativaOcTransitoEventoTableroProveedores":
				{
					_eventFiltrosOcTransito = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorOCTransitoComparacion") );
					break;
				}
				case "buscaComparativaOCRechazadaEventoTableroProveedores":
				{
					_eventFiltrosOcRechazada = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorRechazosComparacion") );
					break;
				}
				case "buscaComparativaOcComprasEventoTableroProveedores":
				{
					_eventFiltrosOcCompras = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorComprasComparacion") );
					break;
				}
				case "buscaComparativaCondicionesDePagoEventoTableroProveedores":
				{
					_eventFiltrosCondicionesPago = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_CondicionesDePagoComparacion") );
					break;
				}
				case "buscaComparativaLineaDeProductosEventoTableroClientes":
				{
					_eventFiltrosCondicionesPago = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_LineaDeProductos") );
					break;
				}
				case "buscaComparativaTop10ClientesEventoTableroProveedores":
				{
					_eventFiltrosTop10Clientes = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorTop10ClientesComparacion") );
					break;
				}
				case "buscaComparativaOcRecibidasEventoTableroProveedores":
				{
					_eventFiltrosOcRecibidas = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorOCRecibidasComparacion") );
					break;
				}
				case "buscaComparativaOcAvisoCambiosEventoTableroProveedores":
				{
					_eventFiltrosOcAvisoCambios = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorAvisoDeCambiosComparacion") );
					break;
				}
				case "buscaComparativaOcPagosEventoTableroProveedores":
				{
					_eventFiltrosOcPagos = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_ProveedorPagosComparacion") );
					break;
				}
				case "buscaComparativaLineaCreditoEventoTableroProveedores":
				{
					_eventFiltrosLienaCredito = evtRegresaAVista;
					dispatchEvent( new Event("regresaFiltrosIndividualModeloTabProveedores_LineaDeCreditoComparacion") );
					break;
				}
					
				default:
				{
					break;
				}
			}
		}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorTop10ProductosComparacion")]
		public function get obtenerLabelsParticularProveedorTop10ProductosComparacion():EventoTabProveedores{ return _eventFiltrosTop10Productos;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorOCTransitoComparacion")]
		public function get obtenerLabelsParticularProveedorOCTransitoComparacion():EventoTabProveedores{ return _eventFiltrosOcTransito;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorRechazosComparacion")]
		public function get obtenerLabelsParticularProveedorRechazosComparacion():EventoTabProveedores{ return _eventFiltrosOcRechazada;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorComprasComparacion")]
		public function get obtenerLabelsParticularProveedorComprasComparacion():EventoTabProveedores{ return _eventFiltrosOcCompras;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_CondicionesDePagoComparacion")]
		public function get obtenerLabelsCondicionesDePagoComparacion():EventoTabProveedores{ return _eventFiltrosCondicionesPago;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_LineaDeProductos")]
		public function get obtenerLabelsLineaDeProductos():EventoTabProveedores{ return _eventFiltrosLineaDeProductos;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorTop10ClientesComparacion")]
		public function get obtenerLabelsParticularProveedorTop10ClientesComparacion():EventoTabProveedores{ return _eventFiltrosTop10Clientes;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorOCRecibidasComparacion")]
		public function get obtenerLabelsParticularProveedorOCRecibidasComparacion():EventoTabProveedores{ return _eventFiltrosOcRecibidas;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorAvisoDeCambiosComparacion")]
		public function get obtenerLabelsParticularProveedorAvisoDeCambiosComparacion():EventoTabProveedores{ return _eventFiltrosOcAvisoCambios;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_ProveedorPagosComparacion")]
		public function get obtenerLabelsParticularProveedorPagosComparacion():EventoTabProveedores{ return _eventFiltrosOcPagos;}
		
		[Bindable(event="regresaFiltrosIndividualModeloTabProveedores_LineaDeCreditoComparacion")]
		public function get obtenerLabelsParticularLineaDeCreditoComparacion():EventoTabProveedores{ return _eventFiltrosLienaCredito;}
		
		/**
		 * Funcion para obtener info comparativa de top Clientes
		 */
		private var _cliente:ArrayCollection;
		public function setComparativaClientes( $datos:ArrayCollection, $evento:EventoTabProveedores= null  ):void{
			for(var d:int = 0; d<$datos.length ; d++){
				($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
			}
			_cliente = $datos;
			dispatchEvent( new Event("regresaLinealClientesModeloTabProveedores") );
			if(_cliente!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealClientesModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealClientesModeloTabProveedores")]
		public function get comparativaClientes():ArrayCollection{
			return _cliente;
		}
		
		/**
		 * Funcion para obtener info comparativa de rechazos
		 */
		private var _rechazo:ArrayCollection;
		public function setComparativaRechazo( $datos:ArrayCollection, $evento:EventoTabProveedores= null ):void{
			if($datos!=null){
				for(var d:int = 0; d<$datos.length ; d++){
					($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				}
			}
			_rechazo = $datos;
			dispatchEvent( new Event("regresaLinealRechazosModeloTabProveedores") );
			//if(_rechazo!= null){
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealRechazosModeloTabProveedores");
			}
			//}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealRechazosModeloTabProveedores")]
		public function get comparativaRechazo():ArrayCollection{
			return _rechazo;
		}
		
		/**
		 * Funcion para obtener info comparativa de aviso de cambios
		 */
		private var _aCambios:ArrayCollection;
		public function setComparativaAC( $datos:ArrayCollection, $evento:EventoTabProveedores= null  ):void{
			for(var d:int = 0; d<$datos.length ; d++){
				($datos[d] as ResumenConsulta).totalCompras = ($datos[d] as ResumenConsulta).ocompras;
				($datos[d] as ResumenConsulta).provedorIndividual = ($datos[d] as ResumenConsulta).clientes_proveedores;
			}
			_aCambios = $datos;
			dispatchEvent( new Event("regresaLinealAvisoDCambiosModeloTabProveedores") );
			if(_aCambios!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealAvisoDCambiosModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealAvisoDCambiosModeloTabProveedores")]
		public function get comparativaAC():ArrayCollection{
			return _aCambios;
		}
		
		/**
		 * Funcion para obtener info comparativa de Oc recibida
		 */
		private var _ocRecibida:ArrayCollection;
		public function setComparativaOCRecibida( $datos:ArrayCollection, $evento:EventoTabProveedores= null   ):void{
			_ocRecibida = $datos;
			dispatchEvent( new Event("regresaLinealOCRecibidaModeloTabProveedores") );
			if(_ocRecibida!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealOCRecibidaModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealOCRecibidaModeloTabProveedores")]
		public function get comparativaOCRecibida():ArrayCollection{
			return _ocRecibida;
		}
		
		/**
		 * Funcion para obtener info comparativa de Compras
		 */
		private var _compra:ArrayCollection;
		public function setComparativaCompra( $datos:ArrayCollection, $evento:EventoTabProveedores= null  ):void
		{
			for(var d:int = 0; d<$datos.length ; d++)
			{
				($datos[d] as ResumenConsulta).periodo = $evento.anioInt;	
			}
			_compra = $datos;
			dispatchEvent( new Event("regresaLinealComprasModeloTabProveedores") );
			
			if(_compra!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealComprasModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealComprasModeloTabProveedores")]
		public function get comparativaCompra():ArrayCollection{
			return _compra;
		}
		
		
		///////////////////////////////////////////  TIPO PROVEEDORES  (COMPRAS)  ///////////////////////////////////
		
		private var _dataTipoProveedores:ArrayCollection;
		public function setDataChartTipoProveedores($tipoProveedores:ArrayCollection):void
		{
			if($tipoProveedores == null ) return;
			
			for (var i:int = 0; i < $tipoProveedores.length; i++) 
			{
				var item:ResumenConsulta = $tipoProveedores[i] as ResumenConsulta;
				if(item.etiqueta == "estrategicos")
				{
					item.etiqueta = "estratégicos";
				}
				
				item.etiqueta = item.etiqueta.toUpperCase();
			}
			
			_dataTipoProveedores = $tipoProveedores;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInfoChartTipoProveedoresModeloTabProveedores");
			}
			dispatchEvent(new Event("regresarInfoChartTipoProveedoresModeloTabProveedores"));
		}
		[Bindable(event="regresarInfoChartTipoProveedoresModeloTabProveedores")]
		public function get regresaChartTipoProveedores():ArrayCollection
		{
			return _dataTipoProveedores;
		}
		
		
		///////////////////////////////////////////  GRAFICA COMPRADORES  (COMPRAS)  ///////////////////////////////////
		
		private var _dataCompradores:ArrayCollection;
		public function setDataChartCompradores($compradores:ArrayCollection):void
		{
			if($compradores == null ) return;
			
			for (var i:int = 0; i < $compradores.length; i++) 
			{
				var item:ResumenConsulta = $compradores[i] as ResumenConsulta;
				item.etiqueta = item.etiqueta.toUpperCase();
			}
			
			_dataCompradores = $compradores;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInfoChartCompradoresModeloTabProveedores");
			}
			dispatchEvent(new Event("regresarInfoChartCompradoresModeloTabProveedores"));
		}
		[Bindable(event="regresarInfoChartCompradoresModeloTabProveedores")]
		public function get regresaChartCompradores():ArrayCollection
		{
			return _dataCompradores;
		}
		
		
		///////////////////////////////////////////  GRAFICA REGION  (COMPRAS)  ///////////////////////////////////
		
		private var _dataRegion:ArrayCollection;
		public function setDataChartRegion($region:ArrayCollection):void
		{
			if($region == null ) return;
			
			for (var i:int = 0; i < $region.length; i++) 
			{
				var item:ResumenConsulta = $region[i] as ResumenConsulta;
				item.etiqueta = item.etiqueta.toUpperCase();
			}
			
			_dataRegion = $region;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInfoChartRegionModeloTabProveedores");
			}
			dispatchEvent(new Event("regresarInfoChartRegionModeloTabProveedores"));
		}
		[Bindable(event="regresarInfoChartRegionModeloTabProveedores")]
		public function get regresaChartRegion():ArrayCollection
		{
			return _dataRegion;
		}
		
		
		///////////////////////////////////////////  GRAFICA MIX LINEAS  (COMPRAS)  ///////////////////////////////////
		
		private var _dataMixLineas:ArrayCollection;
		public function setDataChartMixLineas($mixLineas:ArrayCollection):void
		{
			if($mixLineas == null ) return;
			
			for (var i:int = 0; i < $mixLineas.length; i++) 
			{
				var item:ResumenConsulta = $mixLineas[i] as ResumenConsulta;
				item.etiqueta = item.etiqueta.toUpperCase();
			}
			
			_dataMixLineas = $mixLineas;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInfoChartMixLinealModeloTabProveedores");
			}
			dispatchEvent(new Event("regresarInfoChartMixLinealModeloTabProveedores"));
		}
		[Bindable(event="regresarInfoChartMixLinealModeloTabProveedores")]
		public function get regresaChartMixLineal():ArrayCollection
		{
			return _dataMixLineas; 
		}
		
		
		///////////////////////////////////////////  GRAFICA PROVEEDORES  (COMPRAS)  ///////////////////////////////////
		
		private var _dataProveedores:ArrayCollection;
		public function setDataChartProveedores($proveedores:ArrayCollection):void
		{
			if($proveedores == null ) return;
			
			for (var i:int = 0; i < $proveedores.length; i++) 
			{
				var item:ResumenConsulta = $proveedores[i] as ResumenConsulta;
				item.etiqueta = item.etiqueta.toUpperCase();
			}
			
			_dataProveedores = $proveedores;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInfoChartProveedoresModeloTabProveedores");
			}
			dispatchEvent(new Event("regresarInfoChartProveedoresModeloTabProveedores"));
		}
		[Bindable(event="regresarInfoChartProveedoresModeloTabProveedores")]
		public function get regresaChartProveedores():ArrayCollection
		{
			return _dataProveedores; 
		}
		
		
		///////////////////////////////////////////  GRAFICA PAGADOR  (COMPRAS)  ///////////////////////////////////
		
		private var _dataPagador:ArrayCollection;
		public function setDataChartPagadores($pagadores:ArrayCollection):void
		{
			if($pagadores == null ) return;
			
			for (var i:int = 0; i < $pagadores.length; i++) 
			{
				var item:ResumenConsulta = $pagadores[i] as ResumenConsulta;
				item.etiqueta = item.etiqueta.toUpperCase();
			}
			
			_dataPagador = $pagadores;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInfoChartPagadoresModeloTabProveedores");
			}
			dispatchEvent(new Event("regresarInfoChartPagadoresModeloTabProveedores"));
		}
		[Bindable(event="regresarInfoChartPagadoresModeloTabProveedores")]
		public function get regresaChartPagadores():ArrayCollection
		{
			return _dataPagador; 
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
		 * Funcion para obtener info comparativa de Pagos
		 */
		private var _pago:ArrayCollection;
		public function setComparativaPagos( $datos:ArrayCollection, $evento:EventoTabProveedores= null   ):void{
			_pago = $datos;
			dispatchEvent( new Event("regresaLinealPagosModeloTabProveedores") );
			if(_pago!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealPagosModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealPagosModeloTabProveedores")]
		public function get comparativaPagos():ArrayCollection{
			return _pago;
		}
		
		/**
		 * Funcion para obtener info comparativa de transito
		 */
		private var _transito:ArrayCollection;
		public function setComparativaTransito( $datos:ArrayCollection, $evento:EventoTabProveedores= null  ):void{
			_transito = $datos;
			dispatchEvent( new Event("regresaLinealTransitoModeloTabProveedores") );
			
			if(_transito!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLinealTransitoModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLinealTransitoModeloTabProveedores")]
		public function get comparativaTransito():ArrayCollection{
			return _transito;
		}
		
		/**
		 * Funcion para obtener CONDICIONES DE PAGO
		 */
		private var _condicionPago:ArrayCollection;
		public function setComparativaCondicionesDePago( $datos:ArrayCollection, $evento:EventoTabProveedores= null  ):void{
			if ($datos != null)
			{
				for( var d:int = 0; d < $datos.length; d++ ){
					$datos[d].numFila = d + 1;
				}
				_condicionPago = $datos;
				dispatchEvent( new Event("regresaCondicionesDePagoModeloTabProveedores") );
				if(_condicionPago!= null){
					if(actualizarEspera!= null && currentEnEspera){
						setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaCondicionesDePagoModeloTabProveedores");
					}
				}
				if($evento != null && $evento.isIndividual){
					calcularLabelsIndividuales($evento);
				}
			}
		}
		[Bindable(event="regresaCondicionesDePagoModeloTabProveedores")]
		public function get comparativaCondicionDePago():ArrayCollection{
			return _condicionPago;
		}
		
		/**
		 * Funcion para obtener LINEA DE PRODUCTOS
		 */
		private var _lineaDeProductos:ArrayCollection;
		public function setLineaDeProductos( $datos:ArrayCollection, $evento:EventoTabProveedores = null  ):void{
			if($datos == null)
				_lineaDeProductos = new ArrayCollection();
			else
				_lineaDeProductos = $datos;
			
			dispatchEvent( new Event("regresaLineaDeProductosModeloTabProveedores") );
			
			if(_lineaDeProductos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLineaDeProductosModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLineaDeProductosModeloTabProveedores")]
		public function get LineaDeProductos():ArrayCollection{
			return _lineaDeProductos;
		}
		
		/**
		 ********************************************************************************************************************************************* 
		 ********************************************************************************************************************************************* 
		 * 							            	Resumen análisis Compras en Max Compras
		 ********************************************************************************************************************************************* 
		 ********************************************************************************************************************************************* 
		 */
		
		
		/**
		 * Funcion que busca los Compradores Agrupados
		 */ 
		private var _sqlCompras:Query;
		public var _listComprador:ArrayCollection = new ArrayCollection();
		public function setAgrupadosComprador($arreglo:ArrayCollection):void
		{
			if($arreglo == null || $arreglo.length == 0)
				_listComprador = new ArrayCollection(); 
			else
				_listComprador = $arreglo; 
			
			dispatchEvent(new Event ("agrupadosCompradosAnalisisCompra"));
			
			if(_listComprador!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"agrupadosCompradosAnalisisCompra");
				}
			}
		}
		
		[Bindable(event="agrupadosCompradosAnalisisCompra")]
		public function get agrupadosComprador():ArrayCollection{
			return this._listComprador;
		}
		
		
		/**
		 * Funcion que busca los Pagadores Agrupados
		 */ 
		public var _listPagador:ArrayCollection = new ArrayCollection();
		public function setAgrupadosPagador($arreglo:ArrayCollection):void
		{
			if($arreglo == null || $arreglo.length == 0)
				_listPagador = new ArrayCollection(); 
			else
				_listPagador = $arreglo; 
			
			dispatchEvent(new Event ("agrupadosPagadoresAnalisisCompra"));
			
			if(_listPagador!= null)
			{
				if(actualizarEspera!= null && currentEnEspera)
				{
					setControlDeBloqueoPantalla("terminaEspera",null,null,"agrupadosPagadoresAnalisisCompra");
				}
			}
		}
		
		[Bindable(event="agrupadosPagadoresAnalisisCompra")]
		public function get agrupadosPagador():ArrayCollection{
			return this._listPagador;
		}
		
		
		private var resumeGraficaTodosProvee:ArrayCollection;
		private var _listaResumeCompras:ArrayCollection;
		public function setResibeListaDeResumenVentasTodos($datos:ArrayCollection):void
		{
			if($datos.length > 0)
			{
				_listaResumeCompras = ordenarFilasYEnumerarlas($datos);
			}
			else
			{
				_listaResumeCompras = new ArrayCollection;
			}
			
			dispatchEvent( new Event("eviarListaResumenComprasModeloTabProveedores"));
			
			dispatchEvent(new Event("enviarInfoChartTodosProveModeloTabProveedores"))
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"eviarListaResumenComprasModeloTabProveedores");
			}
		}
		
		[Bindable(event="eviarListaResumenComprasModeloTabProveedores")]
		public function get mandarListaResumenComprasTodos():ArrayCollection
		{
			return _listaResumeCompras;
		}
		
		[Bindable(event="enviarInfoChartTodosProveModeloTabProveedores")]
		public function get mandarInfoCharTodosProveedores():ArrayCollection
		{
			return resumeGraficaTodosProvee;
		}
		
		/// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		private var _sql:Query;
		private function ordenarFilasYEnumerarlas($lista:ArrayCollection):ArrayCollection
		{
			_sql = new Query($lista,["tipoProveedor","comprador","pagador","nombreProveedor"]);
			var _estrategicos:Array = _sql.getPunteros(["Estrategico"]);
			var _normales:Array = _sql.getPunteros(["Normal"]);
			
			var itemProvNormal:ResumenConsulta = new ResumenConsulta();
			itemProvNormal.etiqueta = "NORMAL";
			
			var itemProvEstrategico:ResumenConsulta = new ResumenConsulta();
			itemProvEstrategico.etiqueta = "ESTRATEGICO";
			
			var _resTotalCompra:Number = _sql.getSumarCampo("totalCompra",[],"",true);
			var _resObjetivoDeseado:Number = _sql.getSumarCampo("objetivoDeseado",[],"",true);
			var _resObjetivoMontoDeseado:Number = _sql.getSumarCampo("objetivoMontoDeseado",[],"",true);
			var _resObjetivoFundamental:Number = _sql.getSumarCampo("objetivoFundamental",[],"",true);
			var _resObjetivoMontoFundamental:Number = _sql.getSumarCampo("objetivoMontoFundamental",[],"",true);
			var _resMontoCompraAnterior:Number = _sql.getSumarCampo("montoCompraAnterior",[],"",true);
			
			for(var p:int = 0; p < $lista.length; p++)
			{
				var temp:ResumenProveedor = $lista[p] as ResumenProveedor;
				temp.footer_totalCompra = _resTotalCompra;
				temp.footer_objetivoDeseado = _resObjetivoDeseado;
				temp.footer_objetivoMontoDeseado = _resObjetivoMontoDeseado;
				temp.footer_objetivoFundamental = _resObjetivoFundamental;
				temp.footer_objetivoMontoFundamental = _resObjetivoMontoFundamental;
				temp.footer_montoCompraAnterior = _resMontoCompraAnterior;
				temp.distribucionProveedor = ((temp.totalCompra * 100) / _resTotalCompra );
				temp.distribucionProveedorAnterior = ((temp.montoCompraAnterior * 100) / _resMontoCompraAnterior );
				temp.estrategicos = _estrategicos;
				temp.normales = _normales;
			}
			
			var totNormal:Number;
			if(_normales.length > 0)
				totNormal = _sql.getSumarCampo("totalCompra",_normales,"",false);
			else
				totNormal = 0;
			
			itemProvNormal.total = totNormal;
			itemProvNormal.totalComprasPorcentaje = UtilsFormatosNumericos.truncarDecimalesCeil(((totNormal * 100) / _resTotalCompra),2);
			itemProvNormal.totalProveedoresPorcentaje = _normales.length > 0 ? UtilsFormatosNumericos.truncarDecimalesCeil((((_normales.length)*100)/$lista.length),2):0;
			
			
			var totEstra:Number;
			if(_estrategicos.length > 0)
				totEstra = _sql.getSumarCampo("totalCompra",_estrategicos,"",false);
			else
				totEstra = 0;
			
			
			itemProvEstrategico.total = totEstra;
			itemProvEstrategico.totalComprasPorcentaje = UtilsFormatosNumericos.truncarDecimalesCeil(((totEstra * 100) / _resTotalCompra),2);
			itemProvEstrategico.totalProveedoresPorcentaje = _estrategicos.length > 0 ? UtilsFormatosNumericos.truncarDecimalesCeil((((_estrategicos.length)*100)/$lista.length),2):0;
			
			
			resumeGraficaTodosProvee = new ArrayCollection;
			resumeGraficaTodosProvee.addItem(itemProvNormal);
			resumeGraficaTodosProvee.addItem(itemProvEstrategico);
			
			Util.sortArray($lista,"totalCompra",true);
			
			var item:ResumenProveedor = $lista[0] as ResumenProveedor;
			item.sql = new Query($lista,["tipoProveedor","comprador","pagador","nombreProveedor"]);
			
			return $lista;
		}
		
		
		
		/**
		 ********************************************************************************************************************************************* 
		 ********************************************************************************************************************************************* 
		 */
		
		
		
		
		/**
		 * Función para obtener LINEA DE CREDITO
		 */
		public var _lDCredito:BalanceDeCredito;
		private var _credito:ArrayCollection;
		private var _creditoDefault:ArrayCollection;
		public function setComparativaLineaDeCredito( $datos:ArrayCollection,$evento:EventoTabProveedores= null  ):void{
			_credito = ObjectUtil.copy( $datos ) as ArrayCollection;
			_creditoDefault = ObjectUtil.copy( $datos ) as ArrayCollection;
			
			var i:int=0;
			for(var d:int = 0; d<_credito.length; d++){
				(_credito[d] as BalanceDeCredito).numFila = d + 1;
				(_creditoDefault[d] as BalanceDeCredito).numFila = d + 1;
				
				if(((_credito[d] as BalanceDeCredito).etiqueta == "COMPRA_0" || (_credito[d] as BalanceDeCredito).etiqueta == "PAGO_0" ) && i == 0 ){
					(_credito[d] as BalanceDeCredito).monto += _montoAcumulado;
					i++;
				}
				
			}
			dispatchEvent( new Event("regresaLineaDeCreditoModeloTabProveedores") );
			if(_credito!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaLineaDeCreditoModeloTabProveedores");
				}
			}
			if($evento != null && $evento.isIndividual){
				calcularLabelsIndividuales($evento);
			}
		}
		[Bindable(event="regresaLineaDeCreditoModeloTabProveedores")]
		public function get comparativaLineaDeCredito():ArrayCollection{
			return _credito;
		}
		
		
		private var _montosObjetivoCompras:ArrayCollection;
		public function setRecibeMontosObjetivoParaCompras( $datos:ArrayCollection):void
		{
			if($datos == null)
				_montosObjetivoCompras = new ArrayCollection();
			else
				_montosObjetivoCompras = $datos;
			dispatchEvent( new Event("regresaMontosObjetivosParaComprasModeloTableroProveedores") );
			
			if(_montosObjetivoCompras!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaMontosObjetivosParaComprasModeloTableroProveedores");
				}
			}
		}
		
		[Bindable(event="regresaMontosObjetivosParaComprasModeloTableroProveedores")]
		public function get regresaMontosObjetivosParaCompras():ArrayCollection
		{
			return _montosObjetivoCompras;
		}
		
		
		private var _listaMensual:ArrayCollection = new ArrayCollection([
			"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"
		]);
		private var _periodo1:String = "undefined";
		private var _periodo2:String = "undefined";
		private var _periodo3:String = "undefined";
		private var _periodo4:String = "undefined";
		private var _periodo5:String = "undefined";
		
		protected function generarLabelsPeriodo( $minimoMeses:int, $maximoMeses:int,$lineal:Number, $fiscal:Boolean = false):void{
			// periodico
			if( $lineal == 0 )
			{ 
				if(!_event.parametros.anioFiscal)
				{
					_periodo1 = generatePeriodoStr( _event.parametros.anio, ($minimoMeses - 1), ($maximoMeses - 1) ); 
					_periodo2 = generatePeriodoStr( (_event.parametros.anio - 1), ($minimoMeses - 1), ($maximoMeses - 1) );
					_periodo3 = generatePeriodoStr( (_event.parametros.anio - 2), ($minimoMeses - 1), ($maximoMeses - 1) );
					_periodo4 = generatePeriodoStr( (_event.parametros.anio - 3), ($minimoMeses - 1), ($maximoMeses - 1) );
					_periodo5 = generatePeriodoStr( (_event.parametros.anio - 4), ($minimoMeses - 1), ($maximoMeses - 1) );
				}
				else
				{
					_periodo1 = generatePeriodoStrFiscal( _event.parametros.anio, (_event.mesInicioFiscal - 1), (_event.mesFinFiscal - 1) ); 
					_periodo2 = generatePeriodoStrFiscal( (_event.parametros.anio - 1), (_event.mesInicioFiscal - 1), (_event.mesFinFiscal - 1) );
					_periodo3 = generatePeriodoStrFiscal( (_event.parametros.anio - 2), (_event.mesInicioFiscal - 1), (_event.mesFinFiscal - 1) );
					_periodo4 = generatePeriodoStrFiscal( (_event.parametros.anio - 3), (_event.mesInicioFiscal - 1), (_event.mesFinFiscal - 1) );
					_periodo5 = generatePeriodoStrFiscal( (_event.parametros.anio - 4), (_event.mesInicioFiscal - 1), (_event.mesFinFiscal - 1) );
				}
			}
			else // lineal
			{
				var diferenciaMeses:int = (_event.parametros.mesFin - _event.parametros.mesInicio);
				var anioDos:int = _event.parametros.anio;
				var rangoDosMax:int = _event.parametros.mesInicio - 2;
				
				if( rangoDosMax < 0 )
				{
					rangoDosMax += 12;
					anioDos--;
				}
				
				var rangoDosMin:int = rangoDosMax - diferenciaMeses;
				if( rangoDosMin < 0 )	rangoDosMin += 12;
				
				var anioTres:int = anioDos;
				
				var rangoTresMax:int = rangoDosMin - 1;
				if( rangoTresMax < 0 )
				{
					rangoTresMax += 12;
					anioTres--;
				}
				var rangoTresMin:int = (rangoTresMax - diferenciaMeses);
				if( rangoTresMin < 0 )	rangoTresMin += 12;
				
				var anioCuatro:int = anioTres;
				var rangoCuatroMax:int = rangoTresMin - 1;
				if( rangoCuatroMax < 0 )
				{
					rangoCuatroMax += 12;
					anioCuatro--;
				}
				var rangoCuatroMin:int = (rangoCuatroMax - diferenciaMeses);
				if( rangoCuatroMin < 0 )	rangoCuatroMin += 12;
				////////////////////////////////////////////////////////////////////////////////////////////	
				var anioCinco:int = anioCuatro;
				var rangoCincoMax:int = rangoCuatroMin - 1;
				if( rangoCincoMax < 0 ){
					rangoCincoMax += 12;
					anioCinco--;
				}
				var rangoCincoMin:int = (rangoCincoMax - diferenciaMeses);
				if( rangoCincoMin < 0 )	rangoCincoMin += 12;
				
				_periodo1 = generatePeriodoStr( _event.parametros.anio, _event.parametros.mesInicio-1, _event.parametros.mesFin-1 );  
				_periodo2 = generatePeriodoStr( anioDos, rangoDosMin, rangoDosMax );
				_periodo3 = generatePeriodoStr( anioTres, rangoTresMin, rangoTresMax ); 
				_periodo4 = generatePeriodoStr( anioCuatro, rangoCuatroMin, rangoCuatroMax ); 
				_periodo5 = generatePeriodoStr( anioCinco, rangoCincoMin, rangoCincoMax ); 
			} 
		}
		
		protected function generatePeriodoStr( $anio:int, $minMes:int, $maxMes:int ):String{
			var strReturn:String = "";
			if( $minMes > -1 && $maxMes < 12 )
			{
				if( $minMes < 1 && $maxMes > 10 )
				{
					strReturn = 'ANUAL ' + String( $anio );
					return strReturn.toUpperCase();
				}
				else if( $minMes == $maxMes )
				{
					strReturn = _listaMensual[ $minMes ] + ' ' + String( $anio );
					return strReturn.toUpperCase();
				}
				else
				{
					strReturn = _listaMensual[ $minMes ] + ' - ' + _listaMensual[ $maxMes ] + ' ' + String( $anio );
					return strReturn.toUpperCase();
				}
			}
			return strReturn.toUpperCase();
		}
		
		protected function generatePeriodoStrFiscal( $anio:int, $minMes:int, $maxMes:int ):String{
			var strReturn:String = "";
			if( $minMes > -1 && $maxMes < 12 )
			{
				if( $minMes < 1 && $maxMes > 10 )
				{
					strReturn = 'ANUAL ' + String( $anio );
					return strReturn.toUpperCase();
				}
				else if( $minMes == $maxMes )
				{
					strReturn = _listaMensual[ $minMes ] + ' ' + String( $anio );
					return strReturn.toUpperCase();
				}
				else
				{
					strReturn = _listaMensual[ $minMes ]+ ' ' + String( $anio ) + ' - ' + _listaMensual[ $maxMes ] + ' ' + String( $anio +1 );
					return strReturn.toUpperCase();
				}
			}
			return strReturn.toUpperCase();
		}
		
		/**
		 * Funcion para obtener MONTO ACUMULADO
		 */
		private var _montoAcumulado:Number;
		public function setMontoAcumulado( $datos:ArrayCollection ):void{
			if ($datos != null) { 
				
				_montoAcumulado = $datos[0].monto;
			}
			
			dispatchEvent( new Event("regresaMontoAcumuladoModeloTabProveedores") );
			if($datos!= null){
				if(actualizarEspera!= null && currentEnEspera){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresaMontoAcumuladoModeloTabProveedores");
				}
			}
		}
		[Bindable(event="regresaMontoAcumuladoModeloTabProveedores")]
		public function get obtenerMontoAcumulado():Number{
			return _montoAcumulado;
		}
		
		// etiqueta periodo
		private var datosFiltro:Object;
		public function setObtenerFiltros(anio:int, prove:int, estado:String):void{
			datosFiltro = new Object();
			datosFiltro.prove = prove
			datosFiltro.anio = anio;
			datosFiltro.estado=estado;
			
			dispatchEvent( new Event("regresaFiltrosEventoModeloTabProveedores") );
		}
		[Bindable(event="regresaFiltrosEventoModeloTabProveedores")]
		public function get obtenerFiltro():Object{
			return this.datosFiltro;
		}
		
		// etiqueta periodo
		private var _periodo:String = new String();
		public function setObtenerEtiquetaPeriodo(etiqueta:String):void{
			this._periodo = etiqueta;
			dispatchEvent( new Event("regresaEtiquetaPeriodoModeloTabProveedores") );
		}
		[Bindable(event="regresaEtiquetaPeriodoModeloTabProveedores")]
		public function get obtenerEtiquetaPeriodo():String{
			return this._periodo;
		}
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if((EventoTabProveedores[$tiposEventos[i]])== null){
						return false;
					}else{
						return true;
					}
				}
				catch(error:Error) 
				{
					trace(error + "El Tipo de Evento: \""+$tiposEventos[i] + "\" No se encuentra en: EventoTabProveedores// NO SE COLOCARÁ LA PANTALLA DE BLOQUEO")
					return false;
				}
			}
			return false;
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				_servicesConsultados = new Object();
				if(!currentEnEspera){
					if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
						numServicioCompletos=0;
						numServices = 0;
						actualizarEspera = new Object();
						serviciosCompletosDifKey = new Object();
						
						for (var i:int = 0; i < $tiposEvento.length; i++) 
						{
							if($tiposEvento[i] == "BUSCAR_DATOS_GENERALES_PROVEEDORES" || $tiposEvento[i] == "BUSCA_COMPARATIVA_GENERAL_PROVEEDORES"){
								$tiposEvento.shift();
								i--;
							}
						}
						
						if($tiposEvento.length>0){
							trace("EMPIEZA: "+$tiposEvento[0]);
							numServices += $tiposEvento.length;
						}
						currentEnEspera = true;
						actualizarEspera.isBusy = true;
						actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
						alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
					}
				}else{
					numServices += $tiposEvento.length;
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
					trace("TERMINO: "+$errorOrWhoFinish.toString());
				}
				if(numServicioCompletos == numServices){
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
				}
			}else if(mensaje =="error"){
				if (VistaDefaultGestion.tablero == "proveedores" )
				{
					trace($tiposEvento[0]);
					alertaSingleton.remove(true);
					currentEnEspera = false;
					alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
					actualizarEspera.isBusy=false;
				}
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloTabProveedores") );
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloTabProveedores")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private var _servicesConsultados:Object;
		public function setNumeroServiciosConsultados($tipo:String):void
		{
			if(!_servicesConsultados.hasOwnProperty($tipo)){
				_servicesConsultados[$tipo] = $tipo;
				numServices ++;
			}
		}
		
		
		
		private var _currentFiltroBusqueda:String;
		public function resultSetFiltroBusqueda($filtro:String):void
		{
			if($filtro == null) return;
			_currentFiltroBusqueda = $filtro;
			dispatchEvent(new Event("settearFiltroBusquedaModeloTabProveedores"));
		}
		[Bindable(event="settearFiltroBusquedaModeloTabProveedores")]
		public function get resultGetFiltroBusqueda():String
		{
			return _currentFiltroBusqueda;
		}
		
		private var _listaAnioFiscal:ArrayCollection = new ArrayCollection();
		public function setAnioFiscal($mes:ArrayCollection):void
		{
			if($mes.length == 0)
				_listaAnioFiscal = new ArrayCollection(); 
			else
				_listaAnioFiscal = $mes;
			
			dispatchEvent(new Event("settearAnioFiscalModeloTabProveedores"));
		}
		[Bindable(event="settearAnioFiscalModeloTabProveedores")]
		public function get devolverAniofiscal():ArrayCollection{
			return _listaAnioFiscal;
		}
		
		
		public function faultComparativaCondicionDePago(objeto:Object):void{
			trace("faultComparativaCondicionDePago");
		}
		public function faultLineaDeProductos(objeto:Object):void{
			trace("faultLineaDeProductos");
		}
		public function faultCondicionesDePagoTabla(objeto:Object):void{
			trace("faultCondicionesDePagoTabla");
		}
		public function faultLineaDeCreditoTabla(objeto:Object):void{
			trace("faultLineaDeCreditoTabla");
		}
		public function faultComparativaPagos(objeto:Object):void{
			trace("faultComparativaPagos");
		}
		public function faultComparativaCompra(objeto:Object):void{
			trace("faultComparativaCompra");
		}
		public function faultComparativAOCRecibida(objeto:Object):void{
			trace("faultComparativAOCRecibida");
		}
		public function faultComparativaAC(objeto:Object):void{
			trace("faultComparativaAC");
		}
		public function faultComparativaRechazo(objeto:Object):void{
			trace("faultComparativaRechazo");
		}
		public function faultComparativaCliente(objeto:Object):void{
			trace("faultComparativaCliente");
		}
		public function faultComparativaProducto(objeto:Object):void{
			trace("faultComparativaProducto");
		}
		public function faultProveedor(objeto:Object):void{
			trace("faultProveedor");
		}
		public function faultProducto(objeto:Object):void{
			trace("faultProducto");
		}
		public function faultCliente(objeto:Object):void{
			trace("faultCliente");
		}
		public function faultTransito(objeto:Object):void{
			trace("faultTransito");
		}
		public function faultRecibidas(objeto:Object):void{
			trace("faultRecibidas");
		}
		public function faultRechazo(objeto:Object):void{
			trace("faultRechazo");
		}
		public function faultCompras(objeto:Object):void{
			trace("faultCompras");
		}
		public function faultPagos(objeto:Object):void{
			trace("faultPagos");
		}
		public function faultAvisoCambios(objeto:Object):void{
			trace("faultAvisoCambios");
		}
		public function faultAnalisisCompras(objeto:Object):void{
			trace("faultAnalisisCompras");
		}
		public function faultAnalisisCompradorAgrupado(objeto:Object):void{
			trace("faultCompradorAgrupado");
		}
		public function faultAnalisisPagadorAgrupado(objeto:Object):void{
			trace("faultPagadorAgrupado");
		}
		public function faultError(error:Object):void{
			trace("fault");

		}
	}
}