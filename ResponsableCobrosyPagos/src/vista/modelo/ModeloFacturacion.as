package vista.modelo
{
	import com.asfusion.mate.actions.builders.RemoteObjectInvoker;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.mysuite.RequestTransactionResponse;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	import skins.catalogos.catalogoAlertas;
	
	import vista.eventos.EventoFacturaciones;
	
	public class ModeloFacturacion extends EventDispatcher
	{
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaFacturas:ArrayCollection;
		public function setObtenFacturas( $lista:ArrayCollection ):void{
			_listaFacturas = new ArrayCollection();
			_listaFacturas = $lista;
			dispatchEvent( new Event("evnviaListaFacturasModeloFacturacion") );
		}
		[Bindable(Event="evnviaListaFacturasModeloFacturacion")]
		public function get ObtenFacturas():ArrayCollection{
			return this._listaFacturas;
		}
		
		/**
		 ***************************************************** se envia la lista de complementos de pagos *************************************************************
		 */
		private var _listaComplementosPago:ArrayCollection;
		public function setObtenComplementosPagos( $lista:ArrayCollection ):void{
			_listaComplementosPago = new ArrayCollection();
			_listaComplementosPago = $lista;
			dispatchEvent( new Event("evnviaListaComplementosPagoModeloFacturacion") );
			setControlDeBloqueoPantalla("terminaEspera",null,null,"evnviaListaComplementosPagoModeloFacturacion");
		}
		[Bindable(Event="evnviaListaComplementosPagoModeloFacturacion")]
		public function get complementosPago():ArrayCollection{
			return this._listaComplementosPago;
		}
		
		/**
		 ***************************************************** se confirma la cancelacion de la factura *************************************************************
		 */
		private var _confirmacionFactura:RequestTransactionResponse;
		public function setCancelaFactura( $dato:RequestTransactionResponse ):void{
			_confirmacionFactura = $dato;
			dispatchEvent( new Event("cancelaFacturaModeloFacturacion") );
		}
		[Bindable(Event="cancelaFacturaModeloFacturacion")]
		public function get CancelaFactura():RequestTransactionResponse{
			return this._confirmacionFactura;
		}
		
		/**
		 ***************************************************** obtener Clientes *************************************************************
		 */
		private var _cliente:Cliente;
		public function setObtenerCliente( $dato:Cliente ):void{
			_cliente = $dato;
			dispatchEvent( new Event("obtenerClienteModeloFacturacion") );
		}
		[Bindable(Event="obtenerClienteModeloFacturacion")]
		public function get enviarCliente():Cliente{
			return this._cliente;
		}
		
		/**
		 ***************************************************** se genera error en la cancelacion de la factura *************************************************************
		 */
		private var _errorCancelar:Boolean;
		public function setErrorCancelarFactura(objeto:Object):void{
			_errorCancelar = true;
			dispatchEvent( new Event("errorCancelaFacturaModeloFacturacion") );
		}
		[Bindable(Event="errorCancelaFacturaModeloFacturacion")]
		public function get ErrorCancelarFactura():Boolean{
			return this._errorCancelar;
		}
		
		public function error(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		
		
		
		
		/**
		 *  Evento Espera
		 */
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
					numServicioCompletos=0;
					numServices = 0;
					actualizarEspera = new Object();
					serviciosCompletosDifKey = new Object();
					numServices = $tiposEvento.length;
					currentEnEspera = true;
					actualizarEspera.isBusy = true;
					actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
					alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				if(numServicioCompletos == numServices){
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
				}
			}else if(mensaje =="error"){
				alertaSingleton.remove(true);
				currentEnEspera = false;
				trace(RemoteObjectInvoker.eventTypeLocal);
				alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaFacturacion") );
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoFacturaciones[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		
		
		
		public function ModeloFacturacion(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}