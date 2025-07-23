package mx.com.proquifa.proquifanet.admonComunicacion.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.admonComunicacion.vistas.eventos.EventoPopUpContactos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.controls.Alert;
	
	public class MedeloPopUpContactos extends EventDispatcher
	{
		
		/**
		 ***************************************************** se obtienen los contactos *************************************************************
		 */
		private var _listaContacto:ArrayCollection;
		public function setObtenContactos( $lista:ArrayCollection ):void{
			_listaContacto = new ArrayCollection();
			_listaContacto = $lista;
			dispatchEvent( new Event("obtenConctactosMedeloPopUpContactosAIESC") );
		}
		[Bindable(Event="obtenConctactosMedeloPopUpContactosAIESC")]
		public function get ObtenContactos():ArrayCollection{
			return this._listaContacto;
		}
		/**
		 ***************************************************** se obtienen los contactos x Id Cliente *************************************************************
		 */
		private var _listaContactoXIdCliente:ArrayCollection;
		public function setObtenContactosXId( $lista:ArrayCollection ):void{
			_listaContactoXIdCliente = new ArrayCollection();
			_listaContactoXIdCliente = $lista;
			dispatchEvent( new Event("obtenConctactosXIdClienteMedeloPopUpContactosAIESC") );
		}
		[Bindable(Event="obtenConctactosXIdClienteMedeloPopUpContactosAIESC")]
		public function get ObtenContactosXId():ArrayCollection{
			return this._listaContactoXIdCliente;
		}
		
		/**
		 ***************************************************** se tiene el Contacto Selecccionado para enviar *************************************************************
		 */
		
		private var contactoSeleccionado:Object;
		public function setObtenerContactoSeleccionado( $objeto:Object ):void{
			contactoSeleccionado = $objeto;
			dispatchEvent( new Event("ObtenerContactoSeleccionadoMedeloPopUpContactosAIESC") );
		}
		[Bindable(Event="ObtenerContactoSeleccionadoMedeloPopUpContactosAIESC")]
		public function get ObtenerContactoSeleccionado():Object{
			return this.contactoSeleccionado;
		}
		
		
		/**
		 ***************************************************** se tiene el Contacto Selecccionado para enviar *************************************************************
		 */
		
		private var contactoDatos:Object;
		public function setObtenerContactoDatos( $objeto:Object ):void{
			contactoDatos = $objeto;
			dispatchEvent( new Event("ObtenerContactoDatosMedeloPopUpContactosAIESC") );
		}
		[Bindable(Event="ObtenerContactoDatosMedeloPopUpContactosAIESC")]
		public function get ObtenerContactoDatos():Object{
			return this.contactoDatos;
		}
		
		
		
		/**
		 ***************************************************** se asociaContacto *************************************************************
		 */
		private var _contacto:Contacto;
		public function setAsociarContactos( $evt:EventoPopUpContactos ):void{
			_contacto = new Contacto();
			if( $evt.nuevoContacto == null){
				 return;
			}
			_contacto = $evt.nuevoContacto;
			_contacto.vieneDE_PopUp = $evt.vieneDE_PopUp;
			if( $evt.vieneDE_PopUp == 'DocEntreNew' ){
				dispatchEvent( new Event("AsociarContactosDocEntreNewMedeloPopUpContactosAIESC") );
			}else if( $evt.vieneDE_PopUp == 'stageEditDoc' ){
				dispatchEvent( new Event("AsociarContactosstageEditDocMedeloPopUpContactosAIESC") );
			}else if( $evt.vieneDE_PopUp == 'LlamNew' ){
				dispatchEvent( new Event("AsociarContactosLlamNewMedeloPopUpContactosAIESC") );
			}
		}
		[Bindable(Event="AsociarContactosDocEntreNewMedeloPopUpContactosAIESC")]
		public function get AsociarContactosDocEntreNew():Contacto{
			return this._contacto;
		}
		[Bindable(Event="AsociarContactosstageEditDocMedeloPopUpContactosAIESC")]
		public function get AsociarContactosstageEditDoc():Contacto{
			return this._contacto;
		}
		[Bindable(Event="AsociarContactosLlamNewMedeloPopUpContactosAIESC")]
		public function get AsociarContactosstageLlamNew():Contacto{
			return this._contacto;
		}
		/**
		 ***************************************************** se asocia Cliente y Contacto *************************************************************
		 */
		private var eventoCLienteYContacto:EventoPopUpContactos;
		public function setAsociarClienteYContacto( $evt:EventoPopUpContactos ):void{
			if( $evt == null){
				return;
			}
			eventoCLienteYContacto = $evt;
			if( $evt.vieneDE_PopUp == 'DocEntreNew' ){
				dispatchEvent( new Event("AsociarContactosYClienteDocEntreNewMedeloPopUpContactosAIESC") );
			}
			if ($evt.vieneDE_PopUp == "LlamNew" ){
				dispatchEvent( new Event("AsociarContactosYClienteLlamadaNewMedeloPopUpContactosAIESC") );
			}
		}
		[Bindable(Event="AsociarContactosYClienteDocEntreNewMedeloPopUpContactosAIESC")]
		public function get AsociarClienteYContacto():Contacto{
			var contacto:Contacto = new Contacto();
			contacto = eventoCLienteYContacto.nuevoContacto;
			return contacto;
		}
		
		[Bindable(Event="AsociarContactosYClienteLlamadaNewMedeloPopUpContactosAIESC")]
		public function get AsociarClienteYContactoLlamNew():Contacto{
			var contacto:Contacto = new Contacto();
			contacto = eventoCLienteYContacto.nuevoContacto;
			return contacto;
		}
		/**
		 ***************************************************** se guarda los contactos *************************************************************
		 */
		private var _confirmaContactoGuardado:int;
		public function setConfirmaContactoNuevo( $dato:Number, $evt:EventoPopUpContactos ):void{
			_confirmaContactoGuardado = $dato;
			if( $evt != null && $evt.vieneDE_PopUp == 'CRM' ){
				dispatchEvent( new Event("confirmarNuevoConctactoCRMMedeloPopUpContactosAIESC") );
			}else {
				dispatchEvent( new Event("confirmarNuevoConctactedeloPopUpContactosAIESC") );
			}
		}
		[Bindable(Event="confirmarNuevoConctactoCRMMedeloPopUpContactosAIESC")]
		public function get ConfirmaContactoNuevoCRM():Number{
			return this._confirmaContactoGuardado;
		}
		
		[Bindable(Event="confirmarNuevoConctactedeloPopUpContactosAIESC")]
		public function get ConfirmaContactoNuevo():Number{
			return this._confirmaContactoGuardado;
		}
		
		/**
		 ***************************************************** limpia Id Contacto *************************************************************
		 */
		public function limpiaIDContacto():void{
			_confirmaContactoGuardado = 0;
		}
		
				
		/**
		 ****************************************************** Método para obtener contactos (nueva vista) *****************************************************
		 */
		private var _listacontactos:ArrayCollection;
		
		private var _listaContactosFiltrado:ArrayCollection;
		public function setBusquedaContactos(contacto:ArrayCollection):void{
			if(contacto == null) return;
			_listacontactos = contacto;
			dispatchEvent(new Event ("regresaListaContactos"));
		}
		
		[Bindable(event="regresaListaContactos")]
		public function get busquedaContactos():ArrayCollection{
			return this._listacontactos;
		}
		
		
		
		
		
		public function error(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloFacturistaGeneral") );*/
			Alert.show( objeto.toString() );
		}
		
		public function erroridCliente(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloFacturistaGeneral") );*/
			Alert.show( "idCliente"+objeto.toString() );
		}
		
		
		public function MedeloPopUpContactos(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}