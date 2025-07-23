package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsGrid;
	
	public class ModeloMobTableroClientesIpad extends EventDispatcher
	{
		public function ModeloMobTableroClientesIpad(target:IEventDispatcher=null)
		{
			super(target);
		}
		// MIX PRODUCTOS
		private var _linealMixProductos:ArrayCollection;
		
		public function setLinealMixProductos( $data:ArrayCollection ):void
		{
			_linealMixProductos = UtilsGrid.queryCampoX( $data, "etiqueta", "MIX_PRODUCTOS_0" );
			dispatchEvent( new Event("regresaLinealMixProductos") );
		}
		[Bindable(event="regresaLinealMixProductos")]
		public function get linealMixProductos():ArrayCollection
		{
			return _linealMixProductos;
		}
		// /MIX PRODUCTOS
		// COT DIF PEDIDO
		private var _linealCotDifPed:ArrayCollection;
		
		public function setLinealCotDifPed( $data:ArrayCollection ):void
		{
			_linealCotDifPed = UtilsGrid.queryCampoX( $data, "etiqueta", "COTNOPED_0" );
			dispatchEvent( new Event("regresaLinealCotDifPed") );
		}
		[Bindable(event="regresaLinealCotDifPed")]
		public function get linealCotDifPed():ArrayCollection
		{
			return _linealCotDifPed;
		}
		// /COT DIF PEDIDO
		// SEGUIMIENTOS
		private var _linealSeguimientos:ArrayCollection;
		
		public function setLinealSeguimientos( $data:ArrayCollection ):void
		{
			_linealSeguimientos = $data;
			dispatchEvent( new Event("regresaLinealSeguimientos") );
		}
		[Bindable(event="regresaLinealSeguimientos")]
		public function get linealSeguimientos():ArrayCollection
		{
			return _linealSeguimientos;
		}
		// /SEGUIMIENTOS
		// ENTREGAS
		private var _linealEntregas:ArrayCollection;
		
		public function setLinealEntregas( $data:ArrayCollection ):void
		{
			_linealEntregas = $data;
			dispatchEvent( new Event("regresaLinealEntregas") );
		}
		[Bindable(event="regresaLinealEntregas")]
		public function get linealEntregas():ArrayCollection
		{
			return _linealEntregas;
		}
		// /ENTREGAS
		// PEDIDOS
		private var _linealPedidos:ArrayCollection;
		
		public function setLinealPedidos( $data:ArrayCollection ):void
		{
			_linealPedidos = $data;
			dispatchEvent( new Event("regresaLinealPedidos") );
		}
		[Bindable(event="regresaLinealPedidos")]
		public function get linealPedidos():ArrayCollection
		{
			return _linealPedidos;
		}
		// /PEDIDOS
		// VENTAS PERIODO
		private var _linealVentasPeriodo:ArrayCollection;
		
		public function setLinealVentasPeriodo( $data:ArrayCollection ):void
		{
			_linealVentasPeriodo = $data;
			dispatchEvent( new Event("regresaLinealVentasPeriodo") );
		}
		[Bindable(event="regresaLinealVentasPeriodo")]
		public function get linealVentasPeriodo():ArrayCollection
		{
			return _linealVentasPeriodo;
		}
		
		private var _montos:ArrayCollection;
		public function setMontoObjetivo( $datos:ArrayCollection):void
		{
			if($datos == null)
				_montos = new ArrayCollection();
			else
				_montos = $datos;
			dispatchEvent( new Event("regresaMontoObjetivo") );
		}
		[Bindable(event="regresaMontoObjetivo")]
		public function get montoObjetivo():ArrayCollection{
			return _montos;
		}
		// /VENTAS PERIODO
		// COMPORTAMIENTO PAGOS
		private var _linealComportamiento:ArrayCollection;
		
		public function setLinealComportamiento( $data:ArrayCollection ):void
		{
			_linealComportamiento = $data;
			dispatchEvent( new Event("regresaLinealComportamiento") );
		}
		[Bindable(event="regresaLinealComportamiento")]
		public function get linealComportamiento():ArrayCollection
		{
			return _linealComportamiento;
		}
		// /COMPORTAMIENTO PAGOS
		// COT = PED
		private var _linealCotPed:ArrayCollection;
		
		public function setLinealCotPed( $data:ArrayCollection ):void
		{
			_linealCotPed = $data;
			dispatchEvent( new Event("regresaLinealCotPed") );
		}
		[Bindable(event="regresaLinealCotPed")]
		public function get linealCotPed():ArrayCollection
		{
			return _linealCotPed;
		}
		// /COT = PED
		// CANCELACION COTIZACION
		private var _linealCancelacionCot:ArrayCollection;
		
		public function setLinealCancelacionCot( $data:ArrayCollection ):void
		{
			_linealCancelacionCot = UtilsGrid.queryCampoX( $data, "etiqueta", "CANCELACIONES_0" );
			dispatchEvent( new Event("regresaLinealCancelacionCot") );
		}
		[Bindable(event="regresaLinealCancelacionCot")]
		public function get linealCancelacionCot():ArrayCollection
		{
			return _linealCancelacionCot;
		}
		// /CANCELACION COTIZACION
		// MIX MARCAS
		private var _linealMixMarcas:ArrayCollection;
		
		public function setLinealMixMarcas( $data:ArrayCollection ):void
		{
			_linealMixMarcas = convertirAResumenConsulta( $data );
			dispatchEvent( new Event("regresaLinealMixMarcas") );
		}
		[Bindable(event="regresaLinealMixMarcas")]
		public function get linealMixMarcas():ArrayCollection
		{
			return _linealMixMarcas;
		}
		
		protected function convertirAResumenConsulta( $lista:ArrayCollection ):ArrayCollection
		{
			var arrReturn:ArrayCollection = new ArrayCollection();
			for( var r:int = 0; r < $lista.length; r++ )
			{
				var cItem:MarcasCliente = $lista[r] as MarcasCliente;
				if( cItem.etiqueta == "MixMarcas_0" )
				{
					var itemResumen:ResumenConsulta = new ResumenConsulta();
					itemResumen.etiqueta 					= cItem.nombre;
					itemResumen.conceptoResultado 	= cItem.nombre;
					itemResumen.total 							= cItem.montoVenta;
					itemResumen.piezasTotal	 			= cItem.totalPiezas;
					itemResumen.totalClientes 			= cItem.totalClientes;
					itemResumen.totalFolios	 				= cItem.totalPartidas;
					itemResumen.partidas	 					= cItem.totalPartidas;
					itemResumen.totalPedidos				= cItem.totalPedidos;
					arrReturn.addItem( itemResumen );
				}
			}
			return arrReturn;
		}
		// /MIX MARCAS
		
		// REGRESAR LOS DATOS CONSULTADOS PREVIAMENTE
		/*public function setRegresaConsultasHechas():void
		{
		//dispatchEvent( new Event("regresaLinealMixProductos") );
		}*/
		
		public function faultLinealMixProductos(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealCotDifPed(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealSeguimientos(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealEntregas(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealPedidos(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealVentasPeriodo(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealComportamiento(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealCotPed(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealCancelacionCot(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
		
		public function faultLinealMixMarcas(error:Object):void
		{
			trace(error.toString());
			dispatchEvent( new Event( "errorLoaderBar", true ) );
		}
	}
}