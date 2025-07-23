package mx.com.proquifa.proquifanet.compradorPhs.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.alertPqNet.EventoAlertaPqNet;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	
	public class ModeloPopUpp extends EventDispatcher
	{
		public function ModeloPopUpp(target:IEventDispatcher=null)
		{
			super(target);
		}
		private var _opcionSeleccionadaPopUpTipoRquisicion:String;
		private var datos:ArrayCollection;
		/**
		 ******************************************** Funcion Que determina a donde se dirigr la opcion seleccionada del PopUpTipoRequisicion.mxml***************************************************************
		 */
		
		public function determinaDestino(origen:String, tipoRequisicion:String):void{
			if( tipoRequisicion != "" ){
				setDirigeAEspacioPlanificacion( tipoRequisicion );
			}
			
		}
		/**
		 ******************************************** Funcion Que envia la opcion seleccionada del PopUpTipoRequisicion.mxml a Espacio de Planificacion ***************************************************************
		 */
		private function setDirigeAEspacioPlanificacion( tipoRequisicion:String):void{
			this._opcionSeleccionadaPopUpTipoRquisicion = tipoRequisicion;
			dispatchEvent(new Event ("espacioPlanificacion"));
		}
			
		[Bindable(event="espacioPlanificacion")]
		public function get dirigeAEspacioPlanificacion():ArrayCollection{
			this.datos = new ArrayCollection();
			this.datos.addItem( _opcionSeleccionadaPopUpTipoRquisicion );
			return datos;
		}
	
		/**
		 ******************************************** Funcion Que regresa la opcion seleccionad del Aler (Si, NO, talvez, quien sabe, etc al mapa popUp)  ***************************************************************
		 */
		private var  _decision:ResultAlert;
		public function setRegresaDecisionAlert( dato:ResultAlert):void{
			this._decision = dato;
			dispatchEvent(new Event ("eventoRegresaDecision"));
		}
		
		[Bindable(event="eventoRegresaDecision")]
		public function get RegresaDecisionAlert():ResultAlert{
			return _decision;
			
		}
		
		
	}
}