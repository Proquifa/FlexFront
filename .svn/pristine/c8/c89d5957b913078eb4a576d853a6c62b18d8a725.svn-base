package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.facturacion
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.Facturacion;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;

	public class ModeloConsultaFacturacion extends EventDispatcher
	{
		public function ModeloConsultaFacturacion(target:IEventDispatcher = null)
		{
			super(target);
		}
		
		/**
		 * Funcion que busca los datos para obtener clientes 
		 */ 
		private var fac:Facturacion = new Facturacion();
		private var _cliente:ArrayCollection;
		public function setClientesFacturacion(cliente:ArrayCollection):void{
			_cliente = cliente;
			dispatchEvent(new Event ("clientesConsultaFacturacion"));
		}
		
		[Bindable(event="clientesConsultaFacturacion")]
		public function get clientesFacturacion():ArrayCollection{
			return this._cliente;
		}
		
		/**
		 * Funcion para obtener busqueda por factura
		 */ 
		private var _factura:ArrayCollection;
		public function setCargaFactura(factura:ArrayCollection):void{
			for( var d:int = 0; d < factura.length; d++ ){
				factura[d].numFila = d + 1;
			}
			//_factura = factura;
			this._factura = FuncionesEstaticas.getInstance().formatoObjetos(factura);
			dispatchEvent(new Event ("obtenerFacturaConsultaFacturacion"));
		}
		
		[Bindable(event="obtenerFacturaConsultaFacturacion")]
		public function get obtenerCargaFactura():ArrayCollection{
			return this._factura;
		}
		
		
		/**
		 * Funcion para obtener filtro de factura
		 */ 
		private var _filtro:ArrayCollection;
		public function setCargaFiltroFactura(filtro:ArrayCollection):void{
			for( var d:int = 0; d < filtro.length; d++ ){
				filtro[d].numFila = d + 1;
			}
			//_factura = factura;
			this._filtro = FuncionesEstaticas.getInstance().formatoObjetos(filtro);
			dispatchEvent(new Event ("obtenerFiltroConsultaFacturacion"));
		}
		
		[Bindable(event="obtenerFiltroConsultaFacturacion")]
		public function get cargaFiltroFactura():ArrayCollection{
			return this._filtro;
		}
	}
}