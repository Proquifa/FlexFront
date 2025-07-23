package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;

	public class ModeloVentasGV extends EventDispatcher
	{
		
		/**
		 ***************************************************** PENDIENTES VISITA A CLIENTE *************************************************************
		 */
		private var pendientes:ArrayCollection;
		public function setObtenerPendientesVisitaCliente( data:ArrayCollection ):void{
			pendientes = new ArrayCollection;
			for each (var cadena:String in data) 
			{
				var array:Array = cadena.split('/');
				if(array.length == 2){
					var object:Object = new Object;
					object.pendiente = array[0];
					object.valor = array[1];
					pendientes.addItem(object);
				}
			}
			
			dispatchEvent( new Event("enviarPendienteVisitaClientesModeloVentasGV") );
		}
		[Bindable(event="enviarPendienteVisitaClientesModeloVentasGV")]
		public function get enviarPendientesVisitaCliente():ArrayCollection{
			return pendientes;
		}
		
		public function ModeloVentasGV(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function errorVentasGV(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
	}
}