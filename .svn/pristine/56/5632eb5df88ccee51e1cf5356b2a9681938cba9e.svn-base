package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.utils.ByteArray;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatoMoneda;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Proveedor")]
	[Bindable]
	public class Proveedor
	{
		//public var producto:Number;
		
		private var _clave:Number;
		private var _moneda:String;
		private var _idProveedor:Number;
		private var _nombre:String;
		private var _RSCalle:String;
		private var _zona:String;
		private var _CPago:String;
		private var _pais:String;
		private var _observa:String;
		private var _calle:String;
		private var _segundaDireccion:String;
		private var _delegacion:String;
		private var _estado:String;
		private var _cp:String;
		private var _numCliente:String;
		private var _habilitado:Boolean;
		private var _cheque:String;
		private var _transferencia:String;
		private var _tarjeta:String;
		private var _deposito:String;
		private var _piezasStock:int;
		private var _fechaActualizacion:Date;
		private var _descripcionAmpliada:String;
		private var _razonSocial:String;
		private var _ciudad:String
		private var _adeudosConocidos:int;
		private var _facturas:int;
		private var _morosidad:int;
		private var _activar:Boolean;
		private var _totalProveedores:Number;
		private var _socioComercial:Boolean;
		private var _imagen:String;
		private var _referencia:Referencia;
		private var _FUAProductos:Date;
		private var _tipoCambio:Number;
		private var _FUATipoCambio:Date;
		private var _monedaCompra:String;
		private var _monedaVenta:String;
		private var _cambioEnTipoCambio:Boolean;
		private var _pagador:Number;
		private var _comprador:Number;
		private var _colocarPhs:Boolean;
		private var _objetivoCrecimientoFundamental:String;
		private var _mesInicioFiscal:Number;
		private var _compraLinea:Boolean;
		
		
		private var _objectivoCrecimiento:String; 
		private var _montoAnualAnterior:Number;
		private var _objetivoTranscurrido:Number;
		private var _objetivoMontoTranscurrido:Number;
		
		private var _ranking:Number;
		private var _rol:String;
		
		
		private var _inspector:Number;
		
		//////////////////////////////////////////////  estas variables solo pertenecen a flex
		private var _medioPago:String;
		private var _totalPiezas:ProductoAlmacen;
		private var _numFila:Number;
		private var _bitsImagen:ByteArray; 
		private var _monedaVentaAbreviatura:String;
		private var _monedaVentaSimbolo:String;
		private var _monedaCompraAbreviatura:String;
		private var _monedaCompraSimbolo:String;
		private var _familias:Number;
		private var _productos:Number;
		private var _bytes:ByteArray; 
		private var _isProveedorNacional:Boolean;
		private var _isPrimeraVezenLlegar:Boolean;
		private var _vista_reverso:Boolean;
		private var _taxId:String;
		private var _aplicaRecoleccion:Boolean;
		private var _nombrePaisInlges:String;
		
		public function Proveedor()
		{
			//Por default establecer la moneda como dls
			_monedaCompraAbreviatura = UtilsFormatoMoneda.ABREVIATURA_DOLARES;
			_monedaCompraSimbolo = UtilsFormatoMoneda.SIMBOLO_DOLARES;
			
			_monedaVentaAbreviatura = UtilsFormatoMoneda.ABREVIATURA_DOLARES;
			_monedaVentaSimbolo = UtilsFormatoMoneda.ABREVIATURA_DOLARES;
			
		}
		

		public function get nombrePaisInlges():String
		{
			return _nombrePaisInlges;
		}

		public function set nombrePaisInlges(value:String):void
		{
			_nombrePaisInlges = value;
		}

		public function get aplicaRecoleccion():Boolean
		{
			return _aplicaRecoleccion;
		}

		public function set aplicaRecoleccion(value:Boolean):void
		{
			_aplicaRecoleccion = value;
		}

		public function get compraLinea():Boolean
		{
			return _compraLinea;
		}

		public function set compraLinea(value:Boolean):void
		{
			_compraLinea = value;
		}

		public function get objetivoCrecimientoFundamental():String
		{
			return _objetivoCrecimientoFundamental;
		}

		public function set objetivoCrecimientoFundamental(value:String):void
		{
			_objetivoCrecimientoFundamental = value;
		}

		public function get comprador():Number
		{
			return _comprador;
		}

		public function set comprador(value:Number):void
		{
			_comprador = value;
		}

		public function get pagador():Number
		{
			return _pagador;
		}

		public function set pagador(value:Number):void
		{
			_pagador = value;
		}

		public function get FUAProductos():Date
		{
			return _FUAProductos;
		}

		public function set FUAProductos(value:Date):void
		{
			_FUAProductos = value;
		}

		public function get imagen():String
		{
			return _imagen;
		}

		public function set imagen(value:String):void
		{
			_imagen = value;
		}

		public function get referencia():Referencia
		{
			return _referencia;
		}

		public function set referencia(value:Referencia):void
		{
			_referencia = value;
		}

		public function get bitsImagen():ByteArray
		{
			return _bitsImagen;
		}

		public function set bitsImagen(value:ByteArray):void
		{
			_bitsImagen = value;
		}

		public function get socioComercial():Boolean
		{
			return _socioComercial;
		}

		public function set socioComercial(value:Boolean):void
		{
			_socioComercial = value;
		}

		public function get totalProveedores():Number
		{
			return _totalProveedores;
		}

		public function set totalProveedores(value:Number):void
		{
			_totalProveedores = value;
		}

		public function get activar():Boolean
		{
			return _activar;
		}

		public function set activar(value:Boolean):void
		{
			_activar = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}
		
		public function set numFila(value:Number):void
		{
			_numFila = value;
		}
		
		public function get ciudad():String
		{
			return _ciudad;
		}
		
		public function set ciudad(value:String):void
		{
			_ciudad = value;
		}
		
		public function get razonSocial():String
		{
			return _razonSocial;
		}
		
		public function set razonSocial(value:String):void
		{
			_razonSocial = value;
		}
		
		public function get descripcionAmpliada():String
		{
			return _descripcionAmpliada;
		}
		
		public function set descripcionAmpliada(value:String):void
		{
			_descripcionAmpliada = value;
		}
		
		public function get fechaActualizacion():Date
		{
			return _fechaActualizacion;
		}
		
		public function set fechaActualizacion(value:Date):void
		{
			_fechaActualizacion = value;
		}
		
		public function get numCliente():String
		{
			return _numCliente;
		}
		
		public function set numCliente(value:String):void
		{
			_numCliente = value;
		}
		
		public function get cp():String
		{
			return _cp;
		}
		
		public function set cp(value:String):void
		{
			_cp = value;
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get delegacion():String
		{
			return _delegacion;
		}
		
		public function set delegacion(value:String):void
		{
			_delegacion = value;
		}
		
		public function get segundaDireccion():String
		{
			return _segundaDireccion;
		}
		
		public function set segundaDireccion(value:String):void
		{
			_segundaDireccion = value;
		}
		
		public function get calle():String
		{
			return _calle;
		}
		
		public function set calle(value:String):void
		{
			_calle = value;
		}
		
		public function get clave():Number
		{
			return _clave;
		}
		
		public function set clave(value:Number):void
		{
			_clave = value;
		}
		
		public function get moneda():String
		{
			return _moneda;
		}
		
		public function set moneda(value:String):void
		{
			_moneda = value;
		}
		
		public function get idProveedor():Number
		{
			return _idProveedor;
		}
		
		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}
		
		public function get nombre():String
		{
			return _nombre;
		}
		
		public function set nombre(value:String):void
		{
			_nombre = value;
		}
		
		public function get RSCalle():String
		{
			return _RSCalle;
		}
		
		public function set RSCalle(value:String):void
		{
			_RSCalle = value;
		}
		
		public function get zona():String
		{
			return _zona;
		}
		
		public function set zona(value:String):void
		{
			_zona = value;
		}
		
		public function get CPago():String
		{
			return _CPago;
		}
		
		public function set CPago(value:String):void
		{
			_CPago = value;
		}
		
		public function get pais():String
		{
			return _pais;
		}
		
		public function set pais(value:String):void
		{
			_pais = value;
			
			if(value.toLocaleLowerCase() == "mexico" || value.toLocaleLowerCase() == "méxico")
				_isProveedorNacional = true;
			else
				_isProveedorNacional = false;
		}
		
		public function get observa():String
		{
			return _observa;
		}
		
		public function set observa(value:String):void
		{
			if(value == ""){
				value = "ND";
				_observa = value;
			}else{
				_observa = value;	
			}	
		}
		
		public function get habilitado():Boolean
		{
			return _habilitado;
		}
		
		public function set habilitado(value:Boolean):void
		{
			_habilitado = value;
		}
		
		public function get cheque():String
		{
			return _cheque;
		}
		
		public function set cheque(value:String):void
		{
			_cheque = value;
		}
		
		public function get transferencia():String
		{
			return _transferencia;
		}
		
		public function set transferencia(value:String):void
		{
			_transferencia = value;
		}
		
		public function get tarjeta():String
		{
			return _tarjeta;
		}
		
		public function set tarjeta(value:String):void
		{
			_tarjeta = value;
		}
		
		public function get deposito():String
		{
			return _deposito;
		}
		
		public function set deposito(value:String):void
		{
			_deposito = value;
		}
		
		public function get medioPago():String
		{
			return _medioPago;
		}
		
		public function set medioPago(value:String):void
		{
			_medioPago = value;
		}
		
		public function get totalPiezas():ProductoAlmacen
		{
			return _totalPiezas;
		}
		
		public function set totalPiezas(value:ProductoAlmacen):void
		{
			_totalPiezas = value;
		}
		
		public function get adeudosConocidos():int
		{
			return _adeudosConocidos;
		}
		
		public function set adeudosConocidos(value:int):void
		{
			_adeudosConocidos = value;
		}
		
		public function get facturas():int
		{
			return _facturas;
		}
		
		public function set facturas(value:int):void
		{
			_facturas = value;
		}
		
		public function get morosidad():int
		{
			return _morosidad;
		}
		
		public function set morosidad(value:int):void
		{
			_morosidad = value;
		}
		
		public function get piezasStock():int
		{
			return _piezasStock;
		}
		
		public function set piezasStock(value:int):void
		{
			_piezasStock = value;
		}

		public function get monedaCompra():String
		{
			return _monedaCompra;
		}

		public function set monedaCompra(value:String):void
		{
			_monedaCompra = value;
			
			_monedaCompraAbreviatura = UtilsFormatoMoneda.monedaGenerica(value,UtilsFormatoMoneda.ABREVIATURA_DOLARES);
			_monedaCompraSimbolo = UtilsFormatoMoneda.determinaMoneda(value,UtilsFormatoMoneda.SIMBOLO_DOLARES);
		}

		public function get monedaVenta():String
		{
			return _monedaVenta;
		}

		public function set monedaVenta(value:String):void
		{
			_monedaVenta = value;
			
			_monedaVentaAbreviatura = UtilsFormatoMoneda.monedaGenerica(value,UtilsFormatoMoneda.ABREVIATURA_DOLARES);
			_monedaVentaSimbolo = UtilsFormatoMoneda.determinaMoneda(value,UtilsFormatoMoneda.SIMBOLO_DOLARES);
		}

		public function get tipoCambio():Number
		{
			return _tipoCambio;
		}

		public function set tipoCambio(value:Number):void
		{
			_tipoCambio = value;
		}

		public function get FUATipoCambio():Date
		{
			return _FUATipoCambio;
		}

		public function set FUATipoCambio(value:Date):void
		{
			_FUATipoCambio = value;
		}

		public function get monedaVentaAbreviatura():String
		{
			return _monedaVentaAbreviatura;
		}

		public function set monedaVentaAbreviatura(value:String):void
		{
			_monedaVentaAbreviatura = value;
		}

		public function get monedaVentaSimbolo():String
		{
			return _monedaVentaSimbolo;
		}

		public function set monedaVentaSimbolo(value:String):void
		{
			_monedaVentaSimbolo = value;
		}

		public function get monedaCompraAbreviatura():String
		{
			return _monedaCompraAbreviatura;
		}

		public function set monedaCompraAbreviatura(value:String):void
		{
			_monedaCompraAbreviatura = value;
		}

		public function get monedaCompraSimbolo():String
		{
			return _monedaCompraSimbolo;
		}

		public function set monedaCompraSimbolo(value:String):void
		{
			_monedaCompraSimbolo = value;
		}

		public function get familias():Number
		{
			return _familias;
		}

		public function set familias(value:Number):void
		{
			_familias = value;
		}

		public function get productos():Number
		{
			return _productos;
		}

		public function set productos(value:Number):void
		{
			_productos = value;
		}

		public function get bytes():ByteArray
		{
			return _bytes;
		}

		public function set bytes(value:ByteArray):void
		{
			_bytes = value;
		}

		public function get isProveedorNacional():Boolean
		{
			return _isProveedorNacional;
		}

		public function set isProveedorNacional(value:Boolean):void
		{
			_isProveedorNacional = value;
		}

		public function get cambioEnTipoCambio():Boolean
		{
			return _cambioEnTipoCambio;
		}

		public function set cambioEnTipoCambio(value:Boolean):void
		{
			_cambioEnTipoCambio = value;
		}

		public function get isPrimeraVezenLlegar():Boolean
		{
			return _isPrimeraVezenLlegar;
		}

		public function set isPrimeraVezenLlegar(value:Boolean):void
		{
			_isPrimeraVezenLlegar = value;
		}

		public function get colocarPhs():Boolean
		{
			return _colocarPhs;
		}

		public function set colocarPhs(value:Boolean):void
		{
			_colocarPhs = value;
		}

		public function get objectivoCrecimiento():String
		{
			return _objectivoCrecimiento;
		}

		public function set objectivoCrecimiento(value:String):void
		{
			_objectivoCrecimiento = value;
		}

		public function get montoAnualAnterior():Number
		{
			return _montoAnualAnterior;
		}

		public function set montoAnualAnterior(value:Number):void
		{
			_montoAnualAnterior = value;
		}

		public function get objetivoTranscurrido():Number
		{
			return _objetivoTranscurrido;
		}

		public function set objetivoTranscurrido(value:Number):void
		{
			_objetivoTranscurrido = value;
		}

		public function get objetivoMontoTranscurrido():Number
		{
			return _objetivoMontoTranscurrido;
		}

		public function set objetivoMontoTranscurrido(value:Number):void
		{
			_objetivoMontoTranscurrido = value;
		}

		public function get ranking():Number
		{
			return _ranking;
		}

		public function set ranking(value:Number):void
		{
			_ranking = value;
		}

		public function get rol():String
		{
			return _rol;
		}

		public function set rol(value:String):void
		{
			_rol = value;
		}

		public function get inspector():Number
		{
			return _inspector;
		}

		public function set inspector(value:Number):void
		{
			_inspector = value;
		}

		public function get vista_reverso():Boolean
		{
			return _vista_reverso;
		}

		public function set vista_reverso(value:Boolean):void
		{
			_vista_reverso = value;
		}

		public function get mesInicioFiscal():Number
		{
			return _mesInicioFiscal;
		}

		public function set mesInicioFiscal(value:Number):void
		{
			_mesInicioFiscal = value;
		}

		public function get taxId():String
		{
			return _taxId;
		}

		public function set taxId(value:String):void
		{
			_taxId = value;
		}

		
	}
}