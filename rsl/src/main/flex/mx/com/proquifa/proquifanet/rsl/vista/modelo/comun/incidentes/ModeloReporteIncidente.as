package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	


	public class ModeloReporteIncidente extends EventDispatcher
	{
		public function ModeloReporteIncidente(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		
		public var Incidentes:ArrayCollection = new ArrayCollection();
		public var IncidentesPorUsuario:ArrayCollection = new ArrayCollection();
		
		public function result_Incidentes(_incidentes:ArrayCollection):void{
			if(_incidentes != null){
				for(var m:int = 0; m<_incidentes.length;m++){
					_incidentes[m] = _incidentes[m] as Empleado;
					//_incidentes[m].generar();
					//_incidentes[m].numFila = m + 1;
					
				}
				this.Incidentes = _incidentes;
			}
			else{
					this.Incidentes = new ArrayCollection();
			}
			this.dispatchEvent(new Event("result_reporte"));
		}
		
		[Bindable (event = "result_reporte")]
		public function get return_Incidentes():ArrayCollection{
			return this.Incidentes;
		}
		
		public function fault_Incidentes(objeto:Object):void{
			alertaSingleton.showReintentar("Error al cargar Reporte");
			trace(objeto);
		}
		
		////////////////////////////////////////////////////////////////
		
		public function result_IncidentesPorUsuario(_incidentes:ArrayCollection,usuario:int):void{
			trace(usuario);
			this.IncidentesPorUsuario = new ArrayCollection();
			if(_incidentes != null){
				this.IncidentesPorUsuario = _incidentes;
				this.dispatchEvent(new Event("result_reporteUsuario"));
			}
		}
		
		[Bindable (event = "result_reporteUsuario")]
		public function get return_IncidentesPorUsuario():ArrayCollection{
			return this.IncidentesPorUsuario;
		}
		
		public function fault_IncidentePorUsuario(objeto:Object):void{
			alertaSingleton.showReintentar("Error al cargar los incidentes del Usuario");
			trace(objeto);
		}
		
		
	}
}