package mx.com.proquifa.proquifanet.compradorPhs.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.EventoEsperar;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.Proforma;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloProformas extends EventDispatcher
	{
		public function ModeloProformas(target:IEventDispatcher=null)
		{
			super(target);
		}
		/**
		 ******************************************** Funcion Que regresa El Universo de las Proformas por proveedor ***************************************************************
		 */
		private var _listaProformaPorProveedor:ArrayCollection;
		public function setListaProformaPorProveedor(lista:ArrayCollection):void{
			this._listaProformaPorProveedor = lista;
			dispatchEvent(new Event ("regresaListaProformaPorProveedor"));
		}
		
		[Bindable(event="regresaListaProformaPorProveedor")]
		public function get ListaProformaPorProveedor():ArrayCollection{
			return this._listaProformaPorProveedor;
		}
		/**
		 * Funcion Fault
		 */
		  
		public function faultProformasPorProveedor(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Por Confirmar.","");
		}
		/**
		 ******************************************** Funcion Que regresa la confirmacion ***************************************************************
		 */
		private var _confirmaProforma:Boolean;
		public function setConfirmaProforma(dato:Boolean):void{
			if( !dato ){
				alertaSingleton.show("Error al crear Proforma"," ATENCION ");
				return;
			}else{
				this._confirmaProforma = dato;
			}
			dispatchEvent(new Event ("eventoConfirmaProforma"));
		}
		
		[Bindable(event="eventoConfirmaProforma")]
		public function get ConfirmaProforma():Boolean{
			return this._confirmaProforma;
		}
		/**
		 * Funcion Fault
		 */
		
		public function faultConfirmaProforma(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Por Confirmar.","");
		}
		/**
		 ******************************************** Funcion Que regresa la confirmacion  ***************************************************************
		 */
		private var _confirmaActualizacion:Boolean;
		public function setConfirmaActualizacion(dato:Boolean):void{
			if( !dato ){
				alertaSingleton.show("Error al crear Proforma"," ATENCION ");
				return;
			}
			this._confirmaActualizacion = dato;
			dispatchEvent(new Event ("eventoConfirmaActualizacion"));
		}
		
		[Bindable(event="eventoConfirmaActualizacion")]
		public function get ConfirmaActualizacion():Boolean{
			return this._confirmaActualizacion;
		}
		/**
		 * Funcion Fault
		 */
		
		public function faultConfirmaActualizacion(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Por Confirmar.","");
		}
		/**
		 ******************************************** Funcion Que regresa la confirmacion en Tiempo ***************************************************************
		 */
		private var _confirmaActualizacionTiempo:Boolean;
		public function setConfirmaActualizacionTiempo(dato:Boolean):void{
			if( !dato ){
				alertaSingleton.show("Error al crear Proforma"," ATENCION ");
				return;
			}else{
				this._confirmaActualizacionTiempo = dato;
			}
			dispatchEvent(new Event ("eventoCConfirmaActualizacionTiempo"));
		}
		
		[Bindable(event="eventoConfirmaActualizacionTiempo")]
		public function get ConfirmaActualizacionTiempo():Boolean{
			return this._confirmaActualizacionTiempo;
		}
		/**
		 * Funcion Fault
		 */
		
		public function faultConfirmaActualizacionTiempo(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar Partidas Por Confirmar.","");
		}
		/**
		 ******************************************** Funcion Que regresa la Proforma General ***************************************************************
		 */
		private var _proforma:Proforma;
		public function setProformaGeneral(dato:Proforma):void{
			if( dato == null ){
				return;
			}
			_proforma = dato;
			dispatchEvent(new Event ("eventoProformaGeneral"));
		}
		
		[Bindable(event="eventoProformaGeneral")]
		public function get ProformaGeneral():Proforma{
			return this._proforma;
		}
		/**
		 * Funcion Fault
		 */
		
		public function faultProforma(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar La Proforma General","");
		}
		
		/**
		 ******************************************** Funcion Que confirma que una Proforma ha sido modificada  ***************************************************************
		 */
		private var _confirmaModificacionProforma:Boolean;
		public function setConfirmaModificacionProforma(dato:Boolean):void{
			if( dato == false ){
				Alert.show("error al actualizar la proforma general");
			}
			_confirmaModificacionProforma = dato;
			dispatchEvent(new Event ("eventoConfirmaModificacionProforma"));
		}
		
		[Bindable(event="eventoConfirmaModificacionProforma")]
		public function get ConfirmaModificacionProforma():Boolean{
			return this._confirmaModificacionProforma;
		}
		/**
		 * Funcion Fault
		 */
		
		public function faultConfirmaModificacionProforma(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo al cargar La Proforma General","");
		}
		
		/**
		 ******************************************** Funcion Que confirma la creacion de PDF  ***************************************************************
		 */
		private var _confirmaPdf:Boolean;
		public function setConfirmaPdf(dato:Boolean):void{
			if( dato == false ){
				alertaSingleton.show( catalogoAlertas.ERR_erroAlCrearElPdf );
				var eventoE:EventoEsperar = new EventoEsperar(EventoEsperar.TERMINA_ESPERA);
				dispatchEvent( eventoE );
			}
			_confirmaPdf = dato;
			dispatchEvent(new Event ("eventoConfirmaPdf"));
		}
		
		[Bindable(event="eventoConfirmaPdf")]
		public function get ConfirmaPDF():Boolean{
			return this._confirmaPdf;
		}
		/**
		 * Funcion Fault
		 */
		
		public function faultConfirmaPdf(objeto:Object):void{
			trace("Error ...");
			Alert.show("Fallo en el servicio al crear PDF para Proforma","");
		}
		
	}
}