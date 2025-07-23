package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.compras.compras
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.HistorialMonitoreo;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Compra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;

	public class ModeloConsultaCompras extends EventDispatcher
	{
		public function ModeloConsultaCompras(target:IEventDispatcher=null) 
		{
			super(target); //para inicializar todo lo que estas heredando del objeto que extiendes
		}
		
		/**
		 * Funcion para busqueda de proveedores
		 */
		public var compraZ:Compra = new Compra();
		public var historial:HistorialMonitoreo = new HistorialMonitoreo();
		private var tiempoProceso:TiempoProceso;
		private var _listaProveedores:ArrayCollection;
		public function setListaProveedores(datos:ArrayCollection):void{
			this._listaProveedores = datos;
			dispatchEvent(new Event ("proveedoresCompras"));
		}
		
		[Bindable(event="proveedoresCompras")]
		public function get listaProveedores():ArrayCollection{
			return this._listaProveedores;
		}
		
		/**
		 * Funcion para busqueda de compras
		 */
		private var _compras:ArrayCollection;
		public function setListaCompras(compra:ArrayCollection):void{
			for( var d:int = 0; d < compra.length; d++ ){
				compra[d].numFila = d + 1;
			}
			//this._compras = compra;
			this._compras = FuncionesEstaticas.getInstance().formatoObjetos(compra);
			dispatchEvent(new Event ("OrdenCompras"));
		}
		
		[Bindable(event="OrdenCompras")]
		public function get listaCompras():ArrayCollection{
			return this._compras;
		}
		
		/**
		 * Funcion para partida compras
		 */
		private var _pcompras:ArrayCollection;
		public function setPartidaCompra(pcompra:ArrayCollection):void{
			for( var d:int = 0; d < pcompra.length; d++ ){
				pcompra[d].numFila = d + 1;
			}
			//this._pcompras = pcompra;
			this._pcompras = FuncionesEstaticas.getInstance().formatoObjetos(pcompra);
			dispatchEvent(new Event ("partidaCompras"));
		}
		
		[Bindable(event="partidaCompras")]
		public function get partidaCompra():ArrayCollection{
			return this._pcompras;
		}
		
		/**
		 * Funcion para tiempo de proceso compras
		 */
		private var _tiempoP:ArrayCollection;
		public function setTiempoProcesoCompras(proceso:ArrayCollection):void{
			for( var d:int = 0; d < proceso.length; d++ ){
				proceso[d].numFila = d + 1;
			}
			//this._tiempoP = proceso;
			this._tiempoP = FuncionesEstaticas.getInstance().formatoObjetos(proceso);
			dispatchEvent(new Event ("tiempodeProcesoCompras"));
		}
		
		[Bindable(event="tiempodeProcesoCompras")]
		public function get tiempoProcesoCompras():ArrayCollection{
			return this._tiempoP;
		}
		
		/**
		 * Funcion para historial compras
		 */
		private var _historial:ArrayCollection;
		public function setHistorialCompras(historial:ArrayCollection):void{
			for( var d:int = 0; d < historial.length; d++ ){
				historial[d].numFila = d + 1;
			}
			/*this._historial = historial;*/
			this._historial = FuncionesEstaticas.getInstance().formatoObjetos(historial);
			dispatchEvent(new Event ("historialCompras"));
		}
		
		[Bindable(event="historialCompras")]
		public function get historialCompras():ArrayCollection{
			return this._historial;
		}
		
		public function faultNumeroStock(objeto:Object):void{
			trace("Error");
		}
	}
}