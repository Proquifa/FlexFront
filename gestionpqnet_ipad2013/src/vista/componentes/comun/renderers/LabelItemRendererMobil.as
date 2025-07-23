package vista.componentes.comun.renderers
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	import mx.core.FlexGlobals;
	import mx.events.FlexEvent;
	import mx.states.OverrideBase;
	import mx.states.SetStyle;
	import mx.states.State;
	
	import spark.components.LabelItemRenderer;
	
	public class LabelItemRendererMobil extends LabelItemRenderer
	{
		private var letraCapital:Boolean = false;
		
		private var currenDPI:int = FlexGlobals.topLevelApplication.applicationDPI; 
		
		public function LabelItemRendererMobil()
		{
			super();
			percentWidth = 100;
			if( currenDPI == 160)
			{
				height = 20;
			}
			else
			{
				height = 40;
			}
			addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler, false, 0, true );
		}
		
		protected function completeHandler( event:FlexEvent ):void
		{
			removeEventListener( FlexEvent.CREATION_COMPLETE, completeHandler );
			
			styleName = "titulo_NovecentoCFF_24";
			setStyle("textAlign", "left");
			setStyle( "color", 0xfafafa );
			
/*			setStyle("fontFamily", "NovecentoCFF");
			setStyle("fontWeight", "bold");
			setStyle("fontStyle", "normal");
			setStyle("fontSize", 12);
			*/
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
			if( value.hasOwnProperty( 'capital') )
			{
				label = value.capital;
				
				if(currenDPI == 160)
					height = 40;
				else
					height = 80;
					
				letraCapital = true;
			}
			else if( value is CatalogoItem )
			{
				label = (value as CatalogoItem).valor;
				
				if(currenDPI == 160)
					height = 20;
				else
					height = 40;
				
				letraCapital = false;
			}
		}
		
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
			if( letraCapital )
			{
					setStyle( "color", 0x00Afa4 );
			}
			else
			{
					if( selected )
						setStyle( "color", 0x009fa4 );
					else
						setStyle( "color", 0xfafafa );
			}
		}
		
		override protected function drawBorder(unscaledWidth:Number, unscaledHeight:Number):void{}
		
	}
}