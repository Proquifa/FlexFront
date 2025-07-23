package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import mx.collections.ArrayCollection;
	[Bindable] 
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Incidente")]
	public dynamic class Incidente
	{
		private var _numFila:Number;
		private var _idIncidente:Number;
		private var _idPendiente:Number;
		private var _idEmpleado:Number;
		private var _diasAtraso:Number;
		private var _numeroAcciones:int;
		private var _eficaciaGlobal:Number;
		private var _eficaciaGlobalV:Number;
		private var _costoCalidad:Number;
		private var _idGestiono:int =0;
		private var _incidenteRelacionado:int;
		private var _pendientePonderacion:int = 0;
		private var _idSubprocesoRelacionado:Number = 0;
		private var _tiempoTotal:int;
		
		////////////// de uso para ItemRenderer de Marcadores///////////
		private var _numMarcadoresFT:int = -1;
		private var _numMarcadoresET:int = -1;
		private var _numIncidentes:int = -1;
		/////////////////////////////////////////////////////
		
		private var _cambiosDeOrigen:ArrayCollection;
		private var _referencias:ArrayCollection;
		private var _acciones:ArrayCollection;
		private var _reformulaciones:ArrayCollection;
		
		private var _fecha:Date;
		private var _fechaCierre:Date;
		
		private var _descripcion:String;
		private var _lugar:String;
		private var _cuando:String;
		private var _comentarios:String;
		private var _folio:String;
		private var _redacto:String;
		private var _verifico:String;
		private var _nombreEmpleado:String;
		private var _tipo:String;
		private var _ubicacion:String;
		private var _gestor:String;
		private var _pondero:String;
		private var _incidenteRelacionadoS:String;
		private var _folioIncidenteRelacionado:String = "ND";
		private var _justificacion:String;
		private var _estado:String;
		private var _periodo:String;
		private var _situacionIdentificada:String = "ND";
		private var _marcador:String;
		private var _ultimo:String = "";
		private var _enTiempo:String;
		private var _valor:String;
		
		private var _horasHombre:Number;
		private var _costoHoraHombre:Number = 0;
		private var _cncReal:Number;
		
		private var  _eliminado:Boolean;
		private var _checkBox:Boolean = false;
		
		public var propiedades:ArrayCollection = new ArrayCollection([
			{propiedad:"fecha",formato:"fecha",tipo:"Date",newpropiedad:"fechaFormato"},
			{propiedad:"diasAtraso",formato:"fecha",tipo:"Date",newpropiedad:"diasAtrasoFormato"},
			{propiedad:"eficaciaGlobal",formato:"porcentaje",tipo:"Number",newpropiedad:"eficaciaGlobalFormato"},
			{propiedad:"eficaciaGlobalV",formato:"porcentaje",tipo:"Number",newpropiedad:"eficaciaGlobalVFormato"},
			{propiedad:"fechaCierre",formato:"fecha",tipo:"Date",newpropiedad:"fechaCierreFormato"},
			{propiedad:"costoHoraHombre",formato:"moneda",tipo:"Number",newpropiedad:"costoHoraHombreFormato"},
			{propiedad:"costoCalidad",formato:"moneda",tipo:"Number",newpropiedad:"costoCalidadFormato"},
			{propiedad:"cncReal",formato:"moneda",tipo:"Number",newpropiedad:"formatoMonedaCNCReal"}
		]);
		
		public function get cncReal():Number
		{
			return _cncReal;
		}
		
		public function set cncReal(value:Number):void
		{
			_cncReal = value;
		}
		
		public function get idSubprocesoRelacionado():Number
		{
			return _idSubprocesoRelacionado;
		}
		
		public function set idSubprocesoRelacionado(value:Number):void
		{
			_idSubprocesoRelacionado = value;
		}
		
		public function get estado():String
		{
			return _estado;
		}
		
		public function set estado(value:String):void
		{
			_estado = value;
		}
		
		public function get costoHoraHombre():Number
		{
			return _costoHoraHombre;
		}
		
		public function set costoHoraHombre(value:Number):void
		{
			_costoHoraHombre = value;
		}
		
		public function get horasHombre():Number
		{
			return _horasHombre;
		}
		
		public function set horasHombre(value:Number):void
		{
			_horasHombre = value;
		}
		
		public function Incidente()
		{
			_costoCalidad = 0;
			//TODO: implement function
		}
		
		public function get periodo():String
		{
			return _periodo;
		}
		
		public function set periodo(value:String):void
		{
			_periodo = value;
		}
		
		public function get justificacion():String
		{
			return _justificacion;
		}
		
		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}
		
		public function get fechaCierre():Date
		{
			return _fechaCierre;
		}
		
		public function set fechaCierre(value:Date):void
		{
			_fechaCierre = value;
		}
		
		public function get idGestiono():int
		{
			return _idGestiono;
		}
		
		public function set idGestiono(value:int):void
		{
			_idGestiono = value;
		}
		
		public function get pendientePonderacion():int
		{
			return _pendientePonderacion;
		}
		
		public function set pendientePonderacion(value:int):void
		{
			_pendientePonderacion = value;
		}
		
		public function get folioIncidenteRelacionado():String
		{
			return _folioIncidenteRelacionado;
		}
		
		public function set folioIncidenteRelacionado(value:String):void
		{
			if(value == null || value == "null"){
				_folioIncidenteRelacionado = "ND";
			}else{
				_folioIncidenteRelacionado = value;	
			}
		}
		
		public function get incidenteRelacionadoS():String
		{
			return _incidenteRelacionadoS;
		}
		
		public function set incidenteRelacionadoS(value:String):void
		{
			_incidenteRelacionadoS = value;
		}
		
		public function get incidenteRelacionado():int
		{
			return _incidenteRelacionado;
		}
		
		public function set incidenteRelacionado(value:int):void
		{
			_incidenteRelacionado = value;
		}
		
		public function get pondero():String
		{
			return _pondero;
		}
		
		public function set pondero(value:String):void
		{
			_pondero = value;
		}
		
		public function get gestor():String
		{
			return _gestor;
		}
		
		public function set gestor(value:String):void
		{
			_gestor = value;
		}
		
		public function get ubicacion():String
		{
			return _ubicacion;
		}
		
		public function set ubicacion(value:String):void
		{
			_ubicacion = value;
		}
		
		public function get costoCalidad():Number
		{
			return _costoCalidad;
		}
		
		public function set costoCalidad(value:Number):void
		{
			_costoCalidad = value;
		}
		
		public function get tipo():String
		{
			return _tipo;
		}
		
		public function set tipo(value:String):void
		{
			_tipo = value;
		}
		
		public function get nombreEmpleado():String
		{
			return _nombreEmpleado;
		}
		
		public function set nombreEmpleado(value:String):void
		{
			_nombreEmpleado = value;
		}
		
		public function get verifico():String
		{
			return _verifico;
		}
		
		public function set verifico(value:String):void
		{
			_verifico = value;
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
		
		public function get acciones():ArrayCollection
		{
			return _acciones;
		}
		
		public function set acciones(value:ArrayCollection):void
		{
			_acciones = value;
		}
		
		public function get referencias():ArrayCollection
		{
			return _referencias;
		}
		
		public function set referencias(value:ArrayCollection):void
		{
			_referencias = value;
		}
		
		public function get eficaciaGlobalV():Number
		{
			return _eficaciaGlobalV;
		}
		
		public function set eficaciaGlobalV(value:Number):void
		{
			_eficaciaGlobalV = Math.round(value);
		}
		
		public function get eficaciaGlobal():Number
		{
			return _eficaciaGlobal;
		}
		
		public function set eficaciaGlobal(value:Number):void
		{
			_eficaciaGlobal = Math.round(value);
		}
		
		public function get numeroAcciones():int
		{
			return _numeroAcciones;
		}
		
		public function set numeroAcciones(value:int):void
		{
			_numeroAcciones = value;
		}
		
		public function get diasAtraso():Number
		{
			return _diasAtraso;
		}
		
		public function set diasAtraso(value:Number):void
		{
			_diasAtraso = value;
			if(value > 2){
				enTiempo = "FT";
			}else{
				enTiempo = "ET";
			}
		}
		
		public function get idEmpleado():Number
		{
			return _idEmpleado;
		}
		
		public function set idEmpleado(value:Number):void
		{
			_idEmpleado = value;
		}
		
		public function get idPendiente():Number
		{
			return _idPendiente;
		}
		
		public function set idPendiente(value:Number):void
		{
			_idPendiente = value;
		}
		
		public function get idIncidente():Number
		{
			return _idIncidente;
		}
		
		public function set idIncidente(value:Number):void
		{
			_idIncidente = value;
		}
		
		public function get numFila():Number
		{
			return _numFila;
		}
		
		public function set numFila(value:Number):void
		{
			_numFila = value;
		}
		
		public function get cambiosDeOrigen():ArrayCollection
		{
			return _cambiosDeOrigen;
		}
		
		public function set cambiosDeOrigen(value:ArrayCollection):void
		{
			_cambiosDeOrigen = value;
		}
		
		public function get situacionIdentificada():String
		{
			return _situacionIdentificada;
		}
		
		public function set situacionIdentificada(value:String):void
		{
			if(value == null || value == "null" ){
				_situacionIdentificada = "ND";
			}else{
				_situacionIdentificada = value;	
			}
		}
		
		public function get marcador():String
		{
			return _marcador;
		}
		
		public function set marcador(value:String):void
		{
			_marcador = value;
		}
		
		public function get ultimo():String
		{
			return _ultimo;
		}
		
		public function set ultimo(value:String):void
		{
			_ultimo = value;
		}
		
		public function get enTiempo():String
		{
			return _enTiempo;
		}
		
		public function set enTiempo(value:String):void
		{
			_enTiempo = value;
		}
		
		public function get valor():String
		{
			return _valor;
		}
		
		public function set valor(value:String):void
		{
			_valor = value;
		}
		
		public function get eliminado():Boolean
		{
			return _eliminado;
		}
		
		public function set eliminado(value:Boolean):void
		{
			_eliminado = value;
		}
		
		public function get checkBox():Boolean
		{
			return _checkBox;
		}
		
		public function set checkBox(value:Boolean):void
		{
			_checkBox = value;
		}
		
		public function get tiempoTotal():int
		{
			return _tiempoTotal;
		}
		
		public function set tiempoTotal(value:int):void
		{
			_tiempoTotal = value;
		}
		
		public function get numMarcadoresFT():int
		{
			return _numMarcadoresFT;
		}
		
		public function set numMarcadoresFT(value:int):void
		{
			_numMarcadoresFT = value;
		}
		
		public function get numMarcadoresET():int
		{
			return _numMarcadoresET;
		}
		
		public function set numMarcadoresET(value:int):void
		{
			_numMarcadoresET = value;
		}
		
		public function get numIncidentes():int
		{
			return _numIncidentes;
		}
		
		public function set numIncidentes(value:int):void
		{
			_numIncidentes = value;
		}
		
		public function get reformulaciones():ArrayCollection
		{
			return _reformulaciones;
		}
		
		public function set reformulaciones(value:ArrayCollection):void
		{
			_reformulaciones = value;
		}
		
		
	}
}