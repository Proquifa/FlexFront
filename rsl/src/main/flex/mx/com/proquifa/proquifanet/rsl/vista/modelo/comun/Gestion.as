package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	
	import mx.collections.ArrayCollection;
	[Bindable]
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.comun.Gestion")]
	public class Gestion
	{
		private var _idGestion:int;
		private var _empleado:int;
		private var _incidente:int;
		private var _cliente:int;
		private var _proveedor:int;
		private var _subProceso:int;
		private var _subProcesoIncidente:int;
		private var _producto:int;
		private var _contacto:int;
		private var _idPendiente:int;
		private var _tiempoTotal:int;
		
		private var _impactoCliente:Boolean;
		private var _impactoProducto:Boolean;
		private var _impactoSistema:Boolean;
		private var _decision:Boolean;
		private var _analisis:Boolean;
		private var _aceptado:Boolean;
		private var _seleccionado:Boolean;
		private var _acuerdo:String;  //originalmente es un booleano de java es una prueba para manejar nulos
		
		private var _descripcion:String;
		private var _tipo:String;
		private var _quien:String;
		private var _lugar:String;
		private var _cuando:String;
		private var _como:String;
		private var _causa:String;
		private var _solucion:String;		
		private var _justificacion:String;
		private var _origen:String;
		private var _nombreContacto:String;
		private var _correoContacto:String;
		private var _problema:String;
		private var _aceptadoString:String;
		private var _enviarCorreo:String;
		private var _nombreEmpleado:String;
		
		private var _nombre_Proveedor:String;
		private var _nombre_Producto:String;
		private var _nombre_Cliente:String;
		private var _pilotoProcesoOrigen:String;
		private var _etiquetaLineaDTiempo:String;
		
		private var _referencias:ArrayCollection;;
		private var _procedimientos:ArrayCollection;
		private var _incidentesRelacionados:ArrayCollection;
		
		private var _procedimientosAsociados:String;
		
		private var _fecha:Date;
		private var _ffin:Date;
		
		private var _NAProcedimiento:Boolean;
		
		
		public function Gestion()
		{
			//TODO: implement function
		}
		
		public function get subProcesoIncidente():int
		{
			return _subProcesoIncidente;
		}

		public function set subProcesoIncidente(value:int):void
		{
			_subProcesoIncidente = value;
		}

		public function get pilotoProcesoOrigen():String
		{
			return _pilotoProcesoOrigen;
		}

		public function set pilotoProcesoOrigen(value:String):void
		{
			_pilotoProcesoOrigen = value;
		}

		public function get nombre_Cliente():String
		{
			return _nombre_Cliente;
		}

		public function set nombre_Cliente(value:String):void
		{
			_nombre_Cliente = value;
		}

		public function get nombre_Producto():String
		{
			return _nombre_Producto;
		}

		public function set nombre_Producto(value:String):void
		{
			_nombre_Producto = value;
		}

		public function get nombre_Proveedor():String
		{
			return _nombre_Proveedor;
		}

		public function set nombre_Proveedor(value:String):void
		{
			_nombre_Proveedor = value;
		}

		public function get NAProcedimiento():Boolean
		{
			return _NAProcedimiento;
		}

		public function set NAProcedimiento(value:Boolean):void
		{
			_NAProcedimiento = value;
		}

		public function get procedimientosAsociados():String
		{
			return _procedimientosAsociados;
		}

		public function set procedimientosAsociados(value:String):void
		{
			_procedimientosAsociados = value;
		}

		public function get acuerdo():String
		{
			return _acuerdo;
		}

		public function set acuerdo(value:String):void
		{
			_acuerdo = value;
		}

		public function get nombreEmpleado():String
		{
			return _nombreEmpleado;
		}

		public function set nombreEmpleado(value:String):void
		{
			_nombreEmpleado = value;
		}

		public function get enviarCorreo():String
		{
			return _enviarCorreo;
		}

		public function set enviarCorreo(value:String):void
		{
			_enviarCorreo = value;
		}

		public function get fecha():Date
		{
			return _fecha;
		}

		public function set fecha(value:Date):void
		{
			_fecha = value;
		}

		public function get procedimientos():ArrayCollection
		{
			return _procedimientos;
		}

		public function set procedimientos(value:ArrayCollection):void
		{
			_procedimientos = value;
		}

		public function get referencias():ArrayCollection
		{
			return _referencias;
		}

		public function set referencias(value:ArrayCollection):void
		{
			_referencias = value;
		}

		public function get aceptadoString():String
		{
			return _aceptadoString;
		}

		public function set aceptadoString(value:String):void
		{
			_aceptadoString = value;
		}

		public function get problema():String
		{
			return _problema;
		}

		public function set problema(value:String):void
		{
			_problema = value;
		}

		public function get correoContacto():String
		{
			return _correoContacto;
		}

		public function set correoContacto(value:String):void
		{
			_correoContacto = value;
		}

		public function get nombreContacto():String
		{
			return _nombreContacto;
		}

		public function set nombreContacto(value:String):void
		{
			_nombreContacto = value;
		}

		public function get origen():String
		{
			return _origen;
		}

		public function set origen(value:String):void
		{
			_origen = value;
		}

		public function get justificacion():String
		{
			return _justificacion;
		}

		public function set justificacion(value:String):void
		{
			_justificacion = value;
		}

		public function get solucion():String
		{
			return _solucion;
		}

		public function set solucion(value:String):void
		{
			_solucion = value;
		}

		public function get causa():String
		{
			return _causa;
		}

		public function set causa(value:String):void
		{
			_causa = value;
		}

		public function get como():String
		{
			return _como;
		}

		public function set como(value:String):void
		{
			_como = value;
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

		public function get quien():String
		{
			return _quien;
		}

		public function set quien(value:String):void
		{
			_quien = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get descripcion():String
		{
			return _descripcion;
		}

		public function set descripcion(value:String):void
		{
			_descripcion = value;
		}

		public function get seleccionado():Boolean
		{
			return _seleccionado;
		}

		public function set seleccionado(value:Boolean):void
		{
			_seleccionado = value;
		}

		public function get aceptado():Boolean
		{
			return _aceptado;
		}

		public function set aceptado(value:Boolean):void
		{
			_aceptado = value;
		}

		public function get analisis():Boolean
		{
			return _analisis;
		}

		public function set analisis(value:Boolean):void
		{
			_analisis = value;
		}

		public function get decision():Boolean
		{
			return _decision;
		}

		public function set decision(value:Boolean):void
		{
			_decision = value;
		}

		public function get impactoSistema():Boolean
		{
			return _impactoSistema;
		}

		public function set impactoSistema(value:Boolean):void
		{
			_impactoSistema = value;
		}

		public function get impactoProducto():Boolean
		{
			return _impactoProducto;
		}

		public function set impactoProducto(value:Boolean):void
		{
			_impactoProducto = value;
		}

		public function get impactoCliente():Boolean
		{
			return _impactoCliente;
		}

		public function set impactoCliente(value:Boolean):void
		{
			_impactoCliente = value;
		}

		public function get idPendiente():Number
		{
			return _idPendiente;
		}

		public function set idPendiente(value:Number):void
		{
			_idPendiente = value;
		}

		public function get contacto():Number
		{
			return _contacto;
		}

		public function set contacto(value:Number):void
		{
			_contacto = value;
		}

		public function get producto():Number
		{
			return _producto;
		}

		public function set producto(value:Number):void
		{
			_producto = value;
		}

		public function get subProceso():Number
		{
			return _subProceso;
		}

		public function set subProceso(value:Number):void
		{
			_subProceso = value;
		}

		public function get proveedor():Number
		{
			return _proveedor;
		}

		public function set proveedor(value:Number):void
		{
			_proveedor = value;
		}

		public function get cliente():Number
		{
			return _cliente;
		}

		public function set cliente(value:Number):void
		{
			_cliente = value;
		}

		public function get incidente():Number
		{
			return _incidente;
		}

		public function set incidente(value:Number):void
		{
			_incidente = value;
		}

		public function get empleado():Number
		{
			return _empleado;
		}

		public function set empleado(value:Number):void
		{
			_empleado = value;
		}

		public function get idGestion():Number
		{
			return _idGestion;
		}

		public function set idGestion(value:Number):void
		{
			_idGestion = value;
		}

		public function get incidentesRelacionados():ArrayCollection
		{
			return _incidentesRelacionados;
		}

		public function set incidentesRelacionados(value:ArrayCollection):void
		{
			_incidentesRelacionados = value;
		}

		public function get tiempoTotal():int
		{
			return _tiempoTotal;
		}

		public function set tiempoTotal(value:int):void
		{
			_tiempoTotal = value;
		}

		public function get etiquetaLineaDTiempo():String
		{
			return _etiquetaLineaDTiempo;
		}

		public function set etiquetaLineaDTiempo(value:String):void
		{
			_etiquetaLineaDTiempo = value;
		}

		public function get ffin():Date
		{
			return _ffin;
		}

		public function set ffin(value:Date):void
		{
			_ffin = value;
		}


	}
}