package mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Util;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatoMoneda;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.cobrosypagos.facturista.NotaCredito")]
	[Bindable]
	public class NotaCredito
	{
		private var _numFila:Number;
		private var _idNota:Number;
		private var _fecha:Date;
		private var _fechaFactura:Date;
		private var _folio:String;
		private var _idCliente:Number;
		private var _factura:Number;
		private var _idFactura:Number;
		private var _cancelada:Boolean;
		private var _importe:Number;
		private var _moneda:String;
		private var _iva:Number;
		private var _tCambio:Number;
		private var _serie:String;
		private var _medio:String;
		private var _cpedido:String;
		private var _fpor:String;
		private var _cpago:String;
		
		private var _nombreCliente:String;
		private var _estado:String;
		private var _akFolio:Number;
		private var _folioAK:String;
		private var _fechaFormato:String;
		private var _montoFormato:String;
		private var _tipo:String;
		private var _facturaDestino:Number;
		
		private var _esac:String;
		private var _cobrador:String;
		
		public function NotaCredito()
		{
			_folioAK = _cpedido = _fechaFormato = 'Pendiente';
		}


		public function get fechaFactura():Date
		{
			return _fechaFactura;
		}

		public function set fechaFactura(value:Date):void
		{
			_fechaFactura = value;
		}

		public function get folioAK():String
		{
			return _folioAK == '0' ? 'Pendiente' : _folioAK;
		}

		public function set folioAK(value:String):void
		{
			_folioAK = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get montoFormato():String
		{
			return _montoFormato;
		}

		public function set montoFormato(value:String):void
		{
			_montoFormato = value;
		}

		public function get fechaFormato():String
		{
			return _fechaFormato;
		}

		public function set fechaFormato(value:String):void
		{
			_fechaFormato = value;
		}

		public function get akFolio():Number
		{
			return _akFolio;
		}

		public function set akFolio(value:Number):void
		{
			_folioAK = value.toString();
			_akFolio = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get cpago():String
		{
			return _cpago;
		}

		public function set cpago(value:String):void
		{
			_cpago = value;
		}

		public function get fpor():String
		{
			return _fpor;
		}

		public function set fpor(value:String):void
		{
			_fpor = value;
		}

		public function get cpedido():String
		{
			return _cpedido;
		}

		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}

		public function get medio():String
		{
			return _medio;
		}

		public function set medio(value:String):void
		{
			_medio = value;
		}

		public function get serie():String
		{
			return _serie;
		}

		public function set serie(value:String):void
		{
			_serie = value;
		}

		public function get tCambio():Number
		{
			return _tCambio;
		}

		public function set tCambio(value:Number):void
		{
			_tCambio = value;
		}

		public function get iva():Number
		{
			return _iva;
		}

		public function set iva(value:Number):void
		{
			_iva = value;
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get importe():Number
		{
			return _importe;
		}

		public function set importe(value:Number):void
		{
			montoFormato = '$' + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
			_importe = value;
		}

		public function get cancelada():Boolean
		{
			return _cancelada;
		}

		public function set cancelada(value:Boolean):void
		{
			_cancelada = value;
		}

		public function get idFactura():Number
		{
			return _idFactura;
		}

		public function set idFactura(value:Number):void
		{
			_idFactura = value;
		}

		public function get factura():Number
		{
			return _factura;
		}

		public function set factura(value:Number):void
		{
			_factura = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			fechaFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
			_fecha = value;
		}

		public function get idNota():Number
		{
			return _idNota;
		}

		public function set idNota(value:Number):void
		{
			_idNota = value;
		}

		public function get esac():String
		{
			return _esac;
		}

		public function set esac(value:String):void
		{
			_esac = value;
		}

		public function get cobrador():String
		{
			return _cobrador;
		}

		public function set cobrador(value:String):void
		{
			_cobrador = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get facturaDestino():Number
		{
			return _facturaDestino;
		}

		public function set facturaDestino(value:Number):void
		{
			_facturaDestino = value;
		}


	}
}