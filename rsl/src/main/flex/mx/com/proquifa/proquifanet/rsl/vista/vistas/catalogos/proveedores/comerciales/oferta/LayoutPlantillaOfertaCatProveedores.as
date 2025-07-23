package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.proveedores.comerciales.oferta
{
	import flash.system.Capabilities;
	
	import flashx.textLayout.elements.GlobalSettings;
	
	import mx.core.FlexGlobals;
	import mx.core.ILayoutElement;
	import mx.core.IVisualElement;
	
	import spark.components.Group;
	import spark.components.VGroup;
	import spark.components.supportClasses.GroupBase;
	import spark.layouts.supportClasses.LayoutBase;
	
	public class LayoutPlantillaOfertaCatProveedores extends LayoutBase
	{
		public function LayoutPlantillaOfertaCatProveedores()
		{
			super();
		}
		
		private var layoutTarget:GroupBase;
		private var count:int;
		private var currentElement:ILayoutElement;
		private var maxElementWitdh:Number = 0;
		private var $minimizada:Boolean;
		
		override public function measure():void
		{
			super.measure();
			layoutTarget = target;
			var idElemento:String;
			count = layoutTarget.numElements;
		}
		
		override public function updateDisplayList($width:Number, $height:Number):void
		{
			super.updateDisplayList($width,$height);
			
			var idElemento:String;
			var currentY:int;
			var currentX:int;
			var xMenu:int;
			var widthRestante:Number;
			var alturaDefinida:Number;
			var minimizado:Boolean;
			
			var parentOferta:CatPro_OfertaDefaultAnimacion = layoutTarget.parent  as CatPro_OfertaDefaultAnimacion;
			minimizado = parentOferta._minimizado;
			
			if($width > 0 && $height > 0)
			{
				alturaDefinida = $height;
				
				for (var i:int = 0; i < count; i++) 
				{
					currentElement = useVirtualLayout ? layoutTarget.getVirtualElementAt(i): layoutTarget.getElementAt(i);
					
					idElemento = GroupBase(currentElement).id;
					
					switch(idElemento)
					{
						case "grpTitulo":
						{
							currentElement.setLayoutBoundsSize($width-40,currentElement.getMinBoundsHeight());
							currentElement.setLayoutBoundsPosition(20,20);
							currentY =  currentElement.getLayoutBoundsY() + currentElement.getMinBoundsHeight() + 10;
							break;
						}
						case "cmpCoverFlow":
						{
							if(Capabilities.screenResolutionY == 900)
							{
								currentElement.setLayoutBoundsSize($width,currentElement.getMinBoundsHeight());
								currentElement.setLayoutBoundsPosition(0,currentY);
								currentY += currentElement.getMinBoundsHeight();
							}
							else
							{
								currentElement.setLayoutBoundsSize($width,currentElement.getMaxBoundsHeight());
								currentElement.setLayoutBoundsPosition(0,currentY);
								currentY += currentElement.getMaxBoundsHeight();
							}
							break;
						}
						default:
						{
							if(parentOferta.currentNivel && parentOferta.currentNivel == "Generales")
							{
								switch(idElemento)
								{
									case "grpCentroDadFactores":
									{
										if(!parentOferta.vistaEdicion)
										{
											GroupBase(currentElement).visible = true;
											(currentElement as Group).getElementAt(0).visible = false;
											
											if(minimizado)
												currentElement.setLayoutBoundsSize(($width * .60),(alturaDefinida - currentY));
											else
												currentElement.setLayoutBoundsSize(($width * .75),(alturaDefinida - currentY));
											
											currentElement.setLayoutBoundsPosition(0,currentY);
											
											if(minimizado)
												currentX += ($width * .60);
											else
												currentX += ($width * .75);
											
											currentElement.percentHeight = 100;
										}
										else
										{
											GroupBase(currentElement).visible = true;
											(currentElement as Group).getElementAt(0).visible = false;
											
											currentElement.setLayoutBoundsSize(($width),($height));
											currentElement.setLayoutBoundsPosition(0,0);
										}
										
										break;
									}
									case "grpFormulaPrecioLista":
									{
										if(!parentOferta.vistaEdicion)
										{
											
											PanelFactoresPrecioLista(currentElement).colorBase = "gris";
											GroupBase(currentElement).visible = true;
											if(minimizado)
												currentElement.setLayoutBoundsSize(($width * .40),(alturaDefinida - currentY));
											else
												currentElement.setLayoutBoundsSize(($width * .25),(alturaDefinida - currentY));
											
											currentElement.setLayoutBoundsPosition(currentX,currentY);
											currentElement.percentHeight = 100;
											GroupBase(currentElement).autoLayout = true;
										}
										else
										{
											GroupBase(currentElement).visible = false;
										}
										break;
									}
									default:
									{
										GroupBase(currentElement).visible = false;
										break;
									}
								}
								
							}
							else if(parentOferta.currentNivel && parentOferta.currentNivel == "Precio lista")
							{
								switch(idElemento)
								{
									case "grpListaCosto":
									{
										/*widthRestante = ($width) - 15;
										currentX =  15;*/
										
										if(!parentOferta.vistaEdicion)
										{
											widthRestante = $width;
											GroupBase(currentElement).visible = true;
											
											if(minimizado)
												currentElement.setLayoutBoundsSize((widthRestante * .40),(alturaDefinida - currentY));
											else
												currentElement.setLayoutBoundsSize((widthRestante * .25),(alturaDefinida - currentY));
											
											currentElement.setLayoutBoundsPosition(currentX,currentY);
											
											if(minimizado)
												currentX += (widthRestante * .40);
											else
												currentX += (widthRestante * .25);
											
										}
										else
										{
											GroupBase(currentElement).visible = false;
										}
										
										break;
									}
									case "grpCentroDadFactores":
									{
										if(!parentOferta.vistaEdicion)
										{
											(currentElement as Group).getElementAt(0).visible = true;
											
											if(minimizado)
												currentElement.setLayoutBoundsSize((widthRestante * .60),(alturaDefinida - currentY));
											else
												currentElement.setLayoutBoundsSize((widthRestante * .75),(alturaDefinida - currentY));
											
											currentElement.setLayoutBoundsPosition(currentX,currentY);
											currentElement.percentHeight = 100;
										}
										else
										{
											(currentElement as Group).getElementAt(0).visible = true;
											currentElement.setLayoutBoundsSize(($width),($height));
											currentElement.setLayoutBoundsPosition(0,0);
										}
										
										break;
									}
									default:
									{
										GroupBase(currentElement).visible = false;
										break;
									}
								}
							}
							else if(parentOferta.currentNivel && parentOferta.currentNivel == "Clasificacion")
							{
								switch(idElemento)
								{
									case "grpListaClasificacion":
									{
										if(!parentOferta.vistaEdicion)
										{
											
											if(!minimizado)
											{
												widthRestante = $width;
												GroupBase(currentElement).visible = true;
												currentElement.setLayoutBoundsSize((widthRestante * .25),(alturaDefinida - currentY));
												currentElement.setLayoutBoundsPosition(currentX,currentY);
												currentX += (widthRestante * .25);
												xMenu += (widthRestante * .25);
											}
											else
											{
												if(!parentOferta.minMenuClasif)
												{
													GroupBase(currentElement).visible = false;
												}
												else
												{
													widthRestante = $width;
													GroupBase(currentElement).visible = true;
													currentElement.setLayoutBoundsSize((widthRestante * .20),($height));
													currentElement.setLayoutBoundsPosition(0,currentY);
													currentX += (widthRestante * .20);
													xMenu += (widthRestante * .20);
												}
											}
										}
										else
										{
											GroupBase(currentElement).visible = false;
										}
										
										break;
									}
										
									case "flechaMenu":
									{
										GroupBase(currentElement).visible = true;
										(currentElement as Group).getElementAt(0).visible = true;
										currentElement.setLayoutBoundsSize(20,20);
										
										if(minimizado)
										{
											currentElement.setLayoutBoundsPosition(xMenu,($height * .25));
											GroupBase(currentElement).visible = true;
										}
										else
										{
											currentElement.setLayoutBoundsPosition(xMenu - 12,($height/2));
											GroupBase(currentElement).visible = false;
										}
										
										break;
									}
										
									case "grpCentroDadFactores":
									{
										if(!parentOferta.vistaEdicion)
										{
											GroupBase(currentElement).visible = true;
											(currentElement as Group).getElementAt(0).visible = true;
											
											if(minimizado)
											{
												if(parentOferta.minMenuClasif)
												{
													GroupBase(currentElement).visible = true;
													(currentElement as Group).getElementAt(0).visible = true;
													currentElement.setLayoutBoundsSize(($width * .60),(alturaDefinida - currentY));
													currentElement.setLayoutBoundsPosition(currentX,currentY);
													currentX += ($width * .60);
												}
												else
												{
													GroupBase(currentElement).visible = true;
													(currentElement as Group).getElementAt(0).visible = true;
													currentElement.setLayoutBoundsSize(($width * .60),(alturaDefinida - currentY));
													currentElement.setLayoutBoundsPosition(0,currentY);
													currentX += ($width * .60);
												}
											}
											else
											{
												GroupBase(currentElement).visible = true;
												(currentElement as Group).getElementAt(0).visible = true;
												currentElement.setLayoutBoundsSize(($width * .50),(alturaDefinida - currentY));
												currentElement.setLayoutBoundsPosition(currentX,currentY);
												currentX += ($width * .50);
											}
											
											currentElement.percentHeight = 100;
										}
										else
										{
											GroupBase(currentElement).visible = true;
											(currentElement as Group).getElementAt(0).visible = true;
											currentElement.setLayoutBoundsSize(($width),($height));
											currentElement.setLayoutBoundsPosition(0,0);
										}
										
										break;
									}
										
									case "grpFormulaPrecioLista":
									{
										if(!parentOferta.vistaEdicion)
										{
											GroupBase(currentElement).visible = true;
											PanelFactoresPrecioLista(currentElement).colorBase = "blanco";
											
											if(minimizado)
											{
												if(parentOferta.minMenuClasif)
												{
													currentElement.setLayoutBoundsSize(($width * .20),(alturaDefinida - currentY));
												}
												else
												{
													currentElement.setLayoutBoundsSize(($width * .40),(alturaDefinida - currentY));
												}
											}
											else
											{
												currentElement.setLayoutBoundsSize(($width * .25),(alturaDefinida - currentY));
											}
											
											currentElement.setLayoutBoundsPosition(currentX,currentY);
										}
										else
										{
											GroupBase(currentElement).visible = false;
										}
										
										break;
									}
									default:
									{
										GroupBase(currentElement).visible = false;
										break;
									}
								}
							}
							else if(parentOferta.currentNivel && parentOferta.currentNivel == "Producto")
							{
								switch(idElemento)
								{
									case "grpListaProducto":
									{
										if(!parentOferta.vistaEdicion)
										{
											/*widthRestante = ($width) - 15;
											currentX =  15;*/
											widthRestante = $width;
											GroupBase(currentElement).visible = true;
											
											if(minimizado)
												currentElement.setLayoutBoundsSize((widthRestante * .40),(alturaDefinida - currentY));
											else
												currentElement.setLayoutBoundsSize((widthRestante * .25),(alturaDefinida - currentY));
											
											currentElement.setLayoutBoundsPosition(currentX,currentY);
											
											if(minimizado)
												currentX += (widthRestante * .40);
											else
												currentX += (widthRestante * .25);
										}
										else
										{
											GroupBase(currentElement).visible = false;
										}
										
										break;
									}
									case "grpCentroDadFactores":
									{
										if(!parentOferta.vistaEdicion)
										{
											
											(currentElement as Group).getElementAt(0).visible = true;
											
											if(minimizado)
												currentElement.setLayoutBoundsSize((widthRestante * .60),(alturaDefinida - currentY));
											else
												currentElement.setLayoutBoundsSize((widthRestante * .75),(alturaDefinida - currentY));
											
											currentElement.setLayoutBoundsPosition(currentX,currentY);
											currentElement.percentHeight = 100;
										}
										else
										{
											(currentElement as Group).getElementAt(0).visible = true;
											currentElement.setLayoutBoundsSize(($width),($height));
											currentElement.setLayoutBoundsPosition(0,0);
										}
										
										break;
									}
									default:
									{
										GroupBase(currentElement).visible = false;
										break;
									}
								}
							}
							
							break;
						}
					}
				}
			}
		}
		
	}
}