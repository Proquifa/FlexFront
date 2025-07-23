package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.notificados
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.RNotificadosHistorial;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.ReporteNotificados;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	
	import spark.components.NavigatorContent;
	
	public class ModeloReporteNotificados extends EventDispatcher
	{
		public function ModeloReporteNotificados(target:IEventDispatcher=null)
		{
			super(target);
		}
		/**
		 * Funcion de result que busca los datos para obtener clientes 
		 */ 
		public var repNotificados:ReporteNotificados = new ReporteNotificados();
		private var _clienteNoti:ArrayCollection;
		public function setClientesNotificado(cliente:ArrayCollection):void{
			_clienteNoti = cliente;
			dispatchEvent(new Event ("clienteNotificado"));
		}
		
		[Bindable(event="clienteNotificado")]
		public function get clientesNotificado():ArrayCollection{
			return this._clienteNoti;
		}
		/**
		 * Funcion de result que busca los datos para obtener empleados 
		 */ 
		private var _empleadoNoti:ArrayCollection;
		public function setEmpleadoNotificado(empleado:ArrayCollection):void{
			_empleadoNoti = empleado;
			dispatchEvent(new Event ("empleadoRepNotificado"));
		}
		
		[Bindable(event="empleadoRepNotificado")]
		public function get empleadoNotificado():ArrayCollection{
			return this._empleadoNoti;
		}
		/**
		 * Funcion para cambiar de viewStack
		 */
		public var _tipoTabla:int;
		public function setCambiaTabla(nomTabla:int):void{
			_tipoTabla = nomTabla;
			dispatchEvent(new Event ("seleccionarTipoTabla"));
		}
		[Bindable(event="seleccionarTipoTabla")]
		public function get cambiarTabla():int{
			return this._tipoTabla;
		}
		
		/**
		 * Funcion que obtiene los datos para la tabla del reporte notificados 
		 */ 
		private var _repNotificados:ArrayCollection;
		public function setReporteNotificado(notificado:ArrayCollection):void{
			for( var d:int = 0; d < notificado.length; d++ ){
				notificado[d].numFila = d + 1;
			}
			//_repNotificados = notificado;
			this._repNotificados = FuncionesEstaticas.getInstance().formatoObjetos(notificado);
			dispatchEvent(new Event ("ReporteNotificados"));
		}
		
		[Bindable(event="ReporteNotificados")]
		public function get reporteNotificado():ArrayCollection{
			return this._repNotificados;
		}
		
		/**
		 * Funcion que obtiene los datos para la tabla de Historial notificados 
		 */ 
		private var _historial:ArrayCollection;
		public var rNotificadosHistorial:RNotificadosHistorial = new RNotificadosHistorial();
		public function setHistorialNotificado(historial:ArrayCollection):void{
			_historial = historial;
			dispatchEvent(new Event ("ReporteHistorialNotificados"));
		}
		
		[Bindable(event="ReporteHistorialNotificados")]
		public function get historialNotificado():ArrayCollection{
			return this._historial;
		}
		
		//  Debeug
		public function faultNotificados(objeto:Object):void{
			trace("Fallo al traer la información");
		}
	}
}