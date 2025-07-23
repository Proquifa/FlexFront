package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.PoliticasPrecio")]
	[Bindable]
	public class PoliticasPrecio
	{
		private var _idProveedor:Number;
		private var _idPolitica:Number;
		private var _idPoliticaTipo:Number;
		private var _idPoliticaCatalogo:Number;
		private var _factor:Number;
		private var _justificacion:String;
		private var _PGHabilitada:Boolean;
		private var _PTHabilitada:Boolean;
		private var _PCHabilitada:Boolean;
		private var _fechaActualizacion:Date;
		private var _control:String;
		private var _linea:String;
		private var _identificador:String;
		private var _idUsuario:Number;
		private var _nombreUsuario:String;
		private var _fehcaVigencia:Date;
		private var _idProducto:Number;
		private var _descripcionProducto:String;
		private var _catalogo:String;
		private var _marca:String;
		private var _tipoProducto:String;
		private var _costo:Number;
		private var _habilitado:Boolean;
		private var _fechaDeCaducidad:Date;
		
		public function PoliticasPrecio()
		{
		}

		public function get idProveedor():Number
		{
			return _idProveedor;
		}

		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}

		public function get idPolitica():Number
		{
			return _idPolitica;
		}

		public function set idPolitica(value:Number):void
		{
			_idPolitica = value;
		}

		public function get idPoliticaTipo():Number
		{
			return _idPoliticaTipo;
		}

		public function set idPoliticaTipo(value:Number):void
		{
			_idPoliticaTipo = value;
		}

		public function get idPoliticaCatalogo():Number
		{
			return _idPoliticaCatalogo;
		}

		public function set idPoliticaCatalogo(value:Number):void
		{
			_idPoliticaCatalogo = value;
		}

		public function get factor():Number
		{
			return _factor;
		}

		public function set factor(value:Number):void
		{
			_factor = value;
		}

		public function get justificacion():String
		{
			return _justificacion;
		}

		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}

		public function get PGHabilitada():Boolean
		{
			return _PGHabilitada;
		}

		public function set PGHabilitada(value:Boolean):void
		{
			_PGHabilitada = value;
		}

		public function get PTHabilitada():Boolean
		{
			return _PTHabilitada;
		}

		public function set PTHabilitada(value:Boolean):void
		{
			_PTHabilitada = value;
		}

		public function get PCHabilitada():Boolean
		{
			return _PCHabilitada;
		}

		public function set PCHabilitada(value:Boolean):void
		{
			_PCHabilitada = value;
		}

		public function get fechaActualizacion():Date
		{
			return _fechaActualizacion;
		}

		public function set fechaActualizacion(value:Date):void
		{
			_fechaActualizacion = value;
		}

		public function get control():String
		{
			return _control;
		}

		public function set control(value:String):void
		{
			_control = value;
		}

		public function get linea():String
		{
			return _linea;
		}

		public function set linea(value:String):void
		{
			_linea = value;
		}

		public function get identificador():String
		{
			return _identificador;
		}

		public function set identificador(value:String):void
		{
			_identificador = value;
		}

		public function get idUsuario():Number
		{
			return _idUsuario;
		}

		public function set idUsuario(value:Number):void
		{
			_idUsuario = value;
		}

		public function get nombreUsuario():String
		{
			return _nombreUsuario;
		}

		public function set nombreUsuario(value:String):void
		{
			_nombreUsuario = value;
		}

		public function get fehcaVigencia():Date
		{
			return _fehcaVigencia;
		}

		public function set fehcaVigencia(value:Date):void
		{
			_fehcaVigencia = value;
		}

		public function get idProducto():Number
		{
			return _idProducto;
		}

		public function set idProducto(value:Number):void
		{
			_idProducto = value;
		}

		public function get descripcionProducto():String
		{
			return _descripcionProducto;
		}

		public function set descripcionProducto(value:String):void
		{
			_descripcionProducto = value;
		}

		public function get catalogo():String
		{
			return _catalogo;
		}

		public function set catalogo(value:String):void
		{
			_catalogo = value;
		}

		public function get marca():String
		{
			return _marca;
		}

		public function set marca(value:String):void
		{
			_marca = value;
		}

		public function get tipoProducto():String
		{
			return _tipoProducto;
		}

		public function set tipoProducto(value:String):void
		{
			_tipoProducto = value;
		}

		public function get costo():Number
		{
			return _costo;
		}

		public function set costo(value:Number):void
		{
			_costo = value;
		}

		public function get habilitado():Boolean
		{
			return _habilitado;
		}

		public function set habilitado(value:Boolean):void
		{
			_habilitado = value;
		}

		public function get fechaDeCaducidad():Date
		{
			return _fechaDeCaducidad;
		}

		public function set fechaDeCaducidad(value:Date):void
		{
			_fechaDeCaducidad = value;
		}

	}
}