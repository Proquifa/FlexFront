package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes.Incidente;
	
	[Bindable]
	public class IncidentePonderacion
	{
		///////////////////////////Incidente
		private var _numFila:int;
		private var _idIncidente:int;
		private var _idPendiente:int;
		private var _idEmpleado:int;
		private var _diasAtraso:int;
		private var _referencias:ArrayCollection;
		private var _fecha:Date;
		private var _descripcion:String;
		private var _lugar:String;
		private var _cuando:String;
		private var _comentarios:String;
		private var _folio:String;
		private var _redacto:String;
		private var _nombreEmpleado:String;
		private var _acciones:ArrayCollection;
		private var _numeroAcciones:int;
		private var _verifico:String;
		private var _eficaciaGlobal:Number;
		private var _eficaciaGlobalV:Number;
		private var _tipo:String;
		///////////////////////////Ponderacion
		private var _idPonderacion:int;
		private var _empleado:int;
		private var _incidente:int;
		//public var fecha:Date;
		private var _eficaciaGlobalReal:Number;
		private var _montoTotalGlobal:Number;
		private var _completa:Boolean;
		//public var acciones:ArrayCollection;
		private var _implicados:ArrayCollection;
		private var _pendiente:int;
		//public var nombreEmpleado:String;
		
		public function IncidentePonderacion()
		{
			numFila = 0;
			idIncidente = 0;
			idPendiente = 0;
			idEmpleado = 0;
			diasAtraso = 0;
			referencias = new ArrayCollection();
			descripcion = "";
			lugar = "";
			cuando = "";
			comentarios = "";
			folio = "";
			redacto = "";
			nombreEmpleado = "";
			acciones = new ArrayCollection();
			numeroAcciones = 0;
			verifico = "";
			eficaciaGlobal = 0;
			eficaciaGlobalV = 0;
			tipo = "";
			
			idPonderacion = 0;
			empleado = 0;
			incidente = 0;
			
			eficaciaGlobalReal = 0;
			montoTotalGlobal = 0;
			completa = false;
			
			implicados = new ArrayCollection();
			pendiente = 0;
			
			
		}
		
		public function get pendiente():int
		{
			return _pendiente;
		}

		public function set pendiente(value:int):void
		{
			_pendiente = value;
		}

		public function get implicados():ArrayCollection
		{
			return _implicados;
		}

		public function set implicados(value:ArrayCollection):void
		{
			_implicados = value;
		}

		public function get completa():Boolean
		{
			return _completa;
		}

		public function set completa(value:Boolean):void
		{
			_completa = value;
		}

		public function get montoTotalGlobal():Number
		{
			return _montoTotalGlobal;
		}

		public function set montoTotalGlobal(value:Number):void
		{
			_montoTotalGlobal = value;
		}

		public function get eficaciaGlobalReal():Number
		{
			return _eficaciaGlobalReal;
		}

		public function set eficaciaGlobalReal(value:Number):void
		{
			_eficaciaGlobalReal = value;
		}

		public function get incidente():int
		{
			return _incidente;
		}

		public function set incidente(value:int):void
		{
			_incidente = value;
		}

		public function get empleado():int
		{
			return _empleado;
		}

		public function set empleado(value:int):void
		{
			_empleado = value;
		}

		public function get idPonderacion():int
		{
			return _idPonderacion;
		}

		public function set idPonderacion(value:int):void
		{
			_idPonderacion = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get eficaciaGlobalV():Number
		{
			return _eficaciaGlobalV;
		}

		public function set eficaciaGlobalV(value:Number):void
		{
			_eficaciaGlobalV = value;
		}

		public function get eficaciaGlobal():Number
		{
			return _eficaciaGlobal;
		}

		public function set eficaciaGlobal(value:Number):void
		{
			_eficaciaGlobal = value;
		}

		public function get verifico():String
		{
			return _verifico;
		}

		public function set verifico(value:String):void
		{
			_verifico = value;
		}

		public function get numeroAcciones():int
		{
			return _numeroAcciones;
		}

		public function set numeroAcciones(value:int):void
		{
			_numeroAcciones = value;
		}

		public function get acciones():ArrayCollection
		{
			return _acciones;
		}

		public function set acciones(value:ArrayCollection):void
		{
			_acciones = value;
		}

		public function get nombreEmpleado():String
		{
			return _nombreEmpleado;
		}

		public function set nombreEmpleado(value:String):void
		{
			_nombreEmpleado = value;
		}

		public function get redacto():String
		{
			return _redacto;
		}

		public function set redacto(value:String):void
		{
			_redacto = value;
		}

		public function get folio():String
		{
			return _folio;
		}

		public function set folio(value:String):void
		{
			_folio = value;
		}

		public function get comentarios():String
		{
			return _comentarios;
		}

		public function set comentarios(value:String):void
		{
			_comentarios = value;
		}

		public function get cuando():String
		{
			return _cuando;
		}

		public function set cuando(value:String):void
		{
			_cuando = value;
		}

		public function get lugar():String
		{
			return _lugar;
		}

		public function set lugar(value:String):void
		{
			_lugar = value;
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get referencias():ArrayCollection
		{
			return _referencias;
		}

		public function set referencias(value:ArrayCollection):void
		{
			_referencias = value;
		}

		public function get diasAtraso():int
		{
			return _diasAtraso;
		}

		public function set diasAtraso(value:int):void
		{
			_diasAtraso = value;
		}

		public function get idEmpleado():int
		{
			return _idEmpleado;
		}

		public function set idEmpleado(value:int):void
		{
			_idEmpleado = value;
		}

		public function get idPendiente():int
		{
			return _idPendiente;
		}

		public function set idPendiente(value:int):void
		{
			_idPendiente = value;
		}

		public function get idIncidente():int
		{
			return _idIncidente;
		}

		public function set idIncidente(value:int):void
		{
			_idIncidente = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function set_Incidente(_incidente:Incidente):void{
			this.numFila = _incidente.numFila;
			this.idIncidente = _incidente.idIncidente;
			this.idPendiente = _incidente.idPendiente;
			this.idEmpleado = _incidente.idEmpleado;
			this.diasAtraso = _incidente.diasAtraso;
			this.referencias = _incidente.referencias;
			this.fecha = _incidente.fecha;
			this.descripcion = _incidente.descripcion;
			this.lugar = _incidente.lugar;
			this.cuando = _incidente.cuando;
			this.comentarios = _incidente.comentarios;
			this.folio = _incidente.folio;
			this.redacto = _incidente.redacto;
			this.nombreEmpleado = _incidente.nombreEmpleado;
			this.acciones = _incidente.acciones;
			this.numeroAcciones = _incidente.numeroAcciones;
			this.verifico = _incidente.verifico;
			this.eficaciaGlobal = _incidente.eficaciaGlobal;
			this.eficaciaGlobalV = _incidente.eficaciaGlobalV;
			this.tipo = _incidente.tipo;
		}
		
		public function get_Incidente():Incidente{
			var _incidente:Incidente = new Incidente();
			_incidente.numFila = this.numFila;
			_incidente.idIncidente = this.idIncidente;
			_incidente.idPendiente =  this.idPendiente;
			_incidente.idEmpleado = this.idEmpleado;
			_incidente.diasAtraso = this.diasAtraso; 
			_incidente.referencias = this.referencias; 
			_incidente.fecha = this.fecha;
			_incidente.descripcion = this.descripcion; 
			_incidente.lugar = this.lugar;
			_incidente.cuando = this.cuando; 
			_incidente.comentarios = this.comentarios; 
			_incidente.folio = this.folio;
			_incidente.redacto = this.redacto; 
			_incidente.nombreEmpleado = this.nombreEmpleado;
			_incidente.acciones = this.acciones;
			_incidente.numeroAcciones = this.numeroAcciones; 
			_incidente.verifico = this.verifico;
			_incidente.eficaciaGlobal = this.eficaciaGlobal;
			_incidente.eficaciaGlobalV = this.eficaciaGlobalV;
			_incidente.tipo = this.tipo;
			return _incidente;
		}
		
		public function set_Ponderacion(_ponderacion:Ponderacion):void{
			idPonderacion = _ponderacion.idPonderacion;
			empleado = _ponderacion.empleado;
			incidente = _ponderacion.incidente;
			fecha = _ponderacion.fecha;
			eficaciaGlobalReal = _ponderacion.eficaciaGlobalReal;
			montoTotalGlobal = _ponderacion.montoTotalGlobal;
			completa = _ponderacion.completa;
			acciones = _ponderacion.acciones;
			implicados = _ponderacion.implicados;
			pendiente = _ponderacion.pendiente;
			nombreEmpleado = _ponderacion.nombreEmpleado;
		}
		
		public function get_Ponderacion():Ponderacion{
			var _ponderacion:Ponderacion = new Ponderacion();
			
			_ponderacion.idPonderacion = idPonderacion; 
			_ponderacion.empleado = empleado; 
			_ponderacion.incidente = incidente; 
			_ponderacion.fecha = fecha; 
			_ponderacion.eficaciaGlobalReal = eficaciaGlobalReal; 
			_ponderacion.montoTotalGlobal = montoTotalGlobal; 
			_ponderacion.completa = completa; 
			_ponderacion.acciones = acciones; 
			_ponderacion.implicados = implicados; 
			_ponderacion.pendiente = pendiente; 
			_ponderacion.nombreEmpleado = nombreEmpleado; 
			
			return _ponderacion;
		}
	}
	
	
}