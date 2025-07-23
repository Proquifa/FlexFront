package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.compras.proveedores
{
	import com.asfusion.mate.events.DispatcherEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PagoProveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Pedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.interlocutor.AvisoDeCambios;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	public class ModeloTableroProveedores extends EventDispatcher
	{
		private var _listaProveedores:ArrayCollection;
		private var _datosGenerales:Proveedor;
		public var _AC:AvisoDeCambios;
		public function ModeloTableroProveedores(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		
		/**
		 * Funcion de result de busqueda de proveedores
		 */
		public function setListaProveedores(datos:ArrayCollection):void{
			this._listaProveedores = datos;
			dispatchEvent(new Event ("regresaProveedores"));
		}
		
		[Bindable(event="regresaProveedores")]
		public function get ListaProveedores():ArrayCollection{
			return this._listaProveedores;
		}
		
		/**
		 * Funcion regresa datos seleccionados en la busqueda
		 */
		private var _datos:ObjetoTabla;
		public function setCambiarDatos(datos:ObjetoTabla):void{
			this._datos = datos;
			dispatchEvent(new Event ("regresaDatos"));
		}
		
		[Bindable(event="regresaDatos")]
		public function get cambiarDatos():ObjetoTabla{
			return this._datos;
		}
		
		
		/**
		 * Funcion que busca los datos economicos del proveedores
		 */
		
		private var _datoProveedor:Proveedor; 
		public function setDatosEconomicosProveedor(info:Proveedor):void{
			_datoProveedor = info;
			dispatchEvent(new Event ("datosEconomicosProveedores"));
		}
		
		[Bindable(event="datosEconomicosProveedores")]
		public function get datosEconomicosProveedor():Proveedor{
			return this._datoProveedor;
		}
		
		/**
		 * Funcion de result que busca los datos para la descripcion de productos de un proveedor tabla y grafica
		 */ 
		private var _descripcionProductoTopTabla:ArrayCollection;
		public function setDescripcionTopTenProductosTabla(productoTabla:ArrayCollection):void{
			_descripcionProductoTopTabla = FuncionesEstaticas.getInstance().formatoObjetos( productoTabla );
			dispatchEvent(new Event ("descripcionTopTenProductos"));
		}
		
		[Bindable(event="descripcionTopTenProductos")]
		public function get descripcionTopTenProductosTabla():ArrayCollection{
			return this._descripcionProductoTopTabla;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener todos los clientes  grafica
		 */ 
		private var _clientesParaGrafica:ArrayCollection;
		private var datos:ObjetoTabla;				
		public function setClientesGraficaProv(clientesGrafica:ArrayCollection):void{ /*, _datos:ObjetoTabla */
			datos = _datos;
			_clientesParaGrafica = clientesGrafica;
			dispatchEvent(new Event ("clientesProv"));
			/*dispatchEvent(new Event ("cargarDatos"));*/
		}
		
		[Bindable(event="clientesProv")]
		public function get clientesGraficaProv():ArrayCollection{
			return this._clientesParaGrafica;
		}
		
		/*	[Bindable(event="cargarDatos")]
		public function get cargaDatos():ObjetoTabla{
		return this.datos;
		}*/
		
		/**
		 * Funcion de result que busca los datos para obtener todos los clientes Tabla 
		 */ 
		private var pedido:Pedido;
		private var _clientesParaTabla:ArrayCollection;		
		public function setClientesTablaProv(clientesTabla:ArrayCollection):void{
			_clientesParaTabla = FuncionesEstaticas.getInstance().formatoObjetos( clientesTabla );
			dispatchEvent(new Event ("clientesProvTabla"));
		}
		
		[Bindable(event="clientesProvTabla")]
		public function get clientesTablaProv():ArrayCollection{
			return this._clientesParaTabla;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener el total de partidas en Tiempo y Fuera de Tiempo para la Grafica Recibidas
		 * 
		 */ 
		private var _partidaTiempo:ArrayCollection;
		private var datosRecibida:ObjetoTabla;
		public function setPartidasEnTiempo(partida:Array):void{ /*, _datos:ObjetoTabla*/
			var meses:Array = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");			
			_partidaTiempo = new ArrayCollection(partida);
			datosRecibida = _datos;
			for(var m:int = 0; m<this._partidaTiempo.length;m++){
				this.partidasEnTiempo[m] = new ObjetoGrafica(this.partidasEnTiempo[m][0],this.partidasEnTiempo[m][1],meses[[m]]);
				/*this.partidasEnTiempo[m] = new ObjetoGrafica(this.partidasEnTiempo[m][0],this.partidasEnTiempo[m][1],this.partidasEnTiempo[m][2],meses[this.partidasEnTiempo[m][2]]);*/
			}			
			dispatchEvent(new Event ("partidasenTiempo"));
			/*dispatchEvent(new Event ("cargaDatosRecibidas"));*/
		}
		
		[Bindable(event="partidasenTiempo")]
		public function get partidasEnTiempo():ArrayCollection{
			return this._partidaTiempo;
		}
		
		/*		[Bindable(event="cargaDatosRecibidas")]
		public function get cargaRecibidas():ObjetoTabla{
		return this.datosRecibida;
		}*/
		
		/**
		 * Funcion de result que busca los datos para obtener el total de partidas en Tiempo y Fuera de Tiempo para Grid de Recibidas Tabla
		 */ 
		private var _oCompraRecibida:ArrayCollection;
		public function setOrdenCompraRecibida(ocRecibida:ArrayCollection):void{
			for( var i:int = 0; i < ocRecibida.length; i++){
				ocRecibida[i].numeroDeFila = i + 1;
			}
			_oCompraRecibida = FuncionesEstaticas.getInstance().formatoObjetos( ocRecibida );
			dispatchEvent(new Event ("ordenCompra"));
		}
		
		[Bindable(event="ordenCompra")]
		public function get ordenCompraRecibida():ArrayCollection{
			return this._oCompraRecibida;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener OCTRansito de la Tabla 
		 */
		private var _ocTransitoTabla:ArrayCollection;
		public function setOCenTransito(transito:ArrayCollection):void{
			for( var i:int = 0; i < transito.length; i++){
				transito[i].numeroDeFila = i + 1;
			}
			_ocTransitoTabla = FuncionesEstaticas.getInstance().formatoObjetos( transito );
			dispatchEvent(new Event ("OrdenCompraTransito"));
		}
		
		[Bindable(event="OrdenCompraTransito")]
		public function get ocEnTransito():ArrayCollection{
			return this._ocTransitoTabla;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener OCTRansito de la Grafica 
		 */
		private var _ocTransitoGrafica:ArrayCollection;
		private var datosTransito:ObjetoTabla;
		
		public function setOCenTransitoGraf(transitoGraf:Array):void{ /*,_datos:ObjetoTabla*/
			var meses:Array = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");			
			_ocTransitoGrafica = new ArrayCollection(transitoGraf);
			datosTransito = _datos;
			for(var m:int = 0; m<this._ocTransitoGrafica.length;m++){
				this.ocEnTransitoGrafica[m] = new ObjetoGrafica(this.ocEnTransitoGrafica[m][0],this.ocEnTransitoGrafica[m][1],meses[[m]]);
			}	
			
			dispatchEvent(new Event ("OrdenCompraTransitoGraf"));
			/*dispatchEvent(new Event ("cargarDatosTransito"));*/
		}
		
		[Bindable(event="OrdenCompraTransitoGraf")]
		public function get ocEnTransitoGrafica():ArrayCollection{
			return this._ocTransitoGrafica;
		}
		
		/*		[Bindable(event="cargarDatosTransito")]
		public function get cargaTransito():ObjetoTabla{
		return this.datosTransito;
		}
		*/
		/**
		 * Funcion de result que busca los datos para obtener Rechazadas de la Tabla
		 */
		private var _rechazosTabla:ArrayCollection;
		public function setOCRechazadas(rechazos:ArrayCollection):void{
			_rechazosTabla = rechazos;
			dispatchEvent(new Event ("OrdenCompraTransito"));
		}
		
		[Bindable(event="OrdenCompraTransito")]
		public function get ocRechazadas():ArrayCollection{
			return this._rechazosTabla;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener OCCompras de la Tabla 
		 */
		private var _ocComprasTab:ArrayCollection;
		public function setOCComprasTabla(compra:ArrayCollection):void{
			for(var i:int = 0; i < compra.length ; i++ ){
				compra[i].numeroDeFila = i + 1;
			}
			_ocComprasTab = FuncionesEstaticas.getInstance().formatoObjetos( compra );
			dispatchEvent(new Event ("OrdenCompraTabla"));
		}
		
		[Bindable(event="OrdenCompraTabla")]
		public function get ocComprasTabla():ArrayCollection{
			return this._ocComprasTab;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener OCCompras de la Grafica
		 */
		private var _ocComprasGrafica:ArrayCollection;
		private var datosCompras:ObjetoTabla;
		public function setOCCompras(comprasGraf:Array):void{ /*, _datos:ObjetoTabla*/
			var meses:Array = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");			
			_ocComprasGrafica = new ArrayCollection(comprasGraf);
			datosCompras = _datos;
			for(var m:int = 0; m<this._ocComprasGrafica.length;m++){
				this.ocCompras[m] = new ObjetoGrafica(this.ocCompras[m][0],this.ocCompras[m][1],meses[[m]]);
				/*this.ocCompras[m] = new ObjetoGrafica(this.ocCompras[m][0],this.ocCompras[m][1],this.ocCompras[m][2],meses[this.ocCompras[m][2]]);*/
			}	
			//_ocTransitoGrafica = transitoGraf;
			dispatchEvent(new Event ("OrdenCompras"));
			/*dispatchEvent(new Event ("cargaDatosCompras"));*/
		}
		
		[Bindable(event="OrdenCompras")]
		public function get ocCompras():ArrayCollection{
			return this._ocComprasGrafica;
		}
		
		/*	[Bindable(event="cargaDatosCompras")]
		public function get cargaCompras():ObjetoTabla{
		return this.datosCompras;
		}
		*/
		/**
		 * Funcion que busca los datos para obtener Pagos de la Grafica
		 */
		private var _pagosGrafica:ArrayCollection;
		private var datosPagos:ObjetoTabla;
		public function setPagos(pagos:Array):void{ /*, _datos:ObjetoTabla*/
			var meses:Array = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");			
			_pagosGrafica = new ArrayCollection(pagos);
			datosPagos = _datos;
			for(var m:int = 0; m<this._pagosGrafica.length;m++){
				this.obtenerPagos[m] = new ObjetoGrafica(this.obtenerPagos[m][0],this.obtenerPagos[m][1],meses[[m]]);
				/*this.ocCompras[m] = new ObjetoGrafica(this.ocCompras[m][0],this.ocCompras[m][1],this.ocCompras[m][2],meses[this.ocCompras[m][2]]);*/
			}	
			//_ocTransitoGrafica = transitoGraf;
			dispatchEvent(new Event ("OrdenPagos"));
			/*dispatchEvent(new Event("cargarDatosPagos"));*/
		}
		
		[Bindable(event="OrdenPagos")]
		public function get obtenerPagos():ArrayCollection{
			return this._pagosGrafica;
		}
		
		/*		[Bindable(event="cargarDatosPagos")]
		public function get cargaPagos():ObjetoTabla{
		return this.datosPagos;
		}*/
		
		/**
		 * Funcion que busca los datos para obtener pagos de la Tabla 
		 */
		private var _pagosTabla:ArrayCollection;
		private var pago:PagoProveedor;
		public function setPagosTabla(pago:ArrayCollection):void{
			for( var i:int = 0; i < pago.length ; i++ ){
				pago[i].numeroDeFila = i + 1;
				pago[i].montoFormato = "$"+ UtilsFormatosNumericos.precisionADosDecimales( pago[i].monto ) + " " +  pago[i].moneda; 
				pago[i].montoFacturaFormato = "$" + UtilsFormatosNumericos.precisionADosDecimales( pago[i].montoFactura ) + " " +  pago[i].moneda; 
			}
			_pagosTabla = FuncionesEstaticas.getInstance().formatoObjetos( pago );
			dispatchEvent(new Event ("OrdenPagosTabla"));
		}
		
		[Bindable(event="OrdenPagosTabla")]
		public function get pagosTabla():ArrayCollection{
			return this._pagosTabla;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener Aviso de Cambios de la Garfica y tabla
		 */
		private var _avisoCambios:ArrayCollection;
		public function setAvisoDeCambios(avisoCambios:ArrayCollection):void{
			for( var d:int = 0; d < avisoCambios.length; d++ ){
				avisoCambios[d].numFila = d + 1;
			}
			//_avisoCambios = avisoCambios;
			this._avisoCambios = FuncionesEstaticas.getInstance().formatoObjetos(avisoCambios);
			dispatchEvent(new Event ("AvisoDeCambiosGrafica"));
		}
		
		[Bindable(event="AvisoDeCambiosGrafica")]
		public function get obtenerAvisoDeCambios():ArrayCollection{
			return this._avisoCambios;
		}
		
		public function faultNumeroStock(objeto:Object):void{
			trace("hola");
		}
		
	}
}