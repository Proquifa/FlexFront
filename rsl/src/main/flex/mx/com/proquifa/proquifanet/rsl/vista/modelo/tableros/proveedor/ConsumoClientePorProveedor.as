package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.Formato;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.ConsumoClientePorProveedor")]
	public dynamic class ConsumoClientePorProveedor extends Formato
	{
		
		private var _moneda:String;
		private var _nombreCliente:String;
		
		private var _idCliente:int;
		private var _montoCompra:Number;
		private var _montoCompraString:String;
		private var _numProductos:int;
		private var _numFila:int;
		
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"montoCompra",formato:"moneda",tipo:"Number",newpropiedad:"montoCompraFormato"}
		]);
		
		public function ConsumoClientePorProveedor()
		{
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get idCliente():int
		{
			return _idCliente;
		}

		public function set idCliente(value:int):void
		{
			_idCliente = value;
		}

		public function get montoCompra():Number
		{
			return _montoCompra;
		}

		public function set montoCompra(value:Number):void
		{
			_montoCompra = value;
			this._montoCompraString = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas(_montoCompra);
		}

		public function get numProductos():int
		{
			return _numProductos;
		}

		public function set numProductos(value:int):void
		{
			_numProductos = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get montoCompraString():String
		{
			return _montoCompraString;
		}

		public function set montoCompraString(value:String):void
		{
			_montoCompraString = value;
		}


	}
}