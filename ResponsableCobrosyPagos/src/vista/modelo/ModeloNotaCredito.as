package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.Factura;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.mysuite.RequestTransactionResponse;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	public class ModeloNotaCredito extends EventDispatcher
	{
		
		
		
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaFolios:ArrayCollection;
		public function setObtenFolios( $lista:ArrayCollection ):void{
			_listaFolios = new ArrayCollection();
			_listaFolios = $lista;
			dispatchEvent( new Event("evnviaListaFoliosModeloNotaCredito") );
		}
		[Bindable(Event="evnviaListaFoliosModeloNotaCredito")]
		public function get obtenFolios():ArrayCollection{
			return this._listaFolios;
		}
		
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaClientes:ArrayCollection;
		public function setObtenClientes( $lista:ArrayCollection ):void{
			_listaClientes = new ArrayCollection();
			_listaClientes = $lista;
			dispatchEvent( new Event("evnviaClientesModeloNotaCredito") );
		}
		[Bindable(Event="evnviaClientesModeloNotaCredito")]
		public function get ObtenClientes():ArrayCollection{
			return this._listaClientes;
		}
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaConceptps:ArrayCollection;
		public function setObtenConceptos( $lista:ArrayCollection ):void{
			_listaConceptps = new ArrayCollection();
			_listaConceptps = $lista;
			dispatchEvent( new Event("evnviaConceptosModeloNotaCredito") );
		}
		[Bindable(Event="evnviaConceptosModeloNotaCredito")]
		public function get ObtenConceptos():ArrayCollection{
			return this._listaConceptps;
		}
		
		/**
		 ***************************************************** se confirma la generacion de la factura *************************************************************
		 */
		private var _confirmacionFactura:RequestTransactionResponse;
		public function setGeneraFactura( $dato:RequestTransactionResponse ):void{
			if( !$dato.requestTransactionResult.response.result ){
				alertaSingleton.show( $dato.requestTransactionResult.response.data );
			}else{
				_confirmacionFactura = $dato;
				dispatchEvent( new Event("confirmaFacturaModeloNotaCredito") );
			}
		}
		[Bindable(Event="confirmaFacturaModeloNotaCredito")]
		public function get GeneraFactura():RequestTransactionResponse{
			return this._confirmacionFactura;
		}
		
		/**
		 ***************************************************** se regresa el tipo de cambio de la moneda *************************************************************
		 */
		private var _tipoCambio:Number;
		public function setTipoCambio( $dato:Number ):void{
			_tipoCambio = $dato;
			dispatchEvent( new Event("tipoCambioModeloNotaCredito") );
			
		}
		[Bindable(Event="tipoCambioModeloNotaCredito")]
		public function get TipoCambio():Number{
			return this._tipoCambio;
		}
		
		
		/**
		 ***************************************************** se regresa true si existe periodo *************************************************************
		 */
		private var _existePeriodo:Boolean;
		public function setExistePeriodo( $dato:Boolean ):void{
			_existePeriodo = $dato;
			dispatchEvent( new Event("existePeriodoNotaCredito") );
			
		}
		[Bindable(Event="existePeriodoNotaCredito")]
		public function get existePeriodo():Boolean{
			return _existePeriodo;
		}
		
		
		/**
		 ***************************************************** se regresa el monto total de un periodo de nota de crédito *************************************************************
		 */
		private var factura:Factura;
		public function setObtenerMontoTotal( $dato:Factura ):void{
			factura = $dato;
			dispatchEvent( new Event("montoTotalEventoNotaCredito") );
			
		}
		[Bindable(Event="montoTotalEventoNotaCredito")]
		public function get obtenerMontoTotal():Factura{
			return factura;
		}
		
		
		/**
		 ***************************************************** se regresa el monto total de una nota de crédito apartir de una factura *************************************************************
		 */
		private var _montoTotalFactura:Factura;
		public function setObtenerMontoTotalxFactura( $dato:Factura ):void{
			_montoTotalFactura = $dato;
			dispatchEvent( new Event("montoTotalxFacturaEventoNotaCredito") );
			
		}
		[Bindable(Event="montoTotalxFacturaEventoNotaCredito")]
		public function get obtenerMontoTotalxFactura():Factura{
			return _montoTotalFactura;
		}

		/**
		 ***************************************************** confirma si se guardo la nota *************************************************************
		 */
		private var _confirmaNota:Boolean;
		public function setConfirmaNotaCredito( $dato:Boolean ):void{
			_confirmaNota = $dato;
			dispatchEvent( new Event("confirmaNotaCreditoEventoNotaCredito") );
			
		}
		[Bindable(Event="confirmaNotaCreditoEventoNotaCredito")]
		public function get confirmaNotaCredito():Boolean{
			return _confirmaNota;
		}
		
		/**
		 ***************************************************** obtener Clientes *************************************************************
		 */
		private var _cliente:Cliente;
		public function setObtenerCliente( $dato:Cliente ):void{
			_cliente = $dato;
			dispatchEvent( new Event("obtenerClienteModeloNotaCredito") );
		}
		[Bindable(Event="obtenerClienteModeloNotaCredito")]
		public function get enviarCliente():Cliente{
			return this._cliente;
		}
		
		/**
		 ***************************************************** se envia la lista de Claves Unidad *************************************************************
		 */
		private var _listaClavesUnidad:ArrayCollection;
		public function setClavesUnidad( $lista:ArrayCollection ):void{
			_listaClavesUnidad = new ArrayCollection();
			_listaClavesUnidad = $lista;
			dispatchEvent( new Event("enviaClavesUnidadModeloNotaCredito") );
		}
		[Bindable(Event="enviaClavesUnidadModeloNotaCredito")]
		public function get ObtenClavesUnidad():ArrayCollection{
			return this._listaClavesUnidad;
		}
		/**
		 ***************************************************** se envia la lista de Claves Unidad *************************************************************
		 */
		private var _listaClavesProdServ:ArrayCollection;
		public function setClavesProdServ( $lista:ArrayCollection ):void{
			_listaClavesProdServ = new ArrayCollection();
			_listaClavesProdServ = $lista;
			dispatchEvent( new Event("enviaClavesProdServModeloNotaCredito") );
		}
		[Bindable(Event="enviaClavesProdServModeloNotaCredito")]
		public function get ObtenClavesProdServ():ArrayCollection{
			return this._listaClavesProdServ;
		}
		
		private var _confirmacionFacturaTurbo:Number;
		public function setGeneraFacturaTurbo( $dato:Number ):void{
			_confirmacionFacturaTurbo = $dato;
			dispatchEvent( new Event("confirmaFacturaModeloNotaCreditoGeneralTurbo") );
		}
		[Bindable(Event="confirmaFacturaModeloNotaCreditoGeneralTurbo")]
		public function get GeneraFacturaTurbo():Number{
			return this._confirmacionFacturaTurbo;
		}
		
		
		public function error(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloNotaCredito") );*/
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloNotaCredito(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 ***************************************************** obtener CFDI *************************************************************
		 */
		private var arrayCFDI:ArrayCollection;
		public function setRecibeCFDI(cfdi:ArrayCollection):void
		{
			arrayCFDI = cfdi;
			dispatchEvent(new Event("enviaCFDIModeloNotaCredito"));
		}
		
		[Bindable(event="enviaCFDIModeloNotaCredito")]
		public function get enviaCFDI():ArrayCollection
		{
			return arrayCFDI;
		}
		
		/**
		 ***************************************************** obtener METODO DE PAGO *************************************************************
		 */
		private var arrayMetPago:ArrayCollection;
		public function setRecibeMetPago(cfdi:ArrayCollection):void
		{
			arrayMetPago = cfdi;
			dispatchEvent(new Event("enviaMetPagoModeloNotaCredito"));
		}
		
		[Bindable(event="enviaMetPagoModeloNotaCredito")]
		public function get enviaMetPago():ArrayCollection
		{
			return arrayMetPago;
		}
	}
}	