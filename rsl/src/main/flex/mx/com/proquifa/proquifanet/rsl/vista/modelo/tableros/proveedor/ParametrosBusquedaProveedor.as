package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.proveedor
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.tableros.proveedor.ParametrosBusquedaProveedor")]
	[Bindable]
	public class ParametrosBusquedaProveedor
	{
		
		private var _idProveedor:Number;
		private var _anio:Number; 
		private var _periodo:String;
		private var _tipoPeriodo:int;
		private var _mes:int;
		private var _idUsuario:Number; // Colaborador
		private var _lineal:int;
		private var _mesInicio:Number;
		private var _mesFin:Number;
		private var _valorAdicional:String;
		private var _tipoConsulta:String;
		private var _region:String;
		private var _idAgenteAduanal:Number;
		private var _tipoProducto:String;
		private var _estrategicos:Boolean;
		private var _familia:String;
		private var _agrupadoComprador:Boolean;
		private var _anioFiscal:Boolean;
		private var _comparativas:Boolean;
		
		//PARAMETROS DE LA BUSQUEDA PERO SÓLO SIRVE PARA VISTA
		public var rangoMinMes:int= 1;
		public var rangoMaxMes:int= 12;
		
		
		public function ParametrosBusquedaProveedor()
		{
			_idProveedor = 0;
			_anio = 0;
			_periodo = "";
			_tipoPeriodo = 0;
			_mes = 0;
			_idUsuario = 0;
			_lineal = 0;
			_mesInicio = 0;
			_mesFin = 0;
			_valorAdicional = "";
			_tipoConsulta = "";
			_region = "";
			_idAgenteAduanal = 0;
			_tipoProducto = "";
			_estrategicos = false;
			_agrupadoComprador = false;
			_familia = "";
			_comparativas = false;
		}

		public function get idProveedor():Number
		{
			return _idProveedor;
		}

		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}

		public function get anio():Number
		{
			return _anio;
		}

		public function set anio(value:Number):void
		{
			_anio = value;
		}

		public function get periodo():String
		{
			return _periodo;
		}

		public function set periodo(value:String):void
		{
			_periodo = value;
		}

		public function get tipoPeriodo():int
		{
			return _tipoPeriodo;
		}

		public function set tipoPeriodo(value:int):void
		{
			_tipoPeriodo = value;
		}

		public function get mes():int
		{
			return _mes;
		}

		public function set mes(value:int):void
		{
			_mes = value;
		}

		public function get idUsuario():Number
		{
			return _idUsuario;
		}

		public function set idUsuario(value:Number):void
		{
			_idUsuario = value;
		}

		public function get lineal():int
		{
			return _lineal;
		}

		public function set lineal(value:int):void
		{
			_lineal = value;
		}

		public function get mesInicio():Number
		{
			return _mesInicio;
		}

		public function set mesInicio(value:Number):void
		{
			_mesInicio = value;
		}

		public function get mesFin():Number
		{
			return _mesFin;
		}

		public function set mesFin(value:Number):void
		{
			_mesFin = value;
		}

		public function get valorAdicional():String
		{
			return _valorAdicional;
		}

		public function set valorAdicional(value:String):void
		{
			_valorAdicional = value;
		}

		public function get tipoConsulta():String
		{
			return _tipoConsulta;
		}

		public function set tipoConsulta(value:String):void
		{
			_tipoConsulta = value;
		}

		public function get region():String
		{
			return _region;
		}

		public function set region(value:String):void
		{
			_region = value;
		}

		public function get idAgenteAduanal():Number
		{
			return _idAgenteAduanal;
		}

		public function set idAgenteAduanal(value:Number):void
		{
			_idAgenteAduanal = value;
		}

		public function get tipoProducto():String
		{
			return _tipoProducto;
		}

		public function set tipoProducto(value:String):void
		{
			_tipoProducto = value;
		}

		public function get estrategicos():Boolean
		{
			return _estrategicos;
		}

		public function set estrategicos(value:Boolean):void
		{
			_estrategicos = value;
		}

		public function get familia():String
		{
			return _familia;
		}

		public function set familia(value:String):void
		{
			_familia = value;
		}

		public function get agrupadoComprador():Boolean
		{
			return _agrupadoComprador;
		}

		public function set agrupadoComprador(value:Boolean):void
		{
			_agrupadoComprador = value;
		}

		public function get comparativas():Boolean
		{
			return _comparativas;
		}

		public function set comparativas(value:Boolean):void
		{
			_comparativas = value;
		}

		public function get anioFiscal():Boolean
		{
			return _anioFiscal;
		}

		public function set anioFiscal(value:Boolean):void
		{
			_anioFiscal = value;
		}

	}
}