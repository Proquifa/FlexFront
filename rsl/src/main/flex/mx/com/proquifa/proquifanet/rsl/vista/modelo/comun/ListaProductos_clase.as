package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass]
	[Bindable]
	public class ListaProductos_clase
	{
		private var _numFila:int;
		private var _trafico:String;
		private var _familia:String;
		private var _codigo:String;
		private var _concepto:String;
		private var _codigoLowerCase:String;
		private var _conceptoLowerCase:String;
		private var _idCliente:int;
		private var _cliente:String;
		private var _idProveedor:int;
		private var _proveedor:String;
		private var _totalClientes:int;
		private var _totalPiezas:int;
		private var _montoUnitario:Number;
		private var _montoUnitarioString:String;
		private var _montoTotal:Number;
		private var _montoTotalString:String;
		private var _fee:Date;
		private var _todos:Boolean;
		private var _posicionesSql:Array
		private var _puntero:int;
		private var _control:String;
		private var _cpedido:String;
		
		private var _igi:Number
		private var _igiString:String
		private var _iva:Number
		private var _ivaString:String
		private var _dta:Number
		private var _dtaString:String
		private var _flete:Number
		private var _fleteString:String
		private var _monedaSimbolo:String
		private var _nombreVendedor:String
		private var _transitoMandatorioMexico:Boolean;
		private var _nombre_prod:String;
		
		private var _totalStock:Number;
		private var _productosEnStock:ArrayCollection;	
		private var _idPCompra:Number;
		private var _inspector:String;
		private var _disponibilidadPedimento:String;
		private var _cantidadDisponibleSTOCK:Number;
		private var _suplementos:ArrayCollection;
		
		
		private var _titulo:Boolean;
		
		
		public function ListaProductos_clase()
		{
		}

		public function get suplementos():ArrayCollection
		{
			return _suplementos;
		}

		public function set suplementos(value:ArrayCollection):void
		{
			_suplementos = value;
		}

		public function get cantidadDisponibleSTOCK():Number
		{
			return _cantidadDisponibleSTOCK;
		}

		public function set cantidadDisponibleSTOCK(value:Number):void
		{
			_cantidadDisponibleSTOCK = value;
		}

		public function get disponibilidadPedimento():String
		{
			return _disponibilidadPedimento;
		}

		public function set disponibilidadPedimento(value:String):void
		{
			_disponibilidadPedimento = value;
		}

		public function get inspector():String
		{
			return _inspector;
		}

		public function set inspector(value:String):void
		{
			_inspector = value;
		}

		public function get idPCompra():Number
		{
			return _idPCompra;
		}

		public function set idPCompra(value:Number):void
		{
			_idPCompra = value;
		}

		public function get productosEnStock():ArrayCollection
		{
			return _productosEnStock;
		}

		public function set productosEnStock(value:ArrayCollection):void
		{
			_productosEnStock = value;
		}

		public function get totalStock():Number
		{
			return _totalStock;
		}

		public function set totalStock(value:Number):void
		{
			_totalStock = value;
		}

		public function get nombre_prod():String
		{
			return _nombre_prod;
		}

		public function set nombre_prod(value:String):void
		{
			_nombre_prod = value;
		}

		public function get transitoMandatorioMexico():Boolean
		{
			return _transitoMandatorioMexico;
		}

		public function set transitoMandatorioMexico(value:Boolean):void
		{
			_transitoMandatorioMexico = value;
		}

		public function get nombreVendedor():String
		{
			return _nombreVendedor;
		}

		public function set nombreVendedor(value:String):void
		{
			_nombreVendedor = value;
		}

		public function get control():String
		{
			return _control;
		}

		public function set control(value:String):void
		{
			_control = value;
		}

		public function get monedaSimbolo():String
		{
			return _monedaSimbolo;
		}

		public function set monedaSimbolo(value:String):void
		{
			_monedaSimbolo = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get trafico():String
		{
			return _trafico;
		}

		public function set trafico(value:String):void
		{
			_trafico = value;
		}

		public function get familia():String
		{
			return _familia;
		}

		public function set familia(value:String):void
		{
			_familia = value;
		}

		public function get codigo():String
		{
			return _codigo;
		}

		public function set codigo(value:String):void
		{
			_codigo = value;
			_codigoLowerCase = value.toLowerCase();
		}

		public function get concepto():String
		{
			return _concepto;
		}

		public function set concepto(value:String):void
		{
			_concepto = value;
			_conceptoLowerCase = value.toLowerCase();
		}

		public function get idCliente():int
		{
			return _idCliente;
		}

		public function set idCliente(value:int):void
		{
			_idCliente = value;
		}

		public function get cliente():String
		{
			return _cliente;
		}

		public function set cliente(value:String):void
		{
			_cliente = value;
		}

		public function get idProveedor():int
		{
			return _idProveedor;
		}

		public function set idProveedor(value:int):void
		{
			_idProveedor = value;
		}

		public function get proveedor():String
		{
			return _proveedor;
		}

		public function set proveedor(value:String):void
		{
			_proveedor = value;
		}

		public function get totalClientes():int
		{
			return _totalClientes;
		}

		public function set totalClientes(value:int):void
		{
			_totalClientes = value;
		}

		public function get totalPiezas():int
		{
			return _totalPiezas;
		}

		public function set totalPiezas(value:int):void
		{
			_totalPiezas = value;
		}

		public function get montoUnitario():Number
		{
			return _montoUnitario;
		}

		public function set montoUnitario(value:Number):void
		{
			_montoUnitario = value;
			_montoUnitarioString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get montoUnitarioString():String
		{
			return _montoUnitarioString;
		}

		public function set montoUnitarioString(value:String):void
		{
			_montoUnitarioString = value;
		}

		public function get montoTotal():Number
		{
			return _montoTotal;
		}

		public function set montoTotal(value:Number):void
		{
			_montoTotal = value;
			_montoTotalString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get montoTotalString():String
		{
			return _montoTotalString;
		}

		public function set montoTotalString(value:String):void
		{
			_montoTotalString = value;
		}

		public function get fee():Date
		{
			return _fee;
		}

		public function set fee(value:Date):void
		{
			_fee = value;
		}

		public function get todos():Boolean
		{
			return _todos;
		}

		public function set todos(value:Boolean):void
		{
			_todos = value;
		}

		public function get puntero():int
		{
			return _puntero;
		}

		public function set puntero(value:int):void
		{
			_puntero = value;
		}

		public function get posicionesSql():Array
		{
			return _posicionesSql;
		}

		public function set posicionesSql(value:Array):void
		{
			_posicionesSql = value;
		}

		public function get codigoLowerCase():String
		{
			return _codigoLowerCase;
		}

		public function set codigoLowerCase(value:String):void
		{
			_codigoLowerCase = value;
		}

		public function get conceptoLowerCase():String
		{
			return _conceptoLowerCase;
		}

		public function set conceptoLowerCase(value:String):void
		{
			_conceptoLowerCase = value;
		}

		public function get igi():Number
		{
			return _igi;
		}

		public function set igi(value:Number):void
		{
			_igi = value;
			_igiString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get iva():Number
		{
			return _iva;
		}

		public function set iva(value:Number):void
		{
			_iva = value;
			_ivaString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get dta():Number
		{
			return _dta;
		}

		public function set dta(value:Number):void
		{
			_dta = value;
			_dtaString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get flete():Number
		{
			return _flete;
		}

		public function set flete(value:Number):void
		{
			_flete = value;
			_fleteString = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
		}

		public function get igiString():String
		{
			return _igiString;
		}

		public function set igiString(value:String):void
		{
			_igiString = value;
		}

		public function get ivaString():String
		{
			return _ivaString;
		}

		public function set ivaString(value:String):void
		{
			_ivaString = value;
		}

		public function get dtaString():String
		{
			return _dtaString;
		}

		public function set dtaString(value:String):void
		{
			_dtaString = value;
		}

		public function get fleteString():String
		{
			return _fleteString;
		}

		public function set fleteString(value:String):void
		{
			_fleteString = value;
		}

		public function get titulo():Boolean
		{
			return _titulo;
		}

		public function set titulo(value:Boolean):void
		{
			_titulo = value;
		}

		public function get cpedido():String
		{
			return _cpedido;
		}

		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}


	}
}