package mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.comun
{
	import flash.events.Event;
	
	import mx.core.IVisualElement;

	public class EventoTablero extends Event
	{
		public var cuenta:int = 0;
		public var comparacionCharts:IVisualElement;
		public var maxChart:IVisualElement;
		//public var infoCurrentChart:String;
		
		public static const MAXIMIZAR_TABLA:String = "maximizarTablaEvento";
		public static const VOLVER_A_TABLERO:String = "volverATableroEvento";
		public static const MAXIMIZAR_GRAFICA:String = "maximizarGraficaEvento";
		public static const POP_ESPERA:String = "popEsperaEventoTablero";
		public static const PANEL_COMPARACION:String = "panelComparacionEventoTablero";
		
		
		public function EventoTablero(type:String, bubbles:Boolean=true, cancelable:Boolean=false )
		{
			super(type,bubbles, cancelable)
		}
		public override  function clone():Event{
			return new  EventoTablero(type,bubbles,cancelable);
		} 
	}
}