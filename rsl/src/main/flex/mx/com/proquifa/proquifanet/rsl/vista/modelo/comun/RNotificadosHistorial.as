package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.RNotificadosHistorial")]
	public class RNotificadosHistorial
	{
		private var _nombre:String;
		private var  _factura:String;
		private var  _condicionDePago:String;
		private var  _curp:String;
		private var  _razonSocial:String;
		private var  _calle:String;
		private var  _delegacion:String;
		private var  _cp:String;
		private var  _estado:String;
		private var  _pais:String;
		private var  _idempresa:int;
		private var  _numeroDePartida:int;
		private var  _catalogo:String;
		private var  _precio:String;
		private var  _descripcion:String;
		private var  _moneda:String;
		private var  _IVA:String;

		public function RNotificadosHistorial()
		{
		}

		public function get IVA():String
		{
			return _IVA;
		}

		public function set IVA(value:String):void
		{
			if (value == null){
				value = "ND";
				_IVA = value;
			}else{
				_IVA = value;	
			}
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			if (value == null){
				value = "ND";
				_moneda = value;
			}else{
				_moneda = value;	
			}
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			if (value == null){
				value = "ND";
				_descripcion = value;
			}else{
				_descripcion = value;	
			}
		}

		public function get precio():String
		{
			return _precio;
		}

		public function set precio(value:String):void
		{
			if (value == null){
				value = "ND";
				_precio = value;
			}else{
				_precio = value;	
			}
		}

		public function get catalogo():String
		{
			return _catalogo;
		}

		public function set catalogo(value:String):void
		{
			if (value == null){
				value = "ND";
				_catalogo = value;
			}else{
				_catalogo = value;	
			}
		}

		public function get numeroDePartida():int
		{
			return _numeroDePartida;
		}

		public function set numeroDePartida(value:int):void
		{
			_numeroDePartida = value;
		}

		public function get idempresa():int
		{
			return _idempresa;
		}

		public function set idempresa(value:int):void
		{
			_idempresa = value;
		}

		public function get pais():String
		{
			return _pais;
		}

		public function set pais(value:String):void
		{
			_pais = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get cp():String
		{
			return _cp;
		}

		public function set cp(value:String):void
		{
			_cp = value;
		}

		public function get delegacion():String
		{
			return _delegacion;
		}

		public function set delegacion(value:String):void
		{
			_delegacion = value;
		}

		public function get calle():String
		{
			return _calle;
		}

		public function set calle(value:String):void
		{
			_calle = value;
		}

		public function get razonSocial():String
		{
			return _razonSocial;
		}

		public function set razonSocial(value:String):void
		{
			_razonSocial = value;
		}

		public function get curp():String
		{
			return _curp;
		}

		public function set curp(value:String):void
		{
			_curp = value;
		}

		public function get condicionDePago():String
		{
			return _condicionDePago;
		}

		public function set condicionDePago(value:String):void
		{
			_condicionDePago = value;
		}

		public function get factura():String
		{
			return _factura;
		}

		public function set factura(value:String):void
		{
			_factura = value;
		}

		public function get nombre():String
		{
			return _nombre;
		}

		public function set nombre(value:String):void
		{
			_nombre = value;
		}

	}
}