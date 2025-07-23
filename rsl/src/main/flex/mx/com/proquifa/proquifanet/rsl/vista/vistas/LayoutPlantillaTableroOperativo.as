package mx.com.proquifa.proquifanet.rsl.vista.vistas
{
	import flash.display.DisplayObject;
	
	import flashx.textLayout.conversion.PlainTextExporter;
	
	import mx.core.ILayoutElement;
	import mx.core.IVisualElement;
	
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutPlantillaTableroOperativo extends LayoutBase
	{
		public function LayoutPlantillaTableroOperativo()
		{
			super();
		}
		
		private var _paddingLeft:Number;
		private var _paddingRight:Number;
		private var _paddingBottom:Number;
		private var _paddingTop:Number;
		private var _gap:Number;
		
		private var _widthCurrentMiddleComponent:Number;
		
		[Inspectable(category="Common",defaultValue=320)]
		public var anchoMenu:Number = 320;
		[Inspectable(category="Common",defaultValue=250)]
		public var anchoPanelInfo:Number = 250;
		
		
		override public function updateDisplayList($containerWidth:Number, $containerHeight:Number):void{
			super.updateDisplayList($containerWidth,$containerHeight);
			
			var currentElement:ILayoutElement;
			var layoutTarget:GroupBase= target;
			var count:Number = layoutTarget.numElements;
			var x:int=paddingLeft;
			var y:int =paddingTop;
			var idElement:String;
			var xPositionGrpA:Number;
			var plantilla:PlantillaTableroOperativo = (layoutTarget as PlantillaTableroOperativo);
			var anchoVariableMenu:Number = anchoMenu;
			var xTabComparacion:Number;
			var tempWidth:Number;
			
			
			if($containerWidth != 0 && $containerHeight != 0){
				
				
				for (var i:int = 0; i < count; i++) 
				{
					currentElement = useVirtualLayout? layoutTarget.getVirtualElementAt(i) : layoutTarget.getElementAt(i);
					
					if((currentElement as GroupBase).visible == true && currentElement.includeInLayout == true){
						
						idElement = (currentElement as GroupBase).id;
						
						switch(idElement)
						{
							case "grpEspacioInformacion":
							{
								(currentElement as IVisualElement).depth = 10;
								(currentElement as GroupBase).maxWidth = anchoMenu;
								if(plantilla.fxMenuResize != null && plantilla.fxMenuResize.isPlaying){
									currentElement.setLayoutBoundsSize(currentElement.getLayoutBoundsWidth(),($containerHeight+((paddingTop+paddingBottom)*-1)));
									currentElement.setLayoutBoundsPosition(x,y);
									x+=currentElement.getLayoutBoundsWidth();
									anchoVariableMenu = currentElement.getLayoutBoundsWidth();
								}else{
									if(plantilla.isMenuMinimixed){
										currentElement.setLayoutBoundsSize(0,($containerHeight+((paddingTop+paddingBottom)*-1)));
										anchoVariableMenu =0;
										currentElement.setLayoutBoundsPosition(x,y);
									}else{
										currentElement.setLayoutBoundsSize(anchoMenu,($containerHeight+((paddingTop+paddingBottom)*-1)));
										currentElement.setLayoutBoundsPosition(x,y);
										x+=anchoMenu;
									}
								}
								break;
							}
							case "grpTabMenu":
							{
								(currentElement as IVisualElement).depth = 11;
								currentElement.setLayoutBoundsSize(0,($containerHeight+((paddingTop+paddingBottom)*-1)));
								currentElement.setLayoutBoundsPosition(x,y);
								break;
							}
							case "contenedorGraficas":
							{
								if(plantilla.isMenuMinimixed){
									currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoVariableMenu,($containerHeight+((paddingTop + paddingBottom)*-1)));
									currentElement.setLayoutBoundsPosition(x,y);
								}else{
									currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoMenu,($containerHeight+((paddingTop + paddingBottom)*-1)));
									currentElement.setLayoutBoundsPosition(x,y);
								}
								break;
							}
							case "grpEspacioA":
							{
								if(plantilla.fxMenuResize != null && plantilla.fxMenuResize.isPlaying){
									if(plantilla.isPanelInfoMaximixed)
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-(anchoVariableMenu+anchoPanelInfo),($containerHeight+((paddingTop + paddingBottom)*-1)));
									else
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoVariableMenu,($containerHeight+((paddingTop + paddingBottom)*-1)));
									
									currentElement.setLayoutBoundsPosition(x,y);
									x+= currentElement.getLayoutBoundsWidth();
									
								}else if((plantilla.fxPanelInfoResize != null && plantilla.fxPanelInfoResize.isPlaying) || plantilla.isVistaComparacion){
									currentElement.setLayoutBoundsSize(currentElement.getLayoutBoundsWidth(),($containerHeight+((paddingTop + paddingBottom)*-1)));
									currentElement.setLayoutBoundsPosition(x,y);
									xTabComparacion = currentElement.getLayoutBoundsWidth()+anchoVariableMenu + paddingLeft;
									tempWidth = currentElement.getLayoutBoundsWidth();
								}else{
									if(plantilla.isMenuMinimixed && plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoPanelInfo,($containerHeight+((paddingTop + paddingBottom)*-1)));
									}else if(!plantilla.isMenuMinimixed && plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-(anchoMenu+anchoPanelInfo),($containerHeight+((paddingTop + paddingBottom)*-1)));
									}else if(plantilla.isMenuMinimixed && !plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1)),($containerHeight+((paddingTop + paddingBottom)*-1)));
									}else if(!plantilla.isMenuMinimixed && !plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoMenu,($containerHeight+((paddingTop + paddingBottom)*-1)));
									}
									currentElement.setLayoutBoundsPosition(x,y);
									x+= currentElement.getLayoutBoundsWidth();
									widthCurrentMiddleComponent = currentElement.getLayoutBoundsWidth();
								}
								break;
							}
							case "grpTabComparacion":
							{
								(currentElement as IVisualElement).depth = 12;
								currentElement.setLayoutBoundsSize(0,($containerHeight+((paddingTop+paddingBottom)*-1)));
								
								if((plantilla.fxPanelInfoResize != null && plantilla.fxPanelInfoResize.isPlaying) || (plantilla.fxResizerGrpA != null && plantilla.fxResizerGrpA.isPlaying)){
									if(plantilla.isVistaComparacion){
										if(plantilla.fxResizerGrpA != null && plantilla.fxResizerGrpA.isPlaying)
											currentElement.setLayoutBoundsPosition(xTabComparacion,y);
										else
											currentElement.setLayoutBoundsPosition(x,y);
									}
									else
										currentElement.setLayoutBoundsPosition(xTabComparacion,y);
								}else if(plantilla.isVistaComparacion){
									if(plantilla.fxMenuResize != null && plantilla.fxMenuResize.isPlaying){
										currentElement.setLayoutBoundsPosition(anchoVariableMenu + paddingLeft,y);
									}else{
										if(plantilla.isMenuMinimixed)
											currentElement.setLayoutBoundsPosition(x-1,y);
										else
											currentElement.setLayoutBoundsPosition(anchoMenu + paddingLeft,y);
									}
								}else{
									if(plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsPosition(($containerWidth+(paddingRight*-1))-anchoPanelInfo,y);
									}else{
										currentElement.setLayoutBoundsPosition(($containerWidth+(paddingRight *-1)),y);
									}
								}
								break;
							}
							case "grpEspacioB":
							{
								(currentElement as IVisualElement).depth = -10;
								
								if(plantilla.fxMenuResize != null && plantilla.fxMenuResize.isPlaying){
									if(plantilla.isPanelInfoMaximixed)
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-(anchoVariableMenu+anchoPanelInfo),($containerHeight+((paddingTop + paddingBottom)*-1)));
									else
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoVariableMenu,($containerHeight+((paddingTop + paddingBottom)*-1)));
									
									currentElement.setLayoutBoundsPosition(x,y);
									x+= currentElement.getLayoutBoundsWidth();
									
								}else if(plantilla.fxPanelInfoResize != null && plantilla.fxPanelInfoResize.isPlaying){
									currentElement.setLayoutBoundsSize(currentElement.getLayoutBoundsWidth(),($containerHeight+((paddingTop + paddingBottom)*-1)));
									currentElement.setLayoutBoundsPosition(x,y);
									xTabComparacion = currentElement.getLayoutBoundsWidth()+anchoVariableMenu + paddingLeft;
									tempWidth = currentElement.getLayoutBoundsWidth();
								}else{
									if(plantilla.isMenuMinimixed && plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoPanelInfo,($containerHeight+((paddingTop + paddingBottom)*-1)));
									}else if(!plantilla.isMenuMinimixed && plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-(anchoMenu+anchoPanelInfo),($containerHeight+((paddingTop + paddingBottom)*-1)));
									}else if(plantilla.isMenuMinimixed && !plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1)),($containerHeight+((paddingTop + paddingBottom)*-1)));
									}else if(!plantilla.isMenuMinimixed && !plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+paddingRight)*-1))-anchoMenu,($containerHeight+((paddingTop + paddingBottom)*-1)));
									}
									currentElement.setLayoutBoundsPosition(x,y);
									x+= currentElement.getLayoutBoundsWidth();
									widthCurrentMiddleComponent = currentElement.getLayoutBoundsWidth();
								}
								break;
							}
							case "grpTabPanelInfo":
							{
								(currentElement as IVisualElement).depth = 12;
								currentElement.setLayoutBoundsSize(0,($containerHeight+((paddingTop+paddingBottom)*-1)));
								if(plantilla.fxPanelInfoResize != null && plantilla.fxPanelInfoResize.isPlaying){
									if(plantilla.isMenuMinimixed)
										currentElement.setLayoutBoundsPosition(tempWidth+paddingLeft,y);
									else
										currentElement.setLayoutBoundsPosition((tempWidth + anchoMenu) + paddingLeft,y);
								}else{
									if(plantilla.isPanelInfoMaximixed)
										currentElement.setLayoutBoundsPosition(($containerWidth +(paddingRight *-1)-anchoPanelInfo),y);
									else
										currentElement.setLayoutBoundsPosition($containerWidth +(paddingRight *-1),y);
								}
								break;
							}
							case "grpPanelInfo":
							{
								if(plantilla.fxPanelInfoResize != null && plantilla.fxPanelInfoResize.isPlaying){
									if(plantilla.isMenuMinimixed){
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+ paddingRight)*-1)) - tempWidth,($containerHeight+((paddingTop+paddingBottom)*-1)));
										currentElement.setLayoutBoundsPosition(tempWidth+paddingLeft,y);
									}else{
										currentElement.setLayoutBoundsSize(($containerWidth+((paddingLeft+ paddingRight)*-1)) - (tempWidth + anchoMenu),($containerHeight+((paddingTop+paddingBottom)*-1)));
										currentElement.setLayoutBoundsPosition((tempWidth + anchoMenu) + paddingLeft,y);
									}
								}else{
									if(plantilla.isPanelInfoMaximixed){
										currentElement.setLayoutBoundsSize(anchoPanelInfo,($containerHeight+((paddingTop+paddingBottom)*-1)));
										currentElement.setLayoutBoundsPosition(($containerWidth+(paddingRight*-1))-anchoPanelInfo,y);
									}else{
										currentElement.setLayoutBoundsSize(0,($containerHeight+((paddingTop+paddingBottom)*-1)));
										currentElement.setLayoutBoundsPosition(($containerWidth+(paddingRight * -1)),y);
									}
								}
								break;
							}
						}
						
					}
					
				}
				
			}
			
		}
		
		public function get paddingLeft():Number
		{
			return _paddingLeft;
		}
		
		public function set paddingLeft(value:Number):void
		{
			_paddingLeft = value;
		}
		
		public function get paddingRight():Number
		{
			return _paddingRight;
		}
		
		public function set paddingRight(value:Number):void
		{
			_paddingRight = value;
		}
		
		public function get paddingBottom():Number
		{
			return _paddingBottom;
		}
		
		public function set paddingBottom(value:Number):void
		{
			_paddingBottom = value;
		}
		
		public function get paddingTop():Number
		{
			return _paddingTop;
		}
		
		public function set paddingTop(value:Number):void
		{
			_paddingTop = value;
		}
		
		public function get gap():Number
		{
			return _gap;
		}
		
		public function set gap(value:Number):void
		{
			_gap = value;
		}
		
		public function get widthCurrentMiddleComponent():Number
		{
			return _widthCurrentMiddleComponent;
		}
		
		public function set widthCurrentMiddleComponent(value:Number):void
		{
			_widthCurrentMiddleComponent = value;
		}
		
	}
}