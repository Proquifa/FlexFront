package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor
{
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.ComprasProveedorLineaProductos")]
	public class ComprasProveedorLineaProductos
	{
		private  var _nombre:String;
		private  var _etiqueta:String;
		private  var _cantidad:int;	
		private  var _compras:int;
		private  var _montoCompra:Number;
		private  var _totalPartidas:int;
		
		public function ComprasProveedorLineaProductos()
		{
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get etiqueta():String
		{
			return _etiqueta;
		}

		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}

		public function get cantidad():int
		{
			return _cantidad;
		}

		public function set cantidad(value:int):void
		{
			_cantidad = value;
		}

		public function get compras():int
		{
			return _compras;
		}

		public function set compras(value:int):void
		{
			_compras = value;
		}

		public function get montoCompra():Number
		{
			return _montoCompra;
		}

		public function set montoCompra(value:Number):void
		{
			_montoCompra = value;
		}

		public function get totalPartidas():int
		{
			return _totalPartidas;
		}

		public function set totalPartidas(value:int):void
		{
			_totalPartidas = value;
		}


	}
}