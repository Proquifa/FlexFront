package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.DocumentoRecibido")]
	public dynamic class DocumentoRecibido
	{	
		private var _folio:Number;
		private var _partida:Number;
		private var _empresa:Number;
		private var _numFila:Number;
		private var _finLista:Boolean;
		
		private var _fecha:Date;
		private var _manejo:String;
		private var _origen:String; 
		private var _RPor:String;
		private var _medio:String;
		private var _docto:String;
		private var _numero:String;
		private var _observaciones:String;
		private var _fechaProceso:Date;
		private var _estado:String;
		private var _folioPadre:String;
		private var _esHijo:Boolean;		
		private var _fechaOrigen:Date;
		private var _clienteNuevo:String;
		private var _ingreso:String;
		private var _FOrigen:Number;
		private var _tipo:String;
		private var _idContacto:Number;
		private var _emailContacto:String;
		private var _nombreEmpresa:String;
		private var _nombreContacto:String;
		private var _documentoCierre:String;	
		private var _cerradoAbierto:String;
		private var _nivelIngreso:String;
		private var _enTiempo:String;
		private var _existeReferencia:Boolean;
		private var _habilitado:Number;
		private var _habilitadoCliente:Boolean;
		
		private var _fechaFormato:String;
		private var _fechaProcesoFormato:String;
		
		private var _montoDocumento:Number;
		
		private var _campana:String;
		
		private var _documento:ByteArray;
		
		private var _nombreArchivos:String;
		private var _horasLaborables:Number;
		
		
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"fecha",formato:"fecha",tipo:"Date",newpropiedad:"fechaFormato"},
			{propiedad:"fechaProceso",formato:"fecha",tipo:"Date",newpropiedad:"fechaProcesoFormato"}
		]);
		
		private var _asunto:String;
		private	var _contenido:String;
		private var _html:String;
		private var _sender:String;
		private var _totalAdj:Number;
		
		
		public function DocumentoRecibido(){}
		
		
		public function get documento():ByteArray
		{
			return _documento;
		}

		public function set documento(value:ByteArray):void
		{
			_documento = value;
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

		public function get habilitadoCliente():Boolean
		{
			return _habilitadoCliente;
		}
		
		public function set habilitadoCliente(value:Boolean):void
		{
			_habilitadoCliente = value;
		}
		
		public function get habilitado():Number
		{
			return _habilitado;
		}
		
		public function set habilitado(value:Number):void
		{
			_habilitado = value;
		}
		
		public function get emailContacto():String
		{
			return _emailContacto;
		}
		
		public function set emailContacto(value:String):void
		{
			_emailContacto = value;
		}
		
		public function get existeReferencia():Boolean
		{
			return _existeReferencia;
		}
		
		public function set existeReferencia(value:Boolean):void
		{
			_existeReferencia = value;
		}
		
		public function get montoDocumento():Number
		{
			return _montoDocumento;
		}
		
		public function set montoDocumento(value:Number):void
		{
			_montoDocumento = value;
		}
		
		public function get fechaFormato():String
		{
			_fechaFormato = UtilsFecha.formatoFechaDDMMMYYYY( this.fecha );
			/*_fechaFormato.split("/");
			var espacio:String = fechaFormato[0] + " / " + fechaFormato[1] + " / " + fechaFormato[2]*/
			return _fechaFormato;
		}
		
		public function set fechaFormato(value:String):void
		{
			_fechaFormato = value;
		}
		
		public function get fechaProcesoFormato():String
		{
			_fechaProcesoFormato = UtilsFecha.formatoFechaDDMMMYYYY(this.fechaProceso);
			return _fechaProcesoFormato;
		}
		
		public function set fechaProcesoFormato(value:String):void
		{
			_fechaProcesoFormato = value;
		}
		
		
		public function get numFila():Number
		{
			return _numFila;
		}
		
		public function set numFila(value:Number):void
		{
			_numFila = value;
		}
		
		public function get folio():Number
		{
			return _folio;
		}
		
		public function set folio(value:Number):void
		{
			_folio = value;
		}
		
		public function get partida():Number
		{
			return _partida;
		}
		
		public function set partida(value:Number):void
		{
			_partida = value;
		}
		
		public function get fecha():Date
		{
			return _fecha;
		}
		
		public function set fecha(value:Date):void
		{
			_fecha = value;
		}
		
		public function get manejo():String
		{
			return _manejo;
		}
		
		public function set manejo(value:String):void
		{
			_manejo = value;
		}
		
		public function get origen():String
		{
			return _origen;
		}
		
		public function set origen(value:String):void
		{
			_origen = value;
		}
		
		public function get empresa():Number
		{
			return _empresa;
		}
		
		public function set empresa(value:Number):void
		{
			_empresa = value;
		}
		
		public function get RPor():String
		{
			return _RPor;
		}
		
		public function set RPor(value:String):void
		{
			_RPor = value;
		}
		
		public function get medio():String
		{
			return _medio;
		}
		
		public function set medio(value:String):void
		{
			_medio = value;
		}
		
		public function get docto():String
		{
			return _docto;
		}
		
		public function set docto(value:String):void
		{
			_docto = value;
		}
		
		public function get numero():String
		{
			return _numero;
		}
		
		public function set numero(value:String):void
		{
			_numero = value;
		}
		
		public function get observaciones():String
		{
			return _observaciones;
		}
		
		public function set observaciones(value:String):void
		{
			_observaciones = value;
		}
		
		public function get fechaProceso():Date
		{
			return _fechaProceso;
		}
		
		public function set fechaProceso(value:Date):void
		{
			_fechaProceso = value;
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get folioPadre():String
		{
			return _folioPadre;
		}
		
		public function set folioPadre(value:String):void
		{
			_folioPadre = value;
		}
		
		public function get esHijo():Boolean
		{
			return _esHijo;
		}
		
		public function set esHijo(value:Boolean):void
		{
			_esHijo = value;
		}
		
		public function get fechaOrigen():Date
		{
			return _fechaOrigen;
		}
		
		public function set fechaOrigen(value:Date):void
		{
			_fechaOrigen = value;
		}
		
		public function get clienteNuevo():String
		{
			return _clienteNuevo;
		}
		
		public function set clienteNuevo(value:String):void
		{
			_clienteNuevo = value;
		}
		
		public function get ingreso():String
		{
			if(_ingreso == null) _ingreso = "ND";
			return _ingreso;
		}
		
		public function set ingreso(value:String):void
		{
			_ingreso = value;
		}
		
		public function get FOrigen():Number
		{
			return _FOrigen;
		}
		
		public function set FOrigen(value:Number):void
		{
			_FOrigen = value;
		}
		
		public function get tipo():String
		{
			return _tipo;
		}
		
		public function set tipo(value:String):void
		{
			_tipo = value;
		}
		
		public function get idContacto():Number
		{
			return _idContacto;
		}
		
		public function set idContacto(value:Number):void
		{
			_idContacto = value;
		}
		
		public function get nombreEmpresa():String
		{
			return _nombreEmpresa;
		}
		
		public function set nombreEmpresa(value:String):void
		{
			_nombreEmpresa = value;
		}
		
		public function get nombreContacto():String
		{
			return _nombreContacto;
		}
		
		public function set nombreContacto(value:String):void
		{
			_nombreContacto = value;
		}
		
		public function get documentoCierre():String
		{
			return _documentoCierre;
		}
		
		public function set documentoCierre(value:String):void
		{
			_documentoCierre = value;
		}
		
		public function get cerradoAbierto():String
		{
			return _cerradoAbierto;
		}
		
		public function set cerradoAbierto(value:String):void
		{
			_cerradoAbierto = value;
		}
		
		public function get finLista():Boolean
		{
			return _finLista;
		}
		
		public function set finLista(value:Boolean):void
		{
			_finLista = value;
		}
		
		public function get nivelIngreso():String
		{
			return _nivelIngreso;
		}
		
		public function set nivelIngreso(value:String):void
		{
			_nivelIngreso = value;
		}
		
		public function get enTiempo():String
		{
			return _enTiempo;
		}
		
		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}

		public function get campana():String
		{
			return _campana;
		}

		public function set campana(value:String):void
		{
			_campana = value;
		}

		public function get nombreArchivos():String
		{
			return _nombreArchivos;
		}

		public function set nombreArchivos(value:String):void
		{
			_nombreArchivos = value;
		}

		public function get horasLaborables():Number
		{
			return _horasLaborables;
		}

		public function set horasLaborables(value:Number):void
		{
			_horasLaborables = value;
		}
		
		
	}
}