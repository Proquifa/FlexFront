package mx.com.proquifa.proquifanet.rsl.vista.vistas.consultas.finanzas.facturacion.comun
{
	public class HelpMenuSeleccionObject
	{
		private var _finicio:Date;
		private var _ffin:Date;
		private var _cliente:String;
		private var _medioPago:String;
		private var _facturo:String;
		private var _cpago:String;
		private var _tipo:String;
		private var _estado:String;
		private var _diasPago:String;
		private var _drc:int;
		private var _refacturada:String;
		private var _chkPedidoFactura:String;
		private var _txtBusquedaRapida:String;
		private var _isBtnActualizarAvanzada:Boolean;
		private var _isBtnActualizarRapida:Boolean;
		private var _idCliente:Number;
		private var _idCobrador:Number;
		private var _cobrador:String;
		private var _banco:String;
		private var _cuenta:String;
		private var _fechaCobro:Date;
		private var _factura:String;
		private var _idUsuarioLogueado:Number;
		
		//Generales
		private var _isBusquedaAvanzada:Boolean;
		private var _numFiltrosModificadosAvanzada:int;
		private var _keyModificadosAvanzada:Object;
		private var _numFiltrosModificadosRapida:int;
		private var _keyModificadosRapida:Object;
		
		public function HelpMenuSeleccionObject()
		{
			_keyModificadosAvanzada = new Object;
			_keyModificadosRapida = new Object;
		}
		
		public function get idUsuarioLogueado():Number
		{
			return _idUsuarioLogueado;
		}

		public function set idUsuarioLogueado(value:Number):void
		{
			_idUsuarioLogueado = value;
		}

		public function get diasPago():String
		{
			return _diasPago;
		}

		public function set diasPago(value:String):void
		{
			_diasPago = value;
		}

		public function get factura():String
		{
			return _factura;
		}

		public function set factura(value:String):void
		{
			_factura = value;
		}

		public function get fechaCobro():Date
		{
			return _fechaCobro;
		}

		public function set fechaCobro(value:Date):void
		{
			_fechaCobro = value;
		}

		public function get cuenta():String
		{
			return _cuenta;
		}

		public function set cuenta(value:String):void
		{
			_cuenta = value;
		}

		public function get banco():String
		{
			return _banco;
		}

		public function set banco(value:String):void
		{
			_banco = value;
		}

		public function get drc():int
		{
			return _drc;
		}

		public function set drc(value:int):void
		{
			_drc = value;
		}

		public function get medioPago():String
		{
			return _medioPago;
		}

		public function set medioPago(value:String):void
		{
			_medioPago = value;
		}

		public function get finicio():Date
		{
			return _finicio;
		}

		public function set finicio(value:Date):void
		{
			_finicio = value;
		}

		public function get ffin():Date
		{
			return _ffin;
		}

		public function set ffin(value:Date):void
		{
			_ffin = value;
		}

		public function get cliente():String
		{
			return _cliente;
		}

		public function set cliente(value:String):void
		{
			_cliente = value;
		}

		public function get facturo():String
		{
			return _facturo;
		}

		public function set facturo(value:String):void
		{
			_facturo = value;
		}

		public function get cpago():String
		{
			return _cpago;
		}

		public function set cpago(value:String):void
		{
			_cpago = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get refacturada():String
		{
			return _refacturada;
		}

		public function set refacturada(value:String):void
		{
			_refacturada = value;
		}

		public function get chkPedidoFactura():String
		{
			return _chkPedidoFactura;
		}

		public function set chkPedidoFactura(value:String):void
		{
			_chkPedidoFactura = value;
		}

		public function get txtBusquedaRapida():String
		{
			return _txtBusquedaRapida;
		}

		public function set txtBusquedaRapida(value:String):void
		{
			_txtBusquedaRapida = value;
		}

		public function get isBtnActualizarAvanzada():Boolean
		{
			return _isBtnActualizarAvanzada;
		}

		public function set isBtnActualizarAvanzada(value:Boolean):void
		{
			_isBtnActualizarAvanzada = value;
		}

		public function get isBtnActualizarRapida():Boolean
		{
			return _isBtnActualizarRapida;
		}

		public function set isBtnActualizarRapida(value:Boolean):void
		{
			_isBtnActualizarRapida = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get isBusquedaAvanzada():Boolean
		{
			return _isBusquedaAvanzada;
		}

		public function set isBusquedaAvanzada(value:Boolean):void
		{
			_isBusquedaAvanzada = value;
		}

		public function get numFiltrosModificadosAvanzada():int
		{
			return _numFiltrosModificadosAvanzada;
		}

		public function set numFiltrosModificadosAvanzada(value:int):void
		{
			_numFiltrosModificadosAvanzada = value;
		}

		public function get numFiltrosModificadosRapida():int
		{
			return _numFiltrosModificadosRapida;
		}

		public function set numFiltrosModificadosRapida(value:int):void
		{
			_numFiltrosModificadosRapida = value;
		}

		public function get keyModificadosRapida():Object
		{
			return _keyModificadosRapida;
		}

		public function set keyModificadosRapida(value:Object):void
		{
			_keyModificadosRapida = value;
		}

		public function get keyModificadosAvanzada():Object
		{
			return _keyModificadosAvanzada;
		}

		public function set keyModificadosAvanzada(value:Object):void
		{
			_keyModificadosAvanzada = value;
		}

		public function get idCobrador():Number
		{
			return _idCobrador;
		}

		public function set idCobrador(value:Number):void
		{
			_idCobrador = value;
		}

		public function get cobrador():String
		{
			return _cobrador;
		}

		public function set cobrador(value:String):void
		{
			_cobrador = value;
		}


	}
}