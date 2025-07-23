package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.PartidaCompra;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.ProductoAlmacen;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.PartidaPedido")]
	[Bindable]
	public dynamic class PartidaPedido extends Producto
	{
		/*public var propiedades:ArrayCollection = new ArrayCollection([
			   {propiedad:"FPEntrega",formato:"fechaHora",tipo:"Date",newpropiedad:"fechaPEntrega"},
			   {propiedad:"FER",formato:"fechaHora",tipo:"Date",newpropiedad:"fechaERealizacion"},
			  {propiedad:"fRealizacion",formato:"fechaHora",tipo:"Date",newpropiedad:"fechaRealizacion"}]);*/
		
		private var _idPPedido:int;
		private var _idComplemento:int;
		private var _clave:int;
		private var _factura:int;
		private var _faltan:int;
		private var _noReubicaciones:int;
		private var _cantidadPedida:int;
		private var _part:int;
		
		private var _totalPiezas:Number;
		private var _totalMonto:Number;
		private var _precio:Number;
		private var _Provee:Number;	
		private var _precioUnitarioDLS:Number;
		private var _precioUnitarioDLSTotal:Number;
		
		private var _fFactura:Date;
		private var _fRecibido:Date;
		private var _fEntrega:Date;
		private var _FPEntrega:Date;
		private var _fRealizacion:Date;
		private var _fer:Date;
		private var _fEnvio:Date;
		private var _rutaFFin:Date;
		private var _fechaOrigen:Date;
		
		private var _stock:Boolean;
		private var _reasignada:Boolean;
		private var _faltaPago:Boolean;
		private var _bloqueadaAC:Boolean;
		private var _entregaEnTiempo:Boolean;
		private var _info:Boolean = true;
		
		private var _ordenesCompra:ArrayCollection;
		
		private var _cpedido:String;
		private var _guia:String;
		private var _comenta:String;
		private var _pedLote:String;
		private var _idEvento:String;
		private var _ac:String;
		private var _oc:String;
		private var _pedimento:String;
		private var _fpor:String;
		private var _idGuia:String;
		private var _mensajeria:String;
		private var _idEntrega:String;
		private var _cotiza:String;
		private var _idRuta:String;
		private var _responsable:String;
		private var _decision:String;
		private var _tipoFlete:String;
		private var _edicion:String;
		private var _caducidad:String;
		private var _contacto:String;
		private var _trafico:String;
		private var _mesCaducidad:String;
		private var _anoCaducidad:String;
		private var _dc:String;
		private var _conforme:String;
		private var _tiempoProceso:String;
		private var _respuesta:String;
		private var _vieneD:String;
		
		private var _numeroFila:int;
		private var _diasEnAlmacen:int;
		private var _activo:int;
		private var _totalPartidas:Number;
		private var _idPedido:Number;
		private var _habilitaTotalPArtidas:Boolean;
		private var _ultimoLista:Boolean;
		private var _ruta:String;
		private var _folioFD:String;
		private var _destinos:String;
		private var _fondo:String;
		private var _enfoque:String;
		private var _fPEntrega:Date;
		private var _pedido:Pedido;
		private var _inTime:String;
		
		private var _estado:String;
		private var _fea:Date;
		private var _avisoCambio:Boolean;
		
		private var _nombreProveedor:String;
		private var _cant_piezas:int;
		private var _monto:Number;
		private var _cant_productos:int;
		private var _cant_programados:int;
		private var _cant_regular:int;
		private var _cant_fleteExpress:int;
		private var _id_clientes:int;
		private var _nombreCliente:String;
		private var _enStock:int;
		private var _cantStockTransito:int;
		private var _pakinglist:String;
		private var _configuracionPrecio:ConfiguracionPrecio;
		
		private var _montoUnitario:Number;
		private var _flete:Number;
		private var _agenteAduanal:String;
		
		private var _totalProveedores:int;
		private var _numFila:int;
		private var _totalOD:int;
		private var _ordenDespacho:Number;
		
		private var _VAD:Number;
		private var _TIC:Number;
		private var _PRV:Number;
		private var _CNT:Number;
		private var _VAL:Number;
		private var _punteros:Array;
		private var _compraEnLinea:Boolean;
		private var _nombreVendedor:String;
		private var _vendedorEsPharma:Boolean;
		
		private var _cant_entrega_unica:int;
		private var _cant_flete_normal:int;
		private var _suplementos:ArrayCollection;
		
		//propiedades de partidas en Stock
		private var _totalStock:Number;
		private var _productosEnStock:ArrayCollection;	
		private var _idPCompra:Number;
		private var _inspector:String;
		private var _disponibilidadPedimento:String;
		private var _cantidadDisponibleSTOCK:Number;

		public function get cantidadDisponibleSTOCK():Number
		{
			return _cantidadDisponibleSTOCK;
		}

		public function set cantidadDisponibleSTOCK(value:Number):void
		{
			_cantidadDisponibleSTOCK = value;
		}

		public function get disponibilidadPedimento():String
		{
			return _disponibilidadPedimento;
		}

		public function set disponibilidadPedimento(value:String):void
		{
			_disponibilidadPedimento = value;
		}

		public function get inspector():String
		{
			return _inspector;
		}

		public function set inspector(value:String):void
		{
			_inspector = value;
		}

		public function get idPCompra():Number
		{
			return _idPCompra;
		}

		public function set idPCompra(value:Number):void
		{
			_idPCompra = value;
		}

		public function get productosEnStock():ArrayCollection
		{
			return _productosEnStock;
		}

		public function set productosEnStock(value:ArrayCollection):void
		{
			_productosEnStock = value;
		}

		public function get totalStock():Number
		{
			return _totalStock;
		}

		public function set totalStock(value:Number):void
		{
			_totalStock = value;
		}

		public function get suplementos():ArrayCollection
		{
			return _suplementos;
		}

		public function set suplementos(value:ArrayCollection):void
		{
			_suplementos = value;
		}

		public function get cant_flete_normal():int
		{
			return _cant_flete_normal;
		}

		public function set cant_flete_normal(value:int):void
		{
			_cant_flete_normal = value;
		}

		public function get cant_entrega_unica():int
		{
			return _cant_entrega_unica;
		}

		public function set cant_entrega_unica(value:int):void
		{
			_cant_entrega_unica = value;
		}

		public function get nombreVendedor():String
		{
			return _nombreVendedor;
		}

		public function set nombreVendedor(value:String):void
		{
			_nombreVendedor = value;
		}

		public function get vendedorEsPharma():Boolean
		{
			return _vendedorEsPharma;
		}

		public function set vendedorEsPharma(value:Boolean):void
		{
			_vendedorEsPharma = value;
		}

		public function get compraEnLinea():Boolean
		{
			return _compraEnLinea;
		}

		public function set compraEnLinea(value:Boolean):void
		{
			_compraEnLinea = value;
		}

		public function get punteros():Array
		{
			return _punteros;
		}

		public function set punteros(value:Array):void
		{
			_punteros = value;
		}

		public function get VAL():Number
		{
			return _VAL;
		}

		public function set VAL(value:Number):void
		{
			_VAL = value;
		}

		public function get CNT():Number
		{
			return _CNT;
		}

		public function set CNT(value:Number):void
		{
			_CNT = value;
		}

		public function get PRV():Number
		{
			return _PRV;
		}

		public function set PRV(value:Number):void
		{
			_PRV = value;
		}

		public function get TIC():Number
		{
			return _TIC;
		}

		public function set TIC(value:Number):void
		{
			_TIC = value;
		}

		public function get VAD():Number
		{
			return _VAD;
		}

		public function set VAD(value:Number):void
		{
			_VAD = value;
		}

		public function get ordenDespacho():Number
		{
			return _ordenDespacho;
		}

		public function set ordenDespacho(value:Number):void
		{
			_ordenDespacho = value;
		}

		public function get totalOD():int
		{
			return _totalOD;
		}

		public function set totalOD(value:int):void
		{
			_totalOD = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get totalProveedores():int
		{
			return _totalProveedores;
		}

		public function set totalProveedores(value:int):void
		{
			_totalProveedores = value;
		}

		public function get agenteAduanal():String
		{
			return _agenteAduanal;
		}

		public function set agenteAduanal(value:String):void
		{
			_agenteAduanal = value;
		}

		public function get flete():Number
		{
			return _flete;
		}

		public function set flete(value:Number):void
		{
			_flete = value;
		}

		public function get montoUnitario():Number
		{
			return _montoUnitario;
		}

		public function set montoUnitario(value:Number):void
		{
			_montoUnitario = value;
		}

		public function get cantStockTransito():int
		{
			return _cantStockTransito;
		}

		public function set cantStockTransito(value:int):void
		{
			_cantStockTransito = value;
		}

		public function get enStock():int
		{
			return _enStock;
		}

		public function set enStock(value:int):void
		{
			_enStock = value;
		}

		public function get nombreCliente():String
		{
			return _nombreCliente;
		}

		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}

		public function get id_clientes():int
		{
			return _id_clientes;
		}

		public function set id_clientes(value:int):void
		{
			_id_clientes = value;
		}

		public function get cant_fleteExpress():int
		{
			return _cant_fleteExpress;
		}

		public function set cant_fleteExpress(value:int):void
		{
			_cant_fleteExpress = value;
		}

		public function get cant_regular():int
		{
			return _cant_regular;
		}

		public function set cant_regular(value:int):void
		{
			_cant_regular = value;
		}

		public function get cant_programados():int
		{
			return _cant_programados;
		}

		public function set cant_programados(value:int):void
		{
			_cant_programados = value;
		}

		public function get cant_productos():int
		{
			return _cant_productos;
		}

		public function set cant_productos(value:int):void
		{
			_cant_productos = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get cant_piezas():int
		{
			return _cant_piezas;
		}

		public function set cant_piezas(value:int):void
		{
			_cant_piezas = value;
		}

		public function get nombreProveedor():String
		{
			return _nombreProveedor;
		}

		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}

		public function get inTime():String
		{
			return _inTime;
		}

		public function set inTime(value:String):void
		{
			_inTime = value;
		}

		public function get entregaEnTiempo():Boolean
		{
			return _entregaEnTiempo;
		}

		public function set entregaEnTiempo(value:Boolean):void
		{
			_entregaEnTiempo = value;
		}

		public function get habilitaTotalPArtidas():Boolean
		{
			return _habilitaTotalPArtidas;
		}

		public function set habilitaTotalPArtidas(value:Boolean):void
		{
			_habilitaTotalPArtidas = value;
		}

		public function get totalPartidas():Number
			
		{
			return _totalPartidas;
		}

		public function set totalPartidas(value:Number):void
		{
			_totalPartidas = value;
		}

		public function get FPEntrega():Date
		{
			return _FPEntrega;
		}

		public function set FPEntrega(value:Date):void
		{
			_FPEntrega = value;
		}

		public function get bloqueadaAC():Boolean
		{
			return _bloqueadaAC;
		}

		public function set bloqueadaAC(value:Boolean):void
		{
			_bloqueadaAC = value;
		}

		public function get faltaPago():Boolean
		{
			return _faltaPago;
		}

		public function set faltaPago(value:Boolean):void
		{
			_faltaPago = value;
		}

		public function get fechaOrigen():Date
		{
			return _fechaOrigen;
		}

		public function set fechaOrigen(value:Date):void
		{
			_fechaOrigen = value;
		}

		public function get rutaFFin():Date
		{
			return _rutaFFin;
		}

		public function set rutaFFin(value:Date):void
		{
			_rutaFFin = value;
		}

		public function get Provee():Number
		{
			return _Provee;
		}

		public function set Provee(value:Number):void
		{
			_Provee = value;
		}

		public function get caducidad():String
		{
			return _caducidad;
		}

		public function set caducidad(value:String):void
		{
			_caducidad = value;
		}

		public function get tipoFlete():String
		{
			return _tipoFlete;
		}

		public function set tipoFlete(value:String):void
		{
			_tipoFlete = value;
		}

		public function get decision():String
		{
			return _decision;
		}

		public function set decision(value:String):void
		{
			_decision = value;
		}

		public function get responsable():String
		{
			return _responsable;
		}

		public function set responsable(value:String):void
		{
			_responsable = value;
		}

		public function get idRuta():String
		{
			return _idRuta;
		}

		public function set idRuta(value:String):void
		{
			_idRuta = value;
		}

		public function get cotiza():String
		{
			return _cotiza;
		}

		public function set cotiza(value:String):void
		{
			_cotiza = value;
		}

		public function get idEntrega():String
		{
			return _idEntrega;
		}

		public function set idEntrega(value:String):void
		{
			_idEntrega = value;
		}

		public function get mensajeria():String
		{
			return _mensajeria;
		}

		public function set mensajeria(value:String):void
		{
			_mensajeria = value;
		}

		public function get idGuia():String
		{
			return _idGuia;
		}

		public function set idGuia(value:String):void
		{
			_idGuia = value;
		}

		public function get fpor():String
		{
			return _fpor;
		}

		public function set fpor(value:String):void
		{
			_fpor = value;
		}

		public function get pedimento():String
		{
			return _pedimento;
		}

		public function set pedimento(value:String):void
		{
			_pedimento = value;
		}

		public function get oc():String
		{
			return _oc;
		}

		public function set oc(value:String):void
		{
			_oc = value;
		}

		public function get ac():String
		{
			return _ac;
		}

		public function set ac(value:String):void
		{
			_ac = value;
		}

		public function get idEvento():String
		{
			return _idEvento;
		}

		public function set idEvento(value:String):void
		{
			_idEvento = value;
		}

		public function get pedLote():String
		{
			return _pedLote;
		}

		public function set pedLote(value:String):void
		{
			_pedLote = value;
		}

		public function get comenta():String
		{
			return _comenta;
		}

		public function set comenta(value:String):void
		{
			_comenta = value;
		}

		public function get guia():String
		{
			return _guia;
		}

		public function set guia(value:String):void
		{
			_guia = value;
		}

		public function get cpedido():String
		{
			return _cpedido;
		}

		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}

		public function get reasignada():Boolean
		{
			return _reasignada;
		}

		public function set reasignada(value:Boolean):void
		{
			_reasignada = value;
		}

		public function get stock():Boolean
		{
			return _stock;
		}

		public function set stock(value:Boolean):void
		{
			_stock = value;
			
			if(value)
				_trafico = "stock";
		}

		public function get fEnvio():Date
		{
			return _fEnvio;
		}

		public function set fEnvio(value:Date):void
		{
			_fEnvio = value;
		}

		public function get fer():Date
		{
			return _fer;
		}

		public function set fer(value:Date):void
		{
			_fer = value;
		}

		public function get fRealizacion():Date
		{
			return _fRealizacion;
		}

		public function set fRealizacion(value:Date):void
		{
			_fRealizacion = value;
		}

		public function get fEntrega():Date
		{
			return _fEntrega;
		}

		public function set fEntrega(value:Date):void
		{
			_fEntrega = value;
		}

		public function get fRecibido():Date
		{
			return _fRecibido;
		}

		public function set fRecibido(value:Date):void
		{
			_fRecibido = value;
		}

		public function get fFactura():Date
		{
			return _fFactura;
		}

		public function set fFactura(value:Date):void
		{
			_fFactura = value;
		}

		public function get precio():Number
		{
			return _precio;
		}

		public function set precio(value:Number):void
		{
			_precio = value;
		}

		public function get part():int
		{
			return _part;
		}

		public function set part(value:int):void
		{
			_part = value;
		}

		public function get cantidadPedida():int
		{
			return _cantidadPedida;
		}

		public function set cantidadPedida(value:int):void
		{
			_cantidadPedida = value;
		}

		public function get noReubicaciones():int
		{
			return _noReubicaciones;
		}

		public function set noReubicaciones(value:int):void
		{
			_noReubicaciones = value;
		}

		public function get faltan():int
		{
			return _faltan;
		}

		public function set faltan(value:int):void
		{
			_faltan = value;
		}

		public function get factura():int
		{
			return _factura;
		}

		public function set factura(value:int):void
		{
			_factura = value;
		}

		public function get clave():int
		{
			return _clave;
		}

		public function set clave(value:int):void
		{
			_clave = value;
		}

		public function get idComplemento():int
		{
			return _idComplemento;
		}

		public function set idComplemento(value:int):void
		{
			_idComplemento = value;
		}

		public function get idPPedido():int
		{
			return _idPPedido;
		}

		public function set idPPedido(value:int):void
		{
			_idPPedido = value;
		}

		public function get numeroFila():int
		{
			return _numeroFila;
		}

		public function set numeroFila(value:int):void
		{
			_numeroFila = value;
		}

		public function get contacto():String
		{
			return _contacto;
		}

		public function set contacto(value:String):void
		{
			_contacto = value;
		}

		public function get trafico():String
		{
			return _trafico;
		}

		public function set trafico(value:String):void
		{
			_trafico = value;
		}

		public function get mesCaducidad():String
		{
			return _mesCaducidad;
		}

		public function set mesCaducidad(value:String):void
		{
			_mesCaducidad = value;
		}

		public function get anoCaducidad():String
		{
			return _anoCaducidad;
		}

		public function set anoCaducidad(value:String):void
		{
			_anoCaducidad = value;
		}

		public function get dc():String
		{
			return _dc;
		}

		public function set dc(value:String):void
		{
			_dc = value;
		}

		public function get conforme():String
		{
			return _conforme;
		}

		public function set conforme(value:String):void
		{
			_conforme = value;
		}

		public function get tiempoProceso():String
		{
			return _tiempoProceso;
		}

		public function set tiempoProceso(value:String):void
		{
			_tiempoProceso = value;
		}

		public function get respuesta():String
		{
			return _respuesta;
		}

		public function set respuesta(value:String):void
		{
			_respuesta = value;
		}

		public function get idPedido():Number
		{
			return _idPedido;
		}

		public function set idPedido(value:Number):void
		{
			_idPedido = value;
		}

		public function get fPEntrega():Date
		{
			return _fPEntrega;
		}

		public function set fPEntrega(value:Date):void
		{
			_fPEntrega = value;
		}

		public function get ruta():String
		{
			return _ruta;
		}

		public function set ruta(value:String):void
		{
			_ruta = value;
		}

		public function get pedido():Pedido
		{
			return _pedido;
		}

		public function set pedido(value:Pedido):void
		{
			_pedido = value;
		}

		public function get diasEnAlmacen():int
		{
			return _diasEnAlmacen;
		}

		public function set diasEnAlmacen(value:int):void
		{
			_diasEnAlmacen = value;
		}

		public function get ultimoLista():Boolean
		{
			return _ultimoLista;
		}

		public function set ultimoLista(value:Boolean):void
		{
			_ultimoLista = value;
		}

		public function get folioFD():String
		{
			return _folioFD;
		}

		public function set folioFD(value:String):void
		{
			_folioFD = value;
		}

		public function get destinos():String
		{
			return _destinos;
		}

		public function set destinos(value:String):void
		{
			_destinos = value;
		}

		public function get activo():int
		{
			return _activo;
		}

		public function set activo(value:int):void
		{
			_activo = value;
		}

		public function get enfoque():String
		{
			return _enfoque;
		}

		public function set enfoque(value:String):void
		{
			_enfoque = value;
		}

		public function get fondo():String
		{
			return _fondo;
		}

		public function set fondo(value:String):void
		{
			_fondo = value;
		}

		public function get vieneD():String
		{
			return _vieneD;
		}

		public function set vieneD(value:String):void
		{
			_vieneD = value;
		}

		public function get totalPiezas():Number
		{
			return _totalPiezas;
		}

		public function set totalPiezas(value:Number):void
		{
			_totalPiezas = value;
		}

		public function get totalMonto():Number
		{
			return _totalMonto;
		}

		public function set totalMonto(value:Number):void
		{
			_totalMonto = value;
		}

		public function get info():Boolean
		{
			return _info;
		}

		public function set info(value:Boolean):void
		{
			_info = value;
		}

		public function get precioUnitarioDLS():Number
		{
			return _precioUnitarioDLS;
		}

		public function set precioUnitarioDLS(value:Number):void
		{
			_precioUnitarioDLS = value;
		}

		public function get precioUnitarioDLSTotal():Number
		{
			_precioUnitarioDLSTotal = precioUnitarioDLS * cantidadPedida;
			return _precioUnitarioDLSTotal;
		}

		public function set precioUnitarioDLSTotal(value:Number):void
		{
			_precioUnitarioDLSTotal = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get fea():Date
		{
			return _fea;
		}

		public function set fea(value:Date):void
		{
			_fea = value;
		}

		public function get avisoCambio():Boolean
		{
			return _avisoCambio;
		}

		public function set avisoCambio(value:Boolean):void
		{
			_avisoCambio = value;
		}

		public function get familia():String
		{
			var stringFamilia:String;
			stringFamilia = tipo +"-"+subtipo+"-"+control;
			return stringFamilia;
		}

		public function get pakinglist():String
		{
			return _pakinglist;
		}

		public function set pakinglist(value:String):void
		{
			_pakinglist = value;
		}

		public function get configuracionPrecio():ConfiguracionPrecio
		{
			_configuracionPrecio = new ConfiguracionPrecio();
			_configuracionPrecio.industria = industria;
			_configuracionPrecio.idProveedor = proveedor;
			_configuracionPrecio.tipo = tipo;
			_configuracionPrecio.subtipo = subtipo;
			_configuracionPrecio.control = control;
			_configuracionPrecio.familia = familia;
			
			return _configuracionPrecio;
		}
		
	}
}