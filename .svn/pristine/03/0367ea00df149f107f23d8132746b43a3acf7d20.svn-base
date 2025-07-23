package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.proveedores.generales
{
	import flash.text.TextLineMetrics;
	
	import mx.core.ILayoutElement;
	import mx.core.IVisualElement;
	
	import skins.skin.label.TextoGris;
	
	import spark.components.Label;
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutComunicacionCuadroContactoCatProveedores extends LayoutBase
	{
		private var layoutTarget:GroupBase;
		private var count:int;
		
		public function LayoutComunicacionCuadroContactoCatProveedores()
		{
			super();
		}
		private var currentElement:ILayoutElement;
		private var maxElementWitdh:Number = 0;
		private var currentElementWithMaxWith:Number;
		
		/*			private var anchoDelPrimerGrupo:Number = 0;
		private var altoLabel:Number = 0;
		
		private var elementsAreVisibles:Array;
		private var numFilas:uint;*/
		
		override public function measure():void
		{
			layoutTarget = target;
			count = layoutTarget.numElements;
			
			super.measure();
		}
		
		//		override public function measure():void{
		//			super.measure();
		//			
		//			layoutTarget = target;
		//			count = layoutTarget.numElements;
		//			elementsAreVisibles = new Array;
		//			
		//			
		//			for (var i:int = 0; i < count; i++) 
		//			{
		//				currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
		//				
		//				if((currentElement as IVisualElement).visible){
		//					
		//					elementsAreVisibles.push(i);
		//					
		//					var measureSize:TextLineMetrics = (currentElement as TextoGris).measureText((currentElement as TextoGris).text);
		//					altoLabel = measureSize.height;
		//					
		//					if(maxElementWitdh < measureSize.width)
		//						maxElementWitdh = measureSize.width;
		//					
		//					if(i == 0 || i%2 == 0){
		//						if(anchoDelPrimerGrupo < measureSize.width)
		//							anchoDelPrimerGrupo = measureSize.width+2;
		//					}
		//				}
		//			}
		//			
		//			count = elementsAreVisibles.length;
		//			numFilas = count/2;
		//			
		//			//trace(maxElementWitdh);
		//			//trace(anchoDelPrimerGrupo);
		//		}
		
		
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
			
			/*		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			
			if(count == 0 )
			return;
			
			
			var xGen:Number = 0;
			var yGen:Number = 0;
			
			
			//sacar el ancho máximo
			
			var xIniStaticLabels:Number;
			var yIniStaticLabels:Number;
			
			var xIniDinamicLabels:Number;
			var yIniDinamicLabels:Number;
			
			var widthDinamicLabels:Number=0;
			var anchoARepartir:Number = 0;
			
			if($containerWidth > 0){
			
			var anchoAOcupar:Number = $containerWidth-10;
			
			yIniDinamicLabels = yIniStaticLabels = $containerHeight - (numFilas * altoLabel);
			
			if(anchoAOcupar < (anchoDelPrimerGrupo + 3 + maxElementWitdh) ){
			
			xIniStaticLabels = 5;
			xIniDinamicLabels = anchoDelPrimerGrupo + 3;
			
			for (var i:int = 0; i < count; i++) 
			{
			currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(elementsAreVisibles[i]): layoutTarget.getElementAt(elementsAreVisibles[i]);
			
			if(i == 0 || i%2 == 0){
			
			//trace(currentElement.getLayoutBoundsWidth() +"x"+currentElement.getLayoutBoundsHeight());
			
			currentElement.setLayoutBoundsSize(anchoDelPrimerGrupo,altoLabel);
			currentElement.setLayoutBoundsPosition(xIniStaticLabels,yIniStaticLabels);
			
			
			yIniStaticLabels += altoLabel;
			}else{
			
			widthDinamicLabels = anchoAOcupar - (anchoDelPrimerGrupo + 3);
			
			//trace(currentElement.getLayoutBoundsWidth() +"x"+currentElement.getLayoutBoundsHeight());
			currentElement.setLayoutBoundsSize(widthDinamicLabels,altoLabel);
			currentElement.setLayoutBoundsPosition(xIniDinamicLabels,yIniDinamicLabels);
			
			yIniDinamicLabels += altoLabel;
			
			}
			}
			}//fin del caso cuando sobrepase el tamaño del box
			else{
			
			xIniDinamicLabels = anchoDelPrimerGrupo + 3;
			
			anchoARepartir = $containerWidth - (anchoDelPrimerGrupo + 3 + maxElementWitdh);
			
			for (i = 0; i < count; i++) 
			{
			currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(elementsAreVisibles[i]): layoutTarget.getElementAt(elementsAreVisibles[i]);
			
			if(i == 0 || i%2 == 0){
			
			//trace(currentElement.getLayoutBoundsWidth() +"x"+currentElement.getLayoutBoundsHeight());
			
			currentElement.setLayoutBoundsSize(anchoDelPrimerGrupo,altoLabel);
			currentElement.setLayoutBoundsPosition(anchoARepartir/2,yIniStaticLabels);
			
			yIniStaticLabels += altoLabel;
			}else{
			
			//trace(currentElement.getLayoutBoundsWidth() +"x"+currentElement.getLayoutBoundsHeight());
			currentElement.setLayoutBoundsSize((maxElementWitdh+(anchoARepartir/3)),altoLabel);
			currentElement.setLayoutBoundsPosition((xIniDinamicLabels + anchoARepartir/2),yIniDinamicLabels);
			
			yIniDinamicLabels += altoLabel;
			}
			}
			}
			}
			}*/
		}
	}
}