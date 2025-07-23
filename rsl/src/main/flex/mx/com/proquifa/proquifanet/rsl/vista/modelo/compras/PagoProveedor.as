package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.compras.PagoProveedor")]
	[Bindable]
	public dynamic class PagoProveedor
	{
		private var  _id:int;
		private var _numeroDeFila:int;
		private var _mes:int;
		private var _totalPiezas:int;
		private var _montoOC:Number;
		
		private var  _monto:Number;
		private var  _iva:Number;
		private var  _montoFactura:Number;
		private var  _montoDolares:Number;
		private var  _cantidad:Number;
		
		private var  _fechaEstimadaPago:Date;
		private var  _fecha:Date;
		
		private var _montoFormato:String;
		private var _montoFacturaFormato:String;
		private var _montoDolaresFormato:String;
		private var _montoOCFormato:String;
		private var _fechaPagoFormato:String;
		private var _fechaEstimadaFormato:String;
		private var _empresa:String;
		private var _nombreProveedor:String;
		private var _ordenCompra:String;
		private var _moneda:String;
		private var _noFactura:String;
		private var _folioFP:String;
		private var _folioPG:String;
		private var _estado:String;
		
		private var _CPago:String;
		private var _estadoPagado:String;
		private var _medioPago:String;
		private var _fechaFacturacion:Date;
		private var _fechaFacturacionFormato:String;
		private var _idProveedor:int;
		
		private var _totalPagos:String;
		private var _totalFacturas:int;
		private var _flete:Number;
		
		private var _tiempoPago:String; 
		private var _pagador:String; 
		private var _numFila:int;
		private var _comprador:String;
		
		private var _empresaVendio:String;
		
		private var _subTotal:Number;
		private var _total:Number;
		private var _nacional:Boolean;
		private var _subTotalDls:Number;
		private var _totaldls:Number;
		private var _ivadls:Number;
		private var _fletedls:Number;
		private var _tipoCambio:Number;
		
		private var _comentarios:String;
		private var _idEmpresa:String;
		private var _cPago:String;
		private var _folioPC:String;
		private var _montoNotaCredito: Number;
		private var _montoSAFavor: Number;
		private var _isProforma: Boolean;
		
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"fechaEstimadaPago",formato:"fecha",tipo:"Date",newpropiedad:"fechaEstimadaPagoFormato"},
			{propiedad:"fecha",formato:"fecha",tipo:"Date",newpropiedad:"fechaFormato"}
		]);
		
		public function PagoProveedor()
		{
			
		}
		
		public function get montoSAFavor():Number
		{
			return _montoSAFavor;
		}
		
		public function set montoSAFavor(value:Number):void
		{
			_montoSAFavor = value;
		}
		public function get montoNotaCredito():Number
		{
			return _montoNotaCredito;
		}
		
		public function set montoNotaCredito(value:Number):void
		{
			_montoNotaCredito = value;
		}
		public function get folioPC():String
		{
			return _folioPC;
		}

		public function set folioPC(value:String):void
		{
			_folioPC = value;
		}

		public function get cPago():String
		{
			return _cPago;
		}

		public function set cPago(value:String):void
		{
			_cPago = value;
		}

		public function get flete():Number
		{
			return _flete;
		}
		
		public function set flete(value:Number):void
		{
			_flete = value;
		}
		
		public function get montoFacturaFormato():String
		{
			return _montoFacturaFormato;
		}
		
		public function set montoFacturaFormato(value:String):void
		{
			_montoFacturaFormato = value;
		}
		
		public function get montoFormato():String
		{
			return _montoFormato;
		}
		
		public function set montoFormato(value:String):void
		{
			_montoFormato = value;
		}
		
		public function get numeroDeFila():int
		{
			return _numeroDeFila;
		}
		
		public function set numeroDeFila(value:int):void
		{
			_numeroDeFila = value;
		}
		
		public function get id():int
		{
			return _id;
		}
		
		public function set id(value:int):void
		{
			_id = value;
		}
		
		public function get empresa():String
		{
			return _empresa;
		}
		
		public function set empresa(value:String):void
		{
			_empresa = value;
		}
		
		public function get nombreProveedor():String
		{
			return _nombreProveedor == null ? 'Pendiente' : _nombreProveedor;
		}
		
		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}
		
		public function get ordenCompra():String
		{
			return _ordenCompra == null ? 'Pendiente' : _ordenCompra;
		}
		
		public function set ordenCompra(value:String):void
		{
			_ordenCompra = value;
		}
		
		public function get monto():Number
		{
			return _monto;
		}
		
		public function set monto(value:Number):void
		{
			_monto = value;
		}
		
		public function get moneda():String
		{
			return _moneda;
		}
		
		public function set moneda(value:String):void
		{
			_moneda = value;
		}
		
		public function get noFactura():String
		{
			if(_noFactura == null) _noFactura = "Pendiente";
			return _noFactura;
		}
		
		public function set noFactura(value:String):void
		{
			_noFactura = value;
		}
		
		public function get folioFP():String
		{
			return _folioFP;
		}
		
		public function set folioFP(value:String):void
		{
			_folioFP = value;
		}
		
		public function get folioPG():String
		{
			return _folioPG;
		}
		
		public function set folioPG(value:String):void
		{
			_folioPG = value;
		}
		
		public function get fechaEstimadaPago():Date
		{
			return _fechaEstimadaPago;
		}
		
		public function set fechaEstimadaPago(value:Date):void
		{
			_fechaEstimadaPago = value;
			_fechaEstimadaFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}
		
		public function get fecha():Date
		{
			return _fecha;
		}
		
		public function set fecha(value:Date):void
		{
			_fecha = value;
			_fechaPagoFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}
		
		public function get iva():Number
		{
			return _iva;
		}
		
		public function set iva(value:Number):void
		{
			_iva = value;
		}
		
		public function get montoFactura():Number
		{
			return _montoFactura;
		}
		
		public function set montoFactura(value:Number):void
		{
			_montoFactura = value;
			_montoFacturaFormato = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get mes():int
		{
			return _mes;
		}
		
		public function set mes(value:int):void
		{
			_mes = value;
		}
		
		public function get montoOC():Number
		{
			return _montoOC;
		}
		
		public function set montoOC(value:Number):void
		{
			_montoOC = value;
			_montoOCFormato = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get montoDolares():Number
		{
			return _montoDolares;
		}
		
		public function set montoDolares(value:Number):void
		{
			_montoDolares = value;
			_montoDolaresFormato = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}
		
		public function get montoDolaresFormato():String
		{
			return _montoDolaresFormato;
		}
		
		public function set montoDolaresFormato(value:String):void
		{
			_montoDolaresFormato = value;
		}
		
		public function get montoOCFormato():String
		{
			return _montoOCFormato;
		}
		
		public function set montoOCFormato(value:String):void
		{
			_montoOCFormato = value;
		}
		
		public function get fechaPagoFormato():String
		{
			if (_fechaPagoFormato == null){
				_fechaPagoFormato = "Pendiente";
			}
			return _fechaPagoFormato;
		}
		
		public function set fechaPagoFormato(value:String):void
		{
			_fechaPagoFormato = value;
		}
		
		public function get fechaEstimadaFormato():String
		{
			if (_fechaEstimadaFormato == null){
				_fechaEstimadaFormato = "Pendiente";
			}
			return _fechaEstimadaFormato;
		}
		
		public function set fechaEstimadaFormato(value:String):void
		{
			_fechaEstimadaFormato = value;
		}
		
		public function get cantidad():Number
		{
			return _cantidad;
		}
		
		public function set cantidad(value:Number):void
		{
			_cantidad = value;
		}
		
		public function get totalPiezas():int
		{
			return _totalPiezas;
		}
		
		public function set totalPiezas(value:int):void
		{
			_totalPiezas = value;
		}
		
		public function get estadoPagado():String
		{
			return _estadoPagado;
		}
		
		public function set estadoPagado(value:String):void
		{
			_estadoPagado = value;
		}
		
		public function get fechaFacturacion():Date
		{
			return _fechaFacturacion;
		}
		
		public function set fechaFacturacion(value:Date):void
		{
			_fechaFacturacion = value;
			_fechaFacturacionFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}
		
		public function get fechaFacturacionFormato():String
		{
			return _fechaFacturacionFormato == null ? 'Pendiente' : _fechaFacturacionFormato;
		}
		
		public function set fechaFacturacionFormato(value:String):void
		{
			_fechaFacturacionFormato = value;
		}
		
		public function get idProveedor():int
		{
			return _idProveedor;
		}
		
		public function set idProveedor(value:int):void
		{
			_idProveedor = value;
		}
		
		public function get totalPagos():String
		{
			return _totalPagos;
		}
		
		public function set totalPagos(value:String):void
		{
			_totalPagos = value;
		}
		
		public function get totalFacturas():int
		{
			return _totalFacturas;
		}
		
		public function set totalFacturas(value:int):void
		{
			_totalFacturas = value;
		}

		public function get medioPago():String
		{
			return _medioPago == null || _medioPago == '' ? 'Pendiente' : _medioPago;
		}

		public function set medioPago(value:String):void
		{
			_medioPago = value;
		}

		public function get CPago():String
		{
			return _CPago;
		}

		public function set CPago(value:String):void
		{
			_CPago = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get tiempoPago():String
		{
			return _tiempoPago;
		}

		public function set tiempoPago(value:String):void
		{
			_tiempoPago = value;
		}

		public function get pagador():String
		{
			return _pagador;
		}

		public function set pagador(value:String):void
		{
			_pagador = value;
		}

		public function get comprador():String
		{
			return _comprador;
		}

		public function set comprador(value:String):void
		{
			_comprador = value;
		}

		public function get empresaVendio():String
		{
			return _empresaVendio;
		}

		public function set empresaVendio(value:String):void
		{
			_empresaVendio = value;
		}

		public function get subTotal():Number
		{
			return _subTotal;
		}

		public function set subTotal(value:Number):void
		{
			_subTotal = value;
		}

		public function get total():Number
		{
			return _total;
		}

		public function set total(value:Number):void
		{
			_total = value;
		}

		public function get nacional():Boolean
		{
			return _nacional;
		}

		public function set nacional(value:Boolean):void
		{
			_nacional = value;
		}

		public function get subTotalDls():Number
		{
			return _subTotalDls;
		}

		public function set subTotalDls(value:Number):void
		{
			_subTotalDls = value;
		}

		public function get totaldls():Number
		{
			return _totaldls;
		}

		public function set totaldls(value:Number):void
		{
			_totaldls = value;
		}

		public function get ivadls():Number
		{
			return _ivadls;
		}

		public function set ivadls(value:Number):void
		{
			_ivadls = value;
		}

		public function get fletedls():Number
		{
			return _fletedls;
		}

		public function set fletedls(value:Number):void
		{
			_fletedls = value;
		}

		public function get tipoCambio():Number
		{
			return _tipoCambio;
		}

		public function set tipoCambio(value:Number):void
		{
			_tipoCambio = value;
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get idEmpresa():String
		{
			return _idEmpresa;
		}

		public function set idEmpresa(value:String):void
		{
			_idEmpresa = value;
		}
		public function get isProforma():Boolean
		{
			return _isProforma;
		}
		public function set isProforma (value:Boolean):void
		{
			_isProforma= value;	
		}
		
	}
}