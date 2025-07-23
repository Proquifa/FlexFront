package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.generales.EventoCatProContactos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;


	public class ModeloCatProContactos extends EventDispatcher
	{
		public function ModeloCatProContactos(target:IEventDispatcher=null)
		{
			//super(target);
		}
		
		/**
		 ************************************************************** lista Contactos **************************************************************
		 */ 
		private var _listaContactos:ArrayCollection;
		public function setListaContactos(datos:ArrayCollection):void{
			
			this._listaContactos = ObjectUtil.copy( datos ) as ArrayCollection;
			
			dispatchEvent(new Event ("listaContactosModeloCatProContactos"));
		}
		
		[Bindable(event="listaContactosModeloCatProContactos")]
		public function get ListaContactos():ArrayCollection{
			return this._listaContactos;
		}
		
		/**
		 ************************************************************** Edita Contacto **************************************************************
		 */ 
		private var _confirmaEdicion:Boolean;
		public function setEditaContacto(datos:Boolean):void{
			this._confirmaEdicion = datos;
			dispatchEvent(new Event ("confirmaEdicionContactoModeloCatProContactos"));
		}
		
		[Bindable(event="confirmaEdicionContactoModeloCatProContactos")]
		public function get EditaContacto():Boolean{
			return this._confirmaEdicion;
		}
		
		/**
		 ************************************************************** Edita Contacto Nafta **************************************************************
		 */ 
			
		private var _confirmaEdicion1:Boolean;
		public function setEditaContactonafta(datos:Boolean):void{
			this._confirmaEdicion1 = datos;
			dispatchEvent(new Event ("confirmaEdicionModificacionContactoNafta"));
		}
		
		[Bindable(event="confirmaEdicionModificacionContactoNafta")]
		public function get EditaContactoNafta():Boolean{
			return this._confirmaEdicion1;
		}
		/**
		 ************************************************************** Edita Contacto despues del contacto Nafta **************************************************************
		 */ 
				private var _confirmaEdicion2:Boolean;
		public function setEditaContactoSegundo(datos:Boolean):void{
			this._confirmaEdicion2 = datos;
			dispatchEvent(new Event ("confirmaEdicionDelSegundoContacto"));
		}
		
		[Bindable(event="confirmaEdicionDelSegundoContacto")]
		public function get EditaContactoSegundo():Boolean{
			return this._confirmaEdicion2;
		}
		
		/**
		 ************************************************************** Elimina Contacto **************************************************************
		 */ 
		private var _confirmaEliminacion:Boolean;
		public function setEliminaContacto(datos:Boolean):void{
			this._confirmaEliminacion = datos;
			dispatchEvent(new Event ("confirmaEliminacionContactoModeloCatProContactos"));
		}
		
		[Bindable(event="confirmaEliminacionContactoModeloCatProContactos")]
		public function get regresaConfirmacionEliminacionContacto():Boolean{
			return this._confirmaEliminacion;
		}
		
		/**
		 **************************************************************agrega nuevo Contactos **************************************************************
		 */ 
		private var _confirmaContacto:Number;
		public function setNuevoContacto(datos:Number):void{
			this._confirmaContacto = datos;
			dispatchEvent(new Event ("confirmaNuevoContactoModeloCatProContactos"));
		}
		
		[Bindable(event="confirmaNuevoContactoModeloCatProContactos")]
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