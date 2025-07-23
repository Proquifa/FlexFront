package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.proveedores.comerciales.oferta
{
	import mx.core.ILayoutElement;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class layoutPanelFactoresPrecioLista extends LayoutBase
	{
		
		private var layoutTarget:GroupBase; 
		private var elementsCount:Number;
		
		private var minWidth:Number;
		
		public function layoutPanelFactoresPrecioLista()
		{
			super();
			useVirtualLayout = true;
		}
		
		
		override public function measure():void
		{
			super.measure();
			
			layoutTarget = target;
			elementsCount = layoutTarget.numElements;
			
		}
		
		
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void
		{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			var currentElement:ILayoutElement;
			
			
			for (var i:int = 0; i < elementsCount; i++) 
			{
				currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
				currentElement.setLayoutBoundsSize($containerWidth,$containerHeight);
				
				currentElement.setLayoutBoundsPosition(currentElement.getLayoutBoundsWidth() * i,0);
			}
			
		}
	}
}