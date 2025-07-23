package mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.cobrosypagos.facturista.HistorialFactura")]
	[Bindable]
	public class HistorialFactura
	{
	
		private var _factura:int;
		private var _numFila:int;
		private var _facturadoPor:String;
		private var _nombreCliente:String;
		private var _nombreContacto:String;
		private var _Puesto:String;
		private var _usuario:String;
		private var _comentarios:String;
		private var _formatoFecha:String;
		private var _fecha:Date;
		private var _FEP:Date;
		
		public function HistorialFactura()
		{
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
			_formatoFecha = UtilsFecha.formatoFechaDDMMMYYYY(value);
		}

		public function get usuario():String
		{
			return _usuario;
		}

		public function set usuario(value:String):void
		{
			_usuario = value;
		}

		public function get factura():int
		{
			return _factura;
		}

		public function set factura(value:int):void
		{
			_factura = value;
		}

		public function get facturadoPor():String
		{
			return _facturadoPor;
		}

		public function set facturadoPor(value:String):void
		{
			_facturadoPor = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get nombreContacto():String
		{
			return _nombreContacto;
		}

		public function set nombreContacto(value:String):void
		{
			_nombreContacto = value;
		}

		public function get Puesto():String
		{
			return _Puesto;
		}

		public function set Puesto(value:String):void
		{
			_Puesto = value;
		}

		public function get FEP():Date
		{
			return _FEP;
		}

		public function set FEP(value:Date):void
		{
			_FEP = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get formatoFecha():String
		{
			return _formatoFecha;
		}

		public function set formatoFecha(value:String):void
		{
			_formatoFecha = value;
		}


	}
}