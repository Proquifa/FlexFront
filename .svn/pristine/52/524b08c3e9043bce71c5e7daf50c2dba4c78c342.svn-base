package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.compras
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.controls.Alert;
	
	import spark.events.IndexChangeEvent;
	
	public class ModeloProductoAlmacen extends EventDispatcher
	{
/*		private var _clientes:ArrayCollection;
		private var _productosAlmacen:ArrayCollection;*/
		private var _productoAlmacen:ProductoAlmacen;
		
		public function ModeloProductoAlmacen(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 * Todos los clientes encontrados
		 */
/*		public function clientesEncontrados (datosClientes:ArrayCollection ):void{
			this._clientes = datosClientes;
			dispatchEvent ( new Event("regresarClientes") );
		}
		
		[Bindable(Event="regresarClientes")]
		public function get regresarClientesEncontrados():ArrayCollection{
			return this._clientes;
		}*/
		
		/**
		 * Producto encontrado
		 */
/*		public function productoEnAlmacen(productoAlmacen:ProductoAlmacen):void{
			this._productoAlmacen = productoAlmacen;
			dispatchEvent( new Event("productoFDEncontrado") );
		}
		
		[Bindable(Event="productoFDEncontrado")]
		public function get productoAlmacenFD():ProductoAlmacen{
			return this._productoAlmacen;
		}*/
		
		/**
		 *  todos los productos encontrados 
		 */
		private var _producto:ArrayCollection;
		public function setProductoA(producto:ArrayCollection):void{
			for(var d:int = 0 ; d<producto.length ; d++){
				if(producto[d].estadoDespachable != "Despachable"){
					/*this._producto.addItem(producto[d]);*/
					producto.removeItemAt(d);
					d = d - 1;
				}
			}
			this._producto = FuncionesEstaticas.getInstance().formatoObjetos(producto); 
			dispatchEvent( new Event("productoAEncontrado") );
		}
		
		[Bindable(Event="productoAEncontrado")]
		public function get productoA():ArrayCollection{
			return this._producto;
		}
		
		/**
		 * Lista de productos encontrados
		 */
/*		public function productosEnAlmacen(productosAlmacen:ArrayCollection):void{
			this._productosAlmacen = productosAlmacen;
			dispatchEvent( new Event("productosFDEncontrado") );
		}
		
		[Bindable(Event="productosFDEncontrado")]
		public function get productosAlmacenFD():ArrayCollection{
			return this._productosAlmacen;
		}*/
		/**
		 * Funcion para cambiar de viewStack esta en ModeloPopUp
		 */
/*		public var _tipoTabla:int;
		public function setCambiaStack(nomTabla:int):void{
			_tipoTabla = nomTabla;
			dispatchEvent(new Event ("seleccionarTipoTabla"));
		}
		[Bindable(event="seleccionarTipoTabla")]
		public function get cambiarStack():int{
			return this._tipoTabla;
		}*/
		
		/**
		 * Funcion para enviar poductos almacen a grafica 
		 */
		public var _listaProdAlmacen:ArrayCollection;
		public function setRegresaLista(listaProd:ArrayCollection):void{
			_listaProdAlmacen = listaProd;
			dispatchEvent(new Event ("regresarLista"));
		}
		[Bindable(event="regresarLista")]
		public function get regresaLista():ArrayCollection{
			return this._listaProdAlmacen;
		}
		
		/**
		 * Funcion para enviar poductos almacen a MAxgrafica 
		 */
		public var _listaGraficaAlmacenMax:ArrayCollection;
		public function setRegresaListaGraficaMax(listaProdMax:ArrayCollection):void{
			_listaGraficaAlmacenMax = listaProdMax;
			dispatchEvent(new Event ("regresarListaGraficaMax"));
		}
		[Bindable(event="regresarListaGraficaMax")]
		public function get regresaListaGraficaMax():ArrayCollection{
			return this._listaGraficaAlmacenMax;
		}
		
		/**
		 * Funcion para enviar poductos almacen filtrados a grid : comentado por que fue enviado a ModeloPopUp
		 */
/*		public var _listaProdAlmacenFiltrado:ArrayCollection;
		public function setRegresaFiltro(listaFiltro:ArrayCollection):void{
			_listaProdAlmacenFiltrado = listaFiltro;
			dispatchEvent(new Event ("regresarListaFiltrada"));
		}
		[Bindable(event="regresarListaFiltrada")]
		public function get regresaFiltro():ArrayCollection{
			return this._listaProdAlmacenFiltrado;
		}*/
		
		/**
		 * Funcion para enviar Inspector por folio Despacho
		 */
/*		public var _inspector:ProductoAlmacen;
		public function setInspectorFolioDespacho(inspectorFD:ProductoAlmacen):void{
			_inspector = inspectorFD;
			dispatchEvent(new Event ("regresaFolioDespacho"));
		}
		[Bindable(event="regresaFolioDespacho")]
		public function get inspectorFolioDespacho():ProductoAlmacen{
			return this._inspector;
		}*/
		
		/**
		 * Funcion para enviar datos de boton seleccionado 
		 */
		public var _boton:String;
		public function setRegresaBoton(boton:String):void{
			_boton = boton;
			dispatchEvent(new Event ("regresaBoton"));
		}
		[Bindable(event="regresaBoton")]
		public function get regresaBoton():String{
			return this._boton;
		}
		
		/**
		 * Funcion para enviar datos de tiempoPromedio
		 */
		public var _tPromedio:String;
		public function setRegresaPromedioTiempo(tpromedio:String):void{
			_tPromedio = tpromedio;
			dispatchEvent(new Event ("regresaTiempoPromedio"));
		}
		[Bindable(event="regresaTiempoPromedio")]
		public function get regresaPromedioTiempo():String{
			return this._tPromedio;
		}
		
		/**
		 * el Fault de busqueda de documento por folio
		 */
		public function faultProductoAlmacen(objeto:Object):void{
			trace("Fallo al traer la información");
		}
		
	}
}