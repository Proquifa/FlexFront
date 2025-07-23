package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.ventasDelPeriodo
{
	import flash.events.Event;
	
	import mx.charts.AxisRenderer;
	import mx.charts.CategoryAxis;
	import mx.charts.LineChart;
	import mx.charts.LinearAxis;
	import mx.charts.effects.SeriesInterpolate;
	import mx.charts.renderers.CircleItemRenderer;
	import mx.charts.series.LineSeries;
	import mx.charts.series.PlotSeries;
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.TableroClientesCheckPeriodicoLineal;
	import mx.controls.Spacer;
	import mx.core.ClassFactory;
	import mx.events.FlexEvent;
	import mx.graphics.SolidColor;
	import mx.graphics.SolidColorStroke;
	
	import skins.catalogos.catalogoColores;
	
	import spark.components.Group;
	
	public class VentasPeriodoMobChart extends LineChart
	{
		
		public function VentasPeriodoMobChart()
		{
			super();
			percentWidth = 100;
			percentHeight = 100;
			
			setStyle( 'paddingLeft',-100 );
			setStyle( 'paddingRight',-100 );
			setStyle( 'paddingTop',15 );
			setStyle( 'paddingBottom', 0 );
			setStyle( 'dataTipRenderer', PeriodoToolTip );
			setStyle( 'showDataTipTargets', false );
			showDataTips = true;
			//mouseSensitivity = 5;
			dataTipMode = "single";
			seriesFilters = [];
			this.mouseSensitivity = 18;
			var fxInterpolate:SeriesInterpolate = new SeriesInterpolate();
			fxInterpolate.duration = 600;
			
			var trazoGruezo:SolidColorStroke = new SolidColorStroke( uint( '0x' + catalogoColores.LABEL_NEGRO ), 2 );
			var trazoDelgado:SolidColorStroke = new SolidColorStroke( uint( '0x' + catalogoColores.LABEL_NEGRO ), 1 );
			
			var colorLinea1:SolidColorStroke = new SolidColorStroke( 0x257d92, 6 );
			var colorLinea2:SolidColorStroke = new SolidColorStroke( 0x666666, 5 );
			var colorLinea3:SolidColorStroke = new SolidColorStroke( 0x660099, 4 );
			var colorLinea4:SolidColorStroke = new SolidColorStroke( 0xCC9900, 3 );
			var colorLinea5:SolidColorStroke = new SolidColorStroke( 0xCC3333, 2 );
			
			var fillCircle1:SolidColor = new SolidColor( 0x257d92 ); 
			var fillCircle2:SolidColor = new SolidColor( 0x666666 ); 
			var fillCircle3:SolidColor = new SolidColor( 0x660099 ); 
			var fillCircle4:SolidColor = new SolidColor( 0xCC9900 ); 
			var fillCircle5:SolidColor = new SolidColor( 0xCC3333 ); 
			
			/* series */
			var seriesLinea1:LineSeries = new LineSeries();
			seriesLinea1.yField = "montoUSD_0";
			seriesLinea1.xField = "numeroMes";
			seriesLinea1.setStyle( 'form', 'segment' );
			seriesLinea1.setStyle( 'lineStroke', colorLinea1 );
			seriesLinea1.setStyle( 'showDataEffect', fxInterpolate );
			
			var seriesCircle1:PlotSeries = new PlotSeries();
			seriesCircle1.yField = "montoUSD_0";
			seriesCircle1.xField = "numeroMes";
			seriesCircle1.displayName = "Ventas";
			seriesCircle1.setStyle( 'itemRenderer', new ClassFactory( CircleItemRenderer ) );
			seriesCircle1.setStyle( 'fill', fillCircle1 );
			seriesCircle1.setStyle( 'radius', 5 );
			seriesCircle1.setStyle( 'stroke', colorLinea1 );
			seriesCircle1.setStyle( 'showDataEffect', fxInterpolate );
			seriesCircle1.id = "montoObjetivo1";
			
			
			var seriesLinea2:LineSeries = new LineSeries();
			seriesLinea2.yField = "montoUSD_1";
			seriesLinea2.xField = "numeroMes";
			seriesLinea2.setStyle( 'form', 'segment' );
			seriesLinea2.setStyle( 'lineStroke', colorLinea2 );
			seriesLinea2.setStyle( 'showDataEffect', fxInterpolate );
			var seriesCircle2:PlotSeries = new PlotSeries();
			seriesCircle2.yField = "montoUSD_1";
			seriesCircle2.xField = "numeroMes";
			seriesCircle2.displayName = "Ventas";
			seriesCircle2.setStyle( 'itemRenderer', new ClassFactory( CircleItemRenderer ) );
			seriesCircle2.setStyle( 'fill', fillCircle2 );
			seriesCircle2.setStyle( 'radius', 5 );
			seriesCircle2.setStyle( 'stroke', colorLinea2 );
			seriesCircle2.setStyle( 'showDataEffect', fxInterpolate );
			seriesCircle2.id = "montoObjetivo2";
			
			var seriesLinea3:LineSeries = new LineSeries();
			seriesLinea3.yField = "montoUSD_2";
			seriesLinea3.xField = "numeroMes";
			seriesLinea3.setStyle( 'form', 'segment' );
			seriesLinea3.setStyle( 'lineStroke', colorLinea3 );
			seriesLinea3.setStyle( 'showDataEffect', fxInterpolate );
			var seriesCircle3:PlotSeries = new PlotSeries();
			seriesCircle3.yField = "montoUSD_2";
			seriesCircle3.xField = "numeroMes";
			seriesCircle3.displayName = "Ventas";
			seriesCircle3.setStyle( 'itemRenderer', new ClassFactory( CircleItemRenderer ) );
			seriesCircle3.setStyle( 'fill', fillCircle3 );
			seriesCircle3.setStyle( 'radius', 5 );
			seriesCircle3.setStyle( 'stroke', colorLinea3 );
			seriesCircle3.setStyle( 'showDataEffect', fxInterpolate );
			seriesCircle3.id = "montoObjetivo3";
			
			var seriesLinea4:LineSeries = new LineSeries();
			seriesLinea4.yField = "montoUSD_3";
			seriesLinea4.xField = "numeroMes";
			seriesLinea4.setStyle( 'form', 'segment' );
			seriesLinea4.setStyle( 'lineStroke', colorLinea4 );
			seriesLinea4.setStyle( 'showDataEffect', fxInterpolate );
			var seriesCircle4:PlotSeries = new PlotSeries();
			seriesCircle4.yField = "montoUSD_3";
			seriesCircle4.xField = "numeroMes";
			seriesCircle4.displayName = "Ventas";
			seriesCircle4.setStyle( 'itemRenderer', new ClassFactory( CircleItemRenderer ) );
			seriesCircle4.setStyle( 'fill', fillCircle4 );
			seriesCircle4.setStyle( 'radius', 5 );
			seriesCircle4.setStyle( 'stroke', colorLinea4 );
			seriesCircle4.setStyle( 'showDataEffect', fxInterpolate );
			seriesCircle4.id = "montoObjetivo4";
			
			var seriesLinea5:LineSeries = new LineSeries();
			seriesLinea5.yField = "montoUSD_4";
			seriesLinea5.xField = "numeroMes";
			seriesLinea5.setStyle( 'form', 'segment' );
			seriesLinea5.setStyle( 'lineStroke', colorLinea5 );
			seriesLinea5.setStyle( 'showDataEffect', fxInterpolate );
			var seriesCircle5:PlotSeries = new PlotSeries();
			seriesCircle5.yField = "montoUSD_4";
			seriesCircle5.xField = "numeroMes";
			seriesCircle5.displayName = "Ventas";
			seriesCircle5.setStyle( 'itemRenderer', new ClassFactory( CircleItemRenderer ) );
			seriesCircle5.setStyle( 'fill', fillCircle5 );
			seriesCircle5.setStyle( 'radius', 5 );
			seriesCircle5.setStyle( 'stroke', colorLinea5 );
			seriesCircle5.setStyle( 'showDataEffect', fxInterpolate );
			seriesCircle5.id = "montoObjetivo5";
			
			series = [ seriesLinea1, seriesCircle1, seriesLinea2, seriesCircle2, seriesLinea3, seriesCircle3, seriesLinea4, seriesCircle4,seriesLinea5, seriesCircle5 ];
			
			var axisHorizontall:CategoryAxis = new CategoryAxis();
			axisHorizontall.categoryField = "numeroMes";
			horizontalAxis = axisHorizontall;
			var horizontalRender:AxisRenderer = new AxisRenderer();
			horizontalRender.axis = axisHorizontall;
			horizontalRender.setStyle( 'showLine', true );
			horizontalRender.setStyle( 'showLabels', true );
			horizontalRender.setStyle( 'axisStroke', trazoGruezo );
			horizontalRender.setStyle( 'tickStroke', trazoDelgado );
			horizontalRender.setStyle( 'tickPlacement', 'none' );
			horizontalRender.setStyle( 'fontFamily', 'Helvetica' );
			horizontalRender.setStyle( 'fontWeight', 'bold' );
			horizontalRender.setStyle( 'fontStyle', 'normal' );
			horizontalRender.setStyle( 'fontSize', 11 );
			horizontalRender.labelFunction = lblFunction;
			horizontalAxisRenderers = [ horizontalRender ];
			
			var axisVertical:LinearAxis = new LinearAxis();
			axisVertical.labelFunction = formateoEje;
			axisVertical.autoAdjust = false;
			axisVertical.minimum = 0;
			verticalAxis = axisVertical;
			var verticalRender:AxisRenderer = new AxisRenderer();
			verticalRender.axis = axisVertical;
			verticalRender.setStyle( 'showLine', false );
			verticalRender.setStyle( 'tickPlacement', 'none' );
			verticalRender.setStyle( 'color', 0x999999 );
			verticalAxisRenderers = [ verticalRender ];
			
			addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler, false, 0, true );
		}
		
		private var checkPeriodico:TableroClientesCheckPeriodicoLineal;
		protected function completeHandler( event:FlexEvent ):void
		{
			checkPeriodico = new TableroClientesCheckPeriodicoLineal();
			checkPeriodico.top = -20;
			checkPeriodico.addEventListener( Event.CHANGE, checkChangeHandler, false, 0, true );
			
			(owner as Object).addElement( checkPeriodico );
		}
		
		protected function checkChangeHandler( event:Event ):void
		{
			_event.lineal = event.currentTarget.selected ? 1: 0;
			iniciarConsulta( _event );
		}
		
		private var _event:EventoTableroClientes;
		public function iniciarConsulta( $eventParams:EventoTableroClientes ):void
		{
			if( $eventParams == null )
				return;
			
			var parametros:ParametrosBusquedaCliente = new ParametrosBusquedaCliente();
			var evet:EventoTableroClientes = new EventoTableroClientes(EventoTableroClientes.CONSULTA_LINEAL_VENTAS_PERIODO );
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
			_event = $eventParams;
			dispatchEvent( evet );
			
			if( checkPeriodico != null )
				checkPeriodico.recibirFiltrosClientesMobil = $eventParams;
		}
		
		private var _arrLineal:ArrayCollection = new ArrayCollection();
		
		public function set recibeDataProvider( $data:ArrayCollection ):void{
			if( $data == null )
				return;
			
			if( headerChart == null )
			{
				headerChart = new VentasPeriodoHeaderChart();
				headerChart.left = -90;
				headerChart.top = -80;
				(owner as Object).addElement( headerChart );
			}
			
			_arrLineal = $data;
			dataProvider = iniciarGrafica( _arrLineal );
			
			dispatchEvent( new Event("terminarLoaderBar", true ) );
			
			
		}
		
		private var _listaMensual:ArrayCollection = new ArrayCollection([
			"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"
		]);
		
		private var _minimoMeses:int=1;
		private var _maximoMeses:int=12;
		///////////
		private var headerChart:VentasPeriodoHeaderChart;
		
		private var totalLegend1:Number = 0;
		private var totalLegend2:Number = 0;
		private var totalLegend3:Number = 0;
		private var totalLegend4:Number = 0;
		private var totalLegend5:Number = 0;
		
		private function iniciarGrafica( $lista:ArrayCollection ):ArrayCollection
		{
			totalLegend1 = 0;
			totalLegend2 = 0;
			totalLegend3 = 0;
			totalLegend4 = 0;
			totalLegend5 = 0;
			var m:int = 0;
			var arrReturn:ArrayCollection = new ArrayCollection();
			var objeto:Object;
			var cuenta:int = 1;
			arrReturn.addItem( new Object() );
			while( cuenta < 13 )
			{
				/*				if(cuenta >= _minimoMeses && cuenta <= _maximoMeses)
				{*/
				objeto = new Object();
				objeto.numeroMes = cuenta;
				objeto.mes = _listaMensual[cuenta -1];
				objeto.montoUSD_0 = 0;
				objeto.montoUSD_1 = 0;
				objeto.montoUSD_2 = 0;
				objeto.montoUSD_3 = 0;
				objeto.montoUSD_4 = 0;
				
				
				for( m = 0; m < $lista.length;m++ )
				{
					var resumen:ResumenConsulta = $lista[m] as ResumenConsulta;
					if(cuenta == resumen.mes)
					{
						if( resumen.etiqueta == "VENTAS_0" || resumen.etiqueta == "NOTA_0" )
						{
							objeto.montoUSD_0 += resumen.total;
							totalLegend1 += resumen.total;
						}
						else if( resumen.etiqueta == "VENTAS_1" || resumen.etiqueta == "NOTA_1" )
						{
							objeto.montoUSD_1 += resumen.total;
							totalLegend2 += resumen.total;
						}
						else if( resumen.etiqueta == "VENTAS_2" || resumen.etiqueta == "NOTA_2" )
						{
							objeto.montoUSD_2 += resumen.total;
							totalLegend3 += resumen.total;
						}
						else if( resumen.etiqueta == "VENTAS_3" || resumen.etiqueta == "NOTA_3" )
						{
							objeto.montoUSD_3 += resumen.total;
							totalLegend4 += resumen.total;
						}
						else if( resumen.etiqueta == "VENTAS_4" || resumen.etiqueta == "NOTA_4" )
						{
							objeto.montoUSD_4 += resumen.total;
							totalLegend5 += resumen.total;
						}
					}
				}
				arrReturn.addItem(objeto);
				/*				}*/
				cuenta++;
			}
			arrReturn.addItem( new Object() );
			if( headerChart != null && _event != null )
				headerChart.data( _event, totalLegend1, totalLegend2, totalLegend3,totalLegend4,totalLegend5 );
			
			return arrReturn;
		}
		
		protected function comparaPeriodos( $current:Number, $previo:Number ):Number
		{
			var porcentaje:Number = 0;
			
			if ($current == 0 && $previo==0){
				porcentaje = 0;
			}else{
				var _valor:Number = $previo == 0 ? 1 : $previo;
				porcentaje = ( ($current * 100 ) / _valor ) - 100;
				//trace( porcentaje.toString() );
				if( porcentaje == Infinity || porcentaje == -Infinity || isNaN(Number(porcentaje)) )
					porcentaje = 0;
				return Math.round( porcentaje );
			}
			return Math.round( porcentaje );
		}
		
		private function lblFunction( $value:Object, $etiqueta:Object ):String{
			return _listaMensual[ int($etiqueta) -1 ].toUpperCase();
		}
		
		private function formateoEje($valor:Number, valorPrevio:Object, eje:Object):String{
			var strRegreso:String = "";
			if($valor != 0 ) strRegreso = '$ ' + UtilsFormatosNumericos.shortNumbersMK( $valor.toString() );
			return strRegreso;
		}
		
	}
}