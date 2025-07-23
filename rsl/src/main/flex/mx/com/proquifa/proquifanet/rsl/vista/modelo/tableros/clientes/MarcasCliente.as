package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.cliente.MarcasCliente")]
	[Bindable]
	public class MarcasCliente
	{
		private var _numFila:Number;
		private var _nombre:String;
		private var _cantidad:Number;		
		private var _montoCompra:Number;
		private var _montoVenta:Number;
		private var _totalPiezas:Number;
		private var _totalClientes:Number;
		private var _totalPartidas:Number;
		private var _totalPedidos:Number;
		///////////
		private var _montoCompraString:String;
		private var _montoVentaString:String;
		private var _margenDirectoString:String;
		private var _margenDirecto:int;
		private var _esac:String;
		// para corregir error bindable
		private var _etiqueta:String;
		private var _total:Number;
		
		public function MarcasCliente()
		{
		}

		public function get totalPedidos():Number
		{
			return _totalPedidos;
		}

		public function set totalPedidos(value:Number):void
		{
			_totalPedidos = value;
		}

		public function get totalPartidas():Number
		{
			return _totalPartidas;
		}

		public function set totalPartidas(value:Number):void
		{
			_totalPartidas = value;
		}

		public function get totalClientes():Number
		{
			return _totalClientes;
		}

		public function set totalClientes(value:Number):void
		{
			_totalClientes = value;
		}

		public function get totalPiezas():Number
		{
			return _totalPiezas;
		}

		public function set totalPiezas(value:Number):void
		{
			_totalPiezas = value;
		}

		public function get total():Number
		{
			return _total;
		}

		public function set total(value:Number):void
		{
			_total = value;
		}

		public function get etiqueta():String
		{
			return _etiqueta;
		}

		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}
		public function get margenDirectoString():String
		{
			_margenDirectoString = margenDirecto == 0 ? 'Pediente': margenDirecto.toString() + ' %';
			return _margenDirectoString;
		}
		
		public function set margenDirectoString(value:String):void
		{
			_margenDirectoString = value;
		}
		public function get margenDirecto():int
		{	
			_margenDirecto = int( ( (montoVenta/montoCompra)-1)*100 );
			return _margenDirecto;
		}

		public function set margenDirecto(value:int):void
		{
			_margenDirecto = value;
		}

		public function get montoVentaString():String
		{
			_montoVentaString = '$ ' +UtilsFormatosNumericos.precisionADosDecimalesConComas( montoVenta );
			return _montoVentaString;
		}

		public function set montoVentaString(value:String):void
		{
			_montoVentaString = value;
		}

		public function get montoCompraString():String
		{
			/*_montoCompraString = '$ ' +UtilsFormatosNumericos.precisionADosDecimalesConComas( montoCompra );*/
			return _montoCompraString;
		}

		public function set montoCompraString(value:String):void
		{
			_montoCompraString = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}

		public function get montoVenta():Number
		{
			return _montoVenta;
		}

		public function set montoVenta(value:Number):void
		{
			_montoVenta = value;
		}

		public function get montoCompra():Number
		{
			return _montoCompra;
		}

		public function set montoCompra(value:Number):void
		{
			_montoCompra = value;
			if(value == 0){
				_montoCompraString = 'Pendiente';
			}else{
				_montoCompraString = '$ ' +UtilsFormatosNumericos.precisionADosDecimalesConComas(value);
			}
		}

		public function get cantidad():Number
		{
			return _cantidad;
		}

		public function set cantidad(value:Number):void
		{
			_cantidad = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

		public function get esac():String
		{
			return _esac;
		}

		public function set esac(value:String):void
		{
			_esac = value;
		}


	}
}