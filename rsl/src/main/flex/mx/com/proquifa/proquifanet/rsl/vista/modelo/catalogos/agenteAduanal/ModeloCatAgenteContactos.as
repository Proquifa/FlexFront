package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;

	public class ModeloCatAgenteContactos extends EventDispatcher
	{
		
		public function ModeloCatAgenteContactos(target:IEventDispatcher=null)
		{
		}
		
		
		/**
		 ************************************************************** lista Contactos **************************************************************
		 */ 
		private var _listaContactos:ArrayCollection;
		public function setListaContactos(datos:ArrayCollection):void{
			
			this._listaContactos = ObjectUtil.copy( datos ) as ArrayCollection;
			
			dispatchEvent(new Event ("listaContactosModeloCatAgenteContactos"));
		}
		
		[Bindable(event="listaContactosModeloCatAgenteContactos")]
		public function get ListaContactos():ArrayCollection{
			return this._listaContactos;
		}
		
		/**
		 ************************************************************** Edita Contacto **************************************************************
		 */ 
		private var _confirmaEdicion:Boolean;
		public function setEditaContacto(datos:Boolean):void{
			this._confirmaEdicion = datos;
			dispatchEvent(new Event ("confirmaEdicionContactoModeloCatAgenteContactos"));
		}
		
		[Bindable(event="confirmaEdicionContactoModeloCatAgenteContactos")]
		public function get EditaContacto():Boolean{
			return this._confirmaEdicion;
		}
		
		/**
		 ************************************************************** Elimina Contacto **************************************************************
		 */ 
		private var _confirmaEliminacion:Boolean;
		public function setEliminaContacto(datos:Boolean):void{
			this._confirmaEliminacion = datos;
			dispatchEvent(new Event ("confirmaEliminacionContactoModeloCatAgenteContactos"));
		}
		
		[Bindable(event="confirmaEliminacionContactoModeloCatAgenteContactos")]
		public function get regresaConfirmacionEliminacionContacto():Boolean{
			return this._confirmaEliminacion;
		}
		
		/**
		 **************************************************************agrega nuevo Contactos **************************************************************
		 */ 
		private var _confirmaContacto:Number;
		public function setNuevoContacto(datos:Number):void{
			this._confirmaContacto = datos;
			dispatchEvent(new Event ("confirmaNuevoContactoModeloCatAgenteContactos"));
		}
		
		[Bindable(event="confirmaNuevoContactoModeloCatAgenteContactos")]
		public function get NuevoContacto():Number{
			return this._confirmaContacto;
		}
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
	}
}