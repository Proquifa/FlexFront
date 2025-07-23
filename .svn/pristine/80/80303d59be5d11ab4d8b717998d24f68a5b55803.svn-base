package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.operativos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.operativos.EventoTableroOperativos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloTableroOperativos extends EventDispatcher
	{
		
		private var _requisicionCotizas:ArrayCollection
		public function setRequisicionCotizas($datos:ArrayCollection):void{
			
			_requisicionCotizas = new ArrayCollection;
			if ( $datos )
				_requisicionCotizas = $datos;
			
			dispatchEvent(new Event("regresarRequisicionCotizasModeloTableroOperativos"));
			
			if (_requisicionCotizas){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRequisicionCotizasModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRequisicionCotizasModeloTableroOperativos")]
		public function get listaRequisicionCotizas():ArrayCollection{
			return _requisicionCotizas;
		}
		
		private var _gridRequisicionCotizas:ArrayCollection
		public function setGridRequisicionDS($datos:ArrayCollection):void{
			
			_gridRequisicionCotizas = new ArrayCollection;
			if ( $datos ){
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
				_gridRequisicionCotizas = $datos;
			}
				
			
			dispatchEvent(new Event("regresarGridRequisicionCotizasModeloTableroOperativosDS"));
			
			if (_gridRequisicionCotizas){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarGridRequisicionCotizasModeloTableroOperativosDS");
				}
			}
		}
		
		[Bindable(event="regresarGridRequisicionCotizasModeloTableroOperativosDS")]
		public function get listaGridRequisicionDS():ArrayCollection{
			return _gridRequisicionCotizas;
		}
		
		private var _gridRequisicionCotizasFS:ArrayCollection
		public function setGridRequisicionFS($datos:ArrayCollection):void{
			
			_gridRequisicionCotizasFS = new ArrayCollection;
			if ( $datos ){
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
				_gridRequisicionCotizasFS = $datos;
			}
			
			dispatchEvent(new Event("regresarGridRequisicionCotizasModeloTableroOperativosFS"));
			
			if (_gridRequisicionCotizasFS){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarGridRequisicionCotizasModeloTableroOperativosFS");
				}
			}
		}
		
		[Bindable(event="regresarGridRequisicionCotizasModeloTableroOperativosFS")]
		public function get listaGridRequisicionFS():ArrayCollection{
			return _gridRequisicionCotizasFS;
		}
		
		private var _gridRealizadasCotizas:ArrayCollection
		public function setGridRealizadasCotizas($datos:ArrayCollection):void{
			
			_gridRealizadasCotizas = new ArrayCollection;
			if ( $datos ){
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
				_gridRealizadasCotizas = $datos;
			}
			
			
			dispatchEvent(new Event("regresarGridRealizadasCotizasModeloTableroOperativos"));
			
			if (_gridRealizadasCotizas){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarGridRealizadasCotizasModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarGridRealizadasCotizasModeloTableroOperativos")]
		public function get listaRealizadasCotizas():ArrayCollection{
			return _gridRealizadasCotizas;
		}
		
		
		
		private var _requisicionCotizasMax:ArrayCollection
		public function setRequisicionCotizasMax($datos:ArrayCollection):void{
			
			_requisicionCotizasMax = new ArrayCollection;
			if ( $datos )
				_requisicionCotizasMax = $datos;
			
			dispatchEvent(new Event("regresarRequisicionCotizasMaxModeloTableroOperativos"));
			
			if (_requisicionCotizasMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRequisicionCotizasMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRequisicionCotizasMaxModeloTableroOperativos")]
		public function get listaRequisicionCotizasMax():ArrayCollection{
			return _requisicionCotizasMax;
		}
		
		
		
		private var _requisicionCotizasRealizacion:ArrayCollection
		public function setRequisicionCotizasRealizacion($datos:ArrayCollection):void{
			
			_requisicionCotizasRealizacion = new ArrayCollection;
			if ( $datos )
			{
				_requisicionCotizasRealizacion = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].cotizacionesTotal = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarRequisicionCotizasRealizacionModeloTableroOperativos"));
			
			if (_requisicionCotizasRealizacion){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRequisicionCotizasRealizacionModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRequisicionCotizasRealizacionModeloTableroOperativos")]
		public function get listaRequisicionCotizasRealizacion():ArrayCollection{
			return _requisicionCotizasRealizacion;
		}
		
		
		
		private var _requisicionCotizasSistema:ArrayCollection
		public function setRequisicionCotizasSistema($datos:ArrayCollection):void{
			
			_requisicionCotizasSistema = new ArrayCollection;
			if ( $datos )
			{
				_requisicionCotizasSistema = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].partidas = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarRequisicionCotizasSistemaModeloTableroOperativos"));
			
			if (_requisicionCotizasSistema){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRequisicionCotizasSistemaModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRequisicionCotizasSistemaModeloTableroOperativos")]
		public function get listaRequisicionCotizasSistema():ArrayCollection{
			return _requisicionCotizasSistema;
		}

		
		private var _requisicionDonaCotizasSistema:ArrayCollection
		public function setRequisicionDonaCotizasSistema($datos:ArrayCollection):void{
			
			_requisicionDonaCotizasSistema = new ArrayCollection;
			if ( $datos )
			{
				_requisicionDonaCotizasSistema = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].requisicion = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarRequisicionDonaCotizasSistemaModeloTableroOperativos"));
			
			if (_requisicionDonaCotizasSistema){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRequisicionDonaCotizasSistemaModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRequisicionDonaCotizasSistemaModeloTableroOperativos")]
		public function get listaRequisicionDonaCotizasSistema():ArrayCollection{
			return _requisicionDonaCotizasSistema;
		}
		
		
		/**
		 Confirmaciones
		 * 
		 */
		private var _confirmaciones:ArrayCollection
		public function setConfirmaciones($datos:ArrayCollection):void{
			
			_confirmaciones = new ArrayCollection;
			if ( $datos )
				_confirmaciones = $datos;
			
			dispatchEvent(new Event("regresarConfirmacionesModeloTableroOperativos"));
			
			if (_confirmaciones){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionesModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionesModeloTableroOperativos")]
		public function get listaConfirmaciones():ArrayCollection{
			return _confirmaciones;
		}
		
		
		private var _confirmacionesMax:ArrayCollection
		public function setConfirmacionesMax($datos:ArrayCollection):void{
			
			_confirmacionesMax = new ArrayCollection;
			if ( $datos )
				_confirmacionesMax = $datos;
			
			dispatchEvent(new Event("regresarConfirmacionesMaxModeloTableroOperativos"));
			
			if (_confirmacionesMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionesMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionesMaxModeloTableroOperativos")]
		public function get listaConfirmacionesMax():ArrayCollection{
			return _confirmacionesMax;
		}
		
		
		private var _confirmacionETyFT:ArrayCollection
		public function setConfirmacionETyFT($datos:ArrayCollection):void{
			
			_confirmacionETyFT = new ArrayCollection;
			if ( $datos )
			{
				_confirmacionETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].cotizacionesTotal = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarConfirmacionETyFTModeloTableroOperativos"));
			
			if (_confirmacionETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionETyFTModeloTableroOperativos")]
		public function get listaConfirmacionETyFT():ArrayCollection{
			return _confirmacionETyFT;
		}
		
		
		private var _gridConfirmacionETyFT:ArrayCollection
		public function setGridConfirmacionETyFT($datos:ArrayCollection):void{
			
			_gridConfirmacionETyFT = new ArrayCollection;
			if ( $datos ){
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
				_gridConfirmacionETyFT = $datos;
			}
			
			dispatchEvent(new Event("regresarGridConfirmacionETyFTModeloTableroOperativosFS"));
			
			if (_gridConfirmacionETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarGridConfirmacionETyFTModeloTableroOperativosFS");
				}
			}
		}
		
		[Bindable(event="regresarGridConfirmacionETyFTModeloTableroOperativosFS")]
		public function get listaGridConfirmacionETyFT():ArrayCollection{
			return _gridConfirmacionETyFT;
		}
		
		/**
		 Seguimiento
		 * 
		 */
		private var _seguimiento:ArrayCollection
		public function setSeguimiento($datos:ArrayCollection):void{
			
			_seguimiento = new ArrayCollection;
			if ( $datos )
				_seguimiento = $datos;
			
			dispatchEvent(new Event("regresarSeguimientoModeloTableroOperativos"));
			
			if (_seguimiento){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarSeguimientoModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarSeguimientoModeloTableroOperativos")]
		public function get listaSeguimiento():ArrayCollection{
			return _seguimiento;
		}
		
		private var _seguimientosMax:ArrayCollection
		public function setSeguimientoMax($datos:ArrayCollection):void{
			
			_seguimientosMax = new ArrayCollection;
			if ( $datos )
				_seguimientosMax = $datos;
			
			dispatchEvent(new Event("regresarSeguimientoMaxModeloTableroOperativos"));
			
			if (_seguimientosMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarSeguimientoMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarSeguimientoMaxModeloTableroOperativos")]
		public function get listaSeguimientoMax():ArrayCollection{
			return _seguimientosMax;
		}
		
		
		private var _seguimientoETyFT:ArrayCollection
		public function setSeguimientoETyFT($datos:ArrayCollection):void{
			
			_seguimientoETyFT = new ArrayCollection;
			if ( $datos )
			{
				_seguimientoETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].cotizacionesTotal = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarSeguimientoETyFTModeloTableroOperativos"));
			
			if (_seguimientoETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarSeguimientoETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarSeguimientoETyFTModeloTableroOperativos")]
		public function get listaSeguimientoETyFT():ArrayCollection{
			return _seguimientoETyFT;
		}
		
		private var _seguimientoGridFT:ArrayCollection
		public function setSeguimientoGridFT($datos:ArrayCollection):void{
			
			_seguimientoGridFT = new ArrayCollection;
			if ( $datos )
			{
				_seguimientoGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarSeguimientoGridFTModeloTableroOperativos"));
			
			if (_seguimientoGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarSeguimientoGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarSeguimientoGridFTModeloTableroOperativos")]
		public function get listaSeguimientoGridFT():ArrayCollection{
			return _seguimientoGridFT;
		}
		
		
		/**
		 * Pedido Tramitar
		 * */
		
		private var _pedidoSAC:ArrayCollection
		public function setPedidoSac($datos:ArrayCollection):void{
			
			_pedidoSAC = new ArrayCollection;
			if ( $datos )
				_pedidoSAC = $datos;
			
			dispatchEvent(new Event("regresarPedidoSACModeloTableroOperativos"));
			
			if (_pedidoSAC){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidoSACModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidoSACModeloTableroOperativos")]
		public function get listaPedidoSac():ArrayCollection{
			return _pedidoSAC;
		}
		
		private var _pedidosSacMax:ArrayCollection
		public function setPedidosSacMax($datos:ArrayCollection):void{
			
			_pedidosSacMax = new ArrayCollection;
			if ( $datos )
				_pedidosSacMax = $datos;
			
			dispatchEvent(new Event("regresarPedidosSacMaxModeloTableroOperativos"));
			
			if (_pedidosSacMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidosSacMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidosSacMaxModeloTableroOperativos")]
		public function get PedidosSacMax():ArrayCollection{
			return _pedidosSacMax;
		}
		
		private var _pedidoSacETyFT:ArrayCollection
		public function setPedidoSacETyFT($datos:ArrayCollection):void{
			
			_pedidoSacETyFT = new ArrayCollection;
			if ( $datos )
			{
				_pedidoSacETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].totalPedidos = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarPedidoSacETyFTModeloTableroOperativos"));
			
			if (_pedidoSacETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidoSacETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidoSacETyFTModeloTableroOperativos")]
		public function get listaPedidoSacETyFT():ArrayCollection{
			return _pedidoSacETyFT;
		}
		
			/** Grid **/
		private var _gridPedidoTramitarETyFT:ArrayCollection
		public function setGridPedidoTramitarETyFT($datos:ArrayCollection):void{
			
			_gridPedidoTramitarETyFT = new ArrayCollection;
			if ( $datos ){
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
				_gridPedidoTramitarETyFT = $datos;
			}
			
			dispatchEvent(new Event("regresarGridPedidoTramitarETyFTModeloTableroOperativosFS"));
			
			if (_gridPedidoTramitarETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarGridPedidoTramitarETyFTModeloTableroOperativosFS");
				}
			}
		}
		
		[Bindable(event="regresarGridPedidoTramitarETyFTModeloTableroOperativosFS")]
		public function get listaGridPedidoTramitarETyFT():ArrayCollection{
			return _gridPedidoTramitarETyFT;
		}
		
		private var _totalPedidos:ArrayCollection
		public function setTotalPedidos($datos:ArrayCollection):void{
			
			_totalPedidos = new ArrayCollection;
			if ( $datos )
			{
				_totalPedidos = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].totalPedidos = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarTotalPedidosModeloTableroOperativos"));
			
			if (_totalPedidos){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarTotalPedidosModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarTotalPedidosModeloTableroOperativos")]
		public function get listaTotalPedidos():ArrayCollection{
			return _totalPedidos;
		}
		
		/**
		 * Pedidos Compra
		 */
		
		private var _pedidosCompra:ArrayCollection
		public function setPedidosCompra($datos:ArrayCollection):void{
			
			_pedidosCompra = new ArrayCollection;
			if ( $datos )
				_pedidosCompra = $datos;
			
			dispatchEvent(new Event("regresarPedidosCompraModeloTableroOperativos"));
			
			if (_pedidosCompra){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidosCompraModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidosCompraModeloTableroOperativos")]
		public function get listaPedidosCompra():ArrayCollection{
			return _pedidosCompra;
		}
		
		
		private var _pedidosCompraMax:ArrayCollection
		public function setPedidosComprasMax($datos:ArrayCollection):void{
			
			_pedidosCompraMax = new ArrayCollection;
			if ( $datos )
				_pedidosCompraMax = $datos;
			
			dispatchEvent(new Event("regresarPedidosCompraMaxModeloTableroOperativos"));
			
			if (_pedidosCompraMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidosCompraMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidosCompraMaxModeloTableroOperativos")]
		public function get listaPedidosCompraMax():ArrayCollection{
			return _pedidosCompraMax;
		}
		
		
		private var _pedidosCompraETyFT:ArrayCollection
		public function setPedidosCompraETyFT($datos:ArrayCollection):void{
			
			_pedidosCompraETyFT = new ArrayCollection;
			if ( $datos )
			{
				_pedidosCompraETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].partidas = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarPedidosCompraETyFTModeloTableroOperativos"));
			
			if (_pedidosCompraETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidosCompraETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidosCompraETyFTModeloTableroOperativos")]
		public function get listaPedidosCompraETyFT():ArrayCollection{
			return _pedidosCompraETyFT;
		}
		
		private var _pedidosCompraGridFT:ArrayCollection
		public function setPedidosCompraGridFT($datos:ArrayCollection):void{
			
			_pedidosCompraGridFT = new ArrayCollection;
			if ( $datos )
			{
				_pedidosCompraGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarPedidosCompraGridFTModeloTableroOperativos"));
			
			if (_pedidosCompraGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPedidosCompraGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPedidosCompraGridFTModeloTableroOperativos")]
		public function get listaPedidosCompraGridFT():ArrayCollection{
			return _pedidosCompraGridFT;
		}		
		
		/**
		 * Confirmacion Compra
		 */
		
		private var _confirmacionesCompra:ArrayCollection
		public function setConfirmacionesCompra($datos:ArrayCollection):void{
			
			_confirmacionesCompra = new ArrayCollection;
			if ( $datos )
				_confirmacionesCompra = $datos;
			
			dispatchEvent(new Event("regresarConfirmacionesCompraModeloTableroOperativos"));
			
			if (_confirmacionesCompra){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionesCompraModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionesCompraModeloTableroOperativos")]
		public function get listaConfirmacionesCompra():ArrayCollection{
			return _confirmacionesCompra;
		}
		
		
		private var _confirmacionesCompraMax:ArrayCollection
		public function setConfirmacionesComprasMax($datos:ArrayCollection):void{
			
			_confirmacionesCompraMax = new ArrayCollection;
			if ( $datos )
				_confirmacionesCompraMax = $datos;
			
			dispatchEvent(new Event("regresarConfirmacionesCompraMaxModeloTableroOperativos"));
			
			if (_confirmacionesCompraMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionesCompraMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionesCompraMaxModeloTableroOperativos")]
		public function get listaConfirmacionesCompraMax():ArrayCollection{
			return _confirmacionesCompraMax;
		}
		
		
		private var _confirmacionesCompraETyFT:ArrayCollection
		public function setConfirmacionesCompraETyFT($datos:ArrayCollection):void{
			
			_confirmacionesCompraETyFT = new ArrayCollection;
			if ( $datos )
			{
				_confirmacionesCompraETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].confirmaciones = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarConfirmacionesCompraETyFTModeloTableroOperativos"));
			
			if (_confirmacionesCompraETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionesCompraETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionesCompraETyFTModeloTableroOperativos")]
		public function get listaConfirmacionesCompraETyFT():ArrayCollection{
			return _confirmacionesCompraETyFT;
		}
		/*Grid Confirmaciones OC*/
		private var _confirmacionesOCGridFT:ArrayCollection;
		public function setConfirmacionesOCGridFT($datos:ArrayCollection):void{
			
			_confirmacionesOCGridFT = new ArrayCollection;
			if ( $datos )
			{
				_confirmacionesOCGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarConfirmacionesOCFTModeloTableroOperativos"));
			
			if (_confirmacionesOCGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarConfirmacionesOCFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarConfirmacionesOCFTModeloTableroOperativos")]
		public function get listaConfirmacionesOCGridFT():ArrayCollection{
			return _confirmacionesOCGridFT;
		}
		/* FIN -- Grid Confirmaciones OC*/
		
		/**
		 * Aviso de Cambio
		 */
		
		private var _avisoDeCambio:ArrayCollection
		public function setAvisoDeCambio($datos:ArrayCollection):void{
			
			_avisoDeCambio = new ArrayCollection;
			if ( $datos )
				_avisoDeCambio = $datos;
			
			dispatchEvent(new Event("regresarAvisoDeCambioModeloTableroOperativos"));
			
			if (_avisoDeCambio){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarAvisoDeCambioModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarAvisoDeCambioModeloTableroOperativos")]
		public function get listaAvisoDeCambio():ArrayCollection{
			return _avisoDeCambio;
		}
		
		
		private var _avisoDeCambioMax:ArrayCollection
		public function setAvisoDeCambioMax($datos:ArrayCollection):void{
			
			_avisoDeCambioMax = new ArrayCollection;
			if ( $datos )
				_avisoDeCambioMax = $datos;
			
			dispatchEvent(new Event("regresarAvisoDeCambioMaxModeloTableroOperativos"));
			
			if (_avisoDeCambioMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarAvisoDeCambioMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarAvisoDeCambioMaxModeloTableroOperativos")]
		public function get listaAvisoDeCambioMax():ArrayCollection{
			return _avisoDeCambioMax;
		}
		
		
		private var _avisoDeCambiosETyFT:ArrayCollection
		public function setAvisoDeCambiosETyFT($datos:ArrayCollection):void{
			
			_avisoDeCambiosETyFT = new ArrayCollection;
			if ( $datos )
			{
				_avisoDeCambiosETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].avisoCambios = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarAvisoDeCambioETyFTModeloTableroOperativos"));
			
			if (_avisoDeCambiosETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarAvisoDeCambioETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarAvisoDeCambioETyFTModeloTableroOperativos")]
		public function get listaAvisoDeCambioETyFT():ArrayCollection{
			return _avisoDeCambiosETyFT;
		}

		private var _avisoDeCambiosDona:ArrayCollection
		public function setAvisoDeCambiosDona($datos:ArrayCollection):void{
			
			_avisoDeCambiosDona = new ArrayCollection;
			if ( $datos )
			{
				_avisoDeCambiosDona = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].avisoCambios = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarAvisoDeCambioDonaModeloTableroOperativos"));
			
			if (_avisoDeCambiosDona){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarAvisoDeCambioDonaModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarAvisoDeCambioDonaModeloTableroOperativos")]
		public function get listaAvisoDeCambioDona():ArrayCollection{
			return _avisoDeCambiosDona;
		}
		
		private var _avisoCambioGridFT:ArrayCollection;
		public function setAvisoCambioGridFT($datos:ArrayCollection):void{
			
			_avisoCambioGridFT = new ArrayCollection;
			if ( $datos )
			{
				_avisoCambioGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarAvisoCambioFTModeloTableroOperativos"));
			
			if (_avisoCambioGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarAvisoCambioFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarAvisoCambioFTModeloTableroOperativos")]
		public function get listaAvisoCambioGridFT():ArrayCollection{
			return _avisoCambioGridFT;
		}
		
		
		/**
		 Seguimiento
		 * 
		 */
		private var _monitoreo:ArrayCollection
		public function setMonitoreo($datos:ArrayCollection):void{
			
			_monitoreo = new ArrayCollection;
			if ( $datos )
				_monitoreo = $datos;
			
			dispatchEvent(new Event("regresarMonitoreoModeloTableroOperativos"));
			
			if (_monitoreo){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarMonitoreoModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarMonitoreoModeloTableroOperativos")]
		public function get listaMonitoreo():ArrayCollection{
			return _monitoreo;
		}
		
		private var _monitoreoMax:ArrayCollection
		public function setMonitoreoMax($datos:ArrayCollection):void{
			
			_monitoreoMax = new ArrayCollection;
			if ( $datos )
				_monitoreoMax = $datos;
			
			dispatchEvent(new Event("regresarMonitoreoMaxModeloTableroOperativos"));
			
			if (_monitoreoMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarMonitoreoMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarMonitoreoMaxModeloTableroOperativos")]
		public function get listaMonitoreoMax():ArrayCollection{
			return _monitoreoMax;
		}
		
		
		private var _monitoreoETyFT:ArrayCollection;
		public function setMonitoreoETyFT($datos:ArrayCollection):void{
			
			_monitoreoETyFT = new ArrayCollection;
			if ( $datos )
			{
				_monitoreoETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].monitoreo = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarMonitoreoETyFTModeloTableroOperativos"));
			
			if (_monitoreoETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarMonitoreoETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarMonitoreoETyFTModeloTableroOperativos")]
		public function get listaMonitoreoETyFT():ArrayCollection{
			return _monitoreoETyFT;
		}
		
		private var _monitoreoGridFT:ArrayCollection;
		public function setMonitoreoGridFT($datos:ArrayCollection):void{
			
			_monitoreoGridFT = new ArrayCollection;
			if ( $datos )
			{
				_monitoreoGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarMonitoreoGridFTModeloTableroOperativos"));
			
			if (_monitoreoGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarMonitoreoGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarMonitoreoGridFTModeloTableroOperativos")]
		public function get listaMonitoreoGridFT():ArrayCollection{
			return _monitoreoGridFT;
		}		
		
		/**
		 Inspeccion
		 * 
		 */
		private var _inspeccion:ArrayCollection;
		public function setInspeccion($datos:ArrayCollection):void{
			
			_inspeccion = new ArrayCollection;
			if ( $datos )
				_inspeccion = $datos;
			
			dispatchEvent(new Event("regresarInspeccionModeloTableroOperativos"));
			
			if (_inspeccion){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInspeccionModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarInspeccionModeloTableroOperativos")]
		public function get listaInspeccion():ArrayCollection{
			return _inspeccion;
		}
		
		private var _inspeccionMax:ArrayCollection;
		public function setInspeccionMax($datos:ArrayCollection):void{
			
			_inspeccionMax = new ArrayCollection;
			if ( $datos )
				_inspeccionMax = $datos;
			
			dispatchEvent(new Event("regresarInspeccionMaxModeloTableroOperativos"));
			
			if (_inspeccionMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInspeccionMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarInspeccionMaxModeloTableroOperativos")]
		public function get listaInspeccionMax():ArrayCollection{
			return _inspeccionMax;
		}
		
		
		private var _inspeccionETyFT:ArrayCollection;
		public function setInspeccionETyFT($datos:ArrayCollection):void{
			
			_inspeccionETyFT = new ArrayCollection;
			if ( $datos )
			{
				_inspeccionETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].inspeccion = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarInspeccionETyFTModeloTableroOperativos"));
			
			if (_inspeccionETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInspeccionETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarInspeccionETyFTModeloTableroOperativos")]
		public function get listaInspeccionETyFT():ArrayCollection{
			return _inspeccionETyFT;
		}
		
		private var _inspeccionGridFT:ArrayCollection;
		public function setInspeccionGridFT($datos:ArrayCollection):void{
			
			_inspeccionGridFT = new ArrayCollection;
			if ( $datos )
			{
				_inspeccionGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarInspeccionGridFTModeloTableroOperativos"));
			
			if (_inspeccionGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarInspeccionGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarInspeccionGridFTModeloTableroOperativos")]
		public function get listaInspeccionGridFT():ArrayCollection{
			return _inspeccionGridFT;
		}
		
		/**
		 Facturacion
		 * 
		 */
		private var _facturacion:ArrayCollection;
		public function setFacturacion($datos:ArrayCollection):void{
			
			_facturacion = new ArrayCollection;
			if ( $datos )
				_facturacion = $datos;
			
			dispatchEvent(new Event("regresarFacturacionModeloTableroOperativos"));
			
			if (_facturacion){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarFacturacionModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarFacturacionModeloTableroOperativos")]
		public function get listaFacturacion():ArrayCollection{
			return _facturacion;
		}
		
		
		
		private var _facturacionMax:ArrayCollection;
		public function setFacturacionMax($datos:ArrayCollection):void{
			
			_facturacionMax = new ArrayCollection;
			if ( $datos )
				_facturacionMax = $datos;
			
			dispatchEvent(new Event("regresarFacturacionMaxModeloTableroOperativos"));
			
			if (_facturacionMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarFacturacionMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarFacturacionMaxModeloTableroOperativos")]
		public function get listaFacturacionMax():ArrayCollection{
			return _facturacionMax;
		}
		
		
		
		
		private var _facturacionETyFT:ArrayCollection 
		public function setFacturacionETyFT($datos:ArrayCollection):void{
			
			_facturacionETyFT = new ArrayCollection;
			if ( $datos )
			{
				_facturacionETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].facturacion = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarFacturacionETyFTModeloTableroOperativos"));
			
			if (_facturacionETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarFacturacionETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarFacturacionETyFTModeloTableroOperativos")]
		public function get listaFacturacionETyFT():ArrayCollection{
			return _facturacionETyFT;
		}		
		
		private var _facturasGridFT:ArrayCollection; /*Grid Facturas FT*/ 
		public function setFacturasGridFT($datos:ArrayCollection):void{
			
			_facturasGridFT = new ArrayCollection;
			if ( $datos )
			{
				_facturasGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarFacturasGridFTModeloTableroOperativos"));
			
			if (_facturasGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarFacturasGridFTModeloTableroOperativos");
				}
			}
		}		
		
		[Bindable(event="regresarFacturasGridFTModeloTableroOperativos")]
		public function get listaFacturasGridFT():ArrayCollection{
			return _facturasGridFT;
		}	
		
		/**
		 ENTREGAS
		 * 
		 */
		private var _entregas:ArrayCollection;
		public function setEntregas($datos:ArrayCollection):void{
			
			_entregas = new ArrayCollection;
			if ( $datos )
				_entregas = $datos;
			
			dispatchEvent(new Event("regresarEntregasModeloTableroOperativos"));
			
			if (_entregas){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarEntregasModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarEntregasModeloTableroOperativos")]
		public function get listaEntregas():ArrayCollection{
			return _entregas;
		}
		
		
		
		private var _entregasMax:ArrayCollection;
		public function setEntregasMax($datos:ArrayCollection):void{
			
			_entregasMax = new ArrayCollection;
			if ( $datos )
				_entregasMax = $datos;
			
			dispatchEvent(new Event("regresarEntregasMaxModeloTableroOperativos"));
			
			if (_entregasMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarEntregasMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarEntregasMaxModeloTableroOperativos")]
		public function get listaEntregasMax():ArrayCollection{
			return _entregasMax;
		}
		
		
		private var _entregasETyFT:ArrayCollection 
		public function setEntregasETyFT($datos:ArrayCollection):void{
			
			_entregasETyFT = new ArrayCollection;
			if ( $datos )
			{
				_entregasETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].entregasTabOp = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarEntregasETyFTModeloTableroOperativos"));
			
			if (_entregasETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarEntregasETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarEntregasETyFTModeloTableroOperativos")]
		public function get listaEntregasETyFT():ArrayCollection{
			return _entregasETyFT;
		}
		
		
		private var _entregasGridFT:ArrayCollection;
		public function setEntregasGridFT($datos:ArrayCollection):void{
			
			_entregasGridFT = new ArrayCollection;
			if ( $datos )
			{
				_entregasGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarEntregasGridFTModeloTableroOperativos"));
			
			if (_entregasGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarEntregasGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarEntregasGridFTModeloTableroOperativos")]
		public function get listaEntregasGridFT():ArrayCollection{
			return _entregasGridFT;
		}
		
		
		/**
		 Cobros
		 * 
		 */
		private var _cobro:ArrayCollection;
		public function setCobro($datos:ArrayCollection):void{
			
			_cobro = new ArrayCollection;
			if ( $datos )
				_cobro = $datos;
			
			dispatchEvent(new Event("regresarCobroModeloTableroOperativos"));
			
			if (_cobro){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCobroModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCobroModeloTableroOperativos")]
		public function get listaCobro():ArrayCollection{
			return _cobro;
		}
		
		
		
		private var _cobroMax:ArrayCollection;
		public function setCobroMax($datos:ArrayCollection):void{
			
			_cobroMax = new ArrayCollection;
			if ( $datos )
				_cobroMax = $datos;
			
			dispatchEvent(new Event("regresarCobroMaxModeloTableroOperativos"));
			
			if (_cobroMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCobroMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCobroMaxModeloTableroOperativos")]
		public function get listaCobroMax():ArrayCollection{
			return _cobroMax;
		}
		
		
		
		
		private var _cobroETyFT:ArrayCollection 
		public function setCobroETyFT($datos:ArrayCollection):void{
			
			_cobroETyFT = new ArrayCollection;
			if ( $datos )
			{
				_cobroETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].cobro = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarCobroETyFTModeloTableroOperativos"));
			
			if (_cobroETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCobroETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCobroETyFTModeloTableroOperativos")]
		public function get listaCobroETyFT():ArrayCollection{
			return _cobroETyFT;
		}
		
		
		private var _cobroFinanzasGridFT:ArrayCollection;
		public function setCobrosFinanzasGridFT($datos:ArrayCollection):void{
			
			_cobroFinanzasGridFT = new ArrayCollection;
			if ( $datos )
			{
				_cobroFinanzasGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarCobrosFianzasGridFTModeloTableroOperativos"));
			
			if (_cobroFinanzasGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCobrosFianzasGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCobrosFianzasGridFTModeloTableroOperativos")]
		public function get listaCobrosFinanzasGridFT():ArrayCollection{
			return _cobroFinanzasGridFT;
		}
		
		
		/**
		 PAGOS
		 * 
		 */
		private var _pago:ArrayCollection;
		public function setPago($datos:ArrayCollection):void{
			
			_pago = new ArrayCollection;
			if ( $datos )
				_pago = $datos;
			
			dispatchEvent(new Event("regresarPagoModeloTableroOperativos"));
			
			if (_pago){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPagoModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPagoModeloTableroOperativos")]
		public function get listaPago():ArrayCollection{
			return _pago;
		}
		
		
		
		private var _pagoMax:ArrayCollection;
		public function setPagoMax($datos:ArrayCollection):void{
			
			_pagoMax = new ArrayCollection;
			if ( $datos )
				_pagoMax = $datos;
			
			dispatchEvent(new Event("regresarPagoMaxModeloTableroOperativos"));
			
			if (_pagoMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPagoMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPagoMaxModeloTableroOperativos")]
		public function get listaPagoMax():ArrayCollection{
			return _pagoMax;
		}
		
		
		
		
		private var _pagoETyFT:ArrayCollection 
		public function setPagoETyFT($datos:ArrayCollection):void{
			
			_pagoETyFT = new ArrayCollection;
			if ( $datos )
			{
				_pagoETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].pago = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarPagoETyFTModeloTableroOperativos"));
			
			if (_pagoETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPagoETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPagoETyFTModeloTableroOperativos")]
		public function get listaPagoETyFT():ArrayCollection{
			return _pagoETyFT;
		}
		
		private var _PagoFinanzasGridFT:ArrayCollection;
		public function setPagosFinanzasGridFT($datos:ArrayCollection):void{
			
			_PagoFinanzasGridFT = new ArrayCollection;
			if ( $datos )
			{
				_PagoFinanzasGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarPagosFianzasGridFTModeloTableroOperativos"));
			
			if (_PagoFinanzasGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarPagosFianzasGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarPagosFianzasGridFTModeloTableroOperativos")]
		public function get listaPagoFinanzasGridFT():ArrayCollection{
			return _PagoFinanzasGridFT;
		}
		
		
		/**
		 Revision
		 * 
		 */
		private var _revision:ArrayCollection;
		public function setRevision($datos:ArrayCollection):void{
			
			_revision = new ArrayCollection;
			if ( $datos )
				_revision = $datos;
			
			dispatchEvent(new Event("regresarRevisionModeloTableroOperativos"));
			
			if (_revision){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRevisionModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRevisionModeloTableroOperativos")]
		public function get listaRevision():ArrayCollection{
			return _revision;
		}
		
		
		
		private var _revisionMax:ArrayCollection;
		public function setRevisionMax($datos:ArrayCollection):void{
			
			_revisionMax = new ArrayCollection;
			if ( $datos )
				_revisionMax = $datos;
			
			dispatchEvent(new Event("regresarRevisionMaxModeloTableroOperativos"));
			
			if (_revisionMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRevisionMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRevisionMaxModeloTableroOperativos")]
		public function get listaRevisionMax():ArrayCollection{
			return _revisionMax;
		}
		
		
		
		
		private var _revisionETyFT:ArrayCollection 
		public function setRevisionETyFT($datos:ArrayCollection):void{
			
			_revisionETyFT = new ArrayCollection;
			if ( $datos )
			{
				_revisionETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].revision = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarRevisionETyFTModeloTableroOperativos"));
			
			if (_revisionETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRevisionETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRevisionETyFTModeloTableroOperativos")]
		public function get listaRevisionETyFT():ArrayCollection{
			return _revisionETyFT;
		}
		
		
		private var _revisionGridFT:ArrayCollection;
		public function setRevisionGridFT($datos:ArrayCollection):void{
			
			_revisionGridFT = new ArrayCollection;
			if ( $datos )
			{
				_revisionGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarRevisionGridFTModeloTableroOperativos"));
			
			if (_revisionGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarRevisionGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarRevisionGridFTModeloTableroOperativos")]
		public function get listaRevisionGridFT():ArrayCollection{
			return _revisionGridFT;
		}
		
		
		/**
		 Cargar Factura
		 * 
		 */
		private var _cargarFactura:ArrayCollection;
		public function setCargarFactura($datos:ArrayCollection):void{
			
			_cargarFactura = new ArrayCollection;
			if ( $datos )
				_cargarFactura = $datos;
			
			dispatchEvent(new Event("regresarCargarFacturaModeloTableroOperativos"));
			
			if (_cargarFactura){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCargarFacturaModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCargarFacturaModeloTableroOperativos")]
		public function get listaCargarFactura():ArrayCollection{
			return _cargarFactura;
		}
		
		
		
		private var _cargarFacturaMax:ArrayCollection;
		public function setCargarFacturaMax($datos:ArrayCollection):void{
			
			_cargarFacturaMax = new ArrayCollection;
			if ( $datos )
				_cargarFacturaMax = $datos;
			
			dispatchEvent(new Event("regresarCargarFacturaMaxModeloTableroOperativos"));
			
			if (_cargarFacturaMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCargarFacturaMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCargarFacturaMaxModeloTableroOperativos")]
		public function get listaCargarFacturaMax():ArrayCollection{
			return _cargarFacturaMax;
		}
		
		
		private var _cargarFacturaETyFT:ArrayCollection 
		public function setCargarFacturaETyFT($datos:ArrayCollection):void{
			
			_cargarFacturaETyFT = new ArrayCollection;
			if ( $datos )
			{
				_cargarFacturaETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].cargarFactura = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarCargarFacturaETyFTModeloTableroOperativos"));
			
			if (_cargarFacturaETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCargarFacturaETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCargarFacturaETyFTModeloTableroOperativos")]
		public function get listaCargarFacturaETyFT():ArrayCollection{
			return _cargarFacturaETyFT;
		}
		
		
		private var _cargarFacturaGridFT:ArrayCollection;
		public function setCargarFacturaGridFT($datos:ArrayCollection):void{
			
			_cargarFacturaGridFT = new ArrayCollection;
			if ( $datos )
			{
				_cargarFacturaGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarCargarFacturaGridFTModeloTableroOperativos"));
			
			if (_cargarFacturaGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCargarFacturaGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCargarFacturaGridFTModeloTableroOperativos")]
		public function get listaCargarFacturaGridFT():ArrayCollection{
			return _cargarFacturaGridFT;
		}
		
		
		/**
		 Cierre de Ruta
		 * 
		 */
		private var _cierreRuta:ArrayCollection;
		public function setCierreRuta($datos:ArrayCollection):void{
			
			_cierreRuta = new ArrayCollection;
			if ( $datos )
				_cierreRuta = $datos;
			
			dispatchEvent(new Event("regresarCierreRutaModeloTableroOperativos"));
			
			if (_cierreRuta){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCierreRutaModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCierreRutaModeloTableroOperativos")]
		public function get listaCierreRuta():ArrayCollection{
			return _cierreRuta;
		}
		
		
		
		private var _cierreRutaMax:ArrayCollection;
		public function setCierreRutaMax($datos:ArrayCollection):void{
			
			_cierreRutaMax = new ArrayCollection;
			if ( $datos )
				_cierreRutaMax = $datos;
			
			dispatchEvent(new Event("regresarCierreRutaMaxModeloTableroOperativos"));
			
			if (_cierreRutaMax){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCierreRutaMaxModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCierreRutaMaxModeloTableroOperativos")]
		public function get listaCierreRutaMax():ArrayCollection{
			return _cierreRutaMax;
		}
		
		
		
		
		private var _cierreRutaETyFT:ArrayCollection 
		public function setCierreRutaETyFT($datos:ArrayCollection):void{
			
			_cierreRutaETyFT = new ArrayCollection;
			if ( $datos )
			{
				_cierreRutaETyFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].cierreRuta = $datos[i].totalFolios;
				}
			}
			
			dispatchEvent(new Event("regresarCierreRutaETyFTModeloTableroOperativos"));
			
			if (_cierreRutaETyFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCierreRutaETyFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCierreRutaETyFTModeloTableroOperativos")]
		public function get listaCierreRutaETyFT():ArrayCollection{
			return _cierreRutaETyFT;
		}
		
		private var _cierreRutaGridFT:ArrayCollection;
		public function setCierreRutaGridFT($datos:ArrayCollection):void{
			
			_cierreRutaGridFT = new ArrayCollection;
			if ( $datos )
			{
				_cierreRutaGridFT = $datos;
				
				for (var i:int = 0; i < $datos.length; i++) 
				{
					$datos[i].numFila = i+1;
				}
			}
			
			dispatchEvent(new Event("regresarCierreRutaGridFTModeloTableroOperativos"));
			
			if (_cierreRutaGridFT){
				if (actualizarEspera && currentEnEspera ){
					setControlDeBloqueoPantalla("terminaEspera",null,null,"regresarCierreRutaGridFTModeloTableroOperativos");
				}
			}
		}
		
		[Bindable(event="regresarCierreRutaGridFTModeloTableroOperativos")]
		public function get listaCierreRutaGridFT():ArrayCollection{
			return _cierreRutaGridFT;
		}
		
		/**
		 * Bloquedo/Espera
		 */
		
		private var _servicesConsultados:Object;
		public function setServiciosConsultados($tipo:String):void
		{
			if(!_servicesConsultados.hasOwnProperty($tipo))
			{
				_servicesConsultados[$tipo] = $tipo;
				numServices ++;
			}
		}
		
		
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		/*private var  nextService:Boolean=false;*/
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera")
			{
				if(!currentEnEspera)
				{
					_servicesConsultados = new Object();
					if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento)))
					{
						numServicioCompletos=0;
						numServices = 0;
						actualizarEspera = new Object();
						serviciosCompletosDifKey = new Object();
						
						if($tiposEvento.length >0 && $tiposEvento[0] == "CONSULTA_TABLERO")
						{
							$tiposEvento.shift();
						}
						if($tiposEvento.length>0)
						{
							numServices += $tiposEvento.length;
						}
						currentEnEspera = true;
						actualizarEspera.isBusy = true;
						actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
						alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
					}
				}
				else
				{
					if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento)))
						numServices += $tiposEvento.length;
				}
			}
			else if (mensaje =="terminaEspera")
			{
				
				/*if (numServices>10)
				nextService = true;*/
				
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String))
				{
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				
				if(numServicioCompletos == numServices)
				{
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
					dispatchEvent( new Event("actualizaEsperaYBloqueoModeloTableroOperativos") );
				}
			}
			else if(mensaje =="error")
			{
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
				dispatchEvent( new Event("actualizaEsperaYBloqueoModeloTableroOperativos") );
			}
			
			
		}
		
		[Bindable(event="actualizaEsperaYBloqueoModeloTableroOperativos")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if((EventoTableroOperativos[$tiposEventos[i]])== null)
					{
						return false;
					}
					else
					{
						return true;
					}
				}
				catch(error:Error) 
				{
					trace(error + "El Tipo de Evento: \""+$tiposEventos[i] + "\" No se encuentra en: EventoTableroClientes// NO SE COLOCARÁ LA PANTALLA DE BLOQUEO")
					return false;
				}
			}
			return false;
		}
		
		
		
		public function ModeloTableroOperativos(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}