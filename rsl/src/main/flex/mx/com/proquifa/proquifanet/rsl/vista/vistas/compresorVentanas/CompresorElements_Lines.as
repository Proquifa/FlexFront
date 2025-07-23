package mx.com.proquifa.proquifanet.rsl.vista.vistas.compresorVentanas
{
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.CompresorVentanas_asistente;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.compresorVentanas.GroupItemCompresor;
	import mx.core.ILayoutElement;
	import mx.core.IVisualElement;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class CompresorElements_Lines extends LayoutBase
	{
		public function CompresorElements_Lines()
		{
			super();
		}
		private var _panelWidth:Number;
		private var _layoutTarget:GroupBase;
		private var _compresor:CompresorVentanas_asistente;
		private var _factorCrecimiento:Number;
		
		override public function updateDisplayList(containerWidth:Number, containerHeight:Number):void{
			super.updateDisplayList(containerWidth,containerHeight);
			
			var currentElement:ILayoutElement;
			var elementInMaxi:ILayoutElement;
			_layoutTarget = target;
			var count:int = _layoutTarget.numElements;
			var x:Number=0;
			_panelWidth = containerWidth/int((count-3)/2);
			var yflecha:Number= containerHeight/2;
			_compresor = _layoutTarget as CompresorVentanas_asistente;
			var minWidth:Number;
			var widthInCrechendo:Number;
			
			if(_compresor.isPlayingAnimation){
				elementInMaxi = useVirtualLayout ? _layoutTarget.getVirtualElementAt(_compresor.currentMaximixed):_layoutTarget.getElementAt(_compresor.currentMaximixed);
				widthInCrechendo = elementInMaxi.getLayoutBoundsWidth();
				minWidth = ((containerWidth - widthInCrechendo)/(int((count-3)/2)-1));
			}
			
			for (var i:int = 0; i < count; i++) 
			{
				currentElement = useVirtualLayout ? _layoutTarget.getVirtualElementAt(i):_layoutTarget.getElementAt(i);
				
				if((currentElement as GroupItemCompresor).tipoComponente =="Panel")
				{
					if(_compresor.isOneMaximixed){
						if(i == _compresor.currentMaximixed){
							if(_compresor.isPlayingAnimation)
								currentElement.setLayoutBoundsSize(currentElement.getLayoutBoundsWidth(),containerHeight);
							else
								currentElement.setLayoutBoundsSize((_panelWidth+(_panelWidth*factorCrecimiento)),containerHeight);
						}else{
							if(_compresor.isPlayingAnimation)
								currentElement.setLayoutBoundsSize(minWidth,containerHeight);
							else
								currentElement.setLayoutBoundsSize(((containerWidth - (_panelWidth+(_panelWidth*factorCrecimiento)))/(int((count-3)/2)-1)),containerHeight);
						}
						currentElement.setLayoutBoundsPosition(x,0);
						x+= currentElement.getLayoutBoundsWidth();
						(currentElement as IVisualElement).depth = -10 -(i);
					}else{
						currentElement.setLayoutBoundsPosition(x,0);
						currentElement.setLayoutBoundsSize(_panelWidth,containerHeight);
						x+= currentElement.getLayoutBoundsWidth();
						(currentElement as IVisualElement).depth = -10 -(i);
					}
				}
				else if((currentElement as GroupItemCompresor).tipoComponente =="division")
				{
					currentElement.setLayoutBoundsPosition(x,0);
					currentElement.setLayoutBoundsSize(0,containerHeight);
				}
				else
				{
					yflecha -=35;
					currentElement.setLayoutBoundsPosition(x,yflecha);
				}
			}
		}
		
		public function get panelWidth():Number
		{
			return _panelWidth;
		}
		
		public function set panelWidth(value:Number):void
		{
			_panelWidth = value;
		}
		
		public function get factorCrecimiento():Number
		{
			return _factorCrecimiento;
		}
		
		public function set factorCrecimiento(value:Number):void
		{
			_factorCrecimiento = (value / 100);
		}
		
	}
}