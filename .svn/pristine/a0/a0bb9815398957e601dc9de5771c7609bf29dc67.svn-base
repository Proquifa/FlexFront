package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.GraficaExpoFarma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.expofarma.RegistroExpoFarma;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.SolicitudVisita;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	import vista.evento.EventoEVReqMovil;
	
	public class ModeloEVReqMovil extends EventDispatcher
	{
		
		/**
		 ***************************************************** se obtienen los contactos *************************************************************
		 */
		private var _listaContacto:ArrayCollection;
		public function setObtenContactos( $lista:ArrayCollection ):void{
			_listaContacto = new ArrayCollection();
			_listaContacto = $lista;
			dispatchEvent( new Event("obtenConctactosModeloEVReqMovil") );
		}
		[Bindable(Event="obtenConctactosModeloEVReqMovil")]
		public function get ObtenContactos():ArrayCollection{
			return this._listaContacto;
		}
		
		/**
		 ***************************************************** se ontiene el esac *************************************************************
		 */
		private var _empleado:Empleado;
		public function setObtenEmpleado( $dato:Empleado ):void{
			_empleado = $dato;
			dispatchEvent( new Event("eventGuardaClienteModeloEVReqMovil") );
		}
		[Bindable(Event="eventGuardaClienteModeloEVReqMovil")]
		public function get ObtenEmpleado():Empleado{
			return this._empleado;
		}
		
		/**
		 ***************************************************** se guarda el cliente *************************************************************
		 */
		private var _idCliente:Number;
		public function setGuardaCliente( $dato:Number ):void{
			_idCliente = $dato;
			dispatchEvent( new Event("eventGuardaClienteModeloEVReqMovil") );
		}
		[Bindable(Event="eventGuardaClienteModeloEVReqMovil")]
		public function get GuardaCliente():Number{
			return this._idCliente;
		}
		
		/**
		 ***************************************************** se guarda los contactos *************************************************************
		 */
		private var _confirmaContactoGuardado:int;
		public function setConfirmaContactoNuevo( $dato:Number, $evt:EventoEVReqMovil ):void{
			_confirmaContactoGuardado = $dato;
			if( $evt != null && $evt.ubicacion == 'CRM' ){
				dispatchEvent( new Event("confirmarNuevoConctactoCRMoModeloEVReqMovil") );
			}else {
				dispatchEvent( new Event("confirmarNuevoConctactoModeloEVReqMovil") );
			}
		}
		[Bindable(Event="confirmarNuevoConctactoCRMoModeloEVReqMovil")]
		public function get ConfirmaContactoNuevoCRM():Number{
			return this._confirmaContactoGuardado;
		}
		
		[Bindable(Event="confirmarNuevoConctactoModeloEVReqMovil")]
		public function get ConfirmaContactoNuevo():Number{
			return this._confirmaContactoGuardado;
		}
		
		/**
		 ***************************************************** se obtienen las rutas *************************************************************
		 */
		private var _listaDirecciones:ArrayCollection;
		public function setDireccionesCliente( $datos:ArrayCollection ):void{
			if( $datos == null ){ return; }
			_listaDirecciones = $datos;
			dispatchEvent( new Event("listaDireccionesoModeloEVReqMovil") );
		}
		[Bindable(Event="listaDireccionesoModeloEVReqMovil")]
		public function get DireccionesCliente():ArrayCollection{
			return this._listaDirecciones;
		}
		
		
		/**
		 ***************************************************** se confirma la requisicion *************************************************************
		 */
		private var _nombreRequisicion:String;
		public function setConfirmaRequisicion( $dato:String ):void{
			if( $dato == null ){ return; }
			_nombreRequisicion = $dato;
			dispatchEvent( new Event("confirmaRequisiciconModeloEVReqMovil") );
		}
		[Bindable(Event="confirmaRequisiciconModeloEVReqMovil")]
		public function get ConfirmaRequisicion():String{
			return this._nombreRequisicion;
		}

		
		/**
		 ***************************************************** RegistroExpoFarma *************************************************************
		 */
		private var _registroExpo:RegistroExpoFarma;
		public function setRegistroExpo( $dato:RegistroExpoFarma ):void{
			_registroExpo = $dato;
			dispatchEvent( new Event("registroExpoFarmaModeloEVReqMovil") );
		}
		[Bindable(Event="registroExpoFarmaModeloEVReqMovil")]
		public function get RegistroExpo():RegistroExpoFarma{
			return this._registroExpo;
		}

		/**
		 ***************************************************** RegistroExpoFarma *************************************************************
		 */
		private var _cuestionarioExpoFarma:Boolean;
		public function setGuardaCuestionario( $dato:Boolean ):void{
			_cuestionarioExpoFarma = $dato;
			dispatchEvent( new Event("cuestionarioExpoFarmaModeloEVReqMovil") );
		}
		[Bindable(Event="cuestionarioExpoFarmaModeloEVReqMovil")]
		public function get GuardaCuestionario():Boolean{
			return this._cuestionarioExpoFarma;
		}
		
		/**
		 ***************************************************** graficos Expo Farma *************************************************************
		 */
		public var _expofarma:GraficaExpoFarma;
		private var _lista:ArrayCollection;
		public function setInfoGraficoExpoFarma( $dato:ArrayCollection ):void{
			_lista = $dato;
			dispatchEvent( new Event("obtenerInfoGraficosExpoFarmaModeloEVReqMovil") );
		}
		[Bindable(Event="obtenerInfoGraficosExpoFarmaModeloEVReqMovil")]
		public function get infoGraficoExpoFarma():ArrayCollection{
			return this._lista;
		}
		/**
		 *****************************************************registro Expo Farma *************************************************************
		 */
		public var _ganador:RegistroExpoFarma;
		
		public function setSorteExpoFarma( $dato:RegistroExpoFarma ):void{
			_ganador = new RegistroExpoFarma();
			_ganador = $dato;
			dispatchEvent( new Event("sorteoExpoFarmaEVReqMovil") );
		}
		[Bindable(Event="sorteoExpoFarmaEVReqMovil")]
		public function get SorteExpoFarma():RegistroExpoFarma{
			return this._ganador;
		}
		
		/**
		 ***************************************************** limpia Id Cliente *************************************************************
		 */
		public function limpiaID():void{
			_idCliente = 0;
		}
		
		/**
		***************************************************** limpia Id Contacto *************************************************************
		*/
		public function limpiaIDContacto():void{
			_confirmaContactoGuardado = 0;
		}
	
		public function error(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloFacturistaGeneral") );*/
			Alert.show( objeto.toString() );
		}
		public function errorExpoFarma(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		public function ModeloEVReqMovil(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}