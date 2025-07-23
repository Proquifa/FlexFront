package mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes
{
	import flash.events.Event;

	public class EventoCostoNoCalidad extends Event
	{
		
		public static const TRAER_COSTOS_NO_CALIDAD:String = "traerCostosNoCalidadEvent";
		public static const DETALLE_COSTOS_NO_CALIDAD:String = "detalleCostosNoCalidadEvent";
		public static const TRAER_COLABORADORES:String = "traerColaboradoresEvent";
		
		public var _filtro:String = "";
		public var _anio:int = 0;
		public var _periodo:String = "";
		public var _tipoPeriodo:int = 0;
		public var _mes:int = 0;
		
		public var nivel:String= "";
		public var valorAdicional:String = "";
		public var _idEmpleado:int = 0;
		public var nombre:String ="";
		public var _porcentajeBono:Number = 0;
		
		public function EventoCostoNoCalidad(type:String,bubbles:Boolean=true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable)
		}
		
		public override function clone():Event{
			return new EventoCostoNoCalidad(type,bubbles,cancelable);
		}
	}
}