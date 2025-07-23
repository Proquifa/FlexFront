package mx.com.proquifa.proquifanet.rsl.vista.eventos.comun
{
	import flash.events.Event;
	
	import mx.charts.series.items.PieSeriesItem;
	
	public class EventoGraficaPiePqNet extends Event
	{
		
		public static const CAMBIO_INFORMACION_GRAFICA:String = "cambioInformacionGraficaEvento";
		public static const MUESTRA_INFORMACION_GENERAL_GRAFICA:String = "muestraInformacionGeneralGrafica";
		
		public var item:PieSeriesItem = null;
		public var data:Object = null;
		
		
		public function EventoGraficaPiePqNet(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public override function clone():Event{
			return new EventoGraficaPiePqNet(type,bubbles,cancelable);
		}
	}
}