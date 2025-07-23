package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Producto;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.ProductoProveedor")]
	public class ProductoProveedor extends Producto
	{
		
		private var _cantidadPiezas:int;
		private var _mes:int;
		private var _monto:int;
		private var _numFila:Number;
		private var _formatoMonto:String;
		private var _compra:String;
		private var _idpcompra:String;
		private var _estado:String;
		
		public function ProductoProveedor()
		{
		}

		public function get cantidadPiezas():int
		{
			return _cantidadPiezas;
		}

		public function set cantidadPiezas(value:int):void
		{
			_cantidadPiezas = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get monto():int
		{
			return _monto;
		}

		public function set monto(value:int):void
		{
			_monto = value;
			_formatoMonto = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(_monto);
		}

		public function get formatoMonto():String
		{
			return _formatoMonto;
		}

		public function set formatoMonto(value:String):void
		{
			_formatoMonto = value;
		}

		public function get compra():String
		{
			return _compra;
		}

		public function set compra(value:String):void
		{
			_compra = value;
		}

		public function get idpcompra():String
		{
			return _idpcompra;
		}

		public function set idpcompra(value:String):void
		{
			_idpcompra = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}


	}
}