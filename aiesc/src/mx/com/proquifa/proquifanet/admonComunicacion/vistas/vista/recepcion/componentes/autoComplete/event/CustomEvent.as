package mx.com.proquifa.proquifanet.admonComunicacion.vistas.vista.recepcion.componentes.autoComplete.event
{

	
	import flash.events.Event;
	/**
	 * <P>Custom event class.</P>
	 * stores custom data in the <code>data</code> variable.
	 */	
	public class CustomEvent extends Event{
		
		public var data:Object;

		public function CustomEvent(type:String, mydata:Object, bubbles:Boolean = false, cancelable:Boolean = false){
			
			super(type, bubbles,cancelable);
			
			data = mydata;
		}

	}
}