package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.indicadores
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.indicador.Indicador;

	public class EventoCatIndicadores extends Event
	{
		
		public function EventoCatIndicadores(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event
		{
			return new EventoCatIndicadores( type, bubbles, cancelable );
		}
		
		
		public var indicador:Indicador = new Indicador();;
		
		//Vista
		public static const REFRESCAR_DATOS:String = "recargarDatosEventoCatIndicadores";
		
		//Servicio
		public static const OBTENER_EN_TIEMPO:String = "obtenerEnTienpoEventoCatIndicadores";
		public static const OBTENER_INDICADORES:String = "obtenerIndicadoresEventoCatIndicadores";
		public static const GUARDAR_INDICADOR:String = "guardarIndicadorEventoCatIndicadores";
		
	}
}