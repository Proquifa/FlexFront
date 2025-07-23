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