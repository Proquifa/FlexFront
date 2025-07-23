package vista.componentes.comun.charts
{
	import mx.charts.PieChart;
	import mx.charts.series.PieSeries;
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	
	import spark.collections.Sort;
	import spark.collections.SortField;
	
	public class MiniPieGris extends PieChart
	{
		public var limiteData:uint = 30;
		
		public function MiniPieGris()
		{
			super();
			width = 85;
			height = 85;
			setStyle('innerRadius', 0.4 );
			
			var pieSeries:PieSeries = new PieSeries();
			pieSeries.field = "total";
			
			var arrColores:Array = [ 0xe8e8e8, 0x969696, 0x575757, 0x6c6c6c, 0x2f2f2f, 0x656565, 0xa9a9a9, 0x444444, 0xaaaaaa, 0x808080, 0xa5a5a5 ];
			pieSeries.setStyle('fills', arrColores );
			series = [ pieSeries ];
		}
		
		override public function set dataProvider(value:Object):void
		{
			var myAc:Object = value;
			if( value != null )
			{
					myAc = value as ArrayCollection;
					var numericDataSort:Sort = new Sort();
					numericDataSort.fields = [new SortField( "total", true )];
					myAc.sort = numericDataSort;
					myAc.refresh();
					myAc = new ArrayCollection( myAc.source.slice( 0, limiteData ) );
					myAc.sort = numericDataSort;
					myAc.refresh();
			}
			super.dataProvider = myAc;
		}
		
	}
}