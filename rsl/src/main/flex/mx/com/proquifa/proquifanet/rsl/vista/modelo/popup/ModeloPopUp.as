package mx.com.proquifa.proquifanet.rsl.vista.modelo.popup
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Referencia;

	public class ModeloPopUp extends EventDispatcher
	{
		
		public function ModeloPopUp(target:IEventDispatcher=null) 
		{
			super(target);
		}
		//					RECIBIR DEL POP ALERTA		
		private var _respuesta:ResultAlert = new ResultAlert();
		public function setRegresaBotonSeleccion(respuesta:ResultAlert):void{
			_respuesta = respuesta;
			dispatchEvent(new Event ("regresaRespuestaAlerta"));
		}
		[Bindable(event="regresaRespuestaAlerta")]
		public function get regresaSeleccion():ResultAlert{
			return this._respuesta;
		}
		//							--
		/**
		 * Funcion para enviar poductos almacen filtrados a grid de ProductoAlmacen
		 */
		public var contacto:Contacto = new Contacto();
		public var _listaProdAlmacenFiltrado:ArrayCollection = new ArrayCollection();
		
		public function setRegresaFiltro(listaFiltro:ArrayCollection):void{
			_listaProdAlmacenFiltrado = listaFiltro;
			dispatchEvent(new Event ("regresarListaFiltrada"));
		}
		[Bindable(event="regresarListaFiltrada")]
		public function get regresaFiltro():ArrayCollection{
			return this._listaProdAlmacenFiltrado;
		}
		
		/**
		 * Funcion para cambiar de viewStack en ProductoAlmacen
		 */
		public var _tipoTabla:int;
		public function setCambiaStack(nomTabla:int):void{
			_tipoTabla = nomTabla;
			dispatchEvent(new Event ("seleccionarTipoTabla"));
		}
		[Bindable(event="seleccionarTipoTabla")]
		public function get cambiarStack():int{
			return this._tipoTabla;
		}
		
		/**
		 * Funcion para enviar Inspector por folio Despacho de ProductoAlmacen
		 */
		public var _inspector:ProductoAlmacen;
		public function setInspectorFolioDespacho(inspectorFD:ProductoAlmacen):void{
			_inspector = inspectorFD;
			dispatchEvent(new Event ("regresaFolioDespacho"));
		}
		[Bindable(event="regresaFolioDespacho")]
		public function get inspectorFolioDespacho():ProductoAlmacen{
			return this._inspector;
		}
		
		/**
		 *Método para obtener contactos (nueva vista)
		 */
		private var _listacontactos:ArrayCollection;
		
		private var _listaContactosFiltrado:ArrayCollection;
		public function setBusquedaContactos(contacto:ArrayCollection):void{
			this._listacontactos = contacto;
			var objeto:Contacto = new Contacto();
			if(_listacontactos == null){
				_listacontactos = new ArrayCollection();
				objeto.ultimo = '0';
			}else{
				objeto.ultimo = this._listacontactos.length.toString();
				objeto.nombre = 'zzz';
			}
			
			this._listacontactos.addItem(objeto);
			dispatchEvent(new Event ("regresaBusquedaContactos"));
		}
		
		[Bindable(event="regresaBusquedaContactos")]
		public function get busquedaContactos():ArrayCollection{
			return this._listacontactos;
		}
		
		/**
		 *Método para obtener descripcion de contacto seleccionado
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
		 *Método para tipo de Consulta; Proveedor o Cliente
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
		
		/**
		 *Método agregar boton asociar
		 */
/*		private var _boton:int;
		public function setTipoBoton(agrega:int):void{
			this._boton = agrega;
			dispatchEvent(new Event ("regresaAgregaTipoBoton"));
		}
		
		[Bindable(event="regresaAgregaTipoBoton")]
		public function get tipoBoton():int{
			return this._boton;
		}*/
		
		/**
		 *Método para agregar contacto seleccionado
		 */
		//private var _seleccion:ArrayCollection;
		private var _datosPopUpContacto:Object;
		public function setContactoSeleccionado(seleccionado:ArrayCollection, vieneD:String):void{
			//this._seleccion = seleccionado;
			this._datosPopUpContacto = new Object();
			this._datosPopUpContacto["seleccion"] = seleccionado;
			this._datosPopUpContacto["vieneD"] = vieneD;
			dispatchEvent(new Event ("regresaContactoSeleccionado"));
		}
		
		[Bindable(event="regresaContactoSeleccionado")]
		public function get contactoSeleccionado():Object{
			return this._datosPopUpContacto;
		}
		
		/*public function resetContacto():void{
			this._listacontactos = new ArrayCollection();
			this._descripcion = new ArrayCollection();
			this._consulta = new String();
		}*/
		
		/**
		 *Método para obtener lista de referencias
		 */
		/*private var _referencia:ArrayCollection;
		public function setEnviaReferencia(referencias:ArrayCollection,vieneD:String):void{
			this._referencia = referencias;
			dispatchEvent(new Event ("regresaListaReferencias"));
		}*/
		private var _referencia:Object
		public function setEnviaReferencia(referencias:ArrayCollection,vieneD:String):void{
			this._referencia = new Object();
			this._referencia["referencia"] = referencias;
			this._referencia["vieneD"] = vieneD;
			dispatchEvent(new Event ("regresaListaReferencias"));
		}
		
		[Bindable(event="regresaListaReferencias")]
		public function get obtenListaReferencia():Object{
			return this._referencia;
		}
		
		
		/**
		 *Método para cargar lista de referencias en popup referencias
		 */
		/*private var _listaReferencias:ArrayCollection;
		public function setCargaListaReferencia(referencia:ArrayCollection,vieneD:String):void{
			this._listaReferencias = referencia;
			dispatchEvent(new Event ("cargaListaReferencias"));
		}*/
		private var _listaReferencias:Object;
		public function setCargaListaReferencia(referencia:ArrayCollection,vieneD:String):void{
			this._listaReferencias = new Object;
			this._listaReferencias["referencia"] = referencia;
			this._listaReferencias["vieneD"] = vieneD;
			
			var objeto:Referencia = new Referencia();
			objeto.ultimo = referencia.length.toString();
			referencia.addItem(objeto);
			
			dispatchEvent(new Event ("cargaListaReferencias"));
		}
		
		[Bindable(event="cargaListaReferencias")]
		public function get cargaListaReferencia():Object{
			return this._listaReferencias;
		}
		
		/**
		 *Método para obtener idIncidente
		 */
		private var _id:int;
		public function setObtenIdIncidente(idIncidente:int):void{
			this._id = idIncidente;
			dispatchEvent(new Event ("regresaIdIncidente"));
		}
		
		[Bindable(event="regresaIdIncidente")]
		public function get obtenIdIncidente():int{
			return this._id;
		}
		
		/**
		 *****************************************************Método para obtener el contacto********************************************
		 */
		private var _contacto:Contacto;
		public function setRecibeContacto( $dato:Contacto):void{
			this._contacto = $dato;
			dispatchEvent(new Event ("regresaContactoModeloPopUpGenerico"));
		}
		
		[Bindable(event="regresaContactoModeloPopUpGenerico")]
		public function get RecibeContacto():Contacto{
			return this._contacto;
		}
		
		/**
		 * Reset
		 */
		 public function reset():void{
			 this._listaReferencias = null;
		 }
		
		/**
		 *Método para checkBox activo
		 */
		private var _check:Boolean;
		public function setObtenerCheckBox(box:Boolean):void{
			this._check = box;
			dispatchEvent(new Event ("regresaCheckSeleccionado"));
		}
		
		[Bindable(event="regresaCheckSeleccionado")]
		public function get obtenerCheckBox():Boolean{
			return this._check;
		}
		
		[Bindable(event="regresoFiltrado")]
		public function get returnFiltrado():ArrayCollection{
			return this._listaContactosFiltrado;
		}
		public function setBusquedaLocal(valor:String):void{
			_listaContactosFiltrado = new ArrayCollection();
			if(_listacontactos.length > 0 || _listacontactos != null){
				for(var t:int = 0; t < _listacontactos.length; t++){
					if( _listacontactos[t].nombre != null && _listacontactos[t].nombre.toString().toUpperCase().indexOf(valor.toString().toUpperCase()) != -1 ||
						_listacontactos[t].EMail != null && _listacontactos[t].EMail.toString().toUpperCase().indexOf(valor.toString().toUpperCase()) != -1
					){
						_listaContactosFiltrado.addItem(_listacontactos[t]);
					}
				}
				var objeto:Contacto = new Contacto();
				objeto.ultimo = this._listaContactosFiltrado.length.toString();
				objeto.nombre = 'Zzz';
				this._listaContactosFiltrado.addItem(objeto);
			}
			dispatchEvent(new Event ("regresoFiltrado"));
		}
		
	}
}