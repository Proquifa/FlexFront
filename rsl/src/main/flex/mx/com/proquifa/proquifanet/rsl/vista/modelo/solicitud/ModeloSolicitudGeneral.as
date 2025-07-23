package mx.com.proquifa.proquifanet.rsl.vista.modelo.solicitud
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloSolicitudGeneral extends EventDispatcher
	{
		
		/**
		 ***************************************************** se obtienen los contactos *************************************************************
		 */
		private var _listaContacto:ArrayCollection;
		public function setObtenContactos( $lista:ArrayCollection ):void{
			_listaContacto = new ArrayCollection();
			_listaContacto = $lista;
			dispatchEvent( new Event("obtenConctactosModeloSolicitudGeneral") );
		}
		[Bindable(Event="obtenConctactosModeloSolicitudGeneral")]
		public function get ObtenContactos():ArrayCollection{
			return this._listaContacto;
		}
		
		/**
		 ***************************************************** se confirma la visita guardada *************************************************************
		 */
		private var _confirma:Boolean;
		public function setConfirmaVisita( $dato:Boolean ):void{
			if( $dato ){
				_confirma = $dato;
			}else{
				alertaSingleton.show(catalogoAlertas.ERR_servicio, catalogoAlertas.TIT_ADV_atencion );
				return;				
			}
			dispatchEvent( new Event("confirmaVisitaModeloSolicitudGeneral") );
		}
		[Bindable(Event="confirmaVisitaModeloSolicitudGeneral")]
		public function get ConfirmaVisita():Boolean{
			return this._confirma;
		}
		
		/**
		 *****************************************************tipo consultas referencias *************************************************************
		 */
		private var _consulta:String;
		public function setConsultaReferencia($dato:String):void{
			if( $dato == null ) return;
			_consulta = $dato
			dispatchEvent( new Event("tipoConsultaPopReferenciasEventoSolicitudGeneral") );	
		}
		
		[Bindable(Event="tipoConsultaPopReferenciasEventoSolicitudGeneral")]
		public function get consultaReferencia():String{
			return this._consulta;
		}
		
		/**
		 ***************************************************** error
		 */
		public function error(objeto:Object):void{
			dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloFacturistaGeneral") );
			Alert.show( objeto.toString() );
		}		
		
		public function ModeloSolicitudGeneral(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}