package skins.layouts
{
	import mx.core.ILayoutElement;
	
	import skins.skin.botones.buttonImagen.buttonImagenDefaultPQNet;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutContenedorGraficas extends LayoutBase
	{
		
		private var layoutTarget:GroupBase;
		private var count:int;
		private var _mostrarBotonRegresar:Boolean;
		
		public function LayoutContenedorGraficas()
		{
			super();
		}
		
		
		override public function measure():void
		{
			super.measure();
			
			layoutTarget = target;
			count = layoutTarget.numElements;
		}
		
		
		override public function updateDisplayList($width:Number, $height:Number):void
		{
			super.updateDisplayList($width,$height);
			
			var currentElement:ILayoutElement;
			var y:Number;
			var i:int;
			if($width && $width > 0 && $height && $height > 0)
			{
				if(_mostrarBotonRegresar)
				{
					y=0;
					for (i = 0; i < count; i++) 
					{
						currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i):layoutTarget.getElementAt(i);
						
						if(count == 2)
						{
							if(i == 0)
							{
								currentElement.setLayoutBoundsSize($width,$width);
								y = (($height/2)-(currentElement.getLayoutBoundsHeight()/2));
								currentElement.setLayoutBoundsPosition(0,y);
								y += currentElement.getLayoutBoundsHeight()-10;
							}
							else
							{
								var espacioSobrante:Number = $height - y;
								var tempHeight:Number;
								var tempWidth:Number;
								if(currentElement is buttonImagenDefaultPQNet)
								{
									tempHeight = ((currentElement as buttonImagenDefaultPQNet).measuredHeight /2);
									tempWidth = ((currentElement as buttonImagenDefaultPQNet).measuredWidth /2);
								}
								else
								{
									tempHeight = currentElement.getLayoutBoundsHeight();
									tempWidth = currentElement.getLayoutBoundsWidth();
								}
								
								y += ((espacioSobrante/2)-tempHeight);
								currentElement.setLayoutBoundsPosition(($width/2) - tempWidth,y);
							}
						}
					}
				}
				else
				{
					for (i = 0; i < count; i++) 
					{
						currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i):layoutTarget.getElementAt(i);
						
						if(i == 0)
						{
							currentElement.setLayoutBoundsSize($width,$width);
							y = (($height/2)-(currentElement.getLayoutBoundsHeight()/2));
							currentElement.setLayoutBoundsPosition(0,y);	
							y += currentElement.getLayoutBoundsHeight();
						}
					}
				}
			}
		}
		
		public function get mostrarBotonRegresar():Boolean
		{
			return _mostrarBotonRegresar;
		}
		
		public function set mostrarBotonRegresar(value:Boolean):void
		{
			_mostrarBotonRegresar = value;
		}
		
	}
}