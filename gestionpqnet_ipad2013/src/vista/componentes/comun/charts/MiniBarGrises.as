package vista.componentes.comun.charts
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.cotiPed.CotizacionPedidoMobChart;
	import mx.events.FlexEvent;
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.primitives.Rect;
	
	public class MiniBarGrises extends Group
	{
		private var _dataProvider:ArrayCollection;
		private var barraNegra:Rect;
		private var barraVerdeAzul:Rect;
		
		private var colorBlanco:LinearGradient = new LinearGradient();
		private var colorNegro:LinearGradient = new LinearGradient();
		
		public function MiniBarGrises()
		{
			super();
			width = 60;
			height = 60;
			
			colorBlanco.rotation = 90;
			colorBlanco.entries = [ new GradientEntry( 0xcecece ), new GradientEntry( 0xa9a9a9 ) ];
			
			colorNegro.rotation = 90;
			colorNegro.entries = [ new GradientEntry( 0x636363 ), new GradientEntry( 0x2f2f2f ) ];
			
			addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler, false, 0, true );
		}
		
		public function get dataProvider():ArrayCollection
		{
			return _dataProvider;
		}

		public function set dataProvider( value:ArrayCollection ):void
		{
			_dataProvider = value;
			if( value == null )
				return;
			var data:ArrayCollection = CotizacionPedidoMobChart.acoplarData( value );
			/* calcular el 100% de altura*/
			if( data[0].cotizado > data[0].pedido )
			{
				barraNegra.percentHeight = 100;
				barraVerdeAzul.percentHeight = int( (data[0].pedido *100) / data[0].cotizado );
			}
			else
			{
				barraNegra.percentHeight = int( (data[0].cotizado *100) / data[0].pedido );
				barraVerdeAzul.percentHeight = 100;
			}
		}

		protected function completeHandler( event:FlexEvent ):void
		{
			barraNegra = new Rect();
			barraNegra.fill = colorNegro;
			barraNegra.width = 17;
			barraNegra.bottom = 0;
			barraNegra.horizontalCenter = -6;

			barraVerdeAzul = new Rect();
			barraVerdeAzul.fill = colorBlanco;
			barraVerdeAzul.width = 17;
			barraVerdeAzul.bottom = 0;
			barraVerdeAzul.horizontalCenter = 6;
			
			addElement( barraNegra );
			addElement( barraVerdeAzul );
		}
		
	}
}