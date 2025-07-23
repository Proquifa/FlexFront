package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.tecnicos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloCatProProductos extends EventDispatcher
	{
		/**
		 ************************************************************** lista tipo Producto **************************************************************
		 */ 
		private var _listaTipoProductos:ArrayCollection;
		public function setTipoProductos(datos:ArrayCollection):void{
			this._listaTipoProductos =  datos;
			dispatchEvent(new Event ("tipoProductosModeloCatProContactos"));
		}
		
		[Bindable(event="tipoProductosModeloCatProContactos")]
		public function get TipoProductos():ArrayCollection{
			return this._listaTipoProductos;
		}
		
		/**
		 ************************************************************** agrega tipo producto **************************************************************
		 */ 
		private var _agregaTipoProducto:Boolean;
		public function setAgregaTipoProducto(datos:Boolean):void{
			_agregaTipoProducto = datos;
			dispatchEvent(new Event ("AgregaTipoProductoModeloCatProContactos"));
		}
		
		[Bindable(event="AgregaTipoProductoModeloCatProContactos")]
		public function get AgregaTipoProducto():Boolean{
			return this._agregaTipoProducto;
		}
		
		/**
		 ************************************************************** elimina tipo producto **************************************************************
		 */ 
		private var _eliminaTipoProducto:Boolean;
		public function setEliminaTipoProducto(datos:Boolean):void{
			_eliminaTipoProducto = datos;
			dispatchEvent(new Event ("EliminaTipoProductoModeloCatProContactos"));
		}
		
		[Bindable(event="EliminaTipoProductoModeloCatProContactos")]
		public function get EliminaTipoProducto():Boolean{
			return this._eliminaTipoProducto;
		}
		
		/**
		 ************************************************************** elimina tipo producto **************************************************************
		 */ 
		private var _proveedorConFUA:Proveedor;
		public function setObtenFua(datos:Proveedor):void{
			_proveedorConFUA = datos;
			dispatchEvent(new Event ("ObtenFUAModeloCatProContactos"));
		}
		
		[Bindable(event="ObtenFUAModeloCatProContactos")]
		public function get ObtenFua():Proveedor{
			return this._proveedorConFUA;
		}
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		public function ModeloCatProProductos(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}