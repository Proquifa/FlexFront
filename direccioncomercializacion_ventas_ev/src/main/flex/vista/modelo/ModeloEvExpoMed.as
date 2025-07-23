package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.GraficaExpoFarma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.RegistroExpoFarma;
	import mx.controls.Alert;
	
	import vista.evento.EventoEvExpoMed;
	
	public class ModeloEvExpoMed extends EventDispatcher
	{
		
		
		
		private var _listaContactos:ArrayCollection;
		public function setObtenerContactosParaExpoMed($listaContactos:ArrayCollection):void
		{
			_listaContactos = $listaContactos;
			dispatchEvent(new Event("seObtienenTodosLosContactoModeloEvExpoMed"));
		}
		
		[Bindable(Event="seObtienenTodosLosContactoModeloEvExpoMed")]
		public function get regresarTodosLosContactos():ArrayCollection
		{
			return _listaContactos;
		}
		
		
		
		private var _registroExpoMed:RegistroExpoFarma;
		public function setRegistroExpo( $dato:RegistroExpoFarma ):void{
			_registroExpoMed = $dato;
			dispatchEvent( new Event("registroExpoFarmaModeloEvExpoMed") );
		}
		[Bindable(Event="registroExpoFarmaModeloEvExpoMed")]
		public function get RegistroExpo():RegistroExpoFarma{
			return this._registroExpoMed;
		}
		
		
		
		/**
		 ***************************************************** Guardar Cuestionario ExpoMed *************************************************************
		 */
		private var _cuestionarioExpoFarma:Boolean;
		public function setGuardaCuestionarioExpoMed( $dato:Boolean ):void{
			_cuestionarioExpoFarma = $dato;
			dispatchEvent( new Event("cuestionarioExpoFarmaModeloEvExpoMed") );
		}
		[Bindable(Event="cuestionarioExpoFarmaModeloEvExpoMed")]
		public function get GuardaCuestionarioExpoMed():Boolean{
			return this._cuestionarioExpoFarma;
		}
		
		
		/**
		 ***************************************************** graficos Expo MED *************************************************************
		 */
		public var _expofarma:GraficaExpoFarma;
		private var _lista:ArrayCollection;
		public function setInfoGraficoExpoMed( $dato:ArrayCollection ):void{
			_lista = $dato;
			dispatchEvent( new Event("obtenerInfoGraficosExpoFarmaModeloEvExpoMed") );
		}
		[Bindable(Event="obtenerInfoGraficosExpoFarmaModeloEvExpoMed")]
		public function get infoGraficoExpoMed():ArrayCollection{
			return this._lista;
		}
		
		
		/**
		 ***************************************************** se guarda los contactos *************************************************************
		 */
		private var _confirmaContactoGuardado:int;
		public function setConfirmaContactoNuevoExpoMed( $dato:Number, $evt:EventoEvExpoMed ):void{
			_confirmaContactoGuardado = $dato;
			if( $evt != null && $evt.ubicacion == 'CRM' ){
				dispatchEvent( new Event("confirmarNuevoConctactoCRModeloEvExpoMed") );
			}else {
				dispatchEvent( new Event("confirmarNuevoConctactoModeloEvExpoMed") );
			}
		}
		[Bindable(Event="confirmarNuevoConctactoCRModeloEvExpoMed")]
		public function get ConfirmaContactoNuevoCRMExpoMed():Number{
			return this._confirmaContactoGuardado;
		}
		
		[Bindable(Event="confirmarNuevoConctactoModeloEvExpoMed")]
		public function get ConfirmaContactoNuevoExpoMed():Number{
			return this._confirmaContactoGuardado;
		}
		
		/*====================================================================ERRRRRRRRROOOOOORRRR METHODS =======================================================*/
		
		public function error(error:Object):void
		{
			Alert.show(error.toString());
		}
		
		public function errorExpoFarma(error:Object):void
		{
			Alert.show(error.toString());
		}
		
		public function ModeloEvExpoMed(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
	}
}