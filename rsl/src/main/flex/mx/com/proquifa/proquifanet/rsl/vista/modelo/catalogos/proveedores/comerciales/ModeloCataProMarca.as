package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.comerciales
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Fabricante;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloCataProMarca extends EventDispatcher
	{
		
		/**
		 ************************************************************** carga Asociadas **************************************************************
		 */ 
		private var _listaMarcasAsociadas:ArrayCollection;
		public function setObtenMarcasAsociadas(datos:ArrayCollection):void{
			this._listaMarcasAsociadas =  datos;
			dispatchEvent(new Event ("obtenMarcasAsociadasModeloCatProOferta"));
		}
		
		[Bindable(event="obtenMarcasAsociadasModeloCatProOferta")]
		public function get ObtenMarcasAsociadas():ArrayCollection{
			return this._listaMarcasAsociadas;
		}
		/**
		 ************************************************************** asocia Marca **************************************************************
		 */ 
		private var _confirmaAsociacion:Boolean;
		public function setAsociacionMarcas(datos:Boolean):void{
			this._confirmaAsociacion =  datos;
			dispatchEvent(new Event ("asociaMarcasModeloCatProOferta"));
		}
		
		[Bindable(event="asociaMarcasModeloCatProOferta")]
		public function get AsociacionMarcas():Boolean{
			return this._confirmaAsociacion;
		}
		
		private var _confirmaGuardadoDeMarca:Boolean;
		public function recibeConfirmacionDeGuardarMarca(confirma:Boolean):void
		{
			_confirmaGuardadoDeMarca = confirma;
			dispatchEvent(new Event("confirmaGuardadoDeMarcaModeloCatProMarca"));
		}
		
		[Bindable(event="confirmaGuardadoDeMarcaModeloCatProMarca")]
		public function get regresaConfirmacionDeGuardadoDeMarca():Boolean
		{
			return _confirmaGuardadoDeMarca;
		}
		
		
		/**
		 ************************************************************** editar marca **************************************************************
		 */
		private var _fabricamteEditar:Boolean;
		public function recibeEditarFabricante($fabricante:Boolean):void
		{
			_fabricamteEditar = $fabricante;
			dispatchEvent(new Event("editarMarcaModeloCatProMarca"));
		}
		
		[Bindable(event="editarMarcaModeloCatProMarca")]
		public function get regresaEditadoMarca():Boolean
		{
			return _fabricamteEditar;
		}
		
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		/**
		 ************************************************************** error al cargar marcas asociadas **************************************************************
		 */
		public function errorCargarMarcasAsociadas(objeto:Object):void{
			_listaMarcasAsociadas = new ArrayCollection();
			dispatchEvent(new Event ("obtenMarcasAsociadasModeloCatProOferta"));
		}
		
		public function ModeloCataProMarca(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}