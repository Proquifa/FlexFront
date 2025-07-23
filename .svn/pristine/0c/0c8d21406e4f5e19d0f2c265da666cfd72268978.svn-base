package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.comerciales
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;

	public class ModeloCatProCampana extends EventDispatcher
	{
		
		/**
		 ************************************************************** Confirmacion guardar/actualizar Campaña**************************************************************
		 */ 
		private var confirmacionGuardarActualizar:Boolean;
		public function setRecibeConfirmacionGuardarActualizar(resp:Boolean):void{
			this.confirmacionGuardarActualizar =  resp;
			dispatchEvent(new Event ("asociaMarcasModeloCatProOferta"));
		}
		
		[Bindable(event="asociaMarcasModeloCatProOferta")]
		public function get enviaConfirmacionGuardarActualizar ():Boolean{
			return this.confirmacionGuardarActualizar;
		}
		
		
		/**
		 ************************************************************** RECIBE LISTA DE CAMPAÑAS DEL PROVEEDOR**************************************************************
		 */ 
		private var listaCampanasProveedor:ArrayCollection;
		public function setRecibeListaDeCampanasComercianles(list:ArrayCollection):void{
			this.listaCampanasProveedor =  list;
			dispatchEvent(new Event ("mandarListaDeCampanasDelProveedor"));
		}
		
		[Bindable(event="mandarListaDeCampanasDelProveedor")]
		public function get enviaListaDeCampanasComerciales():ArrayCollection{
			return this.listaCampanasProveedor;
		}
		
		
		/**
		 ************************************************************** OBTENER TODOS LOS PRODUCTOS DEL PROVEEDOR**************************************************************
		 */ 
		private var listaProd:ArrayCollection;
		public function setRecibeListaDeProductosPro(list:ArrayCollection):void{
			this.listaProd =  list;
			dispatchEvent(new Event ("mandaListaDeProductosProveedor"));
		}
		
		[Bindable(event="mandaListaDeProductosProveedor")]
		public function get enviaListaDeProductosPro():ArrayCollection{
			return this.listaProd;
		}
		
		
		/**
		 ************************************************************** Repsuesta Eliminar Campaña Comercial**************************************************************
		 */ 
		private var confirmacionEliminarCampana:Boolean;
		public function setRecibeConfirmacionDeEliminarCampana(resp:Boolean):void{
			this.confirmacionEliminarCampana =  resp;
			dispatchEvent(new Event ("asociaMarcasModeloCatProOferta"));
		}
		
		[Bindable(event="asociaMarcasModeloCatProOferta")]
		public function get enviaConfirmacionEliminarCampana():Boolean{
			return this.confirmacionEliminarCampana;
		}
		
		
		
		/**
		 ************************************************************** Error **************************************************************
		 */
		
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		public function ModeloCatProCampana(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}