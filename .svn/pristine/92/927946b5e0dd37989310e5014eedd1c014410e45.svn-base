package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;

	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.BalanceDeCredito")]
	public class BalanceDeCredito
	{
		private var _etiqueta:String;
		private var _etiquetaGrid:String;
		private var _fecha:Date;
		private var _nombreProvee:String;
		private var _limiteCredito:Number;
		private var _lineaCredito:Number;
		private var _monto:Number;
		private var _numFila:int;
		
		private var _formatoMonto:String;
		private var _formatoFecha:String;
		private var _formatoLimite:String;
		private var _formatoLinea:String;
		
		public function BalanceDeCredito()
		{
		}

		public function get etiquetaGrid():String
		{
			return _etiquetaGrid;
		}

		public function set etiquetaGrid(value:String):void
		{
			_etiquetaGrid = value;
		}

		public function get etiqueta():String
		{
			return _etiqueta;
		}

		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get nombreProvee():String
		{
			return _nombreProvee;
		}

		public function set nombreProvee(value:String):void
		{
			_nombreProvee = value;
		}

		public function get limiteCredito():Number
		{
			return _limiteCredito;
		}

		public function set limiteCredito(value:Number):void
		{
			_limiteCredito = value;
		}

		public function get lineaCredito():Number
		{
			return _lineaCredito;
		}

		public function set lineaCredito(value:Number):void
		{
			_lineaCredito = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get formatoMonto():String
		{
			_formatoMonto ='$' + UtilsFormatosNumericos.precisionADosDecimalesConComas(monto);
			return _formatoMonto;
		}

		public function set formatoMonto(value:String):void
		{
			_formatoMonto = value;
		}

		public function get formatoFecha():String
		{
			_formatoFecha = UtilsFecha.formatoFechaDDMMMYY(fecha);
			return _formatoFecha;
		}

		public function set formatoFecha(value:String):void
		{
			_formatoFecha = value;
		}

		public function get formatoLimite():String
		{
			_formatoLimite ='$' + UtilsFormatosNumericos.precisionADosDecimalesConComas(limiteCredito);
			return _formatoLimite;
		}

		public function set formatoLimite(value:String):void
		{
			_formatoLimite = value;
		}

		public function get formatoLinea():String
		{
			_formatoLinea ='$' + UtilsFormatosNumericos.precisionADosDecimalesConComas(lineaCredito);
			return _formatoLinea;
		}

		public function set formatoLinea(value:String):void
		{
			_formatoLinea = value;
		}


	}
}