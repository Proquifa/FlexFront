package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.entregas
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
	import mx.charts.series.ColumnSeries;
	import mx.charts.series.ColumnSet;
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
	import mx.graphics.SolidColorStroke;
	
	import skins.catalogos.catalogoColores;
	import skins.catalogos.catalogoIconosEtiquetas;
	
	import spark.primitives.BitmapImage;
	
	public class EntregasMobChart extends ColumnChart
	{
		/* lineas relleno */
		private var trazoGrueso:SolidColorStroke = new SolidColorStroke( uint( '0x' + catalogoColores.LABEL_NEGRO ), 3 );
		private var trazoDelgado:SolidColorStroke = new SolidColorStroke( uint( '0x' + catalogoColores.LABEL_NEGRO ), 1 );
		
		public function EntregasMobChart()
		{
			super();
			percentWidth = 100;
			percentHeight = 100;
						
			setStyle( 'paddingLeft',	 	-100 );
			setStyle( 'paddingRight', 	-100 );
			setStyle( 'paddingTop',	 	0 );
			setStyle( 'paddingBottom', 0 );
			setStyle( 'dataTipRenderer', EntregasToolTip );
			setStyle( 'showDataTipTargets', false );
			showDataTips = true;
			mouseSensitivity = 5;
			dataTipMode = "single";
			setStyle( 'columnWidthRatio', 0.5 );
			seriesFilters = [];
			
			var fxShowSeries:SeriesSlide = new SeriesSlide();
			fxShowSeries.duration = 460;
			fxShowSeries.direction = "up";
			
			var fxHideSeries:SeriesSlide = new SeriesSlide();
			fxHideSeries.duration = 200;
			fxHideSeries.direction = "down";
			
			/* bar ABIERTAS*/
			var columnaAFT:ColumnSeries = new ColumnSeries();
			columnaAFT.setStyle( 'showDataEffect', fxShowSeries );
			columnaAFT.setStyle( 'hideDataEffect', fxHideSeries );
			columnaAFT.yField = "entregaAFT";
			columnaAFT.setStyle( 'itemRenderer', new ClassFactory( BarRedRenderer) );
			var columnaAET:ColumnSeries = new ColumnSeries();
			columnaAET.setStyle( 'showDataEffect', fxShowSeries );
			columnaAET.setStyle( 'hideDataEffect', fxHideSeries );
			columnaAET.yField = "entregaAET";
			columnaAET.setStyle( 'itemRenderer', new ClassFactory( BarGreenRenderer) );
					var columnSettAbiertas:ColumnSet = new ColumnSet();
					columnSettAbiertas.type = "stacked";
					columnSettAbiertas.series = [ columnaAFT, columnaAET ];
			
			/* bar CERRADAS */
			var columnaCFT:ColumnSeries = new ColumnSeries();
			columnaCFT.setStyle( 'showDataEffect', fxShowSeries );
			columnaCFT.setStyle( 'hideDataEffect', fxHideSeries );
			columnaCFT.yField = "entregaCFT";
			columnaCFT.setStyle( 'itemRenderer', new ClassFactory( BarRedRenderer) );
			var columnaCET:ColumnSeries = new ColumnSeries();
			columnaCET.setStyle( 'showDataEffect', fxShowSeries );
			columnaCET.setStyle( 'hideDataEffect', fxHideSeries );
			columnaCET.yField = "entregaCET";
			columnaCET.setStyle( 'itemRenderer', new ClassFactory( BarGreenRenderer) );
					var columnSettCerradas:ColumnSet = new ColumnSet();
					columnSettCerradas.type = "stacked";
					columnSettCerradas.series = [ columnaCFT, columnaCET ];
			
			series = [ columnSettAbiertas, columnSettCerradas ];
			
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
					verticalAxisRenderers = [ verticalRenderer ];
			
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
		
		protected function setupHorizontalAxis( $modoResumen:Boolean = false ):void{
			horizontalCategoryAxis.title = $modoResumen ? 'ABIERTAS / CERRADAS': '';
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
			horizontalAxisRenderers = [ horizontalRenderer ];
		}

		public function iniciarConsulta( $eventParams:EventoTableroClientes ):void
		{
			if( $eventParams == null )
				return;
			
			var parametros:ParametrosBusquedaCliente = new ParametrosBusquedaCliente();
			var evet:EventoTableroClientes = new EventoTableroClientes(EventoTableroClientes.CONSULTA_LINEAL_ENTREGAS );
			evet.rangoMinMes = $eventParams.rangoMinMes;
			evet.rangoMaxMes = $eventParams.rangoMaxMes;
			evet.parametros = $eventParams.parametros;
			dispatchEvent( evet );
		}
		
		private var _arrLineal:ArrayCollection = new ArrayCollection();
		
		public function set recibeDataProvider( $data:ArrayCollection ):void
		{
			_arrLineal = UtilsGrid.queryCampoX( $data, "etiqueta", "ENTREGAS_0");
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
			var objeto:Object;
			var cuenta:int = 1;
			while( cuenta < 13){
				if(cuenta >= this._minimoMeses && cuenta <= this._maximoMeses){
					objeto = new Object();
					objeto.mes = _listaMensual[cuenta -1];
					objeto.entregaAET = 0;
					objeto.entregaAFT = 0;
					objeto.entregaCET = 0;
					objeto.entregaCFT = 0;
					objeto.montoTotalA = 0;
					objeto.montoTotalC = 0;
					objeto.montoTotalAET = 0;
					objeto.montoTotalAFT = 0;
					objeto.montoTotalCET = 0;
					objeto.montoTotalCFT = 0;
					for( var m:int = 0; m < $lista.length;m++ ){
						var resumen:ResumenConsulta = $lista[m] as ResumenConsulta;
						if(cuenta == resumen.mes){
							if( resumen.conceptoResultado == "FUERA DE TIEMPO ABIERTA" ){
								objeto.entregaAFT += resumen.piezasTotal;
								objeto.montoTotalA += resumen.total;
								objeto.montoTotalAFT += resumen.total;
							}
							if( resumen.conceptoResultado == "EN TIEMPO ABIERTA" ){
								objeto.entregaAET += resumen.piezasTotal;
								objeto.montoTotalA += resumen.total;
								objeto.montoTotalAET += resumen.total;
							}
							if( resumen.conceptoResultado == "FUERA DE TIEMPO CERRADA" ){
								objeto.entregaCFT += resumen.piezasTotal;
								objeto.montoTotalC += resumen.total;
								objeto.montoTotalCFT += resumen.total;
							}
							if( resumen.conceptoResultado == "EN TIEMPO CERRADA" ){
								objeto.entregaCET += resumen.piezasTotal;
								objeto.montoTotalC += resumen.total;
								objeto.montoTotalCET += resumen.total;
							}
						}
					}
					objeto.totalA = objeto.entregaAET + objeto.entregaAFT;
					objeto.totalC = objeto.entregaCET + objeto.entregaCFT;
					objeto.entregaAETLabel = objeto.entregaAET + "ET";
					objeto.entregaAFTLabel = objeto.entregaAFT+ "FT";
					objeto.entregaCETLabel = objeto.entregaCET + "ET";
					objeto.entregaCFTLabel = objeto.entregaCFT+ "FT";
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
				var returnDatosGrafica:ArrayCollection = new ArrayCollection();
				var objeto:Object;
				objeto = new Object();
				objeto.entregaAET = 0;
				objeto.entregaAFT = 0;
				objeto.entregaCET = 0;
				objeto.entregaCFT = 0;
				objeto.montoTotalA = 0;
				objeto.montoTotalC = 0;
				objeto.montoTotalAET = 0;
				objeto.montoTotalAFT = 0;
				objeto.montoTotalCET = 0;
				objeto.montoTotalCFT = 0;
				for( var m:int = 0; m < $lista.length;m++ ){
					var resumen:ResumenConsulta = $lista[m] as ResumenConsulta;
					if( resumen.conceptoResultado == "FUERA DE TIEMPO ABIERTA" ){
						objeto.entregaAFT += resumen.piezasTotal;
						objeto.montoTotalA += resumen.total;
						objeto.montoTotalAFT += resumen.total;
					}
					if( resumen.conceptoResultado == "EN TIEMPO ABIERTA" ){
						objeto.entregaAET += resumen.piezasTotal;
						objeto.montoTotalA += resumen.total;
						objeto.montoTotalAET += resumen.total;
					}
					if( resumen.conceptoResultado == "FUERA DE TIEMPO CERRADA" ){
						objeto.entregaCFT += resumen.piezasTotal;
						objeto.montoTotalC += resumen.total;
						objeto.montoTotalCFT += resumen.total;
					}
					if( resumen.conceptoResultado == "EN TIEMPO CERRADA" ){
						objeto.entregaCET += resumen.piezasTotal;
						objeto.montoTotalC += resumen.total;
						objeto.montoTotalCET += resumen.total;
					}
				}
				objeto.totalA = objeto.entregaAET + objeto.entregaAFT;
				objeto.totalC = objeto.entregaCET + objeto.entregaCFT;
				objeto.entregaAETLabel = objeto.entregaAET + "ET";
				objeto.entregaAFTLabel = objeto.entregaAFT+ "FT";
				objeto.entregaCETLabel = objeto.entregaCET + "ET";
				objeto.entregaCFTLabel = objeto.entregaCFT+ "FT";
				returnDatosGrafica.addItem(objeto);
				return returnDatosGrafica;
		}
		
	}
}