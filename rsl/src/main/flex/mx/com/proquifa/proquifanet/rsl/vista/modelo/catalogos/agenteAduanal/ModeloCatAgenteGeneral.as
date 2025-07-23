package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.agenteAduanal.EventoCatAgenteAduanalGeneral;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;

	public class ModeloCatAgenteGeneral extends EventDispatcher
	{
		public function ModeloCatAgenteGeneral(target:IEventDispatcher=null)
		{
			super(target);//para inicializar todo lo que estas heredando del objeto que extiendes
		}
		
		
		
		/**
		 ************************************************************** ACTUALIZA LAS MODIFICACIONES REALIZADAS  **************************************************************
		 */ 
		private var _modificaciones:Boolean;
		public function setUpdateModificaiones($update:Boolean):void{
			this._modificaciones = $update;
			dispatchEvent(new Event ("actualizaLasModificacionesRealizadasModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="actualizaLasModificacionesRealizadasModeloCatAgenteAduanalGeneral")]
		public function get updateModificaciones():Boolean{
			return this._modificaciones;
		}
		
		/**
		 ************************************************************** LISTA AgentesAduanales **************************************************************
		 */ 
		private var _listaAgentes:ArrayCollection;
		public function setListaAgentes(datos:ArrayCollection):void{
			this._listaAgentes = datos;
			dispatchEvent(new Event ("listaAgenteModeloCatAgenteGeneral"));
		}
		
		[Bindable(event="listaAgenteModeloCatAgenteGeneral")]
		public function get listaAgentes():ArrayCollection{
			return this._listaAgentes;
		}
		
		
		/**
		 ************************************************************** ENVIA  Agente Aduanal  **************************************************************
		 */ 
		private var _agente:AgenteAduanal;
		public function setEnviaAgente(evt:EventoCatAgenteAduanalGeneral):void{
			this._agente = evt.agenteSeleccionado;
			dispatchEvent(new Event ("agenteEnviadoModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="agenteEnviadoModeloCatAgenteAduanalGeneral")]
		public function get enviaAgente():AgenteAduanal{
			return this._agente;
		}
		
		
		/**
		 ************************************************************** INSERTA Agente Aduanal  **************************************************************
		 */ 
		private var _idGuardar:Number;
		public function setGuardaAgente($agente:Number):void{
			this._idGuardar = $agente;
			dispatchEvent(new Event ("agenteGuardarModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="agenteGuardarModeloCatAgenteAduanalGeneral")]
		public function get guardaAgente():Number{
			return this._idGuardar;
		}
		
		
		/**
		 ************************************************************** ACTUALIZA Agente Aduanal  **************************************************************
		 */ 
		private var _Update:Boolean;
		public function setUpdateAgente($agen:Boolean):void{
			this._Update = $agen;
			dispatchEvent(new Event ("agenteUpadteModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="agenteUpadteModeloCatAgenteAduanalGeneral")]
		public function get UpdateAgente():Boolean{
			return this._Update;
		}
		
		
		/**
		 ************************************************************** envia Id Proveedor **************************************************************
		 */ 
		private var _evtIdAgente:EventoCatAgenteAduanalGeneral;
		public function setEnviaIdAgente(evt:EventoCatAgenteAduanalGeneral):void{
			_evtIdAgente = evt;
			dispatchEvent(new Event ("enviaIdProveedoroModeloCatProGeneral"));
		}
		
		[Bindable(event="enviaIdProveedoroModeloCatProGeneral")]
		public function get EnviaIdAgente():EventoCatAgenteAduanalGeneral{
			return this._evtIdAgente;
		}
		
		
		/**
		 ************************************************************** INSERTA LUGAR Agente Aduanal  **************************************************************
		 */ 
		private var _idLugarAgente:Number;
		public function setGuardaLugarAgente($agente:Number):void{
			this._idLugarAgente = $agente;
			dispatchEvent(new Event ("lugarAgenteGuardaModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="lugarAgenteGuardaModeloCatAgenteAduanalGeneral")]
		public function get guardaLugarAgente():Number{
			return this._idLugarAgente;
		}
		
		
		/**
		 ************************************************************** ACTUALIZA LUGAR Agente Aduanal  **************************************************************
		 */ 
		private var _updateLugar:Boolean;
		public function setUpdateLugarAgente($agen:Boolean):void{
			this._updateLugar = $agen;
			dispatchEvent(new Event ("agenteUpadteLugarAgenteModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="agenteUpadteLugarAgenteModeloCatAgenteAduanalGeneral")]
		public function get UpdateLugarAgente():Boolean{
			return this._updateLugar;
		}
		
		
		/**
		 ************************************************************** ELIMINA CONCEPTO LUGAR Agente Aduanal  **************************************************************
		 */ 
		private var _eliminaLugar:Boolean;
		public function setEliminaConceptoLugarAgente($agen:Boolean):void{
			this._eliminaLugar = $agen;
			dispatchEvent(new Event ("eliminaConceptoLugareModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="eliminaConceptoLugareModeloCatAgenteAduanalGeneral")]
		public function get EliminaConceptoAgente():Boolean{
			return this._eliminaLugar;
		}
		
		
		/**
		 ************************************************************** LISTA PROVEEDORES Agente Aduanal  **************************************************************
		 */ 
		private var _proveedores:ArrayCollection;
		public function setListaProveedores($proveedores:ArrayCollection):void{
			this._proveedores = $proveedores;
			dispatchEvent(new Event ("listaProveedoresModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="listaProveedoresModeloCatAgenteAduanalGeneral")]
		public function get listaProveedores():ArrayCollection{
			return this._proveedores;
		}
		
		
		/**
		 ************************************************************** LISTA FAMILIA PRODUCTOS Agente Aduanal  **************************************************************
		 */ 
		private var _familiaProductos:ArrayCollection;
		public function setListaFamilia($familias:ArrayCollection):void{
			this._familiaProductos = $familias;
			dispatchEvent(new Event ("listaFamiliaModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="listaFamiliaModeloCatAgenteAduanalGeneral")]
		public function get listaFamilia():ArrayCollection{
			return this._familiaProductos;
		}
		
		
		/**
		 ************************************************************** INSERTAR MIN y MAX Familia Producto  **************************************************************
		 */ 
		private var _idFam:Number;
		public function setinsertarMinMax($id:Number):void{
			this._idFam = $id;
			dispatchEvent(new Event ("insertarMinMaxModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="insertarMinMaxModeloCatAgenteAduanalGeneral")]
		public function get insertarMinMax():Number{
			return this._idFam;
		}
		
		
		
		/**
		 ************************************************************** OBTENER REPORTE DE AGENTES ASOCIADOS  **************************************************************
		 */ 
		private var _agentesAsociados:ArrayCollection;
		public function setObtieneReporteAociados($age:ArrayCollection):void{
			this._agentesAsociados = $age;
			dispatchEvent(new Event ("obtenerReporteAgenteAsociadoCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="obtenerReporteAgenteAsociadoCatAgenteAduanalGeneral")]
		public function get obtenerResporteAgentes():ArrayCollection{
			return this._agentesAsociados;
		}
		
		
		
		/**
		 ************************************************************** DESASOCIAR MARCA AGENTE  **************************************************************
		 */ 
		private var _idDes:Number;
		public function setDesasociarMarca($id:Number):void{
			this._idDes = $id;
			dispatchEvent(new Event ("desasociarMarcaAgenteCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="desasociarMarcaAgenteCatAgenteAduanalGeneral")]
		public function get desasociarMarca():Number{
			return this._idDes;
		}
		
		
		/**
		 ************************************************************** GUARDA LIMITES AGENTE Y CORREO  **************************************************************
		 */ 
		private var _updateLimites:Boolean;
		public function setUpdateLimitesAgente($res:Boolean):void
		{
			_updateLimites = $res;

			dispatchEvent(new Event ("updateLimitesAgenteModeloCatAgenteAduanalGeneral"));
		}
		
		[Bindable(event="updateLimitesAgenteModeloCatAgenteAduanalGeneral")]
		public function get updateLimitesAgente():Boolean{
			return this._updateLimites;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		
		
	}
}