package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.indicador
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;

	public class ModeloCatIndicadores extends EventDispatcher
	{
		public function ModeloCatIndicadores(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 * 
		 * */
		private var _valorEnTiempo:ArrayCollection
		public function setValorEnTiempo($datos:ArrayCollection):void{
			
			_valorEnTiempo = new ArrayCollection;
			if ( $datos )
				_valorEnTiempo = $datos;
			
			dispatchEvent(new Event("regresaValorEnTiempoModeloCarIndicadores"));
		}
		
		[Bindable(event="regresaValorEnTiempoModeloCarIndicadores")]
		public function get valorEnTiempo():ArrayCollection{
			return _valorEnTiempo;
		}

		/**
		 * 
		 * */
		private var _indicador:ArrayCollection
		public function setObtenerIndicadores($datos:ArrayCollection):void{
			
			_indicador = new ArrayCollection;
			if ( $datos )
				_indicador = $datos;
			
			dispatchEvent(new Event("regresaObtenerIndicadorModeloCarIndicadores"));
		}
		
		[Bindable(event="regresaObtenerIndicadorModeloCarIndicadores")]
		public function get obtenerIndicadores():ArrayCollection{
			return _indicador;
		}

		/**
		 * 
		 * */
		public function setRefrescarProcesos():void
		{
			dispatchEvent(new Event("refrescarProcesosModeloCarIndicadores"));
		}
		
		[Bindable(event="refrescarProcesosModeloCarIndicadores")]
		public function get refrescarProcesos():Boolean
		{
			return true;
		}
		
		/**
		 * 
		 * */
		private var _resultado:Boolean
		public function setObtenerResultado($datos:Boolean):void{
			
			_resultado = $datos;
			
			dispatchEvent(new Event("regresaResultadoIndicadorModeloCatIndicadores"));
		}
		
		[Bindable(event="regresaResultadoIndicadorModeloCatIndicadores")]
		public function get obtenerResultado():Boolean{
			return _resultado;
		}
		
		public function faultError(error:Object):void{
			alertaSingleton.show( error.toString());
		}
		
	}
}