package mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.cobrosypagos.Cobros")]
	[Bindable]
	public class Cobros
	{
		
		private var _fpor:String;
		private var _nombreCliente:String;
		private var _cpedido:String;
		private var _medioFactura:String;
		private var _cpago:String;
		private var _contrarecibo:String;
		private var _medioPago:String;
		private var _estado:String;
		private var _monedaEsperadaCobro:String;
		private var _monedaRealCobro:String;
		private var _monedaFactura:String;
		private var _folioPC:String;
		private var _formatoFechaFacturacion:String;
		private var _formatoFechaEsperadaPago:String;
		private var _formatoFechaRevision:String;
		private var _formatoFechaPago:String;
		private var _formatoFechaUE:String;
        private var _formatoMontoEsperadoCobro:String;
		private var _formatoMontoRealCobro:String;
		private var _formatoMontoDolares:String;
		private var _diasRestantesCobro:String;
		private var _color:String;
		private var _nivelIngreso:String;
		private var _moroso:String;
		private var _drc:String;
		private var _esac:String;
		private var _ev:String;
		private var _evt:String;
		private var  _diasFiltro:String;
		private var _clasificacion:String
		
		private var _numFila:int;
		private var _idCliente:int;
		private var _factura:int;
		private var _piezas:int;
		private var _partidas:int;
		private var _idFactura:int;
		private var _montoEsperadoCobro:Number;
		private var _montoRealCobro:Number;
		private var _montoDolares:Number;
		private var _totalFacturas:Number;
		
		private var _fechaFacturacion:Date;
		private var _fechaRevision:Date;
		private var _fechaEsperadaPago:Date;
		private var _fechaPago:Date;
		private var _fechaProgramacion:Date;
		private var _fechaRequeridaRealizacion:Date;
		
		private var _finLista:Boolean;
		private var _inicioLista:Boolean;
		
		private var _estadoParaMostrar:String;
		private var _cobrador:String;
		
		private var _tipoCambio:Number;
		private var _referencia:String;
		
		private var _ivaDlls:Number;
		private var _subTotalDlls:Number;
		private var _totalDlls:Number;
		private var _subtotalPesos:Number;
		private var _ivaPesos:Number;
		private var _totalPesos:Number;
		private var _banco:String;
		private var _noCuenta:String;
		private var _fechaUEntrega:Date;
		private var _formatoFechaRevisionND:String;
		private var _ordenCompra:String;
		private var _uuid:String;
		private var _fechaDocto:Date;
		
		//Vista
		private var _isEnfocado:Boolean;
		private var _isUltimo:Boolean;
		private var _isPrimero:Boolean;
		
		private var _fechaPEntrega:Date;
		
		private var _resultadoEntrega:String;
		
		private var _emisor:String;
		private var _receptor:String;
		
		public function Cobros()
		{
		}

		public function get fechaDocto():Date
		{
			return _fechaDocto;
		}

		public function set fechaDocto(value:Date):void
		{
			_fechaDocto = value;
		}

		public function get ordenCompra():String
		{
			return _ordenCompra;
		}

		public function set ordenCompra(value:String):void
		{
			_ordenCompra = value;
		}

		public function get fechaPEntrega():Date
		{
			return _fechaPEntrega;
		}

		public function set fechaPEntrega(value:Date):void
		{
			_fechaPEntrega = value;
		}

		public function get formatoFechaUE():String
		{
			if(_fechaUEntrega == null){
				_formatoFechaUE = "Pendiente";
			}
			return _formatoFechaUE;
		}

		public function set formatoFechaUE(value:String):void
		{
			_formatoFechaUE = value;
		}

		public function get fechaUEntrega():Date
		{
			return _fechaUEntrega;
		}

		public function set fechaUEntrega(value:Date):void
		{
			_fechaUEntrega = value;
				_formatoFechaUE = UtilsFecha.formatoFechaDDMMMYYYY(value);				
		
		}

		public function get tipoCambio():Number
		{
			return _tipoCambio;
		}

		public function set tipoCambio(value:Number):void
		{
			_tipoCambio = value;
		}

		public function get fpor():String
		{
			return _fpor;
		}

		public function set fpor(value:String):void
		{
			_fpor = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get cpedido():String
		{
			if(_cpedido == null) _cpedido = 'Pendiente';
			return _cpedido;
		}

		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}

		public function get medioFactura():String
		{
			return _medioFactura;
		}

		public function set medioFactura(value:String):void
		{
			_medioFactura = value;
		}

		public function get cpago():String
		{
			return _cpago;
		}

		public function set cpago(value:String):void
		{
			_cpago = value;
		}

		public function get contrarecibo():String
		{
			return _contrarecibo;
		}

		public function set contrarecibo(value:String):void
		{
			_contrarecibo = value;
		}

		public function get medioPago():String
		{
			return _medioPago;
		}

		public function set medioPago(value:String):void
		{
			_medioPago = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get monedaEsperadaCobro():String
		{
			return _monedaEsperadaCobro;
		}

		public function set monedaEsperadaCobro(value:String):void
		{
			_monedaEsperadaCobro = value;
		}

		public function get monedaRealCobro():String
		{
			return _monedaRealCobro;
		}

		public function set monedaRealCobro(value:String):void
		{
			_monedaRealCobro = value;
		}

		public function get idCliente():int
		{
			return _idCliente;
		}

		public function set idCliente(value:int):void
		{
			_idCliente = value;
		}

		public function get factura():int
		{
			return _factura;
		}

		public function set factura(value:int):void
		{
			_factura = value;
		}

		public function get diasRestantesCobro():String
		{
/*			if(_estado == 'Cerrada') _diasRestantesCobro = 'Cobrada';
			if(_formatoFechaEsperadaPago == 'Pendiente'){
				_diasRestantesCobro = 'Pendiente';
				_color = '0xFFFFFF';
			}*/
			return _diasRestantesCobro;
		}

		public function set diasRestantesCobro(value:String):void
		{
			_diasRestantesCobro = value;
		}

		public function get montoEsperadoCobro():Number
		{
			return _montoEsperadoCobro;
		}

		public function set montoEsperadoCobro(value:Number):void
		{
			_montoEsperadoCobro = value;
			//_formatoMontoEsperadoCobro = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + ' ' + _monedaEsperadaCobro;
		}

		public function get montoRealCobro():Number
		{
			return _montoRealCobro;
		}

		public function set montoRealCobro(value:Number):void
		{
			_montoRealCobro = value;
			_formatoMontoRealCobro = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + ' ' ;
		}

		public function get montoDolares():Number
		{
			return _montoDolares;
		}

		public function set montoDolares(value:Number):void
		{
			_montoDolares = value
			_formatoMontoDolares = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value) + ' USD';
		}

		public function get fechaFacturacion():Date
		{
			return _fechaFacturacion;
		}

		public function set fechaFacturacion(value:Date):void
		{
			_fechaFacturacion = value;
			_formatoFechaFacturacion = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get fechaRevision():Date
		{
			return _fechaRevision;
		}

		public function set fechaRevision(value:Date):void
		{
			_fechaRevision = value;
			_formatoFechaRevision = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get fechaEsperadaPago():Date
		{
			return _fechaEsperadaPago;
		}

		public function set fechaEsperadaPago(value:Date):void
		{
			_fechaEsperadaPago = value;
			_formatoFechaEsperadaPago = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get fechaPago():Date
		{
			return _fechaPago;
		}

		public function set fechaPago(value:Date):void
		{
			_fechaPago = value;
			_formatoFechaPago = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get formatoFechaFacturacion():String
		{
			return _formatoFechaFacturacion;
		}

		public function set formatoFechaFacturacion(value:String):void
		{
			_formatoFechaFacturacion = value;
		}

		public function get formatoFechaEsperadaPago():String
		{
			if(_formatoFechaEsperadaPago == null) _formatoFechaEsperadaPago = 'Pendiente';
			return _formatoFechaEsperadaPago;
		}

		public function set formatoFechaEsperadaPago(value:String):void
		{
			_formatoFechaEsperadaPago = value;
		}

		public function get formatoFechaRevision():String
		{
			if(_formatoFechaRevision == null) _formatoFechaRevision = 'Pendiente';
			return _formatoFechaRevision;
		}

		
		public function set formatoFechaRevision(value:String):void
		{
			_formatoFechaRevision = value;
		}

		public function set formatoFechaRevisionND(value:String):void
		{
			_formatoFechaRevisionND = value;
		}
		
		public function get formatoFechaRevisionND():String
		{
			if(_formatoFechaRevisionND == null) _formatoFechaRevisionND = 'N/A';
			return _formatoFechaRevisionND;
		}
		
		public function get formatoMontoEsperadoCobro():String
		{
			_formatoMontoEsperadoCobro = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(_montoEsperadoCobro) + ' ' + _monedaEsperadaCobro;
			return _formatoMontoEsperadoCobro;
		}

		public function set formatoMontoEsperadoCobro(value:String):void
		{
			_formatoMontoEsperadoCobro = value;
		}

		public function get formatoMontoRealCobro():String
		{
			if(_montoRealCobro == 0) _formatoMontoRealCobro = 'Pendiente';	
			return _formatoMontoRealCobro;
		}

		public function set formatoMontoRealCobro(value:String):void
		{
			_formatoMontoRealCobro = value;
		}

		public function get formatoFechaPago():String
		{
			if(_formatoFechaPago == null) _formatoFechaPago = 'Pendiente';
			return _formatoFechaPago;
		}

		public function set formatoFechaPago(value:String):void
		{
			_formatoFechaPago = value;
		}

		public function get color():String
		{
			return _color;
		}

		public function set color(value:String):void
		{
			_color = value;
		}

		public function get folioPC():String
		{
			return _folioPC;
		}

		public function set folioPC(value:String):void
		{
			_folioPC = value;
		}

		public function get finLista():Boolean
		{
			return _finLista;
		}

		public function set finLista(value:Boolean):void
		{
			_finLista = value;
		}

		public function get nivelIngreso():String
		{
			return _nivelIngreso;
		}

		public function set nivelIngreso(value:String):void
		{
			_nivelIngreso = value;
		}

		public function get piezas():int
		{
			return _piezas;
		}

		public function set piezas(value:int):void
		{
			_piezas = value;
		}

		public function get moroso():String
		{
			return _moroso;
		}

		public function set moroso(value:String):void
		{
			_moroso = value;
		}

		public function get partidas():int
		{
			return _partidas;
		}

		public function set partidas(value:int):void
		{
			_partidas = value;
		}

		public function get drc():String
		{
			return _drc;
		}

		public function set drc(value:String):void
		{
			_drc = value;
		}

		public function get inicioLista():Boolean
		{
			return _inicioLista;
		}

		public function set inicioLista(value:Boolean):void
		{
			_inicioLista = value;
		}

		public function get formatoMontoDolares():String
		{
			return _formatoMontoDolares;
		}

		public function set formatoMontoDolares(value:String):void
		{
			_formatoMontoDolares = value; 
		}

		public function get esac():String
		{
			return _esac;
		}

		public function set esac(value:String):void
		{
			_esac = value;
		}

		public function get ev():String
		{
			return _ev;
		}

		public function set ev(value:String):void
		{
			_ev = value;
		}
		
		public function get diasFiltro():String
		{
			/*redeclaro las fechas con horas, minutos y segundos en 0 para una comparacion en bruto*/
			var fechaLejana:Date = fechaEsperadaPago;
			//trace( 'FechaCOTIZACION: ' + fechaCotizacion.toString() );
			var actual:Date = new Date();
			if( fechaLejana != null )	fechaLejana = new Date(fechaLejana.fullYear, fechaLejana.month, fechaLejana.date, 0, 0, 0);
			actual = new Date(actual.fullYear, actual.month, actual.date, 0, 0, 0);
			var valor:int = UtilsFecha.regresaDiferenciaEntreFechasEnDias( actual, fechaLejana);
			if( valor  > 3 ){
				_diasFiltro = "FUTURO";
			}else if( valor  < -3 ){
				_diasFiltro = "PASADO";
			}else{
				_diasFiltro = 'DIA' + valor.toString();//DIA-2, DIA-1, DIA0, DIA1, DIA2
			}
			return _diasFiltro;
		}
		
		public function set diasFiltro(value:String):void
		{
			_diasFiltro = value;
		}

		public function get totalFacturas():Number
		{
			return _totalFacturas;
		}

		public function set totalFacturas(value:Number):void
		{
			_totalFacturas = value;
		}

		public function get idFactura():int
		{
			return _idFactura;
		}

		public function set idFactura(value:int):void
		{
			_idFactura = value;
		}

		public function get fechaProgramacion():Date
		{
			return _fechaProgramacion;
		}

		public function set fechaProgramacion(value:Date):void
		{
			_fechaProgramacion = value;
		}

		public function get fechaRequeridaRealizacion():Date
		{
			return _fechaRequeridaRealizacion;
		}

		public function set fechaRequeridaRealizacion(value:Date):void
		{
			_fechaRequeridaRealizacion = value;
		}

		public function get clasificacion():String
		{
			return _clasificacion;
		}

		public function set clasificacion(value:String):void
		{
			_clasificacion = value;
		}

		public function get estadoParaMostrar():String
		{
			return _estadoParaMostrar;
		}

		public function set estadoParaMostrar(value:String):void
		{
			_estadoParaMostrar = value;
		}

		public function get referencia():String
		{
			return _referencia;
		}

		public function set referencia(value:String):void
		{
			_referencia = value;
		}

		public function get cobrador():String
		{
			return _cobrador;
		}

		public function set cobrador(value:String):void
		{
			_cobrador = value;
		}

		public function get isEnfocado():Boolean
		{
			return _isEnfocado;
		}

		public function set isEnfocado(value:Boolean):void
		{
			_isEnfocado = value;
		}

		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}

		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}

		public function get isPrimero():Boolean
		{
			return _isPrimero;
		}

		public function set isPrimero(value:Boolean):void
		{
			_isPrimero = value;
		}

		public function get ivaDlls():Number
		{
			return _ivaDlls;
		}

		public function set ivaDlls(value:Number):void
		{
			_ivaDlls = value;
		}

		public function get subTotalDlls():Number
		{
			return _subTotalDlls;
		}

		public function set subTotalDlls(value:Number):void
		{
			_subTotalDlls = value;
		}

		public function get totalDlls():Number
		{
			return _totalDlls;
		}

		public function set totalDlls(value:Number):void
		{
			_totalDlls = value;
		}

		public function get subtotalPesos():Number
		{
			return _subtotalPesos;
		}

		public function set subtotalPesos(value:Number):void
		{
			_subtotalPesos = value;
		}

		public function get ivaPesos():Number
		{
			return _ivaPesos;
		}

		public function set ivaPesos(value:Number):void
		{
			_ivaPesos = value;
		}

		public function get totalPesos():Number
		{
			return _totalPesos;
		}

		public function set totalPesos(value:Number):void
		{
			_totalPesos = value;
		}

		public function get banco():String
		{
			return _banco;
		}

		public function set banco(value:String):void
		{
			_banco = value;
		}

		public function get noCuenta():String
		{
			return _noCuenta;
		}

		public function set noCuenta(value:String):void
		{
			_noCuenta = value;
		}

		public function get resultadoEntrega():String
		{
			
			if(_resultadoEntrega == null){
				_resultadoEntrega = "Pendiente";
			}
			return _resultadoEntrega;
		}

		public function set resultadoEntrega(value:String):void
		{
			_resultadoEntrega = value;
		}

		public function get uuid():String
		{
			return _uuid;
		}

		public function set uuid(value:String):void
		{
			_uuid = value;
		}

		public function get emisor():String
		{
			return _emisor;
		}

		public function set emisor(value:String):void
		{
			_emisor = value;
		}

		public function get receptor():String
		{
			return _receptor;
		}

		public function set receptor(value:String):void
		{
			_receptor = value;
		}

		public function get monedaFactura():String
		{
			return _monedaFactura;
		}

		public function set monedaFactura(value:String):void
		{
			_monedaFactura = value;
		}

		public function get evt():String
		{
			return _evt;
		}

		public function set evt(value:String):void
		{
			_evt = value;
		}


	}
}