package modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;

	public class ModeloGeneralMobilVendedor extends EventDispatcher
	{
		/////////////////////////////////////////////////////////////////////
		//////////////////////// validación empleado ////////////////////////
		/////////////////////////////////////////////////////////////////////
		
		private var validacionLogin:String = "";
		public function recibirValidaEmpleado(resultado:Boolean):void{
			validacionLogin = "";
			this.validacionLogin = resultado.toString();
			this.dispatchEvent(new Event("regresarValidacionLogin"));
		}
			
		[Bindable (event="regresarValidacionLogin")]
		public function get regresarValidacionLogin():String{
			var algo:String = this.validacionLogin;
			this.validacionLogin = "";
			return algo;
		}
		
		public function faultValidaEmpleado(error:Object):void{
			trace(error.toString());
		}
		
		
		/////////////////////////////////////////////////////////////////////
		//////////////////////// traer datos de empleado ////////////////////////
		/////////////////////////////////////////////////////////////////////
		private var empleadoLogin:Empleado;
		public function recibirEmpleadoPorUsuario(empleado:Empleado):void{
			this.empleadoLogin = new Empleado();
			
			if( !isNaN(empleado.idEmpleado) && empleado.idEmpleado != 0){
				this.empleadoLogin = empleado;
				DatosGlobales.getInstance()._usuario = empleado;
				this.dispatchEvent(new Event("regresarDatosEmpleadoEvent"));
			}
		}
		
		[Bindable (event="regresarDatosEmpleadoEvent")]
		public function get regresarDatosEmpleado():Empleado{
			var temp:Empleado = this.empleadoLogin;
			this.empleadoLogin = new Empleado();
			return temp;
		}
		
		public function faultEmpleadoPorUsuario(error:Object):void{
			trace(error.fault);
		}
		public function limpiarVariables():void
		{
			empleadoLogin = null;
			validacionLogin = "";
		}
		public function ModeloGeneralMobilVendedor()
		{
		}
		public function faultCierrePendientesNoRealizados(fault:Object):void{
			trace(fault.toString());
		}
	}
}