package vista.componentes.comun.charts
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.core.SpriteVisualElement;
	import spark.primitives.Rect;
	
	public class MiniLineChart extends Group
	{
		private var _dataProvider:ArrayCollection;
		private var maxValue:Number = 0;
		private var minValue:Number = 0;
		
		/**
		 * Este componente recibe un arraycollection de Object's con la propiedad 'valor:number', toma los elementos en el orden que vienen sin hacer procesos adicionales 
		 */
		public function MiniLineChart()
		{
			super();
			width = 70;
			height = 55;
		}
		
		public function get dataProvider():ArrayCollection
		{
			return _dataProvider;
		}
		
		public function set dataProvider( value:ArrayCollection ):void
		{
			_dataProvider = value;
			if( _dataProvider == null )
				return;
			for( var g:int = 0; g < _dataProvider.length; g++ )
			{
				if( _dataProvider[g].hasOwnProperty( 'valor' ) )
				{
					if( _dataProvider[g].valor > maxValue )
						maxValue += _dataProvider[g].valor;
					if( _dataProvider[g].valor < minValue )
						minValue += _dataProvider[g].valor;
				}
			}
			if( myShape == null )
			{
				myShape = new SpriteVisualElement();
				addElement( myShape );	
			}
			drawLines();
		}
		
		private var myShape:SpriteVisualElement;
		
		protected function drawLines():void
		{
			var espacio:Number = width/ (_dataProvider.length-1);
			myShape.graphics.clear();
			for( var j:int = 0; j < _dataProvider.length; j++ )
			{
					var cItem:Object = _dataProvider[j] as Object;
					var newY:Number = height - ( (cItem.valor* height) /maxValue );
					var newX:Number = j * espacio;
					/* dibujar linea*/
					myShape.graphics.lineStyle( 0.4, 0x999999 );
					if( j == 0 )
						myShape.graphics.moveTo( newX, newY );
					else
						myShape.graphics.lineTo( newX, newY );
					/* dibujar punto */
					myShape.graphics.beginFill( 0xFAFAFA );
					myShape.graphics.drawCircle( newX, newY, 2 );
					myShape.graphics.endFill();
			}
		}
		
	}
}