package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.cancelacionCotizacion
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	
	import skins.skin.graficas.PieChartPqGris;
	import skins.skin.graficas.pieSeriesPqNet;
	
	public class CancelacionCotizacionMobChart extends PieChartPqGris
	{
		public function CancelacionCotizacionMobChart()
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
			var evet:EventoTableroClientes = new EventoTableroClientes(EventoTableroClientes.CONSULTA_LINEAL_CANCELACION_COTIZACION );
			parametros.anio = evet.anio = $eventParams.anio;
			parametros.cliente = evet.idCliente = $eventParams.idCliente;
			parametros.periodo = evet.periodo = $eventParams.periodo;
			parametros.tipoPeriodo = evet.tipoPeriodo = $eventParams.tipoPeriodo;
			parametros.mes = evet.mes = $eventParams.mes;
			parametros.esac = evet.esacString = $eventParams.esacString;
			parametros.eventas = evet.idVentas = $eventParams.idVentas;
			parametros.lineal = evet.lineal = $eventParams.lineal;
			evet.rangoMinMes = $eventParams.rangoMinMes;
			evet.rangoMaxMes = $eventParams.rangoMaxMes;
			parametros.tipo = evet.tipoT = $eventParams.tipoT;
			parametros.corporativo = evet.corporativo = $eventParams.corporativo;
			parametros.proveedor = evet.idProveedor = $eventParams.idProveedor;
			evet.parametros = parametros;
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