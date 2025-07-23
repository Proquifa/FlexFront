package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.ventasDelPeriodo.analisisDeVentas
{
	import mx.core.ILayoutElement;
	import mx.core.IUIComponent;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutVistaDefaultAnalisisVentas extends LayoutBase
	{
		public function LayoutVistaDefaultAnalisisVentas()
		{
			super();
		}
		
		private var layoutTarget:GroupBase;
		private var count:int;
		private var parent:VistaDefaultAnalisisVentas;
		private var _percentWidthParaMostrarGraficas:int = 30;
		private var widthCalculado:Number;
		
		override public function measure():void
		{
			super.measure();
			
			layoutTarget = target;
			count = layoutTarget.numElements;
			
			parent = target as VistaDefaultAnalisisVentas;
		}
		
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void
		{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			if(count==0)
				return;
			
			var currentElement:ILayoutElement;
			var currentX:Number = 0;
			
			if($containerWidth >0 )
			{
				
				widthCalculado = ($containerWidth * (percentWidthParaMostrarGraficas/100))
				
				for (var i:int = 0; i < count; i++)
				{
					currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
					
					switch(GroupBase(currentElement).id)
					{
						case "grpTodosGridGrafica":
						{
							if(parent.showGraficos)
								currentElement.setLayoutBoundsSize($containerWidth - widthCalculado,$containerHeight);
							else
								currentElement.setLayoutBoundsSize($containerWidth,$containerHeight);
							
							currentElement.setLayoutBoundsPosition(0,0);
							currentX = currentElement.getLayoutBoundsWidth();
							break;
						}
						case "grpTabMenu":
						{
							currentElement.setLayoutBoundsSize(0,$containerHeight);
							currentElement.setLayoutBoundsPosition(currentX,0);
							break;
						}
						case "grpGraficasVistaDerecha":
						{
							if(parent.showGraficos)
							{
								(currentElement as GroupBase).visible = true;
								currentElement.setLayoutBoundsSize(widthCalculado,$containerHeight);
							}
							else
							{
								(currentElement as GroupBase).visible = false;
								currentElement.setLayoutBoundsSize(0,0);
							}
							
							currentElement.setLayoutBoundsPosition(currentX,0);
							
							break;
						}
					}
				}
			}
		}
		
		public function get percentWidthParaMostrarGraficas():int
		{
			return _percentWidthParaMostrarGraficas;
		}
		
		public function set percentWidthParaMostrarGraficas(value:int):void
		{
			_percentWidthParaMostrarGraficas = value;
		}
	}
}