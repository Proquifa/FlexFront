package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.PonderacionImplicado")]
	public class PonderacionImplicado
	{
		private var _idPonderacionImplicado:int;
		private var _ponderacion:int;
		private var _empleado:int;
		
		/*private var _horasHombre:int;*/ //modificada por osv para quitar eficacia de ponderacion
		private var _horasHombre:Number = 0;
		private var _costoHoraHombre:Number;
		private var _razones:String;
		
		private var _usuario:String;
		private var _nivelFuncion:String;
		private var _funcion:String;
		
		private var _total:Number;
		private var _habilitado:Boolean;
		
		private var _Nombre:String;
		private var _Subproceso:String;
		private var _Responsable:String;
		
		private var _seleccionado:Boolean;
		
		private var _numFila:int;
		
		private var _maximo:Boolean;
		
		
		public function PonderacionImplicado()
		{
			maximo = false;
			idPonderacionImplicado=0;
			ponderacion=0;
			empleado=0;
			
			horasHombre=0;
			costoHoraHombre=0;
			razones="";
			
			usuario="";
			nivelFuncion="";
			funcion="";
			
			total=0;
			habilitado =true;
			
			Nombre="";
			Subproceso="";
			Responsable="";
			this.seleccionado = false;
			
		}
		
		public function get maximo():Boolean
		{
			return _maximo;
		}

		public function set maximo(value:Boolean):void
		{
			_maximo = value;
		}

		public function get numFila():int
		{
			return _numFila;
		}

		public function set numFila(value:int):void
		{
			_numFila = value;
		}

		public function get seleccionado():Boolean
		{
			return _seleccionado;
		}

		public function set seleccionado(value:Boolean):void
		{
			_seleccionado = value;
		}

		public function get Responsable():String
		{
			return _Responsable;
		}

		public function set Responsable(value:String):void
		{
			_Responsable = value;
		}

		public function get Subproceso():String
		{
			return _Subproceso;
		}

		public function set Subproceso(value:String):void
		{
			_Subproceso = value;
		}

		public function get Nombre():String
		{
			return _Nombre;
		}

		public function set Nombre(value:String):void
		{
			_Nombre = value;
		}

		public function get habilitado():Boolean
		{
			return _habilitado;
		}

		public function set habilitado(value:Boolean):void
		{
			_habilitado = value;
		}

		public function get total():Number
		{
			return _total;
		}

		public function set total(value:Number):void
		{
			_total = value;
		}

		public function get funcion():String
		{
			return _funcion;
		}

		public function set funcion(value:String):void
		{
			_funcion = value;
		}

		public function get nivelFuncion():String
		{
			return _nivelFuncion;
		}

		public function set nivelFuncion(value:String):void
		{
			_nivelFuncion = value;
		}

		public function get usuario():String
		{
			return _usuario;
		}

		public function set usuario(value:String):void
		{
			_usuario = value;
		}

		public function get razones():String
		{
			return _razones;
		}

		public function set razones(value:String):void
		{
			_razones = value;
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

		public function get empleado():int
		{
			return _empleado;
		}

		public function set empleado(value:int):void
		{
			_empleado = value;
		}

		public function get ponderacion():int
		{
			return _ponderacion;
		}

		public function set ponderacion(value:int):void
		{
			_ponderacion = value;
		}

		public function get idPonderacionImplicado():int
		{
			return _idPonderacionImplicado;
		}

		public function set idPonderacionImplicado(value:int):void
		{
			_idPonderacionImplicado = value;
		}

		public function setPonderacionImplicado(objeto:Object):void{
			//this.idPonderacionImplicado = objeto. ;
			//this.ponderacion = objeto. ;
			this.empleado = objeto.idEmpleado;
			//this.horasHombre = objeto. ;
			this.costoHoraHombre = objeto.costoHoraHombre;
			//this.razones = objeto. ;
			this.usuario = objeto.usuario;
			this.nivelFuncion = objeto.nivelFuncion;
			this.funcion = objeto.nombreFuncion;
			this.Nombre = objeto.nombre;
			this.Subproceso = objeto.nombreSubproceso;
			this.Responsable = objeto.responsable;
			//this.total = objeto. ;
			
			
			//this.habilitado =  ;
		}
	}
}