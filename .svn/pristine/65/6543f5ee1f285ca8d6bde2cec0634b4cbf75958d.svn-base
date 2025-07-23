package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.componentes.comun.incidente.Inc_Accion;
	import mx.controls.Alert;

	public class ModeloIncidenteAsociado extends EventDispatcher
	{
		public function ModeloIncidenteAsociado(target:IEventDispatcher = null)
		{
			super(target);
		} 
		
		
		private var _objetoAsociadoPonderacion:Ponderacion = new Ponderacion();
		private var regresarA:String = "";
		
		private var _incidenteAsociado:Incidente = new Incidente();
		
		private var _incidenteRechazado:Incidente = new Incidente();
		
		public function resultIncidenteAsociado(_ponderacion:Ponderacion):void{
			this._objetoAsociadoPonderacion = new Ponderacion();
			/*if(_incidente.idIncidente != 0 || !(isNaN(_incidente.idIncidente))){
				this._incidenteAsociado = _incidente;
			}*/
			this._objetoAsociadoPonderacion = _ponderacion;
			this.dispatchEvent(new Event("returnIncidente"));
		}
		
		[Bindable (event="returnIncidente")]
		public function get returnIncidenteAsociado():Ponderacion{
			return this._objetoAsociadoPonderacion;
		}
		
		
		public function resultIncidenteCancelado(_regresarA:String):void{
			this.regresarA = "";
			this.regresarA = _regresarA;
			this.dispatchEvent(new Event("resultRegresarA"));
		}
		
		[Bindable (event="resultRegresarA")]
		public function get returnIncidenteAsociadoCancelado():String{
			return this.regresarA;
		}
		
		public function setRegistroIncidenteAsociado(datos:Incidente):void{
			this._incidenteAsociado = new Incidente();
			this._incidenteAsociado = datos;
			this.dispatchEvent(new Event("resultIncidenteAsociado"))
		}
		
		[Bindable (event="resultIncidenteAsociado")]
		public function get returnRegistrarIncidenteAsociado():Incidente{
			return this._incidenteAsociado;
		}
		
		public function faultRegistroIncidenteAsociado(objeto:Object):void{
			Alert.show("Error al guardar el incidente asociado");
		}
		
		
		
		public function resultIncidenteAsociadoRechazado(_incidente:Incidente):void{
			this._incidenteRechazado = new Incidente();
			this._incidenteRechazado = _incidente;
			this.dispatchEvent(new Event("incidenteRechazado"));
		}
		
		[Bindable (event="incidenteRechazado")]
		public function get returnIncidenteRechazado():Incidente{
			return this._incidenteRechazado;
		}
		
		
		private var _regresa:String;
		public function terminoRegistroIncidenteAsociado(regresarA:String):void{
			if(regresarA == "Ponderacionx"){
				_regresa = "regresa";
				this.dispatchEvent(new Event("regresarPonderacion"));
			}
			else{
				_regresa = "regresa2";
				this.dispatchEvent(new Event("regresarRechazado"));
			}
		}
		[Bindable (event="regresarPonderacion")]
		public function get returnIncidenteTerminado():String{
			return _regresa;
		}
		
		[Bindable (event="regresarRechazado")]
		public function get returnIncidenteTerminado2():String{
			return _regresa;
;		}
		
		
	}
}