package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flashx.textLayout.formats.Float;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	//[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.ReporteNotificados")]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.reportes.ReporteNotificados")]
	[Bindable]
	public dynamic class ReporteNotificados
	{
		
		private var  _cliente:String;
		private var  _claveDePedido:String;
		private var  _folio:String;
		private var  _fechaInicioEspera:Date;
		private var  _fechaEstimadaRealizacion:Date;
		private var  _diasDeAtraso:int;
		private var  _responsable:String;
		private var  _tipoDeNotificacion:String;
		private var  _claveDeCompra:String;
		private var  _fechaDeFinalizacion:Date;
		private var  _idEmpresa:int;
		
		private var  _etiqueta:String;
		private var  _cpedido:String;	
		private var  _folioNt:String;	
		private var  _compra:String;	
		private var  _partida:String;
		private var  _fechanNotificado:Date;
		private var  _fechaPS:Date;
		private var  _fee:Date;
		private var  _feePropuesta:Date;
		private var  _concepto:String;
		private var  _comentInterlocutor:String;
		private var  _monto:Number;
		private var  _creador:String;
		private var  _razon:String;
		private var  _piezas:int;
		private var  _diasFiltro:String;
		private var  _numFila:Number;
		private var  _ultimo:String = "";
		private var  _numPedidos:Number;	
		private var  _punitario:Number;
		private var  _control:String;
		private var  _tipoProd:String;
		private var  _nivel:String;
		private var  _ev:String;
		private var  _edoNotif:String;
		private var _mastr:String;
		private var _montof:Number;
		private var _piezasCLIE:Number;
		
		
		//------------------------------------------
		private var _incosistencia:String;
		private var _quienFactura:String;
		private var _numPartida:String;
		private var _catalogo:String;
		private var _precio:String;
		private var _descripcion:String;
		private var _moneda:String;
		private var _iva:String;
		private var _cpago:String;
		private var _rfc:String;
		private var _rsocial:String;
		private var _rdomicilio:String;
		private var _numero:String;
		private var _contacto:String;
		private var _marca:String;
		private var _clasificacion:String;
		private var _incoQuienFactura:Number;
		private var _incoRFC:Number;
		private var _incoRazonSocial:Number;
		private var _incoDirFiscal:Number;
		private var _incoCondPago:Number;
		
		
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"fechaInicioEspera",formato:"fecha",tipo:"Date",newpropiedad:"fechaInicioEsperaFormato"},
			{propiedad:"fechaEstimadaRealizacion",formato:"fecha",tipo:"Date",newpropiedad:"fechaEstimadaRealizacionFormato"},
			{propiedad:"fechaDeFinalizacion",formato:"fecha",tipo:"Date",newpropiedad:"fechaDeFinalizacionFormato"}
		]);
		
		public function ReporteNotificados()
		{
		}
		
		public function get mastr():String
		{
			return _mastr;
		}
		
		public function set mastr(value:String):void
		{
			_mastr = value;
		}
		
		public function get incoCondPago():Number
		{
			return _incoCondPago;
		}
		
		public function set incoCondPago(value:Number):void
		{
			_incoCondPago = value;
		}
		
		public function get incoDirFiscal():Number
		{
			return _incoDirFiscal;
		}
		
		public function set incoDirFiscal(value:Number):void
		{
			_incoDirFiscal = value;
		}
		
		public function get incoRazonSocial():Number
		{
			return _incoRazonSocial;
		}
		
		public function set incoRazonSocial(value:Number):void
		{
			_incoRazonSocial = value;
		}
		
		public function get incoRFC():Number
		{
			return _incoRFC;
		}
		
		public function set incoRFC(value:Number):void
		{
			_incoRFC = value;
		}
		
		public function get incoQuienFactura():Number
		{
			return _incoQuienFactura;
		}
		
		public function set incoQuienFactura(value:Number):void
		{
			_incoQuienFactura = value;
		}
		
		public function get edoNotif():String
		{
			return _edoNotif;
		}
		
		public function set edoNotif(value:String):void
		{
			_edoNotif = value;
		}
		
		public function get ev():String
		{
			return _ev;
		}
		
		public function set ev(value:String):void
		{
			_ev = value;
		}
		
		public function get nivel():String
		{
			return _nivel;
		}
		
		public function set nivel(value:String):void
		{
			_nivel = value;
		}
		
		public function get tipoProd():String
		{
			return _tipoProd;
		}
		
		public function set tipoProd(value:String):void
		{
			_tipoProd = value;
		}
		
		public function get control():String
		{
			return _control;
		}
		
		public function set control(value:String):void
		{
			_control = value;
		}
		
		public function get clasificacion():String
		{
			return _clasificacion;
		}
		
		public function set clasificacion(value:String):void
		{
			_clasificacion = value;
		}
		
		public function get marca():String
		{
			return _marca;
		}
		
		public function set marca(value:String):void
		{
			_marca = value;
		}
		
		public function get contacto():String
		{
			return _contacto;
		}
		
		public function set contacto(value:String):void
		{
			_contacto = value;
		}
		
		public function get numero():String
		{
			return _numero;
		}
		
		public function set numero(value:String):void
		{
			_numero = value;
		}
		
		public function get rdomicilio():String
		{
			return _rdomicilio;
		}
		
		public function set rdomicilio(value:String):void
		{
			_rdomicilio = value;
		}
		
		public function get rsocial():String
		{
			return _rsocial;
		}
		
		public function set rsocial(value:String):void
		{
			_rsocial = value;
		}
		
		public function get rfc():String
		{
			return _rfc;
		}
		
		public function set rfc(value:String):void
		{
			_rfc = value;
		}
		
		public function get cpago():String
		{
			return _cpago;
		}
		
		public function set cpago(value:String):void
		{
			_cpago = value;
		}
		
		public function get iva():String
		{
			return _iva;
		}
		
		public function set iva(value:String):void
		{
			_iva = value;
		}
		
		public function get moneda():String
		{
			return _moneda;
		}
		
		public function set moneda(value:String):void
		{
			_moneda = value;
		}
		
		public function get descripcion():String
		{
			return _descripcion;
		}
		
		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}
		
		public function get precio():String
		{
			return _precio;
		}
		
		public function set precio(value:String):void
		{
			_precio = value;
		}
		
		public function get catalogo():String
		{
			return _catalogo;
		}
		
		public function set catalogo(value:String):void
		{
			_catalogo = value;
		}
		
		public function get numPartida():String
		{
			return _numPartida;
		}
		
		public function set numPartida(value:String):void
		{
			_numPartida = value;
		}
		
		public function get quienFactura():String
		{
			return _quienFactura;
		}
		
		public function set quienFactura(value:String):void
		{
			_quienFactura = value;
		}
		
		public function get incosistencia():String
		{
			return _incosistencia;
		}
		
		public function set incosistencia(value:String):void
		{
			_incosistencia = value;
		}
		
		public function get comentInterlocutor():String
		{
			return _comentInterlocutor;
		}
		
		public function set comentInterlocutor(value:String):void
		{
			_comentInterlocutor = value;
		}
		
		public function get feePropuesta():Date
		{
			return _feePropuesta;
		}
		
		public function set feePropuesta(value:Date):void
		{
			_feePropuesta = value;
		}
		
		public function get fee():Date
		{
			return _fee;
		}
		
		public function set fee(value:Date):void
		{
			_fee = value;
		}
		
		public function get punitario():Number
		{
			return _punitario;
		}
		
		public function set punitario(value:Number):void
		{
			_punitario = value;
		}
		
		public function get numPedidos():Number
		{
			return _numPedidos;
		}
		
		public function set numPedidos(value:Number):void
		{
			_numPedidos = value;
		}
		
		public function get ultimo():String
		{
			return _ultimo;
		}
		
		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}
		
		public function get piezas():int
		{
			return _piezas;
		}
		
		public function set piezas(value:int):void
		{
			_piezas = value;
		}
		
		public function get razon():String
		{
			return _razon;
		}
		
		public function set razon(value:String):void
		{
			_razon = value;
		}
		
		public function get creador():String
		{
			return _creador;
		}
		
		public function set creador(value:String):void
		{
			_creador = value;
		}
		
		public function get monto():Number
		{
			return _monto;
		}
		
		public function set monto(value:Number):void
		{
			_monto = value;
		}
		
		public function get concepto():String
		{
			return _concepto;
		}
		
		public function set concepto(value:String):void
		{
			_concepto = value;
		}
		
		public function get fechaPS():Date
		{
			return _fechaPS;
		}
		
		public function set fechaPS(value:Date):void
		{
			_fechaPS = value;
		}
		
		public function get fechanNotificado():Date
		{
			return _fechanNotificado;
		}
		
		public function set fechanNotificado(value:Date):void
		{
			_fechanNotificado = value;
		}
		
		
		public function get partida():String
		{
			return _partida;
		}
		
		public function set partida(value:String):void
		{
			_partida = value;
		}
		
		public function get compra():String
		{
			return _compra;
		}
		
		public function set compra(value:String):void
		{
			_compra = value;
		}
		
		public function get folioNt():String
		{
			return _folioNt;
		}
		
		public function set folioNt(value:String):void
		{
			_folioNt = value;
		}
		
		public function get cpedido():String
		{
			return _cpedido;
		}
		
		public function set cpedido(value:String):void
		{
			_cpedido = value;
		}
		
		public function get etiqueta():String
		{
			return _etiqueta;
		}
		
		public function set etiqueta(value:String):void
		{
			_etiqueta = value;
		}
		
		public function get cliente():String
		{
			return _cliente;
		}
		
		public function set cliente(value:String):void
		{
			if(value == ""){
				_cliente = "ND";	
			}else{
				_cliente = value;
			}
		}
		
		public function get claveDePedido():String
		{
			return _claveDePedido;
		}
		
		public function set claveDePedido(value:String):void
		{
			_claveDePedido = value;
		}
		
		public function get folio():String
		{
			return _folio;
		}
		
		public function set folio(value:String):void
		{
			_folio = value;
		}
		
		public function get fechaInicioEspera():Date
		{
			return _fechaInicioEspera;
		}
		
		public function set fechaInicioEspera(value:Date):void
		{
			_fechaInicioEspera = value;
		}
		
		public function get fechaEstimadaRealizacion():Date
		{
			return _fechaEstimadaRealizacion;
		}
		
		public function set fechaEstimadaRealizacion(value:Date):void
		{
			_fechaEstimadaRealizacion = value;
		}
		
		public function get diasDeAtraso():int
		{
			return _diasDeAtraso;
		}
		
		public function set diasDeAtraso(value:int):void
		{
			_diasDeAtraso = value;
		}
		
		public function get responsable():String
		{
			return _responsable;
		}
		
		public function set responsable(value:String):void
		{
			if(value == ""){
				_responsable = "ND";
			}else{
				_responsable = value;	
			}
		}
		
		public function get tipoDeNotificacion():String
		{
			return _tipoDeNotificacion;
		}
		
		public function set tipoDeNotificacion(value:String):void
		{
			_tipoDeNotificacion = value;
		}
		
		public function get claveDeCompra():String
		{
			return _claveDeCompra;
		}
		
		public function set claveDeCompra(value:String):void
		{
			_claveDeCompra = value;
		}
		
		public function get fechaDeFinalizacion():Date
		{
			return _fechaDeFinalizacion;
		}
		
		public function set fechaDeFinalizacion(value:Date):void
		{
			_fechaDeFinalizacion = value;
		}
		
		public function get idEmpresa():int
		{
			return _idEmpresa;
		}
		
		public function set idEmpresa(value:int):void
		{
			_idEmpresa = value;
		}
		
		public function get numFila():Number
		{
			return _numFila;
		}
		
		public function set numFila(value:Number):void
		{
			_numFila = value;
		}
		public function get diasFiltro():String
		{
			/*redeclaro las fechas con horas, minutos y segundos en 0 para una comparacion en bruto*/
			var fechaLejana:Date = fechaPS;
			//trace( 'FechaCOTIZACION: ' + fechaCotizacion.toString() );
			var actual:Date = new Date();
			if( fechaLejana != null )	fechaLejana = new Date(fechaLejana.fullYear, fechaLejana.month, fechaLejana.date, 0, 0, 0);
			actual = new Date(actual.fullYear, actual.month, actual.date, 0, 0, 0);
			var valor:int = UtilsFecha.regresaDiferenciaEntreFechasEnDias( actual, fechaLejana);
			if( valor  > 3 ){
				_diasFiltro = "FUTURO";
			}else if( valor  < -3 ){
				_diasFiltro = "PASADO";
			}else{
				_diasFiltro = 'DIA' + valor.toString();//DIA-2, DIA-1, DIA0, DIA1, DIA2
			}
			return _diasFiltro;
		}
		
		public function set diasFiltro(value:String):void
		{
			_diasFiltro = value;
		}

		public function get montof():Number
		{
			return _montof;
		}

		public function set montof(value:Number):void
		{
			_montof = value;
		}

		public function get piezasCLIE():Number
		{
			return _piezasCLIE;
		}

		public function set piezasCLIE(value:Number):void
		{
			_piezasCLIE = value;
		}
		
		
	}
}