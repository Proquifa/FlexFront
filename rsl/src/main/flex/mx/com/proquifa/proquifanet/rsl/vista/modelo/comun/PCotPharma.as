package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.PCotPharma")]
	public dynamic class PCotPharma
	{
		
		private var _numeroFila:int;
		
		private var  _folio:int;
		private var  _part:int;
		private var  _cantidad:int;
		private var  _proveedor:int;
		private var  _clave:int;
		private var  _precioI:Number;
		private var  _precio:Number;
		private var  _numfila:Number;
		
		private var  _FInicio:Date;
		private var  _FPharma:Date;
		private var  _fFin:Date;
		private var  _fInvestiga:Date;
		private var  _fValida:Date;
		private var  _fProvee:Date;
		
		private var  _cotiza:String;
		private var  _TProvee:String;
		private var  _tipo:String;
		private var  _fabrica:String;
		private var  _codigo:String;
		private var  _concepto:String;
		private var  _monedaI:String;
		private var  _moneda:String;
		private var  _estado:String;
		private var  _clasif:String;
		private var  _observa:String;
		private var  _rechazo:String;
		private var  _observaP:String;
		private var  _dT:String;
		private var  _sT:String;
		private var  _sC:String;
		private var  _iC:String;
		private var  _rE:String;
		private var  _aC:String;
		private var  _presentacion:String;
		private var  _unidades:String;
		private var  _comentaPInvestigacion:String;
		private var  _manejo:String;
		private var  _vendedor:String;
		private var  _medio:String;
		private var  _prioridad:String;
		private var  _nombreProveedor:String;
		
		public var totalXRealizar:int;
		public var totalEnRealizra:int;
		
		private var _FPharmaFormato:String;
		private var _FInicioFormato:String;
		
		/*public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"FInicio",formato:"fechaHora",tipo:"Date",newpropiedad:"FInicioFormato"},
			{propiedad:"FPharma",formato:"fechaHora",tipo:"Date",newpropiedad:"FPharmaFormato"}
		]);*/
		
		public function PCotPharma()
		{	
		}
		
		public function get TProvee():String
		{
			return _TProvee;
		}
		
		public function set TProvee(value:String):void
		{
			_TProvee = value;
		}
		
		public function get FPharma():Date
		{
			return _FPharma;
		}
		
		public function set FPharma(value:Date):void
		{
			FPharmaFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
			_FPharma = value;
		}
		
		public function get numfila():Number
		{
			return _numfila;
		}
		
		public function set numfila(value:Number):void
		{
			_numfila = value;
		}
		
		public function get folio():int
		{
			return _folio;
		}
		
		public function set folio(value:int):void
		{
			_folio = value;
		}
		
		public function get cotiza():String
		{
			return _cotiza;
		}
		
		public function set cotiza(value:String):void
		{
			_cotiza = value;
		}
		
		public function get part():int
		{
			return _part;
		}
		
		public function set part(value:int):void
		{
			_part = value;
		}
		
		public function get FInicio():Date
		{
			return _FInicio;
		}
		
		public function set FInicio(value:Date):void
		{
			FInicioFormato = UtilsFecha.formatoFechaDDMMMYYYY(value);
			_FInicio = value;
		}
		
		public function get cantidad():int
		{
			return _cantidad;
		}
		
		public function set cantidad(value:int):void
		{
			_cantidad = value;
		}
		
		public function get tipo():String
		{
			return _tipo;
		}
		
		public function set tipo(value:String):void
		{
			_tipo = value;
		}
		
		public function get proveedor():int
		{
			return _proveedor;
		}
		
		public function set proveedor(value:int):void
		{
			_proveedor = value;
		}
		
		public function get fabrica():String
		{
			return _fabrica;
		}
		
		public function set fabrica(value:String):void
		{
			_fabrica = value;
		}
		
		public function get codigo():String
		{
			return _codigo;
		}
		
		public function set codigo(value:String):void
		{
			_codigo = value;
		}
		
		public function get concepto():String
		{
			return _concepto;
		}
		
		public function set concepto(value:String):void
		{
			_concepto = value;
		}
		
		public function get precioI():Number
		{
			return _precioI;
		}
		
		public function set precioI(value:Number):void
		{
			_precioI = value;
		}
		
		public function get monedaI():String
		{
			return _monedaI;
		}
		
		public function set monedaI(value:String):void
		{
			_monedaI = value;
		}
		
		public function get precio():Number
		{
			return _precio;
		}
		
		public function set precio(value:Number):void
		{
			_precio = value;
		}
		
		public function get moneda():String
		{
			return _moneda;
		}
		
		public function set moneda(value:String):void
		{
			_moneda = value;
		}
		
		public function get fFin():Date
		{
			return _fFin;
		}
		
		public function set fFin(value:Date):void
		{
			_fFin = value;
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get clasif():String
		{
			return _clasif;
		}
		
		public function set clasif(value:String):void
		{
			_clasif = value;
		}
		
		public function get clave():int
		{
			return _clave;
		}
		
		public function set clave(value:int):void
		{
			_clave = value;
		}
		
		public function get observa():String
		{
			return _observa;
		}
		
		public function set observa(value:String):void
		{
			_observa = value;
		}
		
		public function get rechazo():String
		{
			return _rechazo;
		}
		
		public function set rechazo(value:String):void
		{
			_rechazo = value;
		}
		
		public function get fInvestiga():Date
		{
			return _fInvestiga;
		}
		
		public function set fInvestiga(value:Date):void
		{
			_fInvestiga = value;
		}
		
		public function get fValida():Date
		{
			return _fValida;
		}
		
		public function set fValida(value:Date):void
		{
			_fValida = value;
		}
		
		public function get observaP():String
		{
			return _observaP;
		}
		
		public function set observaP(value:String):void
		{
			_observaP = value;
		}
		
		public function get dT():String
		{
			return _dT;
		}
		
		public function set dT(value:String):void
		{
			_dT = value;
		}
		
		public function get sT():String
		{
			return _sT;
		}
		
		public function set sT(value:String):void
		{
			_sT = value;
		}
		
		public function get sC():String
		{
			return _sC;
		}
		
		public function set sC(value:String):void
		{
			_sC = value;
		}
		
		public function get iC():String
		{
			return _iC;
		}
		
		public function set iC(value:String):void
		{
			_iC = value;
		}
		
		public function get rE():String
		{
			return _rE;
		}
		
		public function set rE(value:String):void
		{
			_rE = value;
		}
		
		public function get aC():String
		{
			return _aC;
		}
		
		public function set aC(value:String):void
		{
			_aC = value;
		}
		
		public function get fProvee():Date
		{
			return _fProvee;
		}
		
		public function set fProvee(value:Date):void
		{
			_fProvee = value;
		}
		
		public function get presentacion():String
		{
			return _presentacion;
		}
		
		public function set presentacion(value:String):void
		{
			_presentacion = value;
		}
		
		public function get unidades():String
		{
			return _unidades;
		}
		
		public function set unidades(value:String):void
		{
			_unidades = value;
		}
		
		public function get comentaPInvestigacion():String
		{
			return _comentaPInvestigacion;
		}
		
		public function set comentaPInvestigacion(value:String):void
		{
			_comentaPInvestigacion = value;
		}
		
		public function get manejo():String
		{
			return _manejo;
		}
		
		public function set manejo(value:String):void
		{
			_manejo = value;
		}
		
		public function get vendedor():String
		{
			return _vendedor;
		}
		
		public function set vendedor(value:String):void
		{
			_vendedor = value;
		}
		
		public function get medio():String
		{
			return _medio;
		}
		
		public function set medio(value:String):void
		{
			_medio = value;
		}
		
		public function get prioridad():String
		{
			return _prioridad;
		}
		
		public function set prioridad(value:String):void
		{
			_prioridad = value;
		}
		
		public function get nombreProveedor():String
		{
			return _nombreProveedor;
		}
		
		public function set nombreProveedor(value:String):void
		{
			_nombreProveedor = value;
		}

		public function get numeroFila():int
		{
			return _numeroFila;
		}

		public function set numeroFila(value:int):void
		{
			_numeroFila = value;
		}

		public function get FPharmaFormato():String
		{
			return _FPharmaFormato;
		}

		public function set FPharmaFormato(value:String):void
		{
			_FPharmaFormato = value;
		}

		public function get FInicioFormato():String
		{
			return _FInicioFormato;
		}

		public function set FInicioFormato(value:String):void
		{
			_FInicioFormato = value;
		}
		
		
	}
}