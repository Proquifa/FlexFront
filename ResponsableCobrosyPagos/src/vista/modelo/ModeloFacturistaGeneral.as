package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.mysuite.RequestTransactionResponse;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	public class ModeloFacturistaGeneral extends EventDispatcher
	{
		
		
		
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaFolios:ArrayCollection;
		public function setObtenFolios( $lista:ArrayCollection ):void{
			_listaFolios = new ArrayCollection();
			_listaFolios = $lista;
			dispatchEvent( new Event("evnviaListaFoliosModeloFacturistaGeneral") );
		}
		[Bindable(Event="evnviaListaFoliosModeloFacturistaGeneral")]
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
			dispatchEvent( new Event("evnviaClientesModeloFacturistaGeneral") );
		}
		[Bindable(Event="evnviaClientesModeloFacturistaGeneral")]
		public function get ObtenClientes():ArrayCollection{
			return this._listaClientes;
		}
		/**
		 ***************************************************** se envia la lista de Claves Unidad *************************************************************
		 */
		private var _listaClavesUnidad:ArrayCollection;
		public function setClavesUnidad( $lista:ArrayCollection ):void{
			_listaClavesUnidad = new ArrayCollection();
			_listaClavesUnidad = $lista;
			dispatchEvent( new Event("enviaClavesUnidadModeloFacturistaGeneral") );
		}
		[Bindable(Event="enviaClavesUnidadModeloFacturistaGeneral")]
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
			dispatchEvent( new Event("enviaClavesProdServModeloFacturistaGeneral") );
		}
		[Bindable(Event="enviaClavesProdServModeloFacturistaGeneral")]
		public function get ObtenClavesProdServ():ArrayCollection{
			return this._listaClavesProdServ;
		}
		/**
		 ***************************************************** se envia la lista de folios *************************************************************
		 */
		private var _listaConceptps:ArrayCollection;
		public function setObtenConceptos( $lista:ArrayCollection ):void{
			_listaConceptps = new ArrayCollection();
			_listaConceptps = $lista;
			dispatchEvent( new Event("evnviaConceptosModeloFacturistaGeneral") );
		}
		[Bindable(Event="evnviaConceptosModeloFacturistaGeneral")]
		public function get ObtenConceptos():ArrayCollection{
			return this._listaConceptps;
		}
		
		private var arrayCFDI:ArrayCollection;
		public function setRecibeCFDI(cfdi:ArrayCollection):void
		{
			arrayCFDI = cfdi;
			dispatchEvent(new Event("enviaCFDIModeloFacturistaGeneral"));
		}
		
		[Bindable(event="enviaCFDIModeloFacturistaGeneral")]
		public function get enviaCFDI():ArrayCollection
		{
			return arrayCFDI;
		}
		
		private var arrayMetPago:ArrayCollection;
		public function setRecibeMetPago(cfdi:ArrayCollection):void
		{
			arrayMetPago = cfdi;
			dispatchEvent(new Event("enviaMetPagoModeloFacturistaGeneral"));
		}
		
		[Bindable(event="enviaMetPagoModeloFacturistaGeneral")]
		public function get enviaMetPago():ArrayCollection
		{
			return arrayMetPago;
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
				dispatchEvent( new Event("confirmaFacturaModeloFacturistaGeneral") );
			}
		}
		[Bindable(Event="confirmaFacturaModeloFacturistaGeneral")]
		public function get GeneraFactura():RequestTransactionResponse{
			return this._confirmacionFactura;
		}

		
		private var _confirmacionFacturaTurbo:Number;
		public function setGeneraFacturaTurbo( $dato:Number ):void{
			_confirmacionFacturaTurbo = $dato;
			dispatchEvent( new Event("confirmaFacturaModeloFacturistaGeneralTurbo") );
		}
		[Bindable(Event="confirmaFacturaModeloFacturistaGeneralTurbo")]
		public function get GeneraFacturaTurbo():Number{
			return this._confirmacionFacturaTurbo;
		}
		
		/**
		 ***************************************************** se regresa el tipo de cambio de la moneda *************************************************************
		 */
		private var _tipoCambio:Number;
		public function setTipoCambio( $dato:Number ):void{
			_tipoCambio = $dato;
			dispatchEvent( new Event("tipoCambioModeloFacturistaGeneral") );
			
		}
		[Bindable(Event="tipoCambioModeloFacturistaGeneral")]
		public function get TipoCambio():Number{
			return this._tipoCambio;
		}
		
		
		public function error(objeto:Object):void{
			/*dispatchEvent( new Event("errorBusquedaRapidaProdAlmacenModeloFacturistaGeneral") );*/
			Alert.show( objeto.toString() );
		}
		
		public function ModeloFacturistaGeneral(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}	