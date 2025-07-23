package vista.componentes.comun.pq
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.geom.Rectangle;
	import flash.utils.Timer;
	
	import mx.core.FlexGlobals;
	import mx.events.EffectEvent;
	import mx.events.FlexEvent;
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.effects.Move;
	import spark.effects.Scale;
	import spark.effects.easing.Elastic;
	import spark.primitives.Ellipse;
	import spark.primitives.Rect;
	
	[Event(name="localClickEvent", type="flash.events.Event")]
	
	public class CrossButtonPq extends Group
	{
		private const SCALE_DOWN:Number = 1.5;
		
		private var colorNormal:SolidColor = new SolidColor( 0xcfcece );
		private var colorDown:LinearGradient = new LinearGradient();
		
		private var fondo:Ellipse; 
		private var palaA:Rect;
		private var palaB:Rect;
		private var palaC:Rect;
		private var palaD:Rect;
		
		private var hitRect:Rect;
		private var timeer:Timer = new Timer( 100, 1 );
		
		private var fxMove:Move = new Move();
		private var fxScale:Scale = new Scale();
		
		/*		[Bindable]
		private var currentDPI:int = ;*/
		
		private var factorScale:int = 1;
		
		/* */
		public var bound:Rectangle = new Rectangle(0, 0, 100, 100 );
		
		public function CrossButtonPq()
		{
			super();
			
			/*			if(currentDPI == 160)
			{
			width = 32;
			height = 32;
			}else*/
			if (FlexGlobals.topLevelApplication.applicationDPI == 240)
				factorScale = 2;
			
			width = 32 * factorScale;
			height = 32 * factorScale;
			
			addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler, false, 0, true );
		}
		
		protected function completeHandler( event:FlexEvent ):void
		{
			colorDown.entries = [ new GradientEntry( 0x009eb0 ), new GradientEntry( 0x00667c) ];
			
			colorDown.rotation = 90 * factorScale;
			
			/* dibujo un area adicional para no perder el mouseEvent */
			hitRect = new Rect();
			hitRect.width = bound.width;
			hitRect.height = bound.height;
			hitRect.alpha = 0;
			hitRect.fill = colorNormal;
			hitRect.horizontalCenter = 0;
			hitRect.verticalCenter = 0;
			hitRect.visible = false;
			addElement( hitRect );
			
			fondo = new Ellipse();
			
			fondo.width = 32 * factorScale;	
			fondo.height = 32 * factorScale;
			
			fondo.fill = colorNormal;
			addElement( fondo );
			
			crearPala( palaA, 0 );
			crearPala( palaB, 90 );
			crearPala( palaC, 180 );
			crearPala( palaD, 270 );
			
			addEventListener( MouseEvent.MOUSE_DOWN, mouseDownHandler, false, 0, true );
			addEventListener( MouseEvent.MOUSE_UP, mouseUpHandler, false, 0, true );
		}
		
		protected function mouseDownHandler( event:MouseEvent ):void
		{
			fondo.fill = colorDown;
			var easerr:Elastic = new Elastic();
			fxScale.stop();
			fxScale.target = fondo;
			fxScale.duration = 300  * factorScale;
			fxScale.scaleXTo = SCALE_DOWN;
			fxScale.scaleYTo = SCALE_DOWN;
			fxScale.easer = easerr;
			fxScale.play();
			
			addEventListener( MouseEvent.MOUSE_MOVE, mouseMoveHandler, false, 0, true );
			hitRect.visible = true;
		}
		
		protected function timerLimpiaMouseMoveHandler( event:TimerEvent ):void
		{
			mouseUpHandler();
		}
		
		protected function mouseMoveHandler( event:MouseEvent ):void
		{
			/* calcular nuevas coordenadas */
			var newX:Number = event.currentTarget.contentMouseX - width/2;
			var newY:Number = event.currentTarget.contentMouseY - height/2;
			var positiveX:Number = newX < 0 ? newX * -1: newX;
			var positiveY:Number = newY < 0 ? newY * -1: newY;
			/* si el circulo rebasa el limite establecido termino el moveEvent */
			if( positiveX + 2 > bound.width/2 )
				mouseUpHandler();
			if( positiveY + 2 > bound.height/2 )
				mouseUpHandler();
			/* si todo va bien aplico cambios a la escala, utilizo valores positivos para calcular el limite */
			var rate:Number = ( positiveX + positiveY) /2;
			var rateBound:Number = ((bound.width/2) + (bound.height/2)) /2; 
			var newScale:Number = SCALE_DOWN - ( rate * SCALE_DOWN) /rateBound;
			fondo.scaleX = newScale;
			fondo.scaleY = newScale;
			fondo.x = newX;
			fondo.y = newY;
			
			/* hay momentos cuando se superponen otros elementos y el mouseMove se pierde, para prevenir que el boton se quede bloqueado se llama el mouseUp */
			timeer.delay = 2000;
			timeer.removeEventListener( TimerEvent.TIMER, timerLimpiaMouseMoveHandler );
			timeer.addEventListener( TimerEvent.TIMER, timerLimpiaMouseMoveHandler, false, 0, true );
			timeer.start();
		}
		
		protected function mouseUpHandler( event:MouseEvent = null ):void
		{
			removeEventListener( MouseEvent.MOUSE_MOVE, mouseMoveHandler );
			
			var easerr:Elastic = new Elastic();
			fxMove.stop();
			fxMove.target = fondo;
			fxMove.duration = 600  * factorScale;
			fxMove.xTo = 0;
			fxMove.yTo = 0;
			fxMove.easer = easerr;
			fxMove.play();
			
			fxScale.stop();
			fxScale.target = fondo;
			fxScale.duration = 500  * factorScale;
			fxScale.scaleXTo = 1;
			fxScale.scaleYTo = 1;
			fxScale.easer = easerr;
			fxScale.play();
			/* la interaccion termino de modo normal sin que el circulo rebasara los limites de movimiento*/
			if( event != null )
				fxScale.addEventListener( EffectEvent.EFFECT_END, dispatchClickEvent, false, 0, true);
			else
				fondo.fill = colorNormal;
			
			hitRect.visible = false;
		}
		
		protected function dispatchClickEvent( event:EffectEvent ):void
		{
			dispatchEvent( new Event("localClickEvent", true) );
			/* aplico un retraso en el cambio de color para que se note la diferencia al momento de dar click */
			timeer.removeEventListener( TimerEvent.TIMER, timerHandler );
			timeer.delay = 100 * factorScale;
			timeer.addEventListener( TimerEvent.TIMER, timerHandler, false, 0, true );
			timeer.start();
		}
		
		protected function timerHandler( event:TimerEvent ):void
		{
			fondo.fill = colorNormal;
		}
		
		protected function crearPala( $pala:Rect, $rotation:Number ):void
		{
			var colorFill:SolidColor = new SolidColor( 0x191919 );
			$pala = new Rect();
			$pala.width = 15 * factorScale;
			$pala.height = 2 * factorScale;
			
			$pala.fill = colorFill;
			$pala.rotation = $rotation;
			$pala.horizontalCenter = 0;
			$pala.verticalCenter = 0;
			addElement( $pala );
		}
	}
}