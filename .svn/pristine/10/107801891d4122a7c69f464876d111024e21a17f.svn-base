package mx.com.proquifa.proquifanet.rsl.vista.vistas
{
	
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.compresorVentanas.CompresorElements_Lines;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.compresorVentanas.GroupItemCompresor;
	import mx.controls.Image;
	import mx.core.IVisualElement;
	import mx.events.EffectEvent;
	import mx.graphics.SolidColor;
	
	import spark.components.Group;
	import spark.effects.Fade;
	import spark.effects.Resize;
	import spark.effects.easing.Sine;
	import spark.primitives.Rect;
	
	import skins.catalogos.catalogoIconosBotones;
	import skins.otros.divisionDegradadoVertical;
	
	public class CompresorVentanas_asistente extends Group
	{
		private var _coloresFondo:Array = [ 0xFFFFFF, 0xEAEAEA];
		private var _snColor:Boolean;
		private var _isOneMaximixed:Boolean = false;
		private var _currentMaximixed:int=-1;
		private var _isPlayingAnimation:Boolean=false;
		
		private const flechaIzq:Class =  catalogoIconosBotones.getInstance().tabGrisIzq_2d;
		private const flechaDer:Class =  catalogoIconosBotones.getInstance().tabGrisDer_2d;
		private var alfa:Number = 0.4;
		private var _finishMyUpdate:Boolean=false;
		
		private	var animacionPND:ArrayCollection = new ArrayCollection();
		
		private var _componentes:ArrayCollection;
		
		public function CompresorVentanas_asistente()
		{
			super();
			super.percentWidth = 100;
			super.percentHeight = 100;
			super.layout = new CompresorElements_Lines();
		}
		
		public function get coloresFondo():Array
		{
			return _coloresFondo;
		}
		
		public function set coloresFondo(value:Array):void
		{
			_coloresFondo = value;
		}
		/**
		 * Funcion para agregar un arrayCollection de componentes, adicionalmente se puede establecer el porcentaje
		 * de crecimiento deseado, cuando el panel sea maximizado, si este atributo no es específicado el default es del 50 porciento
		 *  
		 * @param $componentes
		 * @param $porcentajeCrecimiento
		 * 
		 */		
		public function agregarComponentes( $componentes:ArrayCollection,$porcentajeCrecimiento:int=50):void
		{
			
			if( numElements > 0 )
				removeAllElements();
			
			var indexColorFill:int = 0;
			var posicionPanel:int=0;
			_componentes = $componentes;
			
			if(snColor)
			{
				_coloresFondo = [ 0xFFFFFF,0xFFFFFF,0xFFFFFF,0xf7f7f8];
			}
			
			(layout as CompresorElements_Lines).factorCrecimiento = $porcentajeCrecimiento;
			
			var cont:Number = 0;
			for(var m:int = 0; m < $componentes.length; m++)
			{
				var groupP:GroupItemCompresor = new GroupItemCompresor();
				groupP.percentHeight = 100;
				groupP.percentWidth = 100;
				
				if( _coloresFondo.length > 0)
				{
					/* si la cantidad de componentes es mayor que la cantidad de colores entonces repito los colores */
					if( indexColorFill > coloresFondo.length-1 )
						indexColorFill = 0;
					
					var fillColor:SolidColor = new SolidColor( coloresFondo[ indexColorFill ] );
					var rectFondo:Rect = new Rect();
					rectFondo.percentWidth = 100;
					rectFondo.percentHeight = 100;
					rectFondo.fill = fillColor;
					groupP.addElement( rectFondo );
					indexColorFill++;
					
				}
				
				if(m==0){
					groupP.id = "Primero";
					
				}else if(m== $componentes.length-1){
					groupP.id = "Ultimo";
				}else{
					groupP.id = "Medio"+m.toString();
				}
				groupP.tipoComponente = "Panel";
				groupP.indexPanel = posicionPanel;
				
				groupP.addElement( $componentes[m] as IVisualElement);
				
				addElement(groupP);
				
				if(divisionDegradado  && cont < 3)
				{
					/*var division:divisionDegradadoVertical = new divisionDegradadoVertical();
					division.percentHeight = 90;
					addElement( division as IVisualElement);*/
					
					var division:divisionDegradadoVertical = new divisionDegradadoVertical();
					division.left = -1;
					
					var grpDivide:GroupItemCompresor = new GroupItemCompresor();
					grpDivide.width = 0;
					grpDivide.percentHeight = 90;
					grpDivide.id = groupP.id;
					grpDivide.right = 0;
					grpDivide.relacionPanelIndex = posicionPanel;
					grpDivide.tipoComponente ="division";
					grpDivide.addElement(division);
					
					addElement(grpDivide);
					cont++;
				}
				
				if(m== $componentes.length-1)
				{
					addElement(agregarFlecha("Izquierda",posicionPanel,groupP.id));
					groupP.direccion = "izq";
				}
				else
				{
					addElement(agregarFlecha("Derecha",posicionPanel,groupP.id));
					groupP.direccion = "der";
				}
				groupP.relacionFlechaIndex = this.numChildren-1;
				posicionPanel+=3;
			}
		}
		
		public var divisionDegradado:Boolean = false;
		private function agregarFlecha($direccion:String, $panelRelacion:int,$posicion:String):Group
		{
			var _imgRow:Image = new Image();
			
			if($direccion == "Izquierda")
			{
				_imgRow.id = "flechaIzq";
				_imgRow.source = flechaIzq;
			}
			else
			{
				_imgRow.id = "flechaDer";
				_imgRow.source = flechaDer;
			}
			
			_imgRow.horizontalCenter = -5;
			_imgRow.verticalCenter = 0;
			_imgRow.alpha = alfa;
			
			_imgRow.addEventListener( MouseEvent.CLICK, clickHandler, false, 0, true );
			_imgRow.addEventListener( MouseEvent.MOUSE_OVER, rowHoverHandler, false, 0, true );
			_imgRow.addEventListener( MouseEvent.MOUSE_OUT, rowOutHandler, false, 0, true );
			
			var gImgSeparador:GroupItemCompresor = new GroupItemCompresor();
			gImgSeparador.width = 0;
			gImgSeparador.percentHeight = 100;
			gImgSeparador.id = $posicion;
			gImgSeparador.relacionPanelIndex = $panelRelacion;
			gImgSeparador.tipoComponente ="flecha";
			
			
			gImgSeparador.addElement( _imgRow );
			return gImgSeparador;
		}
		
		protected function clickHandler(event:MouseEvent):void
		{
			if(!_isPlayingAnimation){
				
				if(event.currentTarget.id == "flechaDer"){
					(event.currentTarget as Image).source = flechaIzq;
					(event.currentTarget as Image).id =  "flechaIzq";
				}else if(event.currentTarget.id == "flechaIzq"){
					(event.currentTarget as Image).source = flechaDer;
					(event.currentTarget as Image).id = "flechaDer";
				}
				
				var currentFlecha:GroupItemCompresor = ((event.currentTarget as Image).parent as GroupItemCompresor)
				if(_isOneMaximixed){
					if((getElementAt(currentFlecha.relacionPanelIndex) as GroupItemCompresor).isMaximized){
						resizeOut(getElementAt(currentFlecha.relacionPanelIndex));
					}else{
						switchFlecha((getElementAt(currentMaximixed) as GroupItemCompresor).relacionFlechaIndex);					
						resizeOut(getElementAt(currentMaximixed));
						animacionPND.addItem(getElementAt(currentFlecha.relacionPanelIndex));
					}
				}else{
					_currentMaximixed = currentFlecha.relacionPanelIndex;
					_isOneMaximixed = true;
					resizeIn(getElementAt(currentFlecha.relacionPanelIndex));
				}
			}
		}
		protected function resizeIn(currentGroup:IVisualElement):void
		{
			var easing:Sine = new Sine();
			easing.easeInFraction = 1;
			var maxi:Resize = new Resize();
			maxi.target = currentGroup;
			maxi.duration = 250;
			maxi.startDelay = 0;
			maxi.easer = easing;
			maxi.widthFrom =  currentGroup.getLayoutBoundsWidth();
			maxi.widthTo = (currentGroup.getLayoutBoundsWidth()+ currentGroup.getLayoutBoundsWidth() * (layout as CompresorElements_Lines).factorCrecimiento);
			//maxi.suspendBackgroundProcessing = true;
			maxi.play();
			maxi.addEventListener(EffectEvent.EFFECT_END,resizeEndHandler,false,0,true);
			_isPlayingAnimation = true;
		}
		
		protected function resizeOut(currentGroup:IVisualElement):void
		{
			var easing:Sine = new Sine();
			easing.easeInFraction = 1;
			
			var maxi:Resize = new Resize();
			maxi.target = currentGroup;
			maxi.duration = 250;
			maxi.easer = easing;
			maxi.startDelay = 0;
			maxi.widthFrom =  currentGroup.getLayoutBoundsWidth();
			maxi.widthTo = (layout as CompresorElements_Lines).panelWidth;
			//maxi.suspendBackgroundProcessing = true;
			maxi.addEventListener(EffectEvent.EFFECT_END,resizeEndHandler,false,0,true);
			maxi.play();
			
			_isPlayingAnimation = true;
		}
		
		private function resizeEndHandler(event:EffectEvent):void
		{
			
			_isPlayingAnimation = false;
			var currentPanel: GroupItemCompresor = ((event.currentTarget as Resize).target as GroupItemCompresor); 
			if(!currentPanel.isMaximized){
				currentPanel.isMaximized = true;
			}else{
				_isOneMaximixed=false;
				currentPanel.isMaximized = false;
				if(animacionPND.length>0){
					_currentMaximixed =(animacionPND.getItemAt(0) as GroupItemCompresor).indexPanel;
					_isOneMaximixed = true;
					resizeIn(animacionPND.getItemAt(0) as IVisualElement);
					animacionPND = new ArrayCollection();
				}
			}
		}
		protected function rowHoverHandler( event:MouseEvent ):void
		{
			fadeIn( event.currentTarget ); 
		}
		
		protected function rowOutHandler( event:MouseEvent ):void
		{
			fadeOut( event.currentTarget ); 
		}
		protected function fadeIn( $target:Object ):void
		{
			var fade:Fade = new Fade();
			fade.target = $target;
			fade.alphaFrom = ($target as Image).alpha;
			fade.duration = 200;
			fade.alphaTo = 1;
			fade.play();
		}
		
		protected function fadeOut( $target:Object ):void
		{
			var fade:Fade = new Fade();
			fade.target = $target;
			fade.duration = 200;
			fade.alphaFrom = 1;
			fade.alphaTo = alfa;
			fade.play();
		}
		
		public function switchFlecha($indexFlecha:uint):void
		{
			var _imgRow :Image = (getElementAt($indexFlecha) as GroupItemCompresor).getElementAt(0) as Image;
			if(_imgRow.id == "flechaDer"){
				_imgRow.source = flechaIzq;
				_imgRow.id =  "flechaIzq";
			}else if(_imgRow.id == "flechaIzq"){
				_imgRow.source = flechaDer;
				_imgRow.id = "flechaDer";
			}
		}
		public function get isOneMaximixed():Boolean
		{
			return _isOneMaximixed;
		}
		
		public function set isOneMaximixed(value:Boolean):void
		{
			_isOneMaximixed = value;
		}
		
		public function get currentMaximixed():int
		{
			return _currentMaximixed;
		}
		
		public function set currentMaximixed(value:int):void
		{
			_currentMaximixed = value;
		}
		
		public function get isPlayingAnimation():Boolean
		{
			return _isPlayingAnimation;
		}
		
		public function set isPlayingAnimation(value:Boolean):void
		{
			_isPlayingAnimation = value;
		}
		
		public function get snColor():Boolean
		{
			return _snColor;
		}
		
		public function set snColor(value:Boolean):void
		{
			_snColor = value;
		}
		
	}
}