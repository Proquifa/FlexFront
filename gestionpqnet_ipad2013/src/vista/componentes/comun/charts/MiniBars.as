package vista.componentes.comun.charts
{
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.primitives.Rect;
	
	public class MiniBars extends Group
	{
		private const _ROJO:uint = 0x4c4c4c;
		private const _VERDE:uint = 0xd6d6d6;
		
		private var _dataProvider:ArrayCollection;
		private var barraAbiertaET:Rect;
		private var barraAbiertaFT:Rect;
		private var barraCerradaET:Rect;
		private var barraCerradaFT:Rect;
		
		public var abiertoET:Number = -1;
		public var abiertoFT:Number = -1;
		public var cerradoET:Number = -1;
		public var cerradoFT:Number = -1;
		
		/**
		 * Este componente es una emulacion de un chart
		 * recibe un arreglo en formato AbiertasETFT vs CerradasETFT formando 2 columnas verde-rojo ( donde ET corresponde al color verde y FT al color rojo )
		 * la columna del lado izquierdo corresponde a las Abiertas y la del lado derecho a las cerradas.
		 * Las cantidades estan seteadas en -1 para prevenir el uso innecesario de shapes, por lo tanto si se necesita solamente una columna con llenar las propiedades: abiertoET y abiertoFT es suficiente
		 */
		public function MiniBars()
		{
			super();
			width = 60;
			height = 60;
		}
		
		public function get dataProvider():ArrayCollection
		{
			return _dataProvider;
		}

		public function set dataProvider( value:ArrayCollection ):void
		{
			/* limpio las cantidades */
			abiertoET = -1;
			abiertoFT = -1;
			cerradoET = -1;
			cerradoFT = -1;
			
			_dataProvider = value;
			if( value == null )
				return;
			
			for( var v:int = 0; v < value.length; v++ )
			{
				var cItem:Object =  value[ v ];
				// ABIERTAS - columna izquierda
				if( cItem.hasOwnProperty('abiertoET') )
				{
					if( abiertoET == -1 )
						abiertoET = 0;
					abiertoET += cItem.abiertoET;
				}
				if( cItem.hasOwnProperty('abiertoFT') )
				{
					if( abiertoFT == -1 )
						abiertoFT = 0;
					abiertoFT += cItem.abiertoFT;
				}
				// CERRADAS - columna derecha
				if( cItem.hasOwnProperty('cerradoET') )
				{
					if( cerradoET == -1 )
						cerradoET = 0;
					cerradoET += cItem.cerradoET;
				}
				if( cItem.hasOwnProperty('cerradoFT') )
				{
					if( cerradoFT == -1 )
						cerradoFT = 0;
					cerradoFT += cItem.cerradoFT;
				}
			}
			drawBars();
		}
		
		protected function drawBars():void
		{
			if( cerradoET == -1 && cerradoFT == -1 )
			{// se dibuja una columna y se da por hecho que se usan las propiedades AbiertoET y AbiertoFT para llenar la grafica
					if( barraAbiertaET == null )
					{
							barraAbiertaET = new Rect();
							barraAbiertaET.fill = new SolidColor( _VERDE );
							barraAbiertaET.width = 25;
							barraAbiertaET.horizontalCenter = 0;
							addElement( barraAbiertaET );
					}
					if( barraAbiertaFT == null )
					{
							barraAbiertaFT = new Rect();
							barraAbiertaFT.fill = new SolidColor( _ROJO );
							barraAbiertaFT.width = 25;
							barraAbiertaFT.bottom = 0;
							barraAbiertaFT.horizontalCenter = 0;
							addElement( barraAbiertaFT );
					}
					var total:Number = abiertoET + abiertoFT;
					barraAbiertaET.height = (height * int( (abiertoET * 100) /total ) )/100;
					barraAbiertaFT.height = (height * int( (abiertoFT * 100) /total ) )/100;
					barraAbiertaET.bottom = barraAbiertaFT.height;
			}
			else
			{// se dibujan dos columnas
					/* izquierda */
					if( barraAbiertaET == null )
					{
						barraAbiertaET = new Rect();
						barraAbiertaET.fill = new SolidColor( _VERDE );
						barraAbiertaET.width = 18;
						barraAbiertaET.horizontalCenter = -12;
						addElement( barraAbiertaET );
					}
					if( barraAbiertaFT == null )
					{
						barraAbiertaFT = new Rect();
						barraAbiertaFT.fill = new SolidColor( _ROJO );
						barraAbiertaFT.width = 18;
						barraAbiertaFT.bottom = 0;
						barraAbiertaFT.horizontalCenter = -12;
						addElement( barraAbiertaFT );
					}
					/* derecha */
					if( barraCerradaET == null )
					{
						barraCerradaET = new Rect();
						barraCerradaET.fill = new SolidColor( _VERDE );
						barraCerradaET.width = 18;
						barraCerradaET.horizontalCenter = 12;
						addElement( barraCerradaET );
					}
					if( barraCerradaFT == null )
					{
						barraCerradaFT = new Rect();
						barraCerradaFT.fill = new SolidColor( _ROJO );
						barraCerradaFT.width = 18;
						barraCerradaFT.bottom = 0;
						barraCerradaFT.horizontalCenter = 12;
						addElement( barraCerradaFT );
					}
					var totalAbiertas:Number = abiertoET + abiertoFT;
					var totalCerradas:Number = cerradoET + cerradoFT;
					
					var abiertasHeight:Number = height;
					var cerradasHeight:Number = height;
					
					if( totalAbiertas > totalCerradas )
						cerradasHeight = ( totalCerradas * height) /totalAbiertas;
					else
						abiertasHeight = ( totalAbiertas * height) /totalCerradas;
					
					barraAbiertaET.height = (abiertasHeight * int( (abiertoET * 100) /totalAbiertas ) )/100;
					barraAbiertaFT.height = (abiertasHeight * int( (abiertoFT * 100) /totalAbiertas ) )/100;
					barraAbiertaET.bottom = barraAbiertaFT.height;
					
					barraCerradaET.height = (cerradasHeight * int( (cerradoET * 100) /totalCerradas ) )/100;
					barraCerradaFT.height = (cerradasHeight * int( (cerradoFT * 100) /totalCerradas ) )/100;
					barraCerradaET.bottom = barraCerradaFT.height;
				}
		}
	}
}