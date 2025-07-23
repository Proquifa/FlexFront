package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.clientes.carteras
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cartera;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CarteraCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.StringFunciones;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	
	
	public class ModeloCatClientes_Carteras extends EventDispatcher
	{
		private var _user:String = DatosGlobales.getInstance()._usuario.usuario;
		
		public function ModeloCatClientes_Carteras(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		//==========================================================================================================================================================================================================================================================
		private var carteraActual:Cartera;
		private var _carterayclientes:ArrayCollection;
		public function setRecibeCarteraEspecifica($carterasE:ArrayCollection):void
		{
			var carA:CarteraCliente;
			carteraActual = new Cartera();
			if($carterasE == null)
				return;
			
			var _cart:Cartera = new Cartera();
			carA = $carterasE[0] as CarteraCliente; 
			carA.creador = _user;
			_cart.idcartera = carA.idCartera;
			_cart.nombre = carA.cart_nombre;
			_cart.folio = carA.folio;
			_cart.nivel = carA.nivelIngreso;
			_cart.industria = carA.idIndustria;
			_cart.esac = carA.cart_idEsac;
			_cart.ev = carA.cart_idEv;
			_cart.evt = carA.cart_idEVT;
			_cart.cobrador = carA.cart_idCobrador;
			_cart.usuario = carA.idCreador; 
			_cart.publicada = carA.cart_publicada;
			
			_cart.facturacionAct = carA.cart_facturacionAct;
			_cart.facturacionAnt = carA.cart_facturacionAnt;
			_cart.objetivoFundamental = carA.cart_montoFundamental;
			_cart.objetivoDeseado = carA.cart_montoDeseado;
			_cart.promedioFacturacion = carA.cart_promedioFacturacion;
			_cart.proyeccionVenta = carA.cart_proyeccionVenta;
			_cart.debemos = carA.cart_debemos;
			_cart.deben = carA.cart_deben;
			_cart.area = carA.area;
			_cart.justificacion = carA.justificacion;
			
			_cart.carteraDesistema = carA.cart_sistema;
			_cart.clientes = $carterasE;
			carteraActual = _cart;
			
		/*	_carterasSeleccionadas.addItem(_cart);
			_carterayclientes = $carterasE;*/
			
			dispatchEvent(new Event("enviarCarteraEinformacion"));
		}
		[Bindable(event="enviarCarteraEinformacion")]
		public function get enviarCarterayClientes():Cartera
		{
			return carteraActual;
		}
		
		
		//==========================================================================================================================================================================================================================================================
		
		
		//==========================================================================================================================================================================================================================================================
		
		private var _carterasUniverso:ArrayCollection;
		public function setRecibeCarteras($carteras:ArrayCollection):void
		{
			if($carteras == null)
				return;
			
			_carterasUniverso = $carteras;
			
			dispatchEvent(new Event("enviarListaCarteasUniversoModeloCatClientes_Carteras"));
		}
		[Bindable(event="enviarListaCarteasUniversoModeloCatClientes_Carteras")]
		public function get enviarListaCarteras():ArrayCollection
		{
			return _carterasUniverso;
		}
		
		
		//==========================================================================================================================================================================================================================================================
		
		
		private var car2:CarteraCliente;
		private var _carterasSeleccionadas:ArrayCollection;
		public function setRecibeCarterasSeleccionadas($carteras:ArrayCollection):void
		{
			if($carteras == null)
				return;
			
			_carterasSeleccionadas = crearCarteras($carteras);
			
			dispatchEvent(new Event("enviarCarterasSeleccionadasModeloCatClientes_Carteras"));
		}
		
	
		[Bindable(event="enviarCarterasSeleccionadasModeloCatClientes_Carteras")]
		public function get enviarCarterasSeleccionadas():ArrayCollection
		{
			return _carterasSeleccionadas;
		}
		
		//==========================================================================================================================================================================================================================================================
		
		
		private var _carterasSeleccionadasPopUp:ArrayCollection;
		public function setRecibeCarterasPublicadas($carteras:ArrayCollection):void
		{
			if($carteras == null)
				return;
			
			_carterasSeleccionadasPopUp = crearCarteras($carteras);
			
			dispatchEvent(new Event("enviarCarterasSeleccionadasModeloCatClientes_Carteraspop"));
		}
		
		
		[Bindable(event="enviarCarterasSeleccionadasModeloCatClientes_Carteraspop")]
		public function get enviarCarterasSeleccionadasPop():ArrayCollection
		{
			return _carterasSeleccionadasPopUp;
		}
		
		//===============================================================Carteras CatCLientes==========================================================================================================================================================================================
		
		
		private var _carterasSeleccionadasPopUpClien:ArrayCollection;
		public function setRecibeCarterasPublicadasCatCli($carteras:ArrayCollection):void
		{
			if($carteras == null)
				return;
			
			_carterasSeleccionadasPopUpClien = crearCarteras($carteras);
			
			dispatchEvent(new Event("enviarCarterasSeleccionadasModeloCatClientes_CarteraspopCli"));
		}
		
		
		[Bindable(event="enviarCarterasSeleccionadasModeloCatClientes_CarteraspopCli")]
		public function get enviarCarterasSeleccionadasPopCli():ArrayCollection
		{
			return _carterasSeleccionadasPopUpClien;
		}
		

		
		
		//==========================================================================================================================================================================================================================================================
		
		private function crearCarteras($carteras:ArrayCollection):ArrayCollection
		{
		
			
			var carterasTem:ArrayCollection;

			var tmp:ArrayCollection = ObjectUtil.copy($carteras) as ArrayCollection;
			var car:Array = new Array();
			
			for (var u:int=0; u<tmp.length; u++)
			{
				car.push((tmp[u] as CarteraCliente).idCartera);
			}
			
			StringFunciones.removerDuplicados(car);
			carterasTem = new ArrayCollection();
			
			for(var j:int=j; j< car.length;j++)
			{
				var _cart:Cartera = new Cartera();
				var clientes:ArrayCollection = new ArrayCollection();
				
				for(var n:int=0; n < _carterasUniverso.length; n++)
				{
					car2 = _carterasUniverso[n] as CarteraCliente;
					
					if(car[j] == car2.idCartera)
					{
						if(car2.idCartera == 439)
						{
							trace("encontrado");
						}
						/*car2.creador = _user;*/
						car2.creador = car2.creador;
						_cart.cart_nombreElaboro = car2.creador;
						_cart.idcartera = car2.idCartera;
						_cart.nombre = car2.cart_nombre;
						_cart.folio = car2.folio;
						_cart.nivel = car2.nivelIngreso;
						_cart.industria = car2.idIndustria;
						_cart.esac = car2.cart_idEsac;
						_cart.ev = car2.cart_idEv;
						_cart.evt = car2.cart_idEVT;
						_cart.cobrador = car2.cart_idCobrador;
						_cart.usuario = car2.idCreador; 
						_cart.publicada = car2.cart_publicada;
						
						_cart.nombreCobrador = car2.cart_nombreCobrador;
						_cart.nombreEsac = car2.cart_nombreEsac;
						_cart.nombreEV = car2.cart_nombreEv;
						_cart.nombreEVT = car2.cart_nombreEVT;
						
						_cart.facturacionAct = car2.cart_facturacionAct;
						_cart.facturacionAnt = car2.cart_facturacionAnt;
						_cart.objetivoFundamental = car2.cart_montoFundamental;
						_cart.objetivoDeseado = car2.cart_montoDeseado;
						_cart.promedioFacturacion = car2.cart_promedioFacturacion;
						_cart.proyeccionVenta = car2.cart_proyeccionVenta;
						_cart.debemos = car2.cart_debemos;
						_cart.deben = car2.cart_deben;
						
						clientes.addItem(car2);
					}
				}
				_cart.totalClientes = clientes.length;
				_cart.clientes = clientes;
				carterasTem.addItem(_cart);
			}
			
			return carterasTem;
		}
		
		
		
		
		
		
		//==========================================================================================================================================================================================================================================================
		
		private var _clientesDisponibles:ArrayCollection;
		public function setRecibeClientesDisponibles($clientes:ArrayCollection):void
		{
			if($clientes == null)
				return;
			
			_clientesDisponibles = $clientes;
			
			dispatchEvent(new Event("enviarListaClientesDisponiblesModeloCatClientes_Carteras"));
		}
		[Bindable(event="enviarListaClientesDisponiblesModeloCatClientes_Carteras")]
		public function get enviarClientesDisponibles():ArrayCollection
		{
			return _clientesDisponibles;
		}
		
		
		//==========================================================================================================================================================================================================================================================
		
		
		private var _idCartera:Number;
		public function setGuardarCartera($cartera:Number):void
		{
			if(isNaN($cartera))
				return;
			
			_idCartera = $cartera;
			
			dispatchEvent(new Event("guardarCarterasModeloCatClientes_Carteras"));
		}
		[Bindable(event="guardarCarterasModeloCatClientes_Carteras")]
		public function get getIdCarteraGuardado():Number
		{
			return _idCartera;
		}
		
		
		
		//==========================================================================================================================================================================================================================================================
		
		
		private var _eliminado:Boolean;
		public function setEliminarCartera($eliminado:Boolean):void
		{
			_eliminado = $eliminado;
			
			dispatchEvent(new Event("eliminadaCarteraModeloCatClientes_Carteras"));
		}
		[Bindable(event="eliminadaCarteraModeloCatClientes_Carteras")]
		public function get getCarteraEliminada():Boolean
		{
			return _eliminado;
		}
		
		//==========================================================================================================================================================================================================================================================
		
		
		private var cambioCartera:Boolean;
		public function setCambioCartera($cambio:Boolean):void
		{
			cambioCartera = $cambio;
			
			dispatchEvent(new Event("enviarRespuestaCambioDeCartera"));
		}
		[Bindable(event="enviarRespuestaCambioDeCartera")]
		public function get getCambioDeCarteraCliente():Boolean
		{
			return cambioCartera;
		}
		
		//==========================================================================================================================================================================================================================================================
		
		
		private var _modificado:Boolean;
		public function setModificarColaboradores($modificado:Boolean):void
		{
			_modificado = $modificado;
			
			dispatchEvent(new Event("modificaColaboradoresCarteraModeloCatClientes_Carteras"));
		}
		[Bindable(event="modificaColaboradoresCarteraModeloCatClientes_Carteras")]
		public function get getModificaColaboradores():Boolean
		{
			return _modificado;
		}
		
		
		//==========================================================================================================================================================================================================================================================
		
		private var _listaTodasCarteras:ArrayCollection;
		public function setRecibeTodasLasCarteras($carteras:ArrayCollection):void
		{
			if($carteras == null)
				return;
			
			_listaTodasCarteras = $carteras;
			
			dispatchEvent(new Event("enviarListaDeTodasLasCarterasAvista"));
		}
		[Bindable(event="enviarListaDeTodasLasCarterasAvista")]
		public function get enviarListaTodasLasCarteras():ArrayCollection
		{
			return _listaTodasCarteras;
		}
		
		
		
		
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
	}
}