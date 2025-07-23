package mx.com.proquifa.proquifanet.rsl.vista.modelo.reportes.ventas.confirmacion
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PCotPharma;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;

	public class ModeloReporteConfirmacion extends EventDispatcher
	{
		private var pcotPharma:PCotPharma;
		public function ModeloReporteConfirmacion(target:IEventDispatcher=null)
		{
			super(target);
		}
		/**
		 * Funcion para obtener cotizaciones por realizar y en realizacion
		 */ 
		private var _cotPharma:ArrayCollection;
		public function setCotPharma(realizacion:ArrayCollection):void{
			for( var i:int=0; i < realizacion.length; i++){
				(realizacion.getItemAt( i ) as PCotPharma).numfila = i + 1;
			}
			_cotPharma = FuncionesEstaticas.getInstance().formatoObjetos( realizacion );
			dispatchEvent(new Event ("ConfirmacionPharma"));
		}
		
		[Bindable(event="ConfirmacionPharma")]
		public function get cotPharma():ArrayCollection{
			return this._cotPharma;
		}
		
		/**
		 * Funcion para obtener cotizaciones por folio 
		 */ 
		private var _folioCot:ArrayCollection;
		public function setFolioCotPharma(folio:ArrayCollection):void{
			for( var i:int=0; i < folio.length; i++){
				(folio.getItemAt( i ) as PCotPharma).numfila = i + 1;
			}
			_folioCot = FuncionesEstaticas.getInstance().formatoObjetos( folio );
			dispatchEvent(new Event ("folioConfirmacion"));
		}
		
		[Bindable(event="folioConfirmacion")]
		public function get folioCotPharma():ArrayCollection{
			return this._folioCot;
		}
		
		/**
		 * Funcion para obtener cotizaciones en busqueda Avanzada 
		 */ 
		private var _busquedaCot:ArrayCollection;
		public function setConfirmacionCotPharma(pcotiza:ArrayCollection):void{
			for( var i:int=0; i < pcotiza.length; i++){
				(pcotiza.getItemAt( i ) as PCotPharma).numfila = i + 1;
			}
			_busquedaCot = FuncionesEstaticas.getInstance().formatoObjetos( pcotiza );
			dispatchEvent(new Event ("busquedaAvanzadaConfirmacion"));
		}
		
		[Bindable(event="busquedaAvanzadaConfirmacion")]
		public function get confirmacionCotPharma():ArrayCollection{
			return this._busquedaCot;
		}
		
		/**
		 * Funcion para obtener empleados en busqueda Avanzada 
		 */ 
		private var _empleado:ArrayCollection;
		public function setEmpleadosCotPharma(empleado:ArrayCollection):void{
			_empleado = empleado;
			dispatchEvent(new Event ("busquedaAvanzadaEmpleado"));
		}
		
		[Bindable(event="busquedaAvanzadaEmpleado")]
		public function get empleadosCotPharma():ArrayCollection{
			return this._empleado;
		}
		
		/**
		 * Funcion para obtener empleados en busqueda Avanzada 
		 */ 
		private var _provTipo:ArrayCollection;
		public function setProveedorTipoCotPharma(tipo:ArrayCollection):void{
			_provTipo = tipo;
			dispatchEvent(new Event ("busquedaTipoProveedor"));
		}
		
		[Bindable(event="busquedaTipoProveedor")]
		public function get proveedorTipoCotPharma():ArrayCollection{
			return this._provTipo;
		}
		
		public function faultNumeroStock(objeto:Object):void{
			trace("ERROR !!!");
		}
		
	}
}