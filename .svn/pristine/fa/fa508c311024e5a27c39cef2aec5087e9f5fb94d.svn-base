package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.graphics.IStroke;
	
	public class ModeloParaContactoService extends EventDispatcher
	{
		public var contact:Contacto = new Contacto();
		private var _contactos:ArrayCollection = new ArrayCollection();
		private var _clientes:ArrayCollection = new ArrayCollection();
		private var _clientesNoEncontrados:ArrayCollection = new ArrayCollection();
		
		///Metodo para conseguir Clientes
		[Bindable(event="cambioClientes")]
		public function get Clientes():ArrayCollection{
			return this._clientes
		}
		
		public function setClientes ( datos:ArrayCollection ):void{
			this._clientes = datos;				
			dispatchEvent( new Event("cambioClientes") );
		}
		
		///Metodo para conseguir ClientesNoEncontrados
		[Bindable(event="cambioClientesNoEncontrados")]
		public function get ClientesNoEncontrados():ArrayCollection{
			return this._clientesNoEncontrados
		}
		
		public function setClientesNoEncontrados ( datos:ArrayCollection ):void{
			this._clientesNoEncontrados = datos;				
			dispatchEvent( new Event("cambioClientesNoEncontrados") );
		}
		
		//Metodo para conseguir Contactos
		[Bindable(event="cambioContacto")]
		public function get Contactos():ArrayCollection{
			return this._contactos;
		}
		
		public function setContactos( datos:ArrayCollection ):void{
			this._contactos = datos;				
			dispatchEvent( new Event("cambioContacto") );
		}
		
		/**
		 *Metodo para obtener contactos (nueva vista)
		 */
		private var _listacontactos:ArrayCollection;
		public function setBusquedaContactos(contacto:ArrayCollection):void{
			this._listacontactos = contacto;
			dispatchEvent(new Event ("regresaBusquedaContactos"));
		}
		
		[Bindable(event="regresaBusquedaContactos")]
		public function get busquedaContactos():ArrayCollection{
			return this._listacontactos;
		}
		
		/**
		 *Metodo para obtener descripcion de contacto seleccionado
		 */
		private var _descripcion:ArrayCollection;
		public function setClickDescripcionContacto(contactos:ArrayCollection):void{
			this._descripcion = contactos;
			dispatchEvent(new Event ("regresaDescripcionContactos"));
		}
		
		[Bindable(event="regresaDescripcionContactos")]
		public function get clickDescripcionContacto():ArrayCollection{
			return this._descripcion;
		}
		
		/**
		 *Metodo para tipo de Consulta; Proveedor o Cliente
		 */
		private var _consulta:String;
		public function setObtenerTipoConsulta(consulta:String):void{
			this._consulta = consulta;
			dispatchEvent(new Event ("regresaTipoConsulta"));
		}
		
		[Bindable(event="regresaTipoConsulta")]
		public function get obtenerTipoConsulta():String{
			return this._consulta;
		}
		
		
		public function faultNumeroStock(objeto:Object):void{
			trace("hola");
		}
		
		public function ModeloParaContactoService(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		public function faultBusquedaContactos(error:Object):void{
			Alert.show(error.toString());
		}
		
	}
}