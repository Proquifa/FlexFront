package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.Cotizacion")]
	public dynamic class Cotizacion
	{
		
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"fecha",formato:"fecha",tipo:"Date",newpropiedad:"fechaCotizacion"},
			{propiedad:"fechaRegistro",formato:"fecha",tipo:"Date",newpropiedad:"fregistro"},
			{propiedad:"fechaOrigen",formato:"fecha",tipo:"Date",newpropiedad:"forigen"}]);
		
		private var _idCotizacion:Number;
		private var _numFila:Number;
		private var _folioCotizacion:String;
		private var _fecha:Date;
		private var _nombreCliente:String;
		private var _contacto:String;
		private var _vendedor:String;
		private var _moneda:String;
		private var _parciales:String;
		private var _cpago:String;
		private var _lugar:String;
		private var _zona:String;
		private var _estado:String;
		private var _fEnvio:Date;
		private var _imoneda:String;
		private var _cotizo:String;
		private var _factura:String;
		private var _medioSalida:String;
		private var _fechaClasificacion:Date;
		private var _idContacto:Number;
		private var _canceladaDesde:String;
		private var _requisicion:Number;
		private var _fechaOrigen:Date;
		private var _fechaRegistro:Date;
		private var _pendienteOrigen:String;
		private var _fechaString:String;
		private var _fechaOrigenString:String;
		private var _fechaRegistroString:String;
		private var _renglon:Number;
		private var _partidas99:int;
		private var _partidas0:int; 
		
		private var  _vigencia:String;
		private var  _observa:String;
		private var  _hEntrada:String;
		private var  _mEntrada:String;
		private var  _hSalida:String;
		private var  _MSalida:String; ///m 
		private var  _confirmo:String;
		private var  _observaC:String;
		private var  _infoFacturacion:Boolean;
		private var  _enTiempoFueraDeTiempo:String;
		
		private var _fechaCierre:Date;
		private var _abierto:Boolean;
		private var _mSalida:String;
		private var _montoCotiza:Number;
		private var _montoDLSCotiza:Number;
		private var _medio:String;
		private var _fOrigen:int;
		private var _doctoR:int;
		private var _checkSeleccionado:Boolean;
		
		private var _cliente:Cliente;
		private var _gravaIva:Boolean;
		private var _generada:Boolean;
		private var _idVisita:Number;
		private var _contactos:Contacto;

		private var _partidas:ArrayCollection;
		private var _nombreCotizacion:String;
		
		private var _numPartidas:Number;
		private var _totalCosto:Number;
		private var _tipo:String;
		private var _tipoCotizacion:String;
		private var _numCotizacion:Number;
		private var _deSistema:Boolean;
		private var _monedaAbreviatura:String;
		private var _monedaSimbolo:String;
		private var _asunto:String;
		private	var _contenido:String;
		private var _html:String;
		private var _sender:String;
		private var _totalAdj:Number;
		
		private var _nombreArchivos:String;
		
		public function Cotizacion()
		{
		}
			
		
		public function get totalAdj():Number
		{
			return _totalAdj;
		}
		
		public function set totalAdj(value:Number):void
		{
			_totalAdj = value;
		}
		
		public function get sender():String
		{
			return _sender;
		}
		
		public function set sender(value:String):void
		{
			_sender = value;
		}
		
		public function get html()
		{
			return _html;
		}
		
		public function set html(value):void
		{
			_html = value;
		}
		
		public function get contenido():String
		{
			return _contenido;
		}
		
		public function set contenido(value:String):void
		{
			_contenido = value;
		}
		
		public function get asunto():String
		{
			return _asunto;
		}
		
		public function set asunto(value:String):void
		{
			_asunto = value;
		}

			public function get monedaSimbolo():String
		{
			return _monedaSimbolo;
		}

		public function set monedaSimbolo(value:String):void
		{
			_monedaSimbolo = value;
		}

		public function get monedaAbreviatura():String
		{
			return _monedaAbreviatura;
		}

		public function set monedaAbreviatura(value:String):void
		{
			_monedaAbreviatura = value;
		}

		public function get imoneda():String
		{
			return _imoneda;
		}

		public function set imoneda(value:String):void
		{
			_imoneda = value;
		}

		public function get deSistema():Boolean
		{
			return _deSistema;
		}

		public function set deSistema(value:Boolean):void
		{
			_deSistema = value;
		}

		public function get contactos():Contacto
		{
			return _contactos;
		}

		public function set contactos(value:Contacto):void
		{
			_contactos = value;
		}

		public function get idVisita():Number
		{
			return _idVisita;
		}

		public function set idVisita(value:Number):void
		{
			_idVisita = value;
		}

		public function get generada():Boolean
		{
			return _generada;
		}

		public function set generada(value:Boolean):void
		{
			_generada = value;
		}

		public function get gravaIva():Boolean
		{
			return _gravaIva;
		}

		public function set gravaIva(value:Boolean):void
		{
			_gravaIva = value;
		}

		public function get cliente():Cliente
		{
			return _cliente;
		}

		public function set cliente(value:Cliente):void
		{
			_cliente = value;
		}

		public function get numCotizacion():Number
		{
			return _numCotizacion;
		}

		public function set numCotizacion(value:Number):void
		{
			_numCotizacion = value;
		}

		public function get tipoCotizacion():String
		{
			return _tipoCotizacion;
		}

		public function set tipoCotizacion(value:String):void
		{
			_tipoCotizacion = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get totalCosto():Number
		{
			return _totalCosto;
		}

		public function set totalCosto(value:Number):void
		{
			_totalCosto = value;
		}

		public function get numPartidas():Number
		{
			return _numPartidas;
		}

		public function set numPartidas(value:Number):void
		{
			_numPartidas = value;
		}

		public function get nombreCotizacion():String
		{
			return _nombreCotizacion;
		}

		public function set nombreCotizacion(value:String):void
		{
			_nombreCotizacion = value;
		}

		public function get partidas():ArrayCollection
		{
			return _partidas;
		}

		public function set partidas(value:ArrayCollection):void
		{
			_partidas = value;
		}

		public function get enTiempoFueraDeTiempo():String
		{
			return _enTiempoFueraDeTiempo;
		}
		
		public function set enTiempoFueraDeTiempo(value:String):void
		{
			_enTiempoFueraDeTiempo = value;
		}
		
		public function get infoFacturacion():Boolean
		{
			return _infoFacturacion;
		}
		
		public function set infoFacturacion(value:Boolean):void
		{
			_infoFacturacion = value;
		}
		
		public function get observaC():String
		{
			return _observaC;
		}
		
		public function set observaC(value:String):void
		{
			_observaC = value;
		}
		
		public function get confirmo():String
		{
			return _confirmo;
		}
		
		public function set confirmo(value:String):void
		{
			_confirmo = value;
		}
		
		public function get MSalida():String
		{
			return _MSalida;
		}
		
		public function set MSalida(value:String):void
		{
			_MSalida = value;
		}
		
		public function get hSalida():String
		{
			return _hSalida;
		}
		
		public function set hSalida(value:String):void
		{
			_hSalida = value;
		}
		
		public function get mEntrada():String
		{
			return _mEntrada;
		}
		
		public function set mEntrada(value:String):void
		{
			_mEntrada = value;
		}
		
		public function get hEntrada():String
		{
			return _hEntrada;
		}
		
		public function set hEntrada(value:String):void
		{
			_hEntrada = value;
		}
		
		public function get observa():String
		{
			return _observa;
		}
		
		public function set observa(value:String):void
		{
			_observa = value;
		}
		
		public function get vigencia():String
		{
			return _vigencia;
		}
		
		public function set vigencia(value:String):void
		{
			_vigencia = value;
		}
		
		public function get partidas0():int
		{
			return _partidas0;
		}
		
		public function set partidas0(value:int):void
		{
			_partidas0 = value;
		}
		
		public function get partidas99():int
		{
			return _partidas99;
		}
		
		public function set partidas99(value:int):void
		{
			_partidas99 = value;
		}
		
		public function get renglon():Number
		{
			return _renglon;
		}
		
		public function set renglon(value:Number):void
		{
			_renglon = value;
		}
		
		public function get pendienteOrigen():String
		{
			return _pendienteOrigen;
		}
		
		public function set pendienteOrigen(value:String):void
		{
			_pendienteOrigen = value;
		}
		
		public function get fechaRegistro():Date
		{
			return _fechaRegistro;
		}
		
		public function set fechaRegistro(value:Date):void
		{
			_fechaRegistro = value;
			if(value == null){
				_fechaRegistroString = 'Pendiente';
			}else{
				_fechaRegistroString = UtilsFecha.formatoFechaDDMMMYYYY(_fechaRegistro);
			}
		}
		
		public function get fechaOrigen():Date
		{
			return _fechaOrigen;
		}
		
		public function set fechaOrigen(value:Date):void
		{
			_fechaOrigen = value;
			if(value == null){
				_fechaOrigenString = 'Pendiente';
			}else{
				_fechaOrigenString = UtilsFecha.formatoFechaDDMMMYYYY(_fechaOrigen);
			}
		}
		
		public function get requisicion():Number
		{
			return _requisicion;
		}
		
		public function set requisicion(value:Number):void
		{
			_requisicion = value;
		}
		
		public function get canceladaDesde():String
		{
			return _canceladaDesde;
		}
		
		public function set canceladaDesde(value:String):void
		{
			_canceladaDesde = value;
		}
		
		public function get idContacto():Number
		{
			return _idContacto;
		}
		
		public function set idContacto(value:Number):void
		{
			_idContacto = value;
		}
		
		public function get fechaClasificacion():Date
		{
			return _fechaClasificacion;
		}
		
		public function set fechaClasificacion(value:Date):void
		{
			_fechaClasificacion = value;
		}
		
		public function get medioSalida():String
		{
			return _medioSalida;
		}
		
		public function set medioSalida(value:String):void
		{
			_medioSalida = value;
		}
		
		public function get factura():String
		{
			return _factura;
		}
		
		public function set factura(value:String):void
		{
			_factura = value;
		}
		
		public function get cotizo():String    
		{
			return _cotizo;
		}
		
		public function set cotizo(value:String):void     
		{
			_cotizo = value;
		}
		
		public function get fEnvio():Date
		{
			return _fEnvio;
		}
		
		public function set fEnvio(value:Date):void
		{
			_fEnvio = value;
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get zona():String
		{
			return _zona;
		}
		
		public function set zona(value:String):void
		{
			_zona = value;
		}
		
		public function get lugar():String
		{
			return _lugar;
		}
		
		public function set lugar(value:String):void
		{
			_lugar = value;
		}
		
		public function get cpago():String
		{
			return _cpago;
		}
		
		public function set cpago(value:String):void
		{
			_cpago = value;
		}
		
		public function get parciales():String
		{
			return _parciales;
		}
		
		public function set parciales(value:String):void
		{
			_parciales = value;
		}
		
		public function get moneda():String
		{
			return _moneda;
		}
		
		public function set moneda(value:String):void
		{
			if(value == 'Dolares'){
				_moneda = 'USD';
			}else if(value == 'Pesos'){
				_moneda = 'M.N.';
			}else{
				_moneda = value;	
			}
		}
		
		public function get vendedor():String
		{
			return _vendedor;
		}
		
		public function set vendedor(value:String):void
		{
			_vendedor = value;
		}
		
		public function get contacto():String
		{
			return _contacto;
		}
		
		public function set contacto(value:String):void
		{
			_contacto = value;
		}
		
		public function get nombreCliente():String
		{
			return _nombreCliente;
		}
		
		public function set nombreCliente(value:String):void
		{
			_nombreCliente = value;
		}
		
		public function get fecha():Date
		{
			return _fecha;
		}
		
		public function set fecha(value:Date):void
		{
			_fecha = value;
			if(value == null){
				_fechaString = 'Pendiente';
			}else{
				_fechaString = UtilsFecha.formatoFechaDDMMMYYYY(_fecha);
			}
		}
		
		public function get folioCotizacion():String
		{
			return _folioCotizacion;
		}
		
		public function set folioCotizacion(value:String):void
		{
			_folioCotizacion = value;
		}
		
		public function get idCotizacion():Number
		{
			return _idCotizacion;
		}
		
		public function set idCotizacion(value:Number):void
		{
			_idCotizacion = value;
		}
		
		public function get fechaCierre():Date
		{
			return _fechaCierre;
		}
		
		public function set fechaCierre(value:Date):void
		{
			_fechaCierre = value;
		}
		
		public function get abierto():Boolean
		{
			return _abierto;
		}
		
		public function set abierto(value:Boolean):void
		{
			_abierto = value;
		}
		
		public function get numFila():Number
		{
			return _numFila;
		}
		
		public function set numFila(value:Number):void
		{
			_numFila = value;
		}
		
		public function get fechaString():String
		{
			return _fechaString;
		}
		
		public function set fechaString(value:String):void
		{
			_fechaString = value;
		}
		
		public function get fechaOrigenString():String
		{
			return _fechaOrigenString;
		}
		
		public function set fechaOrigenString(value:String):void
		{
			_fechaOrigenString = value;
		}
		
		public function get fechaRegistroString():String
		{
			return _fechaRegistroString;
		}
		
		public function set fechaRegistroString(value:String):void
		{
			_fechaRegistroString = value;
		}
		
		public function get mSalida():String
		{
			return _mSalida;
		}
		
		public function set mSalida(value:String):void
		{
			_mSalida = value;
		}
		
		public function get montoCotiza():Number
		{
			return _montoCotiza;
		}
		
		public function set montoCotiza(value:Number):void
		{
			_montoCotiza = value;
		}
		
		public function get medio():String
		{
			return _medio;
		}
		
		public function set medio(value:String):void
		{
			_medio = value;
		}
		
		public function get fOrigen():int
		{
			return _fOrigen;
		}
		
		public function set fOrigen(value:int):void
		{
			_fOrigen = value;
		}
		
		public function get montoDLSCotiza():Number
		{
			return _montoDLSCotiza;
		}
		
		public function set montoDLSCotiza(value:Number):void
		{
			_montoDLSCotiza = value;
		}

		public function get doctoR():int
		{
			return _doctoR;
		}

		public function set doctoR(value:int):void
		{
			_doctoR = value;
		}

		public function get checkSeleccionado():Boolean
		{
			return _checkSeleccionado;
		}

		public function set checkSeleccionado(value:Boolean):void
		{
			_checkSeleccionado = value;
		}

		public function get nombreArchivos():String
		{
			return _nombreArchivos;
		}

		public function set nombreArchivos(value:String):void
		{
			_nombreArchivos = value;
		}
		
		
	}
}