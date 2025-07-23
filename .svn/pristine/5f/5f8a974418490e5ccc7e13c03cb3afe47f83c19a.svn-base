package skins.botonesToggle.btnToggleEstados
{
	import mx.core.ILayoutElement;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutBotoneraTiempoEntrega extends LayoutBase
	{
		private static var _instance:LayoutBotoneraTiempoEntrega = null;
		private var _x:Number=0;
		private var _y:Number = 0;
		private var layoutTarget:GroupBase;
		private var count:int;
		private var gapHorizontal:Number=0;
		private var gapVertical:Number=0;
		
		public function LayoutBotoneraTiempoEntrega()
		{
			super();
		}
		
		override public function measure():void
		{
			super.measure();
			
			layoutTarget = target;
			count = layoutTarget.numElements;
			
			layoutTarget.measuredMinHeight = 257;
			layoutTarget.measuredMinWidth = 280;
			layoutTarget.measuredHeight = 278;
			layoutTarget.measuredWidth = 294;
			
		}
		
		public static function getInstance():LayoutBotoneraTiempoEntrega{
			if(_instance ==null)
				_instance = new LayoutBotoneraTiempoEntrega();
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
			var idElement:String;
			_x= 0;
			_y=0;
			gapHorizontal = (_minGap / 644) * $containerWidth;
			gapVertical = (_minGap / 250) * $containerWidth;
			
			
			
			if(count==0)
				return;
			
			for (var i:int = 0; i < count; i++) 
			{
				currentElement = useVirtualLayout? layoutTarget.getVirtualElementAt(i) : layoutTarget.getElementAt(i);
				idElement = (currentElement as GroupBase).id;
				
				switch(idElement)
				{
					case "btn0":
					{
						currentElement.setLayoutBoundsSize($containerWidth*.28,$containerHeight+(_minGap*2));
						currentElement.setLayoutBoundsPosition(_x,_y);
						_x = (currentElement.getLayoutBoundsWidth()) +( $containerWidth*.003) + _minGap;
						break;
					}
					case "btn2":
					{
						currentElement.setLayoutBoundsSize($containerWidth*.357,($containerHeight*.496)+(_minGap/2));
						currentElement.setLayoutBoundsPosition(_x,_y);
						_y = currentElement.getLayoutBoundsHeight() + $containerHeight*.008 + _minGap;
						
						break;
					}
					case "btn1":
					{
						currentElement.setLayoutBoundsSize($containerWidth*.357,($containerHeight*.496)+(_minGap/2));
						currentElement.setLayoutBoundsPosition(_x,_y);
						_y = 0;
						_x = ($containerWidth*.637) + ($containerWidth*.003 + _minGap)*2;
						
						break;
					}
					case "btn4":
					{
						currentElement.setLayoutBoundsSize($containerWidth*.357,$containerHeight*.328);
						currentElement.setLayoutBoundsPosition(_x,_y);
						_y = currentElement.getLayoutBoundsHeight() + $containerHeight*.008 + _minGap;
						
						break;
					}
					case "btn3":
					{
						currentElement.setLayoutBoundsSize($containerWidth*.357,$containerHeight*.328);
						currentElement.setLayoutBoundsPosition(_x,_y);
						_y = currentElement.getLayoutBoundsHeight()*2 + ($containerHeight*.008 + _minGap)*2;
						
						break;
					}
					case "btn5":
					{
						currentElement.setLayoutBoundsSize($containerWidth*.357,$containerHeight*.328);
						currentElement.setLayoutBoundsPosition(_x,_y);
						
						break;
					}
				}
			}
			
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
		
	}
}