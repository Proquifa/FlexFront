package mx.com.proquifa.proquifanet.gestorCostos.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectUtil;
	
	public class ModeloComprasCompradorPhs extends EventDispatcher
	{
		
		
		///////////////////////////// OBTIENE NUMERO PENDIENTES  ///////////////////////////// 
		private var numeroPendientes:ArrayCollection;
		public function setObtenerPendientesGestorCompras(data:ArrayCollection):void
		{
			var temp:ArrayCollection = new ArrayCollection();
			var arrayAux:Array;
			var objectAux:Object = new Object();
			objectAux.pendiente = "";
			objectAux.conteo = "";
			if(data.length != 0){
				for(var x:int=0; x < data.length; x++){
					arrayAux = (data[x] as String).split("/");
					objectAux.pendiente = arrayAux[0];
					objectAux.conteo = arrayAux[1];
					temp.addItem(ObjectUtil.copy(objectAux));
				}
			}
			/*else{
			temp = new ArrayCollection();
			}*/
			numeroPendientes = temp;
			dispatchEvent(new Event("obtenerNumeroDePendientesModeloGestorCompras"));
		}
		
		[Bindable(event="obtenerNumeroDePendientesModeloGestorCompras")]
		public function get enviarObtenerPendientesGestorCompras():ArrayCollection
		{
			return numeroPendientes;
		}
		
		/**
		 ************************************************************** error **************************************************************
		 */
		
		public function ModeloComprasCompradorPhs(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}

