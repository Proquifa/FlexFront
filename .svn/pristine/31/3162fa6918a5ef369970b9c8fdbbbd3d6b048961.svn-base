package mx.com.proquifa.proquifanet.rsl.vista.eventos.admon
{
	import flash.events.Event;
	
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.admon.objetos.SubProceso;
	
	
	public class EventoSubproceso extends Event
	{
		public static const ELIMINAR_SUBPROCESO:String= "eliminarSubprocesoEvento";
		public static const CREAR_SUBPROCESO:String = "crearSubprocesoEvento";
		public static const DETALLE_SUBPROCESO:String = "detalleSubprocesoEvento";
		public static const ASOCIAR_SUBPROCESO_FUNCION:String = "asociarSubprocesoFuncionEvento";
		public static const ACTUALIZAR_SUBPROCESO:String = "actualizarSubprocesoFuncionEvento";
		public var _subproceso:SubProceso;
		public var _funciones:ArrayCollection;
		
		public function EventoSubproceso(type:String,bubbles:Boolean = true,cancelable:Boolean = true)
		{
			super(type,bubbles,cancelable);
			this._funciones = new ArrayCollection();
			this._subproceso = new SubProceso();
		}
		
		public override function clone():Event{
			return new EventoSubproceso(type,bubbles,cancelable);
		}

	}
}