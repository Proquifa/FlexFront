package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.productos
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Producto;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.producto.ProductoTableroProducto")]
	[Bindable]
	public class ProductoTableroProducto extends Producto
	{
		private var _numFila:int;
		private var _cantidadPiezas:int;
		private var _mes:int;
		private var _monto:Number;
		private var _formatoMonto:String;
		private var _compra:String;
		private var _idpcompra:String;
		private var _usuarioESAC:String;
		private var _fpedido:Date;
		private var _fpedidoString:String;
		private var _cpedido:String;
		private var _cliente:String;
		private var _fpedidoMes:Number;
		private var _fpedidoAnio:Number;
		
		/*pr.setUsuarioESAC
		pr.setFpedido
		pr.setCpedidof
		pr.setUsuarioESAC*/
		
		public function ProductoTableroProducto()
		{
		}

		public function get fpedidoAnio():Number
		{
			return _fpedidoAnio;
		}

		public function set fpedidoAnio(value:Number):void
		{
			_fpedidoAnio = value;
		}

		public function get fpedidoMes():Number
		{
			return _fpedidoMes;
		}

		public function set fpedidoMes(value:Number):void
		{
			_fpedidoMes = value;
		}

		public function get fpedidoString():String
		{
			return _fpedidoString;
		}

		public function set fpedidoString(value:String):void
		{
			_fpedidoString = value;
		}

		public function get cliente():String
		{
			return _cliente;
		}

		public function set cliente(value:String):void
		{
			_cliente = value;
		}

		public function get cpedido():String
		{
			return _cpedido;
		}

		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}

		public function get fpedido():Date
		{
			return _fpedido;
		}

		public function set fpedido(value:Date):void
		{
			_fpedido = value;
			if(value == null)
				fpedidoString =  "ND";
			else{
				fpedidoString =  UtilsFecha.formatoFechaDDMMMYYYY(value);
				fpedidoMes = value.getMonth();
				fpedidoAnio = value.getFullYear();
			}
		}

		public function get usuarioESAC():String
		{
			return _usuarioESAC;
		}

		public function set usuarioESAC(value:String):void
		{
			_usuarioESAC = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
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

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
			_formatoMonto = "$ " + UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
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


	}
}