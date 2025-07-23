package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.comportamientoPagos
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.events.TransformGestureEvent;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.utils.Timer;
	
	import mx.charts.AxisRenderer;
	import mx.charts.CategoryAxis;
	import mx.charts.ColumnChart;
	import mx.charts.LinearAxis;
	import mx.charts.effects.SeriesSlide;
	import mx.charts.renderers.CircleItemRenderer;
	import mx.charts.series.ColumnSeries;
	import mx.charts.series.ColumnSet;
	import mx.charts.series.LineSeries;
	import mx.charts.series.PlotSeries;
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.EventoTableroClientes;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ParametrosBusquedaCliente;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsGrid;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.BarGreenRenderer;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.BarRedRenderer;
	import mx.core.ClassFactory;
	import mx.events.FlexEvent;
	import mx.graphics.SolidColor;
	import mx.graphics.SolidColorStroke;
	
	import skins.catalogos.catalogoColores;
	import skins.catalogos.catalogoIconosEtiquetas;
	
	import spark.primitives.BitmapImage;
	
	public class ComportamientoMobChart extends ColumnChart
	{
		/* lineas relleno */
		private var trazoGrueso:SolidColorStroke = new SolidColorStroke( uint( '0x' + catalogoColores.LABEL_NEGRO ), 3 );
		private var trazoDelgado:SolidColorStroke = new SolidColorStroke( uint( '0x' + catalogoColores.LABEL_NEGRO ), 1 );
		private var colorLinea:SolidColorStroke = new SolidColorStroke( 0x3b98af, 2 );
		
		public function ComportamientoMobChart()
		{
			super();
			percentWidth = 100;
			percentHeight = 100;
			
			setStyle( 'paddingLeft',	 	-100 );
			setStyle( 'paddingRight', 	-100 );
			setStyle( 'paddingTop',	 	0 );
			setStyle( 'paddingBottom', 0 );
			setStyle( 'dataTipRenderer', ComportaPagosToolTip );
			setStyle( 'showDataTipTargets', false );
			showDataTips = true;
			mouseSensitivity = 18;
			dataTipMode = "single";
			setStyle( 'columnWidthRatio', 0.9 );
			seriesFilters = [];
			
			var fxShowSeries:SeriesSlide = new SeriesSlide();
			fxShowSeries.duration = 460;
			fxShowSeries.direction = "up";
			
			var fxHideSeries:SeriesSlide = new SeriesSlide();
			fxHideSeries.duration = 200;
			fxHideSeries.direction = "down";
			
			var fillCircle:SolidColor = new SolidColor( 0x3b98af );
			
			var columnaPorCobrar:ColumnSeries = new ColumnSeries();
			columnaPorCobrar.setStyle( 'showDataEffect', fxShowSeries );
			columnaPorCobrar.setStyle( 'hideDataEffect', fxHideSeries );
			columnaPorCobrar.yField = "montoPorCobrar";
			columnaPorCobrar.setStyle( 'itemRenderer', new ClassFactory( BarRedRenderer) );
			var columnaCobrado:ColumnSeries = new ColumnSeries();
			columnaCobrado.setStyle( 'showDataEffect', fxShowSeries );
			columnaCobrado.setStyle( 'hideDataEffect', fxHideSeries );
			columnaCobrado.yField = "montoCobrado";
			columnaCobrado.setStyle( 'itemRenderer', new ClassFactory( BarGreenRenderer) );
					var columnsetBarras:ColumnSet = new ColumnSet();
					columnsetBarras.type = "stacked";
					columnsetBarras.series = [ columnaPorCobrar, columnaCobrado ];
					
			var seriesLinea:LineSeries = new LineSeries();
			seriesLinea.yField = "tasaCobranza";
			seriesLinea.setStyle( 'lineStroke', colorLinea );
			seriesLinea.verticalAxis = lineaAxisVertical;
			
			var seriesCircle:PlotSeries = new PlotSeries();
			seriesCircle.yField = "tasaCobranza";
			seriesCircle.verticalAxis = lineaAxisVertical;
			seriesCircle.displayName = "Ventas";
			seriesCircle.setStyle( 'itemRenderer', new ClassFactory( CircleItemRenderer ) );
			seriesCircle.setStyle( 'fill', fillCircle );
			seriesCircle.setStyle( 'radius', 6 );
			seriesCircle.setStyle( 'stroke', colorLinea );
					series = [ columnsetBarras, seriesLinea, seriesCircle ];
			
			setupHorizontalAxis();
			
			var verticalLinearAxis:LinearAxis = new LinearAxis();
			verticalLinearAxis.baseAtZero = true;
			verticalLinearAxis.title = "Cantidad de partidas";
			verticalLinearAxis.labelFunction = formateoEje;
			verticalAxis = verticalLinearAxis;
			var verticalRenderer:AxisRenderer = new AxisRenderer();
			verticalRenderer.axis = verticalLinearAxis;
			verticalRenderer.setStyle( 'showLine', false );
			verticalRenderer.setStyle( 'tickPlacement', 'none' );
			verticalRenderer.setStyle( 'color', 0x999999 );
			var verticalLineaRenderer:AxisRenderer = new AxisRenderer();
			verticalLineaRenderer.axis = lineaAxisVertical;
			verticalLineaRenderer.setStyle( 'showLine', false );
			verticalLineaRenderer.setStyle( 'showLabels', false );
			verticalLineaRenderer.setStyle( 'tickPlacement', 'none' );
				verticalAxisRenderers = [ verticalRenderer, verticalLineaRenderer ];
			
			/* gesto mobil v0.3 */
			if( Multitouch.supportsTouchEvents )
			{
				addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler, false, 0, true );
				
				Multitouch.inputMode = MultitouchInputMode.GESTURE;
				addEventListener( TransformGestureEvent.GESTURE_ZOOM, zoomHandler, false, 0, true );
			}
		}
		
		private var iconGesture:BitmapImage;
		
		protected function completeHandler( event:FlexEvent ):void
		{
			iconGesture = new BitmapImage();
			iconGesture.left = -90;
			iconGesture.top = -50;
			iconGesture.alpha = 0.2;
			iconGesture.source = catalogoIconosEtiquetas.getInstance().mobil_scale_down;
			(owner as Object).addElement( iconGesture );
		}
		
		private var zoomScale:Number = 1;
		private var resumenBool:Boolean = false;
		private var timeer:Timer;
		
		protected function zoomHandler( event:TransformGestureEvent ):void
		{
			zoomScale *= event.scaleX;
			cacheAsBitmap = true;
			
			if( zoomScale > 1 && zoomScale != 1 && resumenBool )
			{
				setupHorizontalAxis();
				resumenBool = false;
				dataProvider = iniciarGrafica( _arrLineal );
				iconGesture.source = catalogoIconosEtiquetas.getInstance().mobil_scale_down;
			}
			else if( zoomScale < 1 && zoomScale != 1 && !resumenBool)
			{
				setupHorizontalAxis( true );
				resumenBool = true;
				dataProvider = acoplarData( _arrLineal );
				iconGesture.source = catalogoIconosEtiquetas.getInstance().mobil_scale_up;
			}
			zoomScale = 1;
			
			if( timeer != null )
				timeer.removeEventListener( TimerEvent.TIMER_COMPLETE, timerValidaData );
			timeer = new Timer( 450, 1 );
			timeer.addEventListener( TimerEvent.TIMER_COMPLETE, timerValidaData, false, 0, true );
			timeer.start();
			
		}
		
		protected function timerValidaData( event:TimerEvent ):void
		{
			cacheAsBitmap = false;
		}
		
		private var horizontalCategoryAxis:CategoryAxis = new CategoryAxis();
		private var horizontalRenderer:AxisRenderer = new AxisRenderer();
		private var lineaAxisVertical:LinearAxis = new LinearAxis();
		private var lineaHorizontalRenderer:AxisRenderer = new AxisRenderer();
		
		protected function setupHorizontalAxis( $modoResumen:Boolean = false ):void{
			lineaHorizontalRenderer.axis = lineaAxisVertical;
			lineaHorizontalRenderer.setStyle( 'showLine', false );
			lineaHorizontalRenderer.setStyle( 'showLabels', false );
			
			
			horizontalCategoryAxis.title = $modoResumen ? 'PEDIDO / CANCELADO': '';
			horizontalCategoryAxis.categoryField = "mes";
			horizontalAxis = horizontalCategoryAxis;
			horizontalRenderer.axis = horizontalCategoryAxis;
			horizontalRenderer.setStyle( 'axisStroke', trazoGrueso );
			horizontalRenderer.setStyle( 'tickStroke', trazoDelgado );
			horizontalRenderer.setStyle( 'fontFamily', 'Helvetica' );
			horizontalRenderer.setStyle( 'fontSize', '11' );
			horizontalRenderer.setStyle( 'fontWeight', 'bold' );
			horizontalRenderer.setStyle( 'fontStyle', 'normal' );
			horizontalRenderer.labelFunction = lblFunction;
			horizontalAxisRenderers = [ horizontalRenderer, lineaHorizontalRenderer ];
		}
		
		public function iniciarConsulta( $eventParams:EventoTableroClientes ):void
		{
			if( $eventParams == null )
				return;
			
			var parametros:ParametrosBusquedaCliente = new ParametrosBusquedaCliente();
			var evet:EventoTableroClientes = new EventoTableroClientes(EventoTableroClientes.CONSULTA_LINEAL_COMPORTAMIENTO_PAGOS );
			evet.rangoMinMes = $eventParams.rangoMinMes;
			evet.rangoMaxMes = $eventParams.rangoMaxMes;
			evet.parametros = $eventParams.parametros;
			dispatchEvent( evet );
		}
		
		private var _arrLineal:ArrayCollection = new ArrayCollection();
		
		public function set recibeDataProvider( $data:ArrayCollection ):void{
			_arrLineal = UtilsGrid.queryCampoX( $data, "etiqueta", "COMPORTAMIENTO_PAGOS_0");
			if( resumenBool )
				dataProvider = acoplarData( _arrLineal );
			else
				dataProvider = iniciarGrafica( _arrLineal );
			
			dispatchEvent( new Event("terminarLoaderBar", true ) );
		}
		
		private var _listaMensual:ArrayCollection = new ArrayCollection([
			"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"
		]);
		
		private var _minimoMeses:int=1;
		private var _maximoMeses:int=12;
		
		private function iniciarGrafica( $lista:ArrayCollection ):ArrayCollection{
			var arrReturn:ArrayCollection = new ArrayCollection();
			var objeto:Object = new Object();
			var cuenta:int = 1;
			while( cuenta < 13){
				if(cuenta >= _minimoMeses && cuenta <= _maximoMeses){
					objeto = new Object();
					objeto.numeroMes = cuenta;
					objeto.mes = _listaMensual[cuenta -1];
					objeto.montoPorCobrar = 0;
					objeto.montoCobrado = 0;
					objeto.tasaCobranza = 0;
					for( var m:int = 0; m < $lista.length; m++ ){
						var resumen:ResumenConsulta = $lista[m] as ResumenConsulta;
						if(cuenta == resumen.mes){ 
							if( resumen.conceptoResultado == "Por Cobrar"){
								objeto.montoPorCobrar += resumen.total;
							}else if( resumen.conceptoResultado == "Cobrada"){
								objeto.montoCobrado += resumen.total;
							}
						}
					}
					objeto.tasaCobranza = ( objeto.montoCobrado /(objeto.montoCobrado+objeto.montoPorCobrar))*100;//	(montoMensualCobrado /(montoMensualCobrado+montoMensualPorCobrar))*100
					if( isNaN( objeto.tasaCobranza ) ){
						objeto.tasaCobranza = 0;	
					}
					objeto.montoPorCobrarLabel =  '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( Number( objeto.montoPorCobrar ) );
					//objeto.montoCobradoLabel =  '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( Number( objeto.montoCobrado ) );
					arrReturn.addItem(objeto);
				}
				cuenta++;
			}
			return arrReturn;
		}
		
		private function formateoEje($valor:Number, $valorPrevio:Object, $eje:Object):String{
			var strRegreso:String = "";
			if($valor != 0 ) strRegreso = '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( $valor );
			return strRegreso;
		}
		
		private function lblFunction( $value:Object, $etiqueta:Object ):String{
			return $etiqueta.toString().toUpperCase();
		}
		
		public static function acoplarData( $lista:ArrayCollection ):ArrayCollection{
			var arrReturn:ArrayCollection = new ArrayCollection();
			var objeto:Object;
			objeto = new Object();
			objeto.montoPorCobrar = 0;
			objeto.montoCobrado = 0;
			objeto.tasaCobranza = 0;
			for( var m:int = 0; m < $lista.length;m++ ){
				var resumen:ResumenConsulta = $lista[m] as ResumenConsulta;
				if( resumen.conceptoResultado == "Por Cobrar"){
					objeto.montoPorCobrar += resumen.total;
				}else if( resumen.conceptoResultado == "Cobrada"){
					objeto.montoCobrado += resumen.total;
				}
			}
			objeto.montoPorCobrarLabel =  '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( Number( objeto.montoPorCobrar ) );
			objeto.montoCobradoLabel =  '$ ' + UtilsFormatosNumericos.precisionADosDecimalesConComas( Number( objeto.montoCobrado ) );
			objeto.tasaCobranza = ( objeto.montoCobrado /(objeto.montoCobrado+objeto.montoPorCobrar))*100;
			arrReturn.addItem(objeto);
			return arrReturn;
		}
		
	}
}