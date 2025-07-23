package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.ObjetivoCrecimiento")]
	[Bindable]
	public class ObjetivoCrecimiento
	{
		
		private var _idObjetivoCrecimiento:Number;
		private var _nivelIngreso:String;
		private var _porcentajeAnual:Number;
		private var _montoAnual:Number;
		private var _fua:Date;
		private var _porcentajeAnualFundamental:Number;
		private var _montoAnualFundamental:Number;
		private var _montoFundamental:Number; 
		private var _porcentajeFundamental:Number; 
		
		private var _porcentaje:Number; 
		private var _monto:Number;
		private var _mes:int;
		private var _noClientes:Number;
		private var _valorBajo:Number;
		
		private var _tipoProveedor:String;
		private var _noProveedor:Number;
		private var _descripcion:String;
		
		
		public function ObjetivoCrecimiento()
		{
		}

		public function get idObjetivoCrecimiento():Number
		{
			return _idObjetivoCrecimiento;
		}

		public function set idObjetivoCrecimiento(value:Number):void
		{
			_idObjetivoCrecimiento = value;
		}

		public function get nivelIngreso():String
		{
			return _nivelIngreso;
		}

		public function set nivelIngreso(value:String):void
		{
			_nivelIngreso = value;
		}

		public function get porcentajeAnual():Number
		{
			return _porcentajeAnual;
		}

		public function set porcentajeAnual(value:Number):void
		{
			_porcentajeAnual = value;
		}

		public function get montoAnual():Number
		{
			return _montoAnual;
		}

		public function set montoAnual(value:Number):void
		{
			_montoAnual = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get porcentaje():Number
		{
			return _porcentaje;
		}

		public function set porcentaje(value:Number):void
		{
			_porcentaje = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get porcentajeAnualFundamental():Number
		{
			return _porcentajeAnualFundamental;
		}

		public function set porcentajeAnualFundamental(value:Number):void
		{
			_porcentajeAnualFundamental = value;
		}

		public function get montoAnualFundamental():Number
		{
			return _montoAnualFundamental;
		}

		public function set montoAnualFundamental(value:Number):void
		{
			_montoAnualFundamental = value;
		}

		public function get montoFundamental():Number
		{
			return _montoFundamental;
		}

		public function set montoFundamental(value:Number):void
		{
			_montoFundamental = value;
		}

		public function get porcentajeFundamental():Number
		{
			return _porcentajeFundamental;
		}

		public function set porcentajeFundamental(value:Number):void
		{
			_porcentajeFundamental = value;
		}

		public function get noClientes():Number
		{
			return _noClientes;
		}

		public function set noClientes(value:Number):void
		{
			_noClientes = value;
		}

		public function get valorBajo():Number
		{
			return _valorBajo;
		}

		public function set valorBajo(value:Number):void
		{
			_valorBajo = value;
		}

		public function get tipoProveedor():String
		{
			return _tipoProveedor;
		}

		public function set tipoProveedor(value:String):void
		{
			_tipoProveedor = value;
		}

		public function get noProveedor():Number
		{
			return _noProveedor;
		}

		public function set noProveedor(value:Number):void
		{
			_noProveedor = value;
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}


	}
}