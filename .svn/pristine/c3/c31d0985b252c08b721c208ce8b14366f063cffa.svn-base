package skins.skin.textInputBordeadopPQNet
{
	import mx.core.UIComponent;
	
	import spark.primitives.Path;
	
	public class GeneraBordePunteado extends UIComponent{ 
		private var dashlen:Number = 5; 
		private var gaplen:Number = 5; 
		private var borderSides : String = "top right bottom left"; 
		
		public function GeneraBordePunteado(){ 
			super(); 
		} 
		override protected function updateDisplayList 
			(unscaledWidth:Number, unscaledHeight:Number):void{ 
			super.updateDisplayList(unscaledWidth, unscaledHeight); 
			/*var borderThickness:int = getStyle("borderThickness"); */
			var sides :String = getStyle("borderSides") as String; 
			
			borderSides = (sides!="" && sides!=null)?sides:borderSides; 
			var borderColor:int = getStyle("borderColor"); 
			var backgroundColor:int = getStyle("backgroundColor"); 
			var backgroundAlpha:Number = getStyle("backgroundAlpha"); 
			
			graphics.clear(); 
			graphics.beginFill(backgroundColor, backgroundAlpha); 
			graphics.drawRect(0, 0, unscaledWidth, unscaledHeight); 
			var borderThickness:int = 2; 
			if( borderColor == 7385838 ){ //color azul para el focus
				borderThickness = 2;
			}else{
				borderThickness = 2;
			}
			graphics.lineStyle(borderThickness, borderColor, 1) 
			if (getStyle("dashlen")) { 
				this.dashlen = getStyle("dashlen"); 
			} 
			if (getStyle("gaplen")) { 
				this.gaplen = getStyle("gaplen"); 
			} 
			drawBorder(this.x, this.y, unscaledWidth, unscaledHeight, this.dashlen, this.gaplen); 
		} 
		private var tipoEsquina:String;
		public function drawLine(x1:Number, y1:Number, x2:Number,  y2:Number, dashlen:Number, gaplen:Number): void {     
			if((x1 != x2) || (y1 != y2)){ 
				var incrlen:Number = dashlen + gaplen; 
				
				var len:Number = Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)); 
				var angle:Number = Math.atan((y2 - y1) / (x2 - x1)); 
				var steps:uint = len / (dashlen + gaplen); 
				
				var dashstepx:Number = dashlen * Math.cos(angle); 
				if (x2 < x1) dashstepx *= -1; 
				
				var dashstepy:Number = dashlen * Math.sin(angle); 
				
				var gapstepx:Number = gaplen * Math.cos(angle); 
				if (x2 < x1) gapstepx *= -1; 
				
				var gapstepy:Number = gaplen * Math.sin(angle); 
				var stepcount:uint = 0; 
				var contadorCurva:int = 0;
				
				while ((stepcount++) < steps) {        
					var dashstartx:Number; 
					var dashstarty:Number; 
					var dashendx:Number; 
					var dashendy:Number; 
					if( stepcount > 1  ) {
						
						if(x1 == x2 && y1 != y2){ 
							dashstartx = dashendx = x1; 
							if(y2 > y1){ 
								dashstarty = y1 + ((stepcount-1) * (dashlen + gaplen));              
								dashendy = dashstarty + dashlen; 
							}else{ 
								dashstarty = y1 - ((stepcount-1) * (dashlen + gaplen));              
								dashendy = dashstarty - dashlen; 
							} 
						}else if(y1 == y2 && x1 != x2){ 
							dashstarty = dashendy = y1; 
							if(x2 > x1){ 
								dashstartx = x1 + ((stepcount-1) * (dashlen + gaplen)); 
								dashendx = dashstartx + dashlen; 
							}else{ 
								dashstartx = x1 - ((stepcount-1) * (dashlen + gaplen)); 
								dashendx = dashstartx - dashlen; 
							} 
						} 
						graphics.moveTo(dashstartx, dashstarty); 
						graphics.lineTo(dashendx, dashendy); 
					}
				} 
			} 
		} 
		
		private function drawBorder(x1:Number, y1:Number, width:Number, height:Number,dashlen:Number, gaplen:Number) : void { 
			tipoEsquina = "";
			if (borderSides.indexOf("top") >= 0) {  
				tipoEsquina = "top";
				drawLine(x1, y1, x1 + width, y1, dashlen, gaplen); 
			} 
			if (borderSides.indexOf("right") >= 0) {
				tipoEsquina = "right";
				drawLine(x1 + width, y1, x1 + width, y1 + height, dashlen, gaplen); 
			} 
			if (borderSides.indexOf('bottom') >= 0) {  
				tipoEsquina = "bottom";
				drawLine(x1 + width, y1 + height, x1, y1 + height, dashlen, gaplen); 
			} 
			if (borderSides.indexOf("left") >= 0) { 
				tipoEsquina = "left";
				drawLine(x1, y1 + height, x1, y1, dashlen, gaplen); 
			} 
		}    
	} 
}