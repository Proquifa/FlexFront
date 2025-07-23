package vista.componentes.comun
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.geom.Point;
	import flash.utils.Timer;
	import flash.utils.setTimeout;
	
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.primitives.Ellipse;
	import spark.primitives.Rect;
	
	public class LagIndicatorClass extends Group
	{
		
		private var dot:Rect;
		private var currDPI:int;
		
		public function LagIndicatorClass($width:int, $height:int,$currDPI:int)
		{
			super();
			
			this.width = $width;
			this.height = $height;
			currDPI = $currDPI;
			
			/*			var elipse:Ellipse = new Ellipse;
			elipse.percentWidth = 100;
			elipse.percentHeight = 100;
			//var fill:SolidColor = new SolidColor("0x666666",0.3);
			var fill:SolidColor = new SolidColor(0x00FF00,1);
			elipse.fill = fill;
			this.addElement(elipse);*/
			
			/*			var rec:Rect = new Rect;
			rec.percentWidth = 100;
			rec.percentHeight = 100;
			var fill:SolidColor = new SolidColor(0x00FF00,1);
			rec.fill = fill;
			addElement(rec);*/
			
			dot = new Rect;
			if(currDPI == 160)
			{
				dot.width = ($width/2)-0.5;
				dot.height = ($width/2)-0.5;
			}
			else if(currDPI == 240)
			{
				dot.width = ($width/2)-1;
				dot.height = ($width/2)-1;
			}
			
			/*dot.x= ($width/2) - (dot.width/2);
			dot.y= 0;*/
			
			//var filldot:SolidColor = new SolidColor(0xFDFD0F,1);
			var filldot:SolidColor = new SolidColor(0xFFFFFF,1);
			dot.fill = filldot;
			this.addElement(dot);
			
			this.addEventListener(Event.ADDED_TO_STAGE,LagIndicatorClass_ADDED_TO_STAGE_Handler,false,0,true);
			
			
			calcularValoresDeElipse();
		}
		
		private function LagIndicatorClass_ADDED_TO_STAGE_Handler(ev:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE,LagIndicatorClass_ADDED_TO_STAGE_Handler);
			
			var timmmer:Timer = new Timer(50); 
			
			timmmer.addEventListener( TimerEvent.TIMER, LagIndicatorClass_TIMER_Handler, false, 0, true );
			timmmer.start();
			
			//setTimeout(LagIndicatorClass_TIMER_Handler,500);
		}
		
		private var cuadrante1:Vector.<Point>;
		private var cuadrante2:Vector.<Point>;
		private var cuadrante3:Vector.<Point>;
		private var cuadrante4:Vector.<Point>;
		private var todosLosPuntos:Vector.<Point>;
		private var currentIndexPoint:int=-1;
		private var incrementosEnX:Vector.<Number>;
		private function calcularValoresDeElipse():void
		{
			cuadrante1 = new Vector.<Point>;
			cuadrante2 = new Vector.<Point>;
			cuadrante3 = new Vector.<Point>;
			cuadrante4 = new Vector.<Point>;
			todosLosPuntos = new Vector.<Point>;
			incrementosEnX = new Vector.<Number>;
			
			var incremento:Number;
			if(currDPI == 160)
				incremento = 0.2;
			else if(currDPI == 240)
				incremento = 1;
			
			var x:Number = 0;
			var a:Number = height/2;
			var b:Number = width/2;
			var y:Number = 0;
			
			var repetir:Boolean = true;
			
			while(repetir)
			{
				if(x == 0)
				{
					y = Math.sqrt(Math.pow(a,2)-((Math.pow(a,2)*Math.pow(x,2))/Math.pow(b,2)));
					cuadrante1.push(new Point(x,y));
					cuadrante3.push(new Point(-x,-y));
					x+=incremento;
				}
				else if( x < b)
				{
					y = Math.sqrt(Math.pow(a,2)-((Math.pow(a,2)*Math.pow(x,2))/Math.pow(b,2)));
					cuadrante1.push(new Point(x,y));
					cuadrante3.push(new Point(-x,-y));
					
					cuadrante2.unshift(new Point(x,-y));
					cuadrante4.unshift(new Point(-x,y));
					
					/*					if(currDPI == 160)
					{*/
					/*if(x > (a/3)*2)
					{
						x+=(incremento/7);
					}
					else if(x > (a/3))
					{
						x+=(incremento/3);
					}
					else 
					{
						x+=(incremento/2);
					}
					*/
					x+=incremento
					/*}
					else if(currDPI == 240)
					{
					if(x > (a/3)*2)
					{
					x+=(incremento/3.5);
					}
					else if(x > (a/3))
					{
					x+=(incremento/1.5);
					}
					else 
					{
					x+=(incremento/((1.5/3)*2));
					}
					}*/
					
				}
				else
				{
					x = b;
					y = Math.sqrt(Math.pow(a,2)-((Math.pow(a,2)*Math.pow(x,2))/Math.pow(b,2)));
					cuadrante2.unshift(new Point(x,-y));
					cuadrante4.unshift(new Point(-x,y));
					repetir = false;
				}
			}
			
			todosLosPuntos = cuadrante1.concat(cuadrante2,cuadrante3,cuadrante4);
			cuadrante1 = new Vector.<Point>;
			cuadrante2 = new Vector.<Point>;
			cuadrante3 = new Vector.<Point>;
			cuadrante4 = new Vector.<Point>;
		}
		
		
		protected function LagIndicatorClass_TIMER_Handler( event:TimerEvent ):void
		{
			if(currDPI == 160)
				dot.rotation += 10;
			else
				dot.rotation += 5;
			
			var currPoint:Point;
			var fix_X:Number = (this.width/2) - (dot.width/2);
			var fix_Y:Number = (this.height/2) - (dot.height/2);
			
			if(currentIndexPoint >= 0 )
			{
				currPoint = todosLosPuntos[currentIndexPoint];
				dot.setLayoutBoundsPosition(fix_X+currPoint.x,fix_Y+currPoint.y);
			}
			else
			{
				currentIndexPoint = todosLosPuntos.length-1;
				currPoint = todosLosPuntos[currentIndexPoint];
				dot.setLayoutBoundsPosition(fix_X+currPoint.x,fix_Y+currPoint.y);
			}
			currentIndexPoint--;
		}
		
		/*		private function LagIndicatorClass_TIMER_Handler():void
		{
		//dot.rotation += 5;
		var currPoint:Point;
		var fix_X:Number = (this.width/2) - (dot.width/2);
		var fix_Y:Number = (this.height/2) - (dot.height/2);
		if(currentIndexPoint < todosLosPuntos.length)
		{
		currPoint = todosLosPuntos[currentIndexPoint];
		dot.setLayoutBoundsPosition(fix_X+currPoint.x,fix_Y+currPoint.y);
		}
		else
		{
		currentIndexPoint = 0;
		currPoint = todosLosPuntos[currentIndexPoint];
		dot.setLayoutBoundsPosition(fix_X+currPoint.x,fix_Y+currPoint.y);
		}
		//trace(currPoint.x,currPoint.y);
		currentIndexPoint++;
		
		setTimeout(LagIndicatorClass_TIMER_Handler,50);
		}*/
	}
}