package mx.com.adobe.flex.extras.controls
{
	import flash.events.Event;

	public class MedClsConstantes extends Event
	{
		public static const PROPIEDAD_DESCRIPCION_CATALOGO:String = "proepiedadDescripcionAcatalogoMedClsConstantes";
		
		public function MedClsConstantes(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
		public override function clone():Event
		{
			return new MedClsConstantes( type, bubbles, cancelable );
		}
	}
}