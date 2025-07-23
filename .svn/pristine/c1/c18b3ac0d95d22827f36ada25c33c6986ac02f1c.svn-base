package skins.botonesToggle.btnToggleEstados
{
	import mx.core.ILayoutElement;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutBotoneraReporteAHyM extends LayoutBase
	{
		private static var _instance:LayoutBotoneraReporteAHyM = null;
		private var _x:Number=0;
		private var _y:Number = 0;
		private var layoutTarget:GroupBase;
		private var count:int;
		
		
		public function LayoutBotoneraReporteAHyM()
		{
			//TODO: implement function
			super();
		}
		
		override public function measure():void{
			super.measure();
			
/*			When implementing this method, you must set the target's measuredWidth and measuredHeight properties to define the target's default size. You may optionally set the measuredMinWidth and 
			measuredMinHeight properties to define the default minimum size. A typical implementation iterates through the target's elements and uses the methods defined by the ILayoutElement to accumulate ' +
				'the preferred and/or minimum sizes of the elements and then sets the target's measuredWidth, measuredHeight, measuredMinWidth and measuredMinHeight.*/
			
			layoutTarget = target;
			count = layoutTarget.numElements;
			
			layoutTarget.measuredMinHeight = 257;
			layoutTarget.measuredMinWidth = 280;
			layoutTarget.measuredHeight = 278;
			layoutTarget.measuredWidth = 294;

		}
		
		public static function getInstance():LayoutBotoneraReporteAHyM{
			if(_instance ==null)
				_instance = new LayoutBotoneraReporteAHyM();
			return _instance;
		}
		
		[Inspectable(category="Common",defaultValue="92")]
		public var minWidthElement:Number;
		[Inspectable(category="Common")]
		public var paddingTop:Number =0;
		
		
		private var _minGap:uint;
		
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			layoutTarget = target;
			count = layoutTarget.numElements;
			var currentElement:ILayoutElement;
			var gap:Number = ($containerWidth -(minWidthElement*3))/2;
			
			_x= 0;
			if(paddingTop!=0){
				_y = paddingTop;
			}else{
				_y=0;
			}
			
			if(gap<_minGap)
				gap = _minGap;
			
			
			
			if(count==0)
				return;
			
			for (var i:int = 0; i < count; i++) 
			{
				currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
				
				if(i <3){
					currentElement.setLayoutBoundsSize(minWidthElement,getMinHeightEkenent((currentElement as botonReporteAHyM).tipoBoton,gap));
					currentElement.setLayoutBoundsPosition(_x,_y);
					_x+= currentElement.getLayoutBoundsWidth()+gap;
					
					if(i==2){
						_x=0;
						_y += currentElement.getLayoutBoundsHeight()+gap;
					}
				}else if(i<5){
					currentElement.setLayoutBoundsSize(minWidthElement,getMinHeightEkenent((currentElement as botonReporteAHyM).tipoBoton));
					currentElement.setLayoutBoundsPosition(_x,_y);
					_x+= currentElement.getLayoutBoundsWidth()*2+gap*2;
					
					if(i==4){
						_x=0;
						_y += currentElement.getLayoutBoundsHeight()+gap;
					}
					
				}else if(i<8){
					currentElement.setLayoutBoundsSize(minWidthElement,getMinHeightEkenent((currentElement as botonReporteAHyM).tipoBoton,gap));
					currentElement.setLayoutBoundsPosition(_x,_y);
					_x+= currentElement.getLayoutBoundsWidth()+gap;
					
					if(i==7){
						_x=0;
						_y += currentElement.getLayoutBoundsHeight()+gap;
					}
				}else{
					currentElement.setLayoutBoundsSize(minWidthElement,getMinHeightEkenent((currentElement as botonReporteAHyM).tipoBoton));
					currentElement.setLayoutBoundsPosition(_x,_y);
					_x+= currentElement.getLayoutBoundsWidth()*2+gap*2;
				}
			}
			layoutTarget.setActualSize($containerWidth,_y +32+gap)	
				
		}
		
		
		
		[Inspectable(category="Common",defaultValue="2")]
		public function get minGap():uint
		{
			return _minGap;
		}
		
		public function set minGap(value:uint):void
		{
			_minGap = value;
		}
		
		private function getMinHeightEkenent($tipoBoton:String,$gap:int=-1):int
		{
			var height:int;
			if($gap ==-1)
				$gap = _minGap;
			
			if( $tipoBoton == "pasado" || $tipoBoton == "futuro" ) height = 32;
			else if( $tipoBoton == "ayer" ||  $tipoBoton == "manana" ) height = 94;
			else if( $tipoBoton == "antier" || $tipoBoton == "pasadomanana" ) height = 72;
			else if( $tipoBoton == "anteantier" || $tipoBoton == "pospasado" ) height = 53;
			else if( $tipoBoton == "hoy" )	height = 166 + $gap;
			else if( $tipoBoton == "todo") height = 85 +$gap;
			
			return height;
		}
	}
}