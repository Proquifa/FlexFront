package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.ProductosCliente")]
	public class ProductosCliente
	{
		private var _numFila:Number;
		private var _cant:Number;
		private var _descripcion:String;
		private var _idProducto:Number;
		private var _costo:Number;
		private var _costoString:String;
		private var _fabrica:String;
		private var _moneda:String;
		private var _tipo:String;
		private var _codigo:String;
		
		public function ProductosCliente()
		{
		}

		public function get costoString():String
		{
			_costoString = '$ '+UtilsFormatosNumericos.precisionADosDecimalesConComas(_costo);
			return _costoString;
		}

		public function set costoString(value:String):void
		{
			_costoString = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get codigo():String
		{
			return _codigo;
		}

		public function set codigo(value:String):void
		{
			_codigo = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get fabrica():String
		{
			return _fabrica;
		}

		public function set fabrica(value:String):void
		{
			_fabrica = value;
		}

		public function get costo():Number
		{
			return _costo;
		}

		public function set costo(value:Number):void
		{
			_costo = value;
		}

		public function get idProducto():Number
		{
			return _idProducto;
		}

		public function set idProducto(value:Number):void
		{
			_idProducto = value;
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}

		public function get cant():Number
		{
			return _cant;
		}

		public function set cant(value:Number):void
		{
			_cant = value;
		}

	}
}