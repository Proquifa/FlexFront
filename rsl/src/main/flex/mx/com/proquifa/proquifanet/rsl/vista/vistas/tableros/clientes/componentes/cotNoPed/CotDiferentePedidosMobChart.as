package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.cotNoPed
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	
	import skins.skin.graficas.PieChartPqGris;
	import skins.skin.graficas.pieSeriesPqNet;
	
	public class CotDiferentePedidosMobChart extends PieChartPqGris
	{
		public function CotDiferentePedidosMobChart()
		{
			super();
			percentWidth = 100;
			percentHeight = 100;
			
			lineasHabilitadas = true;
			etiquetasHabilitadas = true;
			habilitarResumen = true;
			
			var serrie:pieSeriesPqNet = new pieSeriesPqNet();
			serrie.field = "total";
			series = [serrie];
		}
		
		public function iniciarConsulta( $eventParams:EventoTableroClientes ):void
		{
			if( $eventParams == null )
				return;
			
			var parametros:ParametrosBusquedaCliente = new ParametrosBusquedaCliente();
			var evt:EventoTableroClientes = new EventoTableroClientes(EventoTableroClientes.CONSULTA_LINEAL_COT_DIF_PEDIDOS );
			parametros.anio = evt.anio = $eventParams.anio;
			parametros.cliente = evt.idCliente = $eventParams.idCliente;
			parametros.periodo = evt.periodo = $eventParams.periodo;
			parametros.tipoPeriodo = evt.tipoPeriodo = $eventParams.tipoPeriodo;
			parametros.mes = evt.mes = $eventParams.mes;
			parametros.esac = evt.esacString = $eventParams.esacString;
			parametros.eventas = evt.idVentas = $eventParams.idVentas;
			parametros.lineal = evt.lineal = $eventParams.lineal;
			evt.rangoMinMes = $eventParams.rangoMinMes;
			evt.rangoMaxMes = $eventParams.rangoMaxMes;
			parametros.tipo = evt.tipoT = $eventParams.tipoT;
			parametros.corporativo = evt.corporativo = $eventParams.corporativo;
			parametros.proveedor = evt.idProveedor = $eventParams.idProveedor;
			evt.parametros = parametros;
			dispatchEvent( evt );
		}
		
		public function set recibeDataProvider( $data:ArrayCollection ):void{
			if( $data == null )
				return;
			dataProvider = aplicarFormatoTableroClientes( $data );
			
			dispatchEvent( new Event("terminarLoaderBar", true ) );
		}
	}
}