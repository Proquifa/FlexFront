package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.clientes.generales
{
	import mx.core.ILayoutElement;
	
	import spark.components.Label;
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutComunicacionCuadroContactoCatClientes extends LayoutBase
	{
		private var layoutTarget:GroupBase;
		private var count:int;
		
		public function LayoutComunicacionCuadroContactoCatClientes()
		{
			super();
		}
		
		private var currentElement:ILayoutElement;
		private var maxElementWitdh:Number = 0;
		private var currentElementWithMaxWith:Number;
		
		override public function measure():void
		{
			layoutTarget = target;
			count = layoutTarget.numElements;
			
			super.measure();
		}
		
		
		
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void
		{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			
			if(count == 0 )
				return;
			
			
			var xGen:Number = 0;
			var yGen:Number = 10;
			
			if($containerWidth > 0)
			{
				
				for (var j:uint = 0; j < count; j++) 
				{
					currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
					
					if(maxElementWitdh < Label(currentElement).measuredWidth)
					{
						maxElementWitdh = Label(currentElement).measuredWidth;
						currentElementWithMaxWith = i;
						/*trace("====================================================== ",maxElementWitdh);*/
					}
				}
				
				var anchoAOcupar:Number = $containerWidth-10;
				var i:int;
				if(maxElementWitdh > anchoAOcupar)
				{
					for (i = 0; i < count; i++) 
					{
						currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
						currentElement.setLayoutBoundsSize(anchoAOcupar,Label(currentElement).measuredHeight);
						currentElement.setLayoutBoundsPosition(5,(i * 16) + yGen );
					}
				}
				else
				{
					xGen = (anchoAOcupar - maxElementWitdh)/2;
					
					for (i = 0; i < count; i++) 
					{
						
						currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
						currentElement.setLayoutBoundsSize(maxElementWitdh,Label(currentElement).measuredHeight);
						currentElement.setLayoutBoundsPosition(xGen+5,(i * 16) + yGen );
					}
				}
			}
		}
	}
}