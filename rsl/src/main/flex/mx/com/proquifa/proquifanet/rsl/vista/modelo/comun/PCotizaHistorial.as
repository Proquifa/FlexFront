package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.PCotizaHistorial")]
	public dynamic class PCotizaHistorial
	{
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"fechaDeUltimaAccion",formato:"fecha",tipo:"Date",newpropiedad:"fechaDeUltimaAccionFormato"},
			{propiedad:"fechaEstimadaRealizacion",formato:"fecha",tipo:"Date",newpropiedad:"fechaEstimadaRealizacionFormato"},
			{propiedad:"fechaRealizacion",formato:"fecha",tipo:"Date",newpropiedad:"fechaRealizacionFormato"}]);
		
		private var _idPcotiza:Number;
		private var _fecha:Date;
		private var _realizo:String;
		private var _contacto:String;
		private var _estado:String;
		private var _fUAccion:Date;
		private var _fER:Date;
		private var _fR:Date;
		private var _comentarios:String;
		private var _origen:String;
		private var _renglon:Number;
		private var _numFila:Number;
		
		private var _folio:Number;
		private var _fechaDeUltimaAccion:Date;
		private var _fechaEstimadaRealizacion:Date;
		private var _fechaRealizacion:Date;
		
		public function PCotizaHistorial()
		{
		}

		public function get idPcotiza():Number
		{
			return _idPcotiza;
		}

		public function set idPcotiza(value:Number):void
		{
			_idPcotiza = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get realizo():String
		{
			return _realizo;
		}

		public function set realizo(value:String):void
		{
			_realizo = value;
		}

		public function get contacto():String
		{
			return _contacto;
		}

		public function set contacto(value:String):void
		{
			_contacto = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get fUAccion():Date
		{
			return _fUAccion;
		}

		public function set fUAccion(value:Date):void
		{
			_fUAccion = value;
		}

		public function get fER():Date
		{
			return _fER;
		}

		public function set fER(value:Date):void
		{
			_fER = value;
		}

		public function get fR():Date
		{
			return _fR;
		}

		public function set fR(value:Date):void
		{
			_fR = value;
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}

		public function get renglon():Number
		{
			return _renglon;
		}

		public function set renglon(value:Number):void
		{
			_renglon = value;
		}

		public function get folio():Number
		{
			return _folio;
		}

		public function set folio(value:Number):void
		{
			_folio = value;
		}

		public function get fechaDeUltimaAccion():Date
		{
			return _fechaDeUltimaAccion;
		}

		public function set fechaDeUltimaAccion(value:Date):void
		{
			_fechaDeUltimaAccion = value;
		}

		public function get fechaEstimadaRealizacion():Date
		{
			return _fechaEstimadaRealizacion;
		}

		public function set fechaEstimadaRealizacion(value:Date):void
		{
			_fechaEstimadaRealizacion = value;
		}

		public function get fechaRealizacion():Date
		{
			return _fechaRealizacion;
		}

		public function set fechaRealizacion(value:Date):void
		{
			_fechaRealizacion = value;
		}

		public function get numFila():Number
		{
			return _numFila;
		}

		public function set numFila(value:Number):void
		{
			_numFila = value;
		}


	}
}