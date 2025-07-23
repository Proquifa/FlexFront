package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.empresasDelGrupo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;
	import mx.controls.Alert;
	
	public class ModeloCatalogoEmpresasDelGrupo extends EventDispatcher
	{
		
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaEmpresas:ArrayCollection;
		public function setObtenEmpresas( $lista:ArrayCollection ):void{
			_listaEmpresas = new ArrayCollection();
			_listaEmpresas = $lista;
			dispatchEvent( new Event("evnviaListaEmpresasModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="evnviaListaEmpresasModeloCatalogoEmpresasDelGrupo")]
		public function get obtenEmpresas():ArrayCollection{
			return this._listaEmpresas;
		}
		
		
		/**
		 ***************************************************** se envia la lista de Folios *************************************************************
		 */
		private var _listaFolios:ArrayCollection;
		public function setObtenFolios( $lista:ArrayCollection ):void{
			_listaFolios = new ArrayCollection();
			_listaFolios = $lista;
			dispatchEvent( new Event("evnviaListaFoliosModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="evnviaListaFoliosModeloCatalogoEmpresasDelGrupo")]
		public function get ObtenFolios():ArrayCollection{
			return this._listaFolios;
		}
		
		/**
		 ***************************************************** se guardan Los Folios *************************************************************
		 */
		private var _guardoFolio:Boolean;
		public function setGuardaFolio( $dato:Boolean ):void{
			if( !$dato ){
				return;
			}
			_guardoFolio = $dato;
			dispatchEvent( new Event("guardoFolioModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="guardoFolioModeloCatalogoEmpresasDelGrupo")]
		public function get GuardaFolio():Boolean{
			return this._guardoFolio;
		}
		
		/**
		 ***************************************************** se envia la lista de conceptos *************************************************************
		 */
		private var _listaConceptos:ArrayCollection;
		public function setObtenConceptos( $lista:ArrayCollection ):void{
			_listaConceptos = new ArrayCollection();
			_listaConceptos = $lista;
			dispatchEvent( new Event("evnviaListaConceptosModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="evnviaListaConceptosModeloCatalogoEmpresasDelGrupo")]
		public function get ObtenConceptos():ArrayCollection{
			return this._listaConceptos;
		}
		
		/**
		 ***************************************************** se guarda el concepto *************************************************************
		 */
		private var _guardoConcepto:int;
		public function setGuardaConcepto( $dato:int ):void{
			if( isNaN( $dato ) ){
				return;
			}
			_guardoConcepto = $dato;
			dispatchEvent( new Event("guardaConceptoModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="guardaConceptoModeloCatalogoEmpresasDelGrupo")]
		public function get GuardaConcepto():int{
			return this._guardoConcepto;
		}
		
		/**
		 ***************************************************** se elimina el concepto *************************************************************
		 */
		private var _eliminaConcepto:Boolean;
		public function setEliminaConcepto( $lista:Boolean ):void{
		if( !$lista ){
			return;
		}
			_eliminaConcepto = $lista; 
			dispatchEvent( new Event("eliminaConceptoModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="eliminaConceptoModeloCatalogoEmpresasDelGrupo")]
		public function get EliminaConcepto():ArrayCollection{
			return this._listaConceptos;
		}
		
		/**
		 ***************************************************** se elimina el concepto *************************************************************
		 */
		private var _agregaConcepto:int;
		public function setAgregaConceptos( $dato:int ):void{
			if( isNaN($dato) || $dato == 0 ){
				return;
			}
			_agregaConcepto = $dato; 
			dispatchEvent( new Event("agregaConceptoModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="agregaConceptoModeloCatalogoEmpresasDelGrupo")]
		public function get AgregaConceptos():int{
			return this._agregaConcepto;
		}
		
		/**
		 ***************************************************** se elimina el concepto *************************************************************
		 */
		private var _asignaTipoFac:Boolean;
		public function setAsignaTipoFacturacion( $dato:Boolean ):void{
			if( !$dato ){
				return;
			}
			_asignaTipoFac= $dato; 
			dispatchEvent( new Event("asignaTipoFacModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="asignaTipoFacModeloCatalogoEmpresasDelGrupo")]
		public function get AsignaTipoFacturacion():Boolean{
			return this._asignaTipoFac;
		}
		
		/**
		 ***************************************************** asigna rol *************************************************************
		 */
		private var _asignaRol:Boolean;
		public function setAsignaTipoRol( $dato:Boolean ):void{
			if( !$dato ){
				return;
			}
			_asignaRol= $dato; 
			dispatchEvent( new Event("asignaTipoRolModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="asignaTipoRolModeloCatalogoEmpresasDelGrupo")]
		public function get AsignaTipoRol():Boolean{
			return this._asignaRol;
		}
		/**
		 ***************************************************** se envia la lista de Claves Unidad *************************************************************
		 */
		private var _listaClavesUnidad:ArrayCollection;
		public function setClavesUnidad( $lista:ArrayCollection ):void{
			_listaClavesUnidad = new ArrayCollection();
			_listaClavesUnidad = $lista;
			dispatchEvent( new Event("enviaClavesUnidadModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="enviaClavesUnidadModeloCatalogoEmpresasDelGrupo")]
		public function get ObtenClavesUnidad():ArrayCollection{
			return this._listaClavesUnidad;
		}
		/**
		 ***************************************************** se envia la lista de Claves Unidad *************************************************************
		 */
		private var _listaClavesProdServ:ArrayCollection;
		public function setClavesProdServ( $lista:ArrayCollection ):void{
			_listaClavesProdServ = new ArrayCollection();
			_listaClavesProdServ = $lista;
			dispatchEvent( new Event("enviaClavesProdServModeloCatalogoEmpresasDelGrupo") );
		}
		[Bindable(Event="enviaClavesProdServModeloCatalogoEmpresasDelGrupo")]
		public function get ObtenClavesProdServ():ArrayCollection{
			return this._listaClavesProdServ;
		}
		
		
		public function error(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloFacturistaGeneral") );*/
			Alert.show( objeto.toString() );
		}
		public function ModeloCatalogoEmpresasDelGrupo(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}