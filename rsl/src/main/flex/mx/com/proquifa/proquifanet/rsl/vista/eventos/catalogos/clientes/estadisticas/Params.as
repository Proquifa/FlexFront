package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.estadisticas
{
	internal class Params
	{
		private var _idCliente:int;
		private var _anio:Number;
		private var _periodo:String;
		private var _tipoPeriodo:Number;
		private var _mes:Number;
		private var _rangoMinMes:int;
		private var _rangoMaxMes:int;
		private var _idVentas:Number;
		private var _esacString:String;
		private var _tipoT:String;
		private var _idEsacMaster:Number;
		private var _conEsacMaster:Boolean;
		private var _corporativo:int;
		private var _lineal:int;
		private var _idUsuario:int;
		private var _idColaborador:int;
		
		public function Params()
		{
			
		}
		
		
		private var _cloenableProperties:Array = ["_idCliente","_anio","_periodo","_tipoPeriodo","_mes","_rangoMinMes","_rangoMaxMes","_idVentas","_esacString",
			"_tipoT","_idEsacMaster","_conEsacMaster","_corporativo","_lineal","_idUsuario","_idColaborador"];
		
		public function clone():Params
		{
			var t:Params = new Params;
			for each (var i:String in _cloenableProperties) 
			{
				t[i] = this[i];
			}
			
			return t;
		}
		
		public function get idCliente():int
		{
			return _idCliente;
		}
		
		public function set idCliente(value:int):void
		{
			_idCliente = value;
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
		
		public function get tipoPeriodo():Number
		{
			return _tipoPeriodo;
		}
		
		public function set tipoPeriodo(value:Number):void
		{
			_tipoPeriodo = value;
		}
		
		public function get mes():Number
		{
			return _mes;
		}
		
		public function set mes(value:Number):void
		{
			_mes = value;
		}
		
		public function get rangoMinMes():int
		{
			return _rangoMinMes;
		}
		
		public function set rangoMinMes(value:int):void
		{
			_rangoMinMes = value;
		}
		
		public function get rangoMaxMes():int
		{
			return _rangoMaxMes;
		}
		
		public function set rangoMaxMes(value:int):void
		{
			_rangoMaxMes = value;
		}
		
		public function get idVentas():Number
		{
			return _idVentas;
		}
		
		public function set idVentas(value:Number):void
		{
			_idVentas = value;
		}
		
		public function get esacString():String
		{
			return _esacString;
		}
		
		public function set esacString(value:String):void
		{
			_esacString = value;
		}
		
		public function get tipoT():String
		{
			return _tipoT;
		}
		
		public function set tipoT(value:String):void
		{
			_tipoT = value;
		}
		
		public function get idEsacMaster():Number
		{
			return _idEsacMaster;
		}
		
		public function set idEsacMaster(value:Number):void
		{
			_idEsacMaster = value;
		}
		
		public function get conEsacMaster():Boolean
		{
			return _conEsacMaster;
		}
		
		public function set conEsacMaster(value:Boolean):void
		{
			_conEsacMaster = value;
		}

		public function get corporativo():int
		{
			return _corporativo;
		}

		public function set corporativo(value:int):void
		{
			_corporativo = value;
		}

		public function get lineal():int
		{
			return _lineal;
		}

		public function set lineal(value:int):void
		{
			_lineal = value;
		}

		public function get idUsuario():int
		{
			return _idUsuario;
		}

		public function set idUsuario(value:int):void
		{
			_idUsuario = value;
		}

		public function get idColaborador():int
		{
			return _idColaborador;
		}

		public function set idColaborador(value:int):void
		{
			_idColaborador = value;
		}


	}
}