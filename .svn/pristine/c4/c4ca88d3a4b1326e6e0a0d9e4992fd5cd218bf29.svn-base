package mx.com.proquifa.proquifanet.compras.vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;
	
	public class BusquedaProdAlmacenModelo extends EventDispatcher
	{
		private var _clientes:ArrayCollection;
		private var _productosAlmacen:ArrayCollection;
		private var _productoAlmacen:ProductoAlmacen;
		
		
		public function BusquedaProdAlmacenModelo(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		[Bindable(Event="cambioClientes")]
		public function get clientes():ArrayCollection{
			return this._clientes;
		}
		
		public function setClientes ( datosClientes:ArrayCollection ):void{
			this._clientes = datosClientes;
			dispatchEvent ( new Event("cambioClientes") );
		}
		
		[Bindable(Event="cambioProducto")]
		public function get productoAlmacenFD():ProductoAlmacen{
			return this._productoAlmacen;
		}

		public function setProductoAlmacen(productoAlmacen:ProductoAlmacen):void{
			this._productoAlmacen = productoAlmacen;
			dispatchEvent( new Event("cambioProducto") );
		}
		
		[Bindable(Event="cambioProdAlmacenAvanzada")]
		public function get productoAlmacenPorAvanzada():ArrayCollection{
			return this._productosAlmacen;
		}

		public function setProductosAlmacen(productosAlmacen:ArrayCollection):void{
			this._productosAlmacen = productosAlmacen;
			dispatchEvent( new Event("cambioProdAlmacenAvanzada") );
		}
	}
}