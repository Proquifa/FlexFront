package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.acuerdos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.Logistica;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloCatProLogistica extends EventDispatcher
	{
		private var confirmaUpdateLogistica:Boolean;
		public function setEditaLogistica(dato:Boolean):void{
			confirmaUpdateLogistica = dato;
			dispatchEvent(new Event ("confirmaUpdateLogisticaModeloCatProLogistica"));
		}
		
		[Bindable(event="confirmaUpdateLogisticaModeloCatProLogistica")]
		public function get editaLogistica():Boolean{
			return confirmaUpdateLogistica;
		}
		
		////////////////////////////////////////////////////////////////////////////////////
		
		
		private var logistica:Logistica;
		public function setObtenerLogistica(data:Logistica):void{
			logistica = data;
			dispatchEvent(new Event ("obtenerLogisticaModeloCatProLogistica"));
		}
		
		[Bindable(event = "obtenerLogisticaModeloCatProLogistica")]
		public function get obtenerLogistica():Logistica{
			return logistica;
		}
		
		
		////////////////////////////////////////////////////////////////////////////////////
		
		private var existe:Boolean;
		public function setExisteConcepto(data:Boolean):void{
			existe = data;
			dispatchEvent(new Event ("existeConceptoModeloCatProLogistica"));
		}
		
		[Bindable(event = "existeConceptoModeloCatProLogistica")]
		public function get obtenerExisteConcepto():Boolean{
			return existe;
		}
		
		////////////////////////////////////////////////////////////////////////////////////
		
		
		private var existeModif:Boolean;
		public function setExisteConceptoModificacion(data:Boolean):void{
			existeModif = data;
			dispatchEvent(new Event ("existeConceptoModificacionModeloCatProLogistica"));
		}
		
		[Bindable(event = "existeConceptoModificacionModeloCatProLogistica")]
		public function get obtenerExisteConceptoModificacion():Boolean{
			return existeModif;
		}
		
		////////////////////////////////////////////////////////////////////////////////////
		
		
		
		
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloCatProLogistica(target:IEventDispatcher = null)
		{
			super(target);
		}
	}
}