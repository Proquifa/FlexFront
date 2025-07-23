package mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.ventasDelPeriodo.analisisDeVentas.medios
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.tableros.clientes.componentes.ventasDelPeriodo.analisisDeVentas.VistaDefaultAnalisisVentas;
	import mx.core.ILayoutElement;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	
	[Event(name="terminoDeAsignarTamaniosAlosComponentesLayoutMediosEsac", type="flash.events.Event")]
	public class LayoutMediosEsac extends LayoutBase
	{
		public function LayoutMediosEsac()
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
			parent = (target.parent as GroupBase).document as VistaDefaultAnalisisVentas;
			
		}
		
		
		private var ultimoWidth:Number = 0;
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void
		{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			if(count==0)
				return;
			
			var currentElement:ILayoutElement;
			
			if($containerWidth > 300 )
			{
				for (var i:int = 0; i < count; i++) 
				{
					currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
					
					currentElement.setLayoutBoundsSize($containerWidth,$containerHeight);
				}
				
				dispatchEvent(new Event("terminoDeAsignarTamaniosAlosComponentesLayoutMediosEsac"));
			}
		}
	}
}