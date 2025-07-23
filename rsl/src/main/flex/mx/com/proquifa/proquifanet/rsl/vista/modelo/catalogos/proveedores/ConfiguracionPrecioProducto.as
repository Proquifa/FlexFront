package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.comerciales.oferta.ParametrosOfertaCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Producto;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.proveedores.ConfiguracionPrecioProducto")]
	[Bindable]
	public class ConfiguracionPrecioProducto
	{
		private var _idConfiguracionFamilia:Number;
		private var _idConfiguracion:Number;
		private var _idConfiguracionCosto:Number;
		private var _idConfiguracionClasificacion:Number;
		private var _nivel:String;
		private var _idProveedor:Number;
		private var _costoFactorProducto:CostoFactor;
		private var _tentregaProducto:TiempoEntrega;
		private var _producto:Producto;
		private var _porciento:Number;
		private var _fua:Date;
		private var _idConfiguracionPrecioProducto:Number;
		private var _idClasificacion:Number;
		
		//variables visuales
		private var _lineDown:Boolean;
		private var _numFila:int;
		private var _totalProductos:int;
		private var _ubicacionItem:String;
		private var _filtroBusquedaPorCosto:String;
		private var _filtroBusquedaPorCatalogo:String;
		private var _filtroBusquedaPorConcepto:String;
		private var _titutloSeleccionado:Boolean;
		private var _animacion:Boolean;
		private var _idAgenteAduanal:Number;
		
		private var _isPrimero:Boolean;
		private var _isEnfocado:Boolean;
		private var _isUltimo:Boolean;
		private var _key:String;
		private var _categoriaNivel:String;
		private var _restablecer:Boolean;
		private var _restablecerCosto:Boolean;
		private var _restablecerTemporal:Boolean;
		private var _restablecerCostoTemporal:Boolean;
		private var _cliente_FUA:Date;
		private var _cantProductos:int;
		
		private var _costoProducto:Number; // Es el costo de venta
		private var _idConfiguracionPrecio:Number;
		
		private var _costoCompra:Number; 
		private var _tiempoEntregaRuta:ArrayCollection;
		private var _idClienteConfiguracion:Number
		private var _nivelConfiguracionCliente:String
		private var _factorClienteConfiguracion:Boolean;
		private var _rutaCliente:String;
		private var _compuestaCostoF:Boolean;
		private var _compuestaFactorU:Boolean;
		
		private var _vistaAbierta:Boolean;
		
		private var _parametrosOferta:ParametrosOfertaCliente;
		
		
		public function ConfiguracionPrecioProducto()
		{
			_isEnfocado = false;
			_isPrimero = false;
			_isUltimo = false;
			_costoProducto = 0;
		}
		
		public function get parametrosOferta():ParametrosOfertaCliente
		{
			return _parametrosOferta;
		}

		public function set parametrosOferta(value:ParametrosOfertaCliente):void
		{
			_parametrosOferta = value;
		}

		public function get vistaAbierta():Boolean
		{
			return _vistaAbierta;
		}

		public function set vistaAbierta(value:Boolean):void
		{
			_vistaAbierta = value;
		}

		public function get animacion():Boolean
		{
			return _animacion;
		}
		
		public function set animacion(value:Boolean):void
		{
			_animacion = value;
		}
		
		public function get fua():Date
		{
			return _fua;
		}
		
		public function set fua(value:Date):void
		{
			_fua = value;
		}
		
		public function get titutloSeleccionado():Boolean
		{
			return _titutloSeleccionado;
		}
		
		public function set titutloSeleccionado(value:Boolean):void
		{
			_titutloSeleccionado = value;
		}
		
		public function get filtroBusquedaPorConcepto():String
		{
			return _filtroBusquedaPorConcepto;
		}
		
		public function set filtroBusquedaPorConcepto(value:String):void
		{
			_filtroBusquedaPorConcepto = value;
		}
		
		public function get filtroBusquedaPorCatalogo():String
		{
			return _filtroBusquedaPorCatalogo;
		}
		
		public function set filtroBusquedaPorCatalogo(value:String):void
		{
			_filtroBusquedaPorCatalogo = value;
		}
		
		public function get filtroBusquedaPorCosto():String
		{
			return _filtroBusquedaPorCosto;
		}
		
		public function set filtroBusquedaPorCosto(value:String):void
		{
			_filtroBusquedaPorCosto = value;
		}
		
		public function get idConfiguracionFamilia():Number
		{
			return _idConfiguracionFamilia;
		}
		
		public function set idConfiguracionFamilia(value:Number):void
		{
			_idConfiguracionFamilia = value;
		}
		
		public function get porciento():Number
		{
			return _porciento;
		}
		
		public function set porciento(value:Number):void
		{
			_porciento = value;
		}
		
		public function get ubicacionItem():String
		{
			return _ubicacionItem;
		}
		
		public function set ubicacionItem(value:String):void
		{
			_ubicacionItem = value;
		}
		
		public function get idConfiguracion():Number
		{
			return _idConfiguracion;
		}
		
		public function set idConfiguracion(value:Number):void
		{
			_idConfiguracion = value;
		}
		
		public function get nivel():String
		{
			return _nivel;
		}
		
		public function set nivel(value:String):void
		{
			_nivel = value;
		}
		
		public function get idProveedor():Number
		{
			return _idProveedor;
		}
		
		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}
		
		public function get costoFactorProducto():CostoFactor
		{
			return _costoFactorProducto;
		}
		
		public function set costoFactorProducto(value:CostoFactor):void
		{
			_costoFactorProducto = value;
		}
		
		public function get tentregaProducto():TiempoEntrega
		{
			return _tentregaProducto;
		}
		
		public function set tentregaProducto(value:TiempoEntrega):void
		{
			_tentregaProducto = value;
		}
		
		public function get producto():Producto
		{
			return _producto;
		}
		
		public function set producto(value:Producto):void
		{
			_producto = value;
			
			if(_producto)
				_costoProducto = _producto.costo;
		}
		
		
		public function get lineDown():Boolean
		{
			return _lineDown;
		}
		
		public function set lineDown(value:Boolean):void
		{
			_lineDown = value;
		}
		public function get numFila():int
		{
			return _numFila;
		}
		
		public function set numFila(value:int):void
		{
			_numFila = value;
		}
		
		public function get totalProductos():int
		{
			return _totalProductos;
		}
		
		public function set totalProductos(value:int):void
		{
			_totalProductos = value;
		}
		
		public function get idConfiguracionCosto():Number
		{
			return _idConfiguracionCosto;
		}
		
		public function set idConfiguracionCosto(value:Number):void
		{
			_idConfiguracionCosto = value;
		}
		
		/*		public function get montoMinOCMV():Number
		{
		return _montoMinOCMV;
		}
		
		public function set montoMinOCMV(value:Number):void
		{
		_montoMinOCMV = value;
		}*/
		
		public function get idAgenteAduanal():Number
		{
			return _idAgenteAduanal;
		}
		
		public function set idAgenteAduanal(value:Number):void
		{
			_idAgenteAduanal = value;
		}
		
		public function get isPrimero():Boolean
		{
			return _isPrimero;
		}
		
		public function set isPrimero(value:Boolean):void
		{
			_isPrimero = value;
		}
		
		public function get isEnfocado():Boolean
		{
			return _isEnfocado;
		}
		
		public function set isEnfocado(value:Boolean):void
		{
			_isEnfocado = value;
		}
		
		public function get isUltimo():Boolean
		{
			return _isUltimo;
		}
		
		public function set isUltimo(value:Boolean):void
		{
			_isUltimo = value;
		}
		
		public function get idConfiguracionPrecioProducto():Number
		{
			return _idConfiguracionPrecioProducto;
		}
		
		public function set idConfiguracionPrecioProducto(value:Number):void
		{
			_idConfiguracionPrecioProducto = value;
		}
		
		public function get categoriaNivel():String
		{
			return _categoriaNivel;
		}
		
		public function set categoriaNivel(value:String):void
		{
			_categoriaNivel = value;
		}
		
		public function get key():String
		{
			return _key;
		}
		
		public function set key(value:String):void
		{
			_key = value;
		}
		
		public function get restablecer():Boolean
		{
			return _restablecer;
		}
		
		public function set restablecer(value:Boolean):void
		{
			_restablecer = value;
		}
		
		public function get cliente_FUA():Date
		{
			return _cliente_FUA;
		}
		
		public function set cliente_FUA(value:Date):void
		{
			_cliente_FUA = value;
		}
		
		public function get costoProducto():Number
		{
			return _costoProducto;
		}
		
		public function set costoProducto(value:Number):void
		{
			_costoProducto = value;
		}
		
		public function get restablecerCosto():Boolean
		{
			return _restablecerCosto;
		}
		
		public function set restablecerCosto(value:Boolean):void
		{
			_restablecerCosto = value;
		}
		
		public function get costoCompra():Number
		{
			return _costoCompra;
		}
		
		public function set costoCompra(value:Number):void
		{
			_costoCompra = value;
		}
		
		public function get cantProductos():int
		{
			return _cantProductos;
		}
		
		public function set cantProductos(value:int):void
		{
			_cantProductos = value;
		}
		
		public function get idConfiguracionClasificacion():Number
		{
			return _idConfiguracionClasificacion;
		}
		
		public function set idConfiguracionClasificacion(value:Number):void
		{
			_idConfiguracionClasificacion = value;
		}
		
		public function get idClasificacion():Number
		{
			return _idClasificacion;
		}
		
		public function set idClasificacion(value:Number):void
		{
			_idClasificacion = value;
		}
		
		public function get idConfiguracionPrecio():Number
		{
			return _idConfiguracionPrecio;
		}
		
		public function set idConfiguracionPrecio(value:Number):void
		{
			_idConfiguracionPrecio = value;
		}

		public function get tiempoEntregaRuta():ArrayCollection
		{
			return _tiempoEntregaRuta;
		}

		public function set tiempoEntregaRuta(value:ArrayCollection):void
		{
			_tiempoEntregaRuta = value;
		}

		public function get idClienteConfiguracion():Number
		{
			return _idClienteConfiguracion;
		}

		public function set idClienteConfiguracion(value:Number):void
		{
			_idClienteConfiguracion = value;
		}

		public function get nivelConfiguracionCliente():String
		{
			return _nivelConfiguracionCliente;
		}

		public function set nivelConfiguracionCliente(value:String):void
		{
			_nivelConfiguracionCliente = value;
		}

		public function get factorClienteConfiguracion():Boolean
		{
			return _factorClienteConfiguracion;
		}

		public function set factorClienteConfiguracion(value:Boolean):void
		{
			_factorClienteConfiguracion = value;
		}

		public function get rutaCliente():String
		{
			return _rutaCliente;
		}

		public function set rutaCliente(value:String):void
		{
			_rutaCliente = value;
		}

		public function get compuestaCostoF():Boolean
		{
			return _compuestaCostoF;
		}

		public function set compuestaCostoF(value:Boolean):void
		{
			_compuestaCostoF = value;
		}

		public function get compuestaFactorU():Boolean
		{
			return _compuestaFactorU;
		}

		public function set compuestaFactorU(value:Boolean):void
		{
			_compuestaFactorU = value;
		}

		public function get restablecerCostoTemporal():Boolean
		{
			return _restablecerCostoTemporal;
		}

		public function set restablecerCostoTemporal(value:Boolean):void
		{
			_restablecerCostoTemporal = value;
		}

		public function get restablecerTemporal():Boolean
		{
			return _restablecerTemporal;
		}

		public function set restablecerTemporal(value:Boolean):void
		{
			_restablecerTemporal = value;
		}

		
	}
}