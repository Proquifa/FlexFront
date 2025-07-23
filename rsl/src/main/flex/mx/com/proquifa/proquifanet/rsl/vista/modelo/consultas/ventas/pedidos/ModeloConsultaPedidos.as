package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.ventas.pedidos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaPedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Pedido;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;

	public class ModeloConsultaPedidos extends EventDispatcher
	{
		public function ModeloConsultaPedidos(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 * Funcion que busca los datos para obtener clientes 
		 */ 
		public var pp:PartidaPedido = new PartidaPedido();
		public var p:Pedido = new Pedido();
		private var _cliente:ArrayCollection;
		public function setClientesPedidos(cliente:ArrayCollection):void{
			_cliente = cliente;
			dispatchEvent(new Event ("clientesConsultaPedidos"));
		}
		
		[Bindable(event="clientesConsultaPedidos")]
		public function get clientesPedidos():ArrayCollection{
			return this._cliente;
		}
		
		/**
		 * Funcion para lista de Pedidos en busqueda rapida 
		 */
		private var _pedidos:ArrayCollection;
		public function setFolioPedido(pedido:ArrayCollection):void{
			for( var d:int = 0; d < pedido.length; d++ ){
				pedido[d].numFila = d + 1;
			}
			//_pedidos = pedido;
			this._pedidos = FuncionesEstaticas.getInstance().formatoObjetos(pedido);
			dispatchEvent(new Event ("consultaRapidaPedidos"));
		}
		
		[Bindable(event="consultaRapidaPedidos")]
		public function get folioPedido():ArrayCollection{
			return this._pedidos;
		}
		
		
		/**
		 * Funcion que busca las partidas de pedidos 
		 */ 
		private var _ppedidos:ArrayCollection;
		public function setFolioPPedido(ppedido:ArrayCollection):void{
			for( var d:int = 0; d < ppedido.length; d++ ){
				ppedido[d].numFila = d + 1;
			}
			//_ppedidos = ppedido;
			this._ppedidos = FuncionesEstaticas.getInstance().formatoObjetos(ppedido);
			dispatchEvent(new Event ("consultaPPedidos"));
		}
		
		[Bindable(event="consultaPPedidos")]
		public function get folioPPedido():ArrayCollection{
			return this._ppedidos;
		}
		
		/**
		 * Funcion que busca historial aviso de cambios
		 */ 
		private var _historialAC:ArrayCollection;
		public function setHistorialAC(historial:ArrayCollection):void{
			for( var d:int = 0; d < historial.length; d++ ){
				historial[d].numFila = d + 1;
			}
			//_historialAC = historial;
			this._historialAC = FuncionesEstaticas.getInstance().formatoObjetos(historial);
			dispatchEvent(new Event ("consultaHistorialAvisodeCambios"));
		}
		
		[Bindable(event="consultaHistorialAvisodeCambios")]
		public function get historialAC():ArrayCollection{
			return this._historialAC;
		}
		
		/**
		 * Funcion que busca el tiempo de proceso 
		 */ 
		private var _tiempoP:ArrayCollection;
		public function setTiempodeProceso(proceso:ArrayCollection):void{
			for( var d:int = 0; d < proceso.length; d++ ){
				proceso[d].numFila = d + 1;
			}
			_tiempoP = proceso;
			this._tiempoP = FuncionesEstaticas.getInstance().formatoObjetos(proceso);
			dispatchEvent(new Event ("consultaTiempoProceso"));
		}
		
		[Bindable(event="consultaTiempoProceso")]
		public function get tiempodeProceso():ArrayCollection{
			return this._tiempoP;
		}

	}
}