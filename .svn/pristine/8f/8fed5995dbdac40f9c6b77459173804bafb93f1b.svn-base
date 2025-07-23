package mx.com.proquifa.proquifanet.rsl.vista.vistas.componentes.pq
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import flashx.textLayout.events.SelectionEvent;
	
	import mx.effects.AnimateProperty;
	import mx.effects.easing.Sine;
	import mx.events.FlexEvent;
	import mx.events.PropertyChangeEvent;
	import mx.events.ScrollEvent;
	
	import spark.components.List;
	import spark.effects.Animate;
	import spark.effects.animation.MotionPath;
	import spark.effects.animation.SimpleMotionPath;
	import spark.events.IndexChangeEvent;
	
	public class ListPq extends List
	{
		public function ListPq()
		{
			super();
			percentWidth = 100;
			percentHeight = 100;
			setStyle('horizontalScrollPolicy', 'off');
			setStyle('borderVisible', 'false');
			addEventListener( IndexChangeEvent.CHANGING, indexChanging);
			addEventListener( IndexChangeEvent.CHANGE, indexChange);
			addEventListener( IndexChangeEvent.CARET_CHANGE, caretChange);
			
			// FIXME revisar scrolling animation
			//addEventListener( FlexEvent.CREATION_COMPLETE, completeHandler );
		}
		
		protected function completeHandler( event:FlexEvent ):void{
				//_animate.target = scroller.verticalScrollBar;
				scroller.verticalScrollBar.addEventListener( Event.CHANGE, propertyChangeHandler);
		}
		
		private var lastValue:Number = 0;
		
		protected function propertyChangeHandler( event:Event ):void{
				//event.preventDefault();
				trace( '* Value: ' + event.currentTarget.value.toString() + ' lastVAll: ' + lastValue.toString() );
				//if( _animate.isPlaying ){
					/*_animate.stop();
					//_animate = new Animate();
					//_animate.duration = 700;
				_smp.valueTo = event.currentTarget.value;
				_smp.property = "value";
				var vtors:Vector.<MotionPath> = new Vector.<MotionPath>;
				vtors.push( _smp );
				//_animate.duration = 700;
				//_animate.target = event.currentTarget;
				//_animate.reverse();
				_animate.motionPaths = vtors;
				_animate.play();*/
				/*var animateProperty:AnimateProperty = new AnimateProperty( event.currentTarget );
				animateProperty.property = "value";
				animateProperty.toValue = event.currentTarget.value;
				animateProperty.duration = 450;
				animateProperty.easingFunction = Sine.easeOut;
				animateProperty.play(); */
		}
		
		private var _smp:SimpleMotionPath = new SimpleMotionPath();
		private var _animate:Animate = new Animate();
		
		/*protected function animateScroll( event:Event ):void{
			event.preventDefault();
			if( _animate.isPlaying ){
				_animate.stop();
				_animate = new Animate();
				_animate.duration = 700;
				_animate.target = event.currentTarget;
			}
			_smp.valueFrom = lastValue;
			_smp.valueTo = event.currentTarget.value;
			//_smp.valueBy = event.currentTarget.value - lastValue;
			lastValue = Number( event.currentTarget.value );
			_smp.property = "value";
			var vtors:Vector.<MotionPath> = new Vector.<MotionPath>;
			vtors.push( _smp );
			_animate.duration = 700;
			_animate.target = event.currentTarget;
			_animate.motionPaths = vtors;
			_animate.play();
		}*/
		
		private function indexChanging( event:IndexChangeEvent ):void{
				var currentItem:* = event.newIndex == -1 ? null : dataProvider.getItemAt( event.newIndex );
				if( currentItem != null && currentItem.hasOwnProperty("ultimo") 
					&& currentItem.ultimo != "" )
					event.preventDefault();
		}
		private function indexChange( event:IndexChangeEvent ):void{
				var currentItem:* = event.newIndex == -1 ? null : dataProvider.getItemAt( event.newIndex );
				if( currentItem != null && currentItem.hasOwnProperty("ultimo") 
					&& currentItem.ultimo != "" )
					event.preventDefault();
		}
		private function caretChange( event:IndexChangeEvent ):void{
				var currentItem:* = event.newIndex == -1 ? null : dataProvider.getItemAt( event.newIndex );
				if( currentItem != null && currentItem.hasOwnProperty("ultimo") 
					&& currentItem.ultimo != "" )
					event.preventDefault();
		}
	}
}