package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;

	public class ModeloReformulaIncidente extends EventDispatcher
	{
		public function ModeloReformulaIncidente(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 * Metodo para obtenerlista de reformulación
		 * */
		private var _listareformulacion:ArrayCollection;
		public function setListaReformulacionIncidente (datos:ArrayCollection):void{
			this._listareformulacion = datos;
			
			var objeto:Incidente = new Incidente();
			objeto.ultimo = this._listareformulacion.length.toString();
			this._listareformulacion.addItem(objeto);
			
			dispatchEvent( new Event("listaReformulacionIncidente") );
		}
		
		[Bindable(event="listaReformulacionIncidente")]
		public function get listaReformulacionIncidente():ArrayCollection{
			return this._listareformulacion
		}
		
		/**
		 * Metodo para actualizar reformulación
		 * */
		private var _actualiza:Boolean;
		public function setActualizaReformulacionIncidente (update:Boolean):void{
			this._actualiza = update;				
			dispatchEvent( new Event("ActualizaReformulacionIncidente") );
		}
		
		[Bindable(event="ActualizaReformulacionIncidente")]
		public function get actualizaReformulacionIncidente():Boolean{
			return this._actualiza
		}
		
		/**
		 * Metodo para registro reformulación
		 * */
		private var _registra:Boolean;
		public function setRegistraReformulacionIncidente (registro:Boolean):void{
			this._registra = registro;				
			dispatchEvent( new Event("RegistraReformulacionIncidente") );
		}
		
		[Bindable(event="RegistraReformulacionIncidente")]
		public function get registraReformulacionIncidente():Boolean{
			return this._registra;
		}
		
		
		/**
		 * Metodo para registro reformulación para incidente 
		 * */
		private var _registraReformulacion:int;
		public function setRegistraReformulacion (registro:int):void{
			this._registraReformulacion = registro;				
			dispatchEvent( new Event("RegistraReformulacionParaIncidente") );
		}
		
		[Bindable(event="RegistraReformulacionParaIncidente")]
		public function get registraReformulacion():int{
			return this._registraReformulacion;
		}
		
		/**
		 * el Fault 
		 */
		public function faultRegistroIncidente(objeto:Object):void{
			trace("Fallo en Reformulacion");
		}
	}
}