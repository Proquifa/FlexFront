package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	import mx.controls.Alert;
	
	public class ModeloParaCatalogoServices extends EventDispatcher
	{
		private var _usuario:ArrayCollection = new ArrayCollection();
		private var _clientes:ArrayCollection = new ArrayCollection();
		private var _proveedores:ArrayCollection = new ArrayCollection();
		private var _guardaLlamada:Number;
		private var _validaEmpleado:Boolean;
		private var _empleadoPorUsuario:Empleado;
		
		public function ModeloParaCatalogoServices(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		
		//Metodo para conseguir Usuarios
		[Bindable(event="cambioUsuario")]
		public function get Usuarios():ArrayCollection{
			return this._usuario
		}
		
		public function setUsuarios ( datos:ArrayCollection ):void{
			this._usuario = datos;				
			dispatchEvent( new Event("cambioUsuario") );
		}
		
		//Metodo para conseguir Clientes
		[Bindable(event="cambioClientes")]
		public function get Clientes():ArrayCollection{
			return this._clientes
		}
		
		public function setClientes ( datos:ArrayCollection ):void{
			this._clientes = datos;				
			dispatchEvent( new Event("cambioClientes") );
		}
		
		//Metodo para conseguir Proveedores
		[Bindable(event="cambioProveedores")]
		public function get Proveedores():ArrayCollection{
			return this._proveedores;
		}
		
		public function setProveedores ( datos:ArrayCollection ):void{
			this._proveedores = datos;				
			dispatchEvent( new Event("cambioProveedores") );
		}
		
		/*
		Modelo para regresar el producto guardado
		*/
		[Bindable(event="cambioProductoGuardado")]
		public function get GuardaProducto():Number{
			return this._guardaLlamada;
		}
		
		public function setGuardaProducto( resultado:Number ):void{
			this._guardaLlamada = resultado;
			dispatchEvent ( new Event("cambioProductoGuardado") );
		}
		
		/*
		Modelo para regresar el Usuario Valido
		*/
		[Bindable(event="cambioEmpleadoValido")]
		public function get ValidaEmpleado():Boolean{
			return this._validaEmpleado;
		}
		
		public function setValidaEmpleado( resultado:Boolean ):void{
			this._validaEmpleado = resultado;
			dispatchEvent ( new Event("cambioEmpleadoValido") );
		}
		/*
		Modelo para regresar un Empleado obtenido por Usuario a traves de el Login 
		*/
		[Bindable(event="obtenEmpleadoPorUsarioLogin")]
		public function get EmpleadoPorUsuario():Empleado{
			return this._empleadoPorUsuario;
		}
		
		public function setEmpleadoPorUsuario( resultado:Empleado ):void{
			this._empleadoPorUsuario = resultado;
			dispatchEvent ( new Event("obtenEmpleadoPorUsarioLogin") );
		}
		//El resultado obtenido de los empleado habilitados sera guardado en la clase Datos Globales y se asigna
		public function setEmpleadoHabilitados( resultado:ArrayCollection ):void{
			DatosGlobales.getInstance()._empleadosHabilitados = resultado;
		}
		
		public function error(errorString:Object,funcion:String):void{
			Alert.show(errorString.toString() + funcion);
		}
	}
}