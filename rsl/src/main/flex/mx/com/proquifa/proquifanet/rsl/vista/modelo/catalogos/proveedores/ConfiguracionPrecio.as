package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal.AgenteAConfigPrecio;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.ConfiguracionPrecio")]
	[Bindable]
	public class ConfiguracionPrecio
	{
		
		private var _idConfiguracionPrecio:Number;
		private var _tipo:String;
		private var _subtipo:String;
		private var _control:String;
		private var _industria:String;
		private var _idProveedor:Number;
		private var _idCostoFactor:Number;
		private var _idTiempoEntrega:Number;
		private var _fechaUltimaActualizacion:Date;
		private var _noProductos:Number;
		private var _noClasificaciones:Number;
		private var _aacp:AgenteAConfigPrecio;
		
		private var _caducidad:Date;
		private var _restringirFExpress:Boolean;
		private var _restringirStock:Boolean;
		private var _restringirDistribuidor:Boolean;
		
		//variables para vista
		private var _numeroFam:Number;
		private var _numFila:uint;
		private var _ubicacionItem:String;
		private var _titutloSeleccionado:Boolean;
		private var _animacion:Boolean;
		private var _familia:String;
		
		public function ConfiguracionPrecio()
		{
		}

		public function get idConfiguracionPrecio():Number
		{
			return _idConfiguracionPrecio;
		}

		public function set idConfiguracionPrecio(value:Number):void
		{
			_idConfiguracionPrecio = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get subtipo():String
		{
			return _subtipo;
		}

		public function set subtipo(value:String):void
		{
			_subtipo = value;
		}

		public function get control():String
		{
			return _control;
		}

		public function set control(value:String):void
		{
			_control = value;
		}

		public function get industria():String
		{
			return _industria;
		}

		public function set industria(value:String):void
		{
			_industria = value;
		}

		public function get idProveedor():Number
		{
			return _idProveedor;
		}

		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}

		public function get idCostoFactor():Number
		{
			return _idCostoFactor;
		}

		public function set idCostoFactor(value:Number):void
		{
			_idCostoFactor = value;
		}

		public function get idTiempoEntrega():Number
		{
			return _idTiempoEntrega;
		}

		public function set idTiempoEntrega(value:Number):void
		{
			_idTiempoEntrega = value;
		}

		public function get fechaUltimaActualizacion():Date
		{
			return _fechaUltimaActualizacion;
		}

		public function set fechaUltimaActualizacion(value:Date):void
		{
			_fechaUltimaActualizacion = value;
		}

		public function get noProductos():Number
		{
			return _noProductos;
		}

		public function set noProductos(value:Number):void
		{
			_noProductos = value;
		}

		public function get numeroFam():Number
		{
			return _numeroFam;
		}

		public function set numeroFam(value:Number):void
		{
			_numeroFam = value;
		}

		public function get aacp():AgenteAConfigPrecio
		{
			return _aacp;
		}

		public function set aacp(value:AgenteAConfigPrecio):void
		{
			_aacp = value;
		}

		public function get numFila():uint
		{
			return _numFila;
		}

		public function set numFila(value:uint):void
		{
			_numFila = value;
		}

		public function get ubicacionItem():String
		{
			return _ubicacionItem;
		}

		public function set ubicacionItem(value:String):void
		{
			_ubicacionItem = value;
		}

		public function get titutloSeleccionado():Boolean
		{
			return _titutloSeleccionado;
		}

		public function set titutloSeleccionado(value:Boolean):void
		{
			_titutloSeleccionado = value;
		}

		public function get animacion():Boolean
		{
			return _animacion;
		}

		public function set animacion(value:Boolean):void
		{
			_animacion = value;
		}

		public function get caducidad():Date
		{
			return _caducidad;
		}

		public function set caducidad(value:Date):void
		{
			_caducidad = value;
		}

		public function get restringirFExpress():Boolean
		{
			return _restringirFExpress;
		}

		public function set restringirFExpress(value:Boolean):void
		{
			_restringirFExpress = value;
		}

		public function get restringirStock():Boolean
		{
			return _restringirStock;
		}

		public function set restringirStock(value:Boolean):void
		{
			_restringirStock = value;
		}

		public function get restringirDistribuidor():Boolean
		{
			return _restringirDistribuidor;
		}

		public function set restringirDistribuidor(value:Boolean):void
		{
			_restringirDistribuidor = value;
		}

		public function get noClasificaciones():Number
		{
			return _noClasificaciones;
		}

		public function set noClasificaciones(value:Number):void
		{
			_noClasificaciones = value;
		}

		public function get familia():String
		{
			return _familia;
		}

		public function set familia(value:String):void
		{
			_familia = value;
		}


	}
}