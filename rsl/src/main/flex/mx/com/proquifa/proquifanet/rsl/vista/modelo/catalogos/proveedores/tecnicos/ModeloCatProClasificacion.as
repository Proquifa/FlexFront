package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.tecnicos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;

	public class ModeloCatProClasificacion extends EventDispatcher
	{
		public function ModeloCatProClasificacion(target:IEventDispatcher = null)
		{
			super(target);
		}
		

		private var conceptosClasificacion:ArrayCollection;
		public function setRecibeConceptoClasificacion($conceptos:ArrayCollection):void
		{
			this.conceptosClasificacion = $conceptos;
			dispatchEvent(new Event("pasarConceptosClasificacionModeloCatProClasificacion"));
		}

		[Bindable(event="pasarConceptosClasificacionModeloCatProClasificacion")]
		public function get regresarConceptosClasificacion():ArrayCollection
		{
			return this.conceptosClasificacion;
		}

		private var seActualizaronConceptos:Number;
		public function setRecibeConfirmacionDeActualizarConceptos($actulaizaronConceptos:Number):void
		{
			this.seActualizaronConceptos = $actulaizaronConceptos;
			dispatchEvent(new Event("pasarlaConfirmacionDeActualizarConceptosModeloCatProClasificacion"));
		}

		[Bindable(event="pasarlaConfirmacionDeActualizarConceptosModeloCatProClasificacion")]
		public function get regresarConfirmacionActualizarConceptos():Number
		{
			return this.seActualizaronConceptos;
		}
		
		
		public function error(objeto:Object):void
		{
			alertaSingleton.show(objeto.toString());	
		}
	}
}