package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.consultas.comun.ConsultaIncidente")]
	public class ConsultaIncidente extends Incidente
	{
		
		private var _asociado:String;
		private var _impacto:String;
		private var _origen:String;
		
		
		private var _idProducto:Number;
		private var _idCliente:Number;
		private var _idProveedor:Number;
		private var _idGestionRelacionada:Number;	
		private var _tiempoTotal:Number;	
		//Extras
		
		private var _impacto_cliente:Boolean;
		private var _impacto_producto:Boolean;
		private var _impacto_sistema:Boolean;
		private var _aceptado:Boolean;
		
		private var _nombre_cliente:String;
		private var _nombre_Proveedor:String;
		private var _nombre_Producto:String;
		private var _nombre_Empleado:String;
		private var _procedimientos_Asociados:String;
		private var _tiempoProceso:String;
		private var _responsable:String;
		private var _decision:String;
		//Fechas
		private var _fechaInicio:Date;
		private var _fechaFin:Date;
		
		
		public function ConsultaIncidente()
		{
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
		
		public function get fechaFin():Date
		{
			return _fechaFin;
		}
		
		public function set fechaFin(value:Date):void
		{
			_fechaFin = value;
		}
		
		public function get fechaInicio():Date
		{
			return _fechaInicio;
		}
		
		public function set fechaInicio(value:Date):void
		{
			_fechaInicio = value;
		}
		
		public function get tiempoProceso():String
		{
			return _tiempoProceso;
		}
		
		public function set tiempoProceso(value:String):void
		{
			_tiempoProceso = value;
		}
		
		public function get procedimientos_Asociados():String
		{
			return _procedimientos_Asociados;
		}
		
		public function set procedimientos_Asociados(value:String):void
		{
			_procedimientos_Asociados = value;
		}
		
		public function get nombre_Empleado():String
		{
			return _nombre_Empleado;
		}
		
		public function set nombre_Empleado(value:String):void
		{
			_nombre_Empleado = value;
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
		
		public function get nombre_cliente():String
		{
			return _nombre_cliente;
		}
		
		public function set nombre_cliente(value:String):void
		{
			_nombre_cliente = value;
		}
		
		public function get aceptado():Boolean
		{
			return _aceptado;
		}
		
		public function set aceptado(value:Boolean):void
		{
			_aceptado = value;
		}
		
		public function get impacto_sistema():Boolean
		{
			return _impacto_sistema;
		}
		
		public function set impacto_sistema(value:Boolean):void
		{
			_impacto_sistema = value;
		}
		
		public function get impacto_producto():Boolean
		{
			return _impacto_producto;
		}
		
		public function set impacto_producto(value:Boolean):void
		{
			_impacto_producto = value;
		}
		
		public function get impacto_cliente():Boolean
		{
			return _impacto_cliente;
		}
		
		public function set impacto_cliente(value:Boolean):void
		{
			_impacto_cliente = value;
		}
		
		public function get idGestionRelacionada():Number
		{
			return _idGestionRelacionada;
		}
		
		public function set idGestionRelacionada(value:Number):void
		{
			_idGestionRelacionada = value;
		}
		
		public function get idProveedor():Number
		{
			return _idProveedor;
		}
		
		public function set idProveedor(value:Number):void
		{
			_idProveedor = value;
		}
		
		public function get idCliente():Number
		{
			return _idCliente;
		}
		
		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}
		
		public function get idProducto():Number
		{
			return _idProducto;
		}
		
		public function set idProducto(value:Number):void
		{
			_idProducto = value;
		}
		
		
		
		public function get origen():String
		{
			return _origen;
		}
		
		public function set origen(value:String):void
		{
			_origen = value;
		}
		
		public function get impacto():String
		{
			return _impacto;
		}
		
		public function set impacto(value:String):void
		{
			_impacto = value;
		}
		
		public function get asociado():String
		{
			return _asociado;
		}
		
		public function set asociado(value:String):void
		{
			_asociado = value;
		}
		
		
	}
}