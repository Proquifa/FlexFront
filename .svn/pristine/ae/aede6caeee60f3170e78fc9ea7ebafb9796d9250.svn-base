package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.mixMarcas
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	
	import skins.skin.graficas.PieChartPqGris;
	import skins.skin.graficas.pieSeriesPqNet;

	public class MixMarcasMobChart extends PieChartPqGris
	{
		public function MixMarcasMobChart()
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
			
			dataProvider = new ArrayCollection();
		}
		
		
		public function iniciarConsulta( $eventParams:EventoTableroClientes ):void
		{
			if( $eventParams == null )
				return;
			
			var parametros:ParametrosBusquedaCliente = new ParametrosBusquedaCliente();
			var evet:EventoTableroClientes = new EventoTableroClientes(EventoTableroClientes.CONSULTA_LINEAL_MIX_MARCAS );
			evet.rangoMinMes = $eventParams.rangoMinMes;
			evet.rangoMaxMes = $eventParams.rangoMaxMes;
			evet.parametros = $eventParams.parametros;
			dispatchEvent( evet );
		}
		
		public function set recibeDataProvider( $data:ArrayCollection ):void{
			if( $data == null )
				return;
			dataProvider = aplicarFormatoTableroClientes( $data );
			
			dispatchEvent( new Event("terminarLoaderBar", true ) );
		}
	}
}