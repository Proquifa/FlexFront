package vista.modelo
{
	import com.asfusion.mate.events.DispatcherEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;

	public class ModeloMonitoreoCobro extends EventDispatcher
	{
		
		/**
		 ***************************************************** se envia la lista de Cobros *************************************************************
		 */
		private var _listaCobros:ArrayCollection;
		public function setObtenCobros( $lista:ArrayCollection ):void
		{
			if($lista == null)
				return;
			
			_listaCobros = new ArrayCollection()
			_listaCobros = $lista;
			dispatchEvent( new Event("enviaListaCobrosModeloMonitoreoCobro") );
		}
		
		[Bindable(Event="enviaListaCobrosModeloMonitoreoCobro")]
		public function get obtenListaCobros():ArrayCollection
		{
			return _listaCobros;
		}
		
		
		
		
		public function error(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloNotaCredito") );*/
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloMonitoreoCobro(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}