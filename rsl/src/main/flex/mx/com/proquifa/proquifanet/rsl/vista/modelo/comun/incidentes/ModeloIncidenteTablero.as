package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TopTen;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.comun.TableroIncidente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.incidente.Eficiencia;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	

	public class ModeloIncidenteTablero extends EventDispatcher
	{
		public function ModeloIncidenteTablero(target:IEventDispatcher=null)
		{
			super(target);
		}
		private var topTen:TopTen;
		public var mm:Eficiencia;
		private var tablas:TableroIncidente;
		/**
		 ********************************************************************** Funcion de result que busca el Top Clientes ***************************************************************
		 */
		private var _topClientes:ArrayCollection;
		public function setListaTopClientes(cliente:ArrayCollection):void{
			for(var i:int=0; i < cliente.length; i++){
				cliente[i].numeroFila = i + 1;
			}
			this._topClientes = cliente;
			dispatchEvent(new Event ("regresaClientes"));
		}
		
		[Bindable(event="regresaClientes")]
		public function get listaTopClientes():ArrayCollection{
			return this._topClientes;
		}
		/**
		 ************************************************************ Funcion de result que busca la tabla Top Clientes ***************************************************************
		 */
		private var _topClientesTabla:ArrayCollection;
		public function setListaTopClientesTabla(clienteTabla:ArrayCollection):void{
			if(clienteTabla.length > 0){
				for(var i:int=0; i < clienteTabla.length; i++){
					clienteTabla[i].numFila = i + 1;
				}
				this._topClientesTabla = FuncionesEstaticas.getInstance().formatoObjetos( clienteTabla );
			}
			else{
				this._topClientesTabla = new ArrayCollection();
			}
			dispatchEvent(new Event ("regresaClientesTabla"));
		}
		
		[Bindable(event="regresaClientesTabla")]
		public function get listaTopClientesTabla():ArrayCollection{
			return this._topClientesTabla;
		}
		/**
		 ********************************************************************* Funcion de result que busca el Top Proovedores *************************************************************
		 */
		private var _topProveedores:ArrayCollection = new ArrayCollection();
		public function setListaTopProveedores(lista:ArrayCollection):void{
			for(var i:int=0; i < lista.length; i++){
				lista[i].numeroFila = i + 1;
			}
			this._topProveedores = lista;
			dispatchEvent(new Event ("regresaProveedores"));
		}
		[Bindable(event="regresaProveedores")]
		public function get listaTopProveedores():ArrayCollection{
			return this._topProveedores;
		}
		/**
		 ******************************************************************** Funcion de result que busca el Top Productos *****************************************************************
		 */
		private var _topProducto:ArrayCollection;
		public function setListaTopProductos(producto:ArrayCollection):void{
			for(var i:int=0; i < producto.length; i++){
				producto[i].numeroFila = i + 1;
			}
			this._topProducto = producto;
			dispatchEvent(new Event ("regresaProductos"));
		}
		
		[Bindable(event="regresaProductos")]
		public function get listaTopProductos():ArrayCollection{
			return this._topProducto;
		}
		
		/**
		 ******************************************************************** Funcion de result que busca el Top Asociados ******************************************************************
		 */
		private var _topAsociados:ArrayCollection;
		public function setListaTopAsociados(lista:ArrayCollection):void{
			for(var i:int=0; i < lista.length; i++){
				lista[i].numeroFila = i + 1;
			}
			this._topAsociados = lista;
			dispatchEvent(new Event ("regresaAsociados"));
		}
		
		[Bindable(event="regresaAsociados")]
		public function get listaTopAsociados():ArrayCollection{
			return this._topAsociados;
		}
		
		/**
		 ******************************************************************** Funcion de result que busca el Top listaTopImpacto ******************************************************************
		 */
		private var _toplistaTopImpacto:ArrayCollection;
		public function setListaTopImpacto(producto:ArrayCollection):void{
			for(var i:int=0; i < producto.length; i++){
				producto[i].numeroFila = i + 1;
			}
			this._toplistaTopImpacto = producto;
			dispatchEvent(new Event ("regresalistaTopImpacto"));
		}
		
		[Bindable(event="regresalistaTopImpacto")]
		public function get listaTopImpacto():ArrayCollection{
			return this._toplistaTopImpacto;
		}
		
		/**
		 ******************************************************************** Funcion de result que busca el Top listaTop Tipo ******************************************************************
		 */
		private var _toplistaTopTipo:ArrayCollection;
		public function setListaTopTipo(tipo:ArrayCollection):void{
			for(var i:int=0; i < tipo.length; i++){
				tipo[i].numeroFila = i + 1;
			}
			this._toplistaTopTipo = tipo;
			dispatchEvent(new Event ("regresalistaTopTipo"));
		}
		
		[Bindable(event="regresalistaTopTipo")]
		public function get listaTopTipo():ArrayCollection{
			return this._toplistaTopTipo;
		}
		
		/**
		 ******************************************************************** Funcion de result que busca el Top listaTop Origen ******************************************************************
		 */
		private var _toplistaTopOrigen:ArrayCollection;
		public function setListaTopOrigen(origen:ArrayCollection):void{
			for(var i:int=0; i < origen.length; i++){
				origen[i].numeroFila = i + 1;
			}
			this._toplistaTopOrigen = origen;
			dispatchEvent(new Event ("regresalistaTopOrigen"));
		}
		
		[Bindable(event="regresalistaTopOrigen")]
		public function get listaTopOrigen():ArrayCollection{
			return this._toplistaTopOrigen;
		}
		
		/**
		 ******************************************************************** Funcion de result que busca los q Registran Mas ******************************************************************
		 */
		private var _listaRegistraMas:ArrayCollection;
		public function setListaRegistraMas(registra:ArrayCollection):void{
			for(var i:int=0; i < registra.length; i++){
				registra[i].numeroFila = i + 1;
			}
			this._listaRegistraMas = registra;
			dispatchEvent(new Event ("regresaRegistraMas"));
		}
		
		[Bindable(event="regresaRegistraMas")]
		public function get listaRegistraMas():ArrayCollection{
			return this._listaRegistraMas;
		}
		
		/**
		 ******************************************************************** Funcion de result que busca los Gasta Mas ******************************************************************
		 */
		private var _listaGastaMas:ArrayCollection;
		public function setlistaGastaMas(gasta:ArrayCollection):void{
			for(var i:int=0; i < gasta.length; i++){
				gasta[i].numeroFila = i + 1;
				gasta[i].formatoMonto = "$ " + UtilsFormatosNumericos.precisionADosDecimales( gasta[i].monto ) + " MX."
			}
			this._listaGastaMas = gasta;
			dispatchEvent(new Event ("regresaGastaMas"));
		}
		
		[Bindable(event="regresaGastaMas")]
		public function get listaGastaMas():ArrayCollection{
			return this._listaGastaMas;
		}
		
		/**
		 ************************************************  Funcion de result que busca los Aceptados Vs Rechazados ******************************************************************
		 */
		private var _listaAceptadosRechazados:ArrayCollection;
		public function setlistaAceptadosRechazados(lista:ArrayCollection):void{
			for(var i:int=0; i < lista.length; i++){
				lista[i].numeroFila = i + 1;
			}
			this._listaAceptadosRechazados = lista;
			dispatchEvent(new Event ("regresaAceptadosRechazados"));
		}
		
		[Bindable(event="regresaAceptadosRechazados")]
		public function get listaAceptadosRechazados():ArrayCollection{
			return this._listaAceptadosRechazados;
		}
		
		/**
		 ************************************************  Funcion que regresa la Tabla de Aceptados Vs Rechazados ******************************************************************
		 */
		private var _listaAceptadosRechazadosTabla:ArrayCollection;
		public function setlistaAceptadosRechazadosTabla(listaTabla:ArrayCollection):void{
			for(var i:int=0; i < listaTabla.length; i++){
				listaTabla[i].numeroFila = i + 1;
			}
			this._listaAceptadosRechazadosTabla = listaTabla;
			dispatchEvent(new Event ("regresaAceptadosRechazadosTabla"));
		}
		
		[Bindable(event="regresaAceptadosRechazadosTabla")]
		public function get listaAceptadosRechazadosTabla():ArrayCollection{
			return this._listaAceptadosRechazadosTabla;
		}
		
		/**
		 ************************************************* Funcion de result que regresa el Tiempo de PRoceso ******************************************************************
		 */
		private var _listaTiempoProceso:ArrayCollection;
		public function setlistaTiempoProceso(lista:ArrayCollection):void{
			for(var i:int=0; i < lista.length; i++){
				lista[i].numeroFila = i + 1;
			}
			this._listaTiempoProceso = lista;
			dispatchEvent(new Event ("regresaTiempoProceso"));
		}
		
		[Bindable(event="regresaTiempoProceso")]
		public function get listaTiempoProceso():ArrayCollection{
			return this._listaTiempoProceso;
		}
		
		/**
		 *************************************************** Funcion de result que busca el Top de Incidentes Abiertos y Cerrados ****************************************
		 */
		private var _topTasa:ArrayCollection;
		public function setlistaTasa(lista:ArrayCollection):void{
			for(var i:int=0; i < lista.length; i++){
				lista[i].numFila = i + 1;
			}
			this._topTasa = lista;
			dispatchEvent(new Event ("regresaTasa"));
		}
		
		[Bindable(event="regresaTasa")]
		public function get listaTasa():ArrayCollection{
			return this._topTasa;
		}
		
		
		
		public function faultNumeroStock(objeto:Object):void{
			trace("Error ...");
			alertaSingleton.showReintentar("QuePex-..");
		}
		public function faultTasa(objeto:Object):void{
			trace("Error ...");
			alertaSingleton.showReintentar("Error en el servicio Cerrados vs Abiertos para Tablero de Incidentes","Tablero Incidentes");
		}
		
		/**
		 ********************************************** Funcion de result que trae la eficacia de los Gerentes *****************************
		 */
		
		private var _eficienciaGerentes:ArrayCollection = new ArrayCollection();
		
		public function recibirEficaciaGerentes(datos:ArrayCollection):void{
			this._eficienciaGerentes = new ArrayCollection();
			if(datos.length > 0){
				this._eficienciaGerentes = datos;
			}
			var evento:Event = new Event("regresaEficiencia");
			this.dispatchEvent(evento);
		}
		
		[Bindable (event="regresaEficiencia")]
		public function get regresaEficaciaGerentes():ArrayCollection{
			return this._eficienciaGerentes;
		}
		
		public function faultRecibirEficaciaGerentes(fault:Object):void{
			alertaSingleton.showReintentar("Error al cargar datos de grafica eficacia gerente");
		}
		
		/**
		 *************************************************** Funcion de result para la tabla tiempo proceso *********************************
		 */
		
		private var tablaTiemposProceso:ArrayCollection = new ArrayCollection();
		
		public function setTablaTiempoProceso(datos:ArrayCollection):void{
			this.tablaTiemposProceso = new ArrayCollection();
			if(datos.length > 0){
				this.tablaTiemposProceso = FuncionesEstaticas.getInstance().formatoObjetos(datos);
				for(var m:int = 0; m<this.tablaTiemposProceso.length; m++){
					this.tablaTiemposProceso[m].numFila = m +1;
				}
			}
			var evento:Event = new Event("resultTablaTiempoProceso");
			this.dispatchEvent(evento);
		}
		
		[Bindable (event="resultTablaTiempoProceso")]
		public function get regresaTablaTiempoProceso():ArrayCollection
		{
			return this.tablaTiemposProceso;
		}
		
		public function faultTablaTiempoProceso(fault:Object):void
		{
			alertaSingleton.showReintentar("Error al cargar tabla tiempo proceso");
		}
		
		/**
		 ******************************************************* Funcion de result para la grafica Eficacia Global********************************
		 */
		
		
		private var datosGraficaEficaciaGlobal:ArrayCollection = new ArrayCollection();
		
		public function setGraficaEficaciaGlobal(datos:ArrayCollection):void{
			this.datosGraficaEficaciaGlobal = new ArrayCollection();
			if(datos.length > 0){
				this.datosGraficaEficaciaGlobal = datos;
			}
			var evento:Event = new Event("regresarGraficaEficaciaGlobal");
			this.dispatchEvent(evento);
		}
		
		[Bindable (event="regresarGraficaEficaciaGlobal")]
		public function get regresaEficaciaGlobal():ArrayCollection{
			return this.datosGraficaEficaciaGlobal;
		}
		
		public function faultGraficaEficaciaGlobal(fault:Object):void{
			alertaSingleton.showReintentar("Error al cargar la grafica eficacia global");
		}
		
		
		/**
		 ******************************************************* Funcion de result para la tabla de Eficacia Global*********************************
		 */
		
		private var datosTablaGraficaEficaciaGlobal:ArrayCollection = new ArrayCollection();
		
		public function setTablaEficaciaGlobal(datos:ArrayCollection):void{
			this.datosTablaGraficaEficaciaGlobal = new ArrayCollection();
			if(datos.length > 0){
				this.datosTablaGraficaEficaciaGlobal = datos;
			}
			var evento:Event = new Event("regresarTablaEficaciaGlobal");
			this.dispatchEvent(evento);
		}
		
		[Bindable (event="regresarTablaEficaciaGlobal")]
		public function get regresaEficaciaGlobalTabla():ArrayCollection{
			return this.datosTablaGraficaEficaciaGlobal;
		}
		
		public function faultTablaEficaciaGlobal(fault:Object):void{
			alertaSingleton.showReintentar("Error al llenar la tabla eficacia global");
		}
		
	}
}