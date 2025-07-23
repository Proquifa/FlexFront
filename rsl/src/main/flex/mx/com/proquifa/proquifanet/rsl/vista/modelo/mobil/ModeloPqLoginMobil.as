package mx.com.proquifa.proquifanet.rsl.vista.modelo.mobil
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.CotizaPedidoCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	
	public class ModeloPqLoginMobil extends EventDispatcher
	{
		public function ModeloPqLoginMobil(target:IEventDispatcher=null)
		{
			super(target);
		}
		private var _despachador:IEventDispatcher;
		//					LOGIN
		private var _validacionLogin:String;
		public function recibirValidaEmpleado(resultado:Boolean):void{
				_validacionLogin = resultado.toString();
				dispatchEvent(new Event("regresarValidacionLogin"));
		}
		[Bindable (event="regresarValidacionLogin")]
		public function get regresarValidacionLogin():String{
				var tempLogin:String = _validacionLogin;
				_validacionLogin = null;
				return tempLogin;
		}
		//					/LOGIN
		//					DATOS USUARIO
		private var _empleadoLogin:Empleado = new Empleado();
		public function recibirEmpleadoPorUsuario(empleado:Empleado):void{
			_empleadoLogin = new Empleado();
			if( !isNaN(empleado.idEmpleado) && empleado.idEmpleado != 0){
				_empleadoLogin = empleado;
				DatosGlobales.getInstance()._usuario = empleado;
				dispatchEvent(new Event("regresarDatosEmpleadoEvent"));
				/*var evento:EventoMobTableroClientes = new EventoMobTableroClientes(EventoMobTableroClientes.EVENTO_PRUEBA);
				_despachador.dispatchEvent(evento);*/
			}
		}
		[Bindable (event="regresarDatosEmpleadoEvent")]
		public function get regresarDatosEmpleado():Empleado{
			return _empleadoLogin;
		}
		//					/DATOS USUARIO
		public function faultEmpleadoPorUsuario(error:Object):void{
			trace(error.toString());
		}
		public function faultValidaEmpleado(error:Object):void{
			trace(error.toString());
		}
	}
}