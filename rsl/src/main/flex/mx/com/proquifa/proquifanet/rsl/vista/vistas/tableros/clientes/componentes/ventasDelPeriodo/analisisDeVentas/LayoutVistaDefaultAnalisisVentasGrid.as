package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.ventasDelPeriodo.analisisDeVentas
{
	import flash.events.Event;
	
	import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
	import mx.core.ILayoutElement;
	import mx.core.IUIComponent;
	
	import skins.skin.AdvancedDataGrid.gridConTotales.advancedDataGridConTotales;
	
	import spark.components.VGroup;
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	
	[Event(name="haTerminadoDeHacerELLayoutComprobarAhoraLosGrids", type="flash.events.Event")]
	public class LayoutVistaDefaultAnalisisVentasGrid extends LayoutBase
	{
		public function LayoutVistaDefaultAnalisisVentasGrid()
		{
			super();
		}
		
		private var layoutTarget:GroupBase;
		private var count:int;
		
		private var parent:VistaDefaultAnalisisVentas;
		
		override public function measure():void
		{
			super.measure();
			
			layoutTarget = target;
			count = layoutTarget.numElements;
			
		/*	var maxWidth:Number = 0;
			var currentElement:IUIComponent;
			for (var i:int = 0; i < count; i++) 
			{
				currentElement = (useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i)) as IUIComponent;
				
				if(currentElement.getExplicitOrMeasuredWidth() > maxWidth)
				{
					maxWidth = currentElement.getExplicitOrMeasuredWidth();
				}
				
				if(currentElement.width > maxWidth)
				{
					maxWidth = currentElement.width;
				}
				
				trace(maxWidth);
				
			}*/
			
			parent = (target.parent as GroupBase).document as VistaDefaultAnalisisVentas;
/*			target.measuredMinWidth = maxWidth; 
			target.measuredWidth = maxWidth;*/
			
		}
		
		
		private var ultimoWidth:Number = 0;
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void
		{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			if(count==0)
				return;
			
			var currentElement:ILayoutElement;
			
			var gridExtendido:advancedDataGridConTotales;
			var gridReducido:advancedDataGridConTotales;
			
			if($containerWidth >0 )
			{
				var currentY:Number = 0;
				
				for (var i:int = 0; i < count; i++)
				{
					currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
					
					switch(GroupBase(currentElement).id)
					{
						case "adgResumenVentas":
						{
							gridExtendido = currentElement as advancedDataGridConTotales;
							
							if(!parent.showGraficos)
							{
								gridExtendido.visible = true;
							}
							else
							{
								gridExtendido.visible = false;
							}
							
							currentY = ($containerHeight - gridExtendido.explicitHeight);
							gridExtendido.setLayoutBoundsSize($containerWidth,gridExtendido.explicitHeight);
							gridExtendido.setLayoutBoundsPosition(0,($containerHeight - gridExtendido.explicitHeight));
							
							break;
						}
						case "adgResumenVentasReducido":
						{
							gridReducido = currentElement as advancedDataGridConTotales;
							
							if(parent.showGraficos)
							{
								gridReducido.visible = true;
								
							}
							else
							{
								gridReducido.visible = false;
							}
							
							currentY = ($containerHeight - gridReducido.explicitHeight);
							gridReducido.setLayoutBoundsSize($containerWidth,gridReducido.explicitHeight);
							gridReducido.setLayoutBoundsPosition(0,($containerHeight - gridReducido.explicitHeight));
							break;
						}
						case "grpGraficaPrincipal":
						{
							var alturaDelGrid:Number;
							if(parent.showGraficos)
							{
								alturaDelGrid = gridReducido.explicitHeight;
							}
							else
							{
								alturaDelGrid = gridExtendido.explicitHeight;
							}
							
							currentElement.setLayoutBoundsSize($containerWidth,($containerHeight - alturaDelGrid));
							
							if($containerHeight < 600)
							{
								(currentElement as VGroup).paddingTop = 0;
								(currentElement as VGroup).paddingBottom = 0;
							}
							else
							{
								(currentElement as VGroup).paddingTop = 30;
								(currentElement as VGroup).paddingBottom = 30;
							}
							
							currentElement.setLayoutBoundsPosition(0,0);
							
							break;
						}
					}
				}
				
				dispatchEvent(new Event("haTerminadoDeHacerELLayoutComprobarAhoraLosGrids"));
				
			}
		}
		
		public function resizeColumns ($grid:advancedDataGridConTotales) : void
		{
			$grid.validateNow();
		}
	}
}