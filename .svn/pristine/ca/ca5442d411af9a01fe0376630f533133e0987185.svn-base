package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.agenteAduanal.itemRenderer.empresaGeneral
{
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.agenteAduanal.generales.AgenteCuadradoContacto;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.agenteAduanal.generales.AgentePanelContactoAnimado;
	import mx.core.ILayoutElement;
	
	import spark.components.Group;
	import spark.components.List;
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutAgenteFilaBottonPanelContactos extends LayoutBase
	{
		private var _x:Number=0;
		private var _y:Number = 0;
		private var layoutTarget:GroupBase;
		private var count:int;
		private var parent:Object;
		private var currentElement:ILayoutElement;
		private var numCubosXfilaFromParent:uint;
		
		private var gap:uint = 20;
		private var _anchoParaItem:Number;
		
		override public function measure():void{
			super.measure();
			
			layoutTarget = target;
			count = layoutTarget.numElements;
			
			if(count > 0){
				parent = ((((target as Group).automationOwner as ItemRendererAgentePanelContactosAnimado).automationOwner as List).automationOwner);
				if(parent != null && parent.hasOwnProperty("currentCubosPorFila"))
					numCubosXfilaFromParent = (parent as AgentePanelContactoAnimado).currentCubosPorFila;
			}
		}
		
		public function LayoutAgenteFilaBottonPanelContactos()
		{
			super();
		}
		
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			if(count==0)
				return;
			
			var currentElement:ILayoutElement;
			var gapHorizontalRecalculado:Number;
			var gapVerticalRecalculado:Number;
			
			if($containerWidth >0 ){
				
				var anchoAOcupar:Number = $containerWidth-10;
				var altoTotalPorEspacio:Number = $containerHeight - 5;
				var anchoTotalPorEspacio:Number;
				
				var anchoItem2:Number;
				var miniGap:Number = 7;
				
				gapHorizontalRecalculado = (anchoAOcupar - (altoTotalPorEspacio * numCubosXfilaFromParent))/(numCubosXfilaFromParent-1);
				
				if(gapHorizontalRecalculado > 0 && gapHorizontalRecalculado < miniGap){
					gapHorizontalRecalculado = miniGap;
				}else if(gapHorizontalRecalculado > miniGap){
					anchoParaItem  = altoTotalPorEspacio;
				}else if(gapHorizontalRecalculado < 0 ){
					anchoParaItem = (altoTotalPorEspacio -(( (-1 * gapHorizontalRecalculado)/numCubosXfilaFromParent) + (miniGap * (numCubosXfilaFromParent/2 ) ) ));
				}
				
				if(gapHorizontalRecalculado == miniGap){
					
					anchoParaItem = (altoTotalPorEspacio - miniGap);
				}else{
					
					if(gapHorizontalRecalculado > 50)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,56,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 45)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,50,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 40)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,46,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 35)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,40,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 30)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,36,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 25)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,30,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 20)
						anchoParaItem = recalcularAncho(gapHorizontalRecalculado,26,altoTotalPorEspacio);
					/*				else if(gapHorizontalRecalculado > 15)
					anchoParaItem = recalcularAncho(gapHorizontalRecalculado,20,altoTotalPorEspacio);
					else if(gapHorizontalRecalculado > 10)
					anchoParaItem = recalcularAncho(gapHorizontalRecalculado,16,altoTotalPorEspacio);*/
					
				}
					gapHorizontalRecalculado = (anchoAOcupar - (anchoParaItem * numCubosXfilaFromParent))/(numCubosXfilaFromParent-1);
				
				//var xRecorrer:Number = (anchoAOcupar - ((anchoParaItem * numCubosXfilaFromParent) + anchoTotalPorEspacio))/2;
				var yRecorrer:Number = (($containerHeight - anchoParaItem)/2)+5;
				
				for (var i:int = 0; i < count; i++) {
					
					currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
					
					if(i == 0){
						_x = 5;
						_y = yRecorrer;
					}
					
					currentElement.setLayoutBoundsSize(anchoParaItem,anchoParaItem);
					currentElement.setLayoutBoundsPosition(_x,_y);
					if((currentElement as Object).hasOwnProperty("puntoMedio")){
						
						(currentElement as AgenteCuadradoContacto).puntoMedio = (_x + (anchoParaItem/2))-5;
					}
					_x += anchoParaItem + gapHorizontalRecalculado;
				}
			}
		}
		
		
		public function recalcularAncho(gap:Number, fix:int,height:Number):Number{
			if(gap >= fix){
				return (height - (gap - fix ));
			}else{
				return recalcularAncho(gap,fix-2,height);
			}
		}
		
		public function set anchoParaItem(value:Number):void{
			_anchoParaItem = value;
		}
		
		public function get anchoParaItem():Number{
			return _anchoParaItem;
		}
	}
}