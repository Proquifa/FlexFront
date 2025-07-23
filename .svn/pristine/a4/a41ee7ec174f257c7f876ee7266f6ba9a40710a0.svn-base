package mx.com.proquifa.vista.vistas.skin.cover
{
	import flash.display.GradientType;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import flash.geom.Vector3D;
	import flash.utils.Timer;
	import flash.utils.getTimer;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.Group;
	
	public class CoverFlowPQNet extends Group
	{
		private var _tweenDuration:int = 1200;
		private var _startTime:int;
		private var _elapsed:int;
		private var _iteration:uint
		private var _iterationCover:CoverComoUnGrupo;
		private var _unitsFromCenter:uint;
		
		private var _coversContainer:Group;
		
		private var _backgroundColorCoverFlow:uint = 0x000000;
		
		private var _covers:Vector.<CoverComoUnGrupo>;
		private var _selectedIndex:uint = 0;
		
		private var _centerMargin:Number;
		private var _horizontalSpacing:Number;
		private var _backRowDepth:Number;
		private var _backRowAngle:Number;
		private var _verticalOffsetPercent:Number;
		private var _verticalOffsetValue:int;
		private var _currentNivel:String;
		
		private var _delta:Number;
		private var _showIconos:Boolean = true;
		private var _vista:String;
		
		private static const DEFAULT_CENTER_MARGIN:Number      = 70;
		private static const DEFAULT_HORIZONTAL_SPACING:Number = 40;
		private static const DEFAULT_BACK_ROW_DEPTH:Number     = 100;
		private static const DEFAULT_BACK_ROW_ANGLE:Number     = 40;
		private static const DEFAULT_VERTICAL_OFFSET:Number    = 8;
		
		public function CoverFlowPQNet()
		{
			super();
			
			_coversContainer = new Group;
			
			//_captionField = new Label;
			_centerMargin = DEFAULT_CENTER_MARGIN;
			_horizontalSpacing = DEFAULT_HORIZONTAL_SPACING;
			_backRowDepth = DEFAULT_BACK_ROW_DEPTH;
			_backRowAngle = DEFAULT_BACK_ROW_ANGLE;
			_verticalOffsetPercent = DEFAULT_VERTICAL_OFFSET;
			_currentNivel = "Generales";
			
			this.addEventListener(Event.ADDED_TO_STAGE,coverFlow_ADDEDEVENT,false,0,true);
		}
		
		
		private function coverFlow_ADDEDEVENT(ev:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE,coverFlow_ADDEDEVENT);
			
			if(this.automationParent)
			{
				this.width = this.automationParent.width;
				this.height = this.automationParent.height;
			}
			
			this.addElement(_coversContainer);
		}
		
		private var currentHeight:Number = 0;
		private var currentWidth:Number = 0;
		private var cambioWidth:Boolean;
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			
			
			if(currentWidth != unscaledWidth || currentHeight != this.automationParent.height)
			{
				if(currentWidth != unscaledWidth)
				{
					cambioWidth = true;
					currentWidth = unscaledWidth;
				}
				
				currentHeight = this.automationParent.height;
				_verticalOffsetValue = Math.round(currentHeight*(_verticalOffsetPercent/100));
				
				_coversContainer.width = unscaledWidth+200;
				_coversContainer.height = currentHeight;
				
				
				layoutCovers();
				
				var matrix:Matrix = new Matrix();
				matrix.createGradientBox(unscaledWidth,_coversContainer.height);
				matrix.tx = unscaledWidth/2;
				this.graphics.clear();
				this.graphics.beginGradientFill(GradientType.RADIAL,[0xffffff,0xd5d6da],[.2,.8],[0,255],matrix);
				//this.graphics.beginGradientFill(GradientType.RADIAL,[0x999999,0x222222],[1,1],[0,255],matrix);
				this.graphics.drawRect(0,0,unscaledWidth,_coversContainer.height);
			}
			
			this.scrollRect = new Rectangle(0,0,unscaledWidth,unscaledHeight);
		}
		
		public function load($familias:ArrayCollection,$mantenerFamiliaSeleccionada:Boolean = false):void
		{
			unload();
			
			if(!$mantenerFamiliaSeleccionada)
			{
				_currentNivel = "Generales";
				_selectedIndex = 0;
			}
			
			_covers = new Vector.<CoverComoUnGrupo>;
			_coversContainer.removeAllElements();
			
			for (var i:int = 0; i < $familias.length; i++) 
			{
				var cover:CoverComoUnGrupo = new CoverComoUnGrupo();
				cover.id = i.toString();
				cover.addEventListener("grupoInterno_MouseEventClick",coverAsGroup_MOUSECLICK,false,0,true);
				cover.percentWidth = cover.percentHeight = 100;
				cover.currentFamilia = $familias[i];
				_coversContainer.addElement(cover);
				_covers.push(cover);
			}
			layoutCovers(true);
		}
		
		private function unload():void
		{
			if(_covers && _covers.length > 0)
			{
				for (var i:int = 0; i < _covers.length; i++) 
				{
					var cover:CoverComoUnGrupo = _covers[i];
					cover.removeAllElements();
					cover.removeEventListener("grupoInterno_MouseEventClick",coverAsGroup_MOUSECLICK);
				}
			}
		}
		
		private function coverAsGroup_MOUSECLICK($event:MouseEvent):void
		{
			selectedIndex = int($event.currentTarget.id);
		}
		
		private function ocultarBotonesDeLaFamilia($familia:int):void
		{
			if(_covers && _covers.length > 0)
			{
				var currentFamilia:CoverComoUnGrupo = _covers[$familia];
				currentFamilia.ocultarBotonesDeNiveles();
			}
		}
		
		private	var temporizador:Timer;
		private function layoutCovers($actualizarInfo:Boolean = false):void
		{
			if(_covers && _covers.length > 0)
			{
				var currentCover:CoverComoUnGrupo;
				var distanceFromCenter:uint;
				var tempXPosition:Number;
				
				for (var i:int = 0; i < _covers.length; i++) 
				{
					currentCover = _covers[i];
					
					currentCover.height =  Math.round((currentHeight/5) * 4.2);
					currentCover.width = currentHeight;
					
					if($actualizarInfo)
						currentCover.load();
					
					if (i == _selectedIndex)
					{
						currentCover.rotationY = 0;
						currentCover.x = (this.width / 2);
						currentCover.z = 0;
						
						_coversContainer.setElementIndex(currentCover, _coversContainer.numElements-1);
					}
					else if(i > _selectedIndex)
					{
						distanceFromCenter = i - _selectedIndex;
						
						currentCover.transformAround(null, null, new Vector3D(0,backRowAngle,0),null,null,null,null);
						currentCover.x = (((this.width / 2) + (_centerMargin - ( 200 - currentCover.width ))) + (distanceFromCenter * _horizontalSpacing))-5;
						currentCover.z = _backRowDepth;
						currentCover.invalidateDisplayList();
						
						_coversContainer.setElementIndex(currentCover, _coversContainer.numElements - (distanceFromCenter + 1));
					}
					else if(i < _selectedIndex)
					{
						distanceFromCenter = _selectedIndex - i;
						
						currentCover.transformAround(null, null, new Vector3D(0,-backRowAngle,0),null,null,null,null);
						currentCover.x = (((this.width / 2) - (_centerMargin - ( 200 - currentCover.width ))) - (distanceFromCenter * _horizontalSpacing))+5;
						currentCover.z = _backRowDepth;
						currentCover.invalidateDisplayList();
						
						_coversContainer.setElementIndex(currentCover, _coversContainer.numElements - (distanceFromCenter + 1));
					}
					
					currentCover.y =  Math.max(_verticalOffsetValue,5);
				}
			}
			
			if($actualizarInfo)
			{
				if(temporizador == null)
				{
					temporizador = new Timer(1500,0);
					temporizador.addEventListener(TimerEvent.TIMER,temporizadorLayout_TIMER_COMPLETE,false,0,true);
				}
				
				if(temporizador)
				{
					if(temporizador.running)
					{
						temporizador.reset();
						temporizador.start();
					}
					else
					{
						temporizador.start();
					}
				}
			}
		}
		
		private function temporizadorLayout_TIMER_COMPLETE(event:TimerEvent):void
		{
			temporizador.stop();
			temporizador.removeEventListener(TimerEvent.TIMER,temporizadorLayout_TIMER_COMPLETE);
			temporizador = null;
			
			mostrarOpcionesEnLaFamilia();
		}
		
		private function determineLayout(destinationIndex:uint):void 
		{
			
			if(_covers && _covers.length > 0 )
			{
				var iterationCover:CoverComoUnGrupo;
				var tempXPosition:Number;
				
				for (var i:uint = 0; i < _covers.length; i++) 
				{
					iterationCover = _covers[i] as CoverComoUnGrupo;
					
					if (i == destinationIndex) 
					{
						iterationCover.endRotationY = 0;
						iterationCover.endX = (this.width / 2);
						iterationCover.endZ = 0;
						//_captionField.text = iterationCover.caption;
						_coversContainer.setElementIndex(iterationCover, _coversContainer.numElements-1);
					}
					else if (i > destinationIndex)
					{
						_unitsFromCenter = i - destinationIndex;
						iterationCover.endRotationY = _backRowAngle;
						
						tempXPosition = (((this.width / 2) + (_centerMargin - ( 200 - iterationCover.width ))) + (_unitsFromCenter * _horizontalSpacing))-5;
						iterationCover.endX = tempXPosition;
						iterationCover.endZ = _backRowDepth;
						_coversContainer.setElementIndex(iterationCover, _coversContainer.numElements - (_unitsFromCenter + 1));
						
					}
					else if (i < destinationIndex)
					{
						_unitsFromCenter = destinationIndex - i;
						iterationCover.endRotationY = -_backRowAngle;
						
						tempXPosition =  (((this.width / 2) - (_centerMargin - ( 200 - iterationCover.width ))) - (_unitsFromCenter * _horizontalSpacing))+5;
						iterationCover.endX = tempXPosition;
						iterationCover.endZ = _backRowDepth;
						_coversContainer.setElementIndex(iterationCover, _coversContainer.numElements - (_unitsFromCenter + 1));
						
					}
				}
				
				if(temporizador == null)
				{
					temporizador = new Timer(_tweenDuration,0);
					temporizador.addEventListener(TimerEvent.TIMER,temporizadorLayout_TIMER_COMPLETE,false,0,true);
				}
				
				if(temporizador)
				{
					if(temporizador.running)
					{
						temporizador.reset();
						temporizador.start();
					}
					else
					{
						temporizador.start();
					}
				}
			}
		}
		
		public function get backgroundColorCoverFlow():uint
		{
			return _backgroundColorCoverFlow;
		}
		
		public function set backgroundColorCoverFlow(value:uint):void
		{
			_backgroundColorCoverFlow = value;
		}
		
		public function get centerMargin():Number
		{
			return _centerMargin;
		}
		
		public function set centerMargin(value:Number):void
		{
			if(isNaN(value))
			{
				_centerMargin = DEFAULT_CENTER_MARGIN;
				return;				
			}
			_centerMargin = Math.max(0,value);
		}
		
		public function get horizontalSpacing():Number
		{
			return _horizontalSpacing;
		}
		
		public function set horizontalSpacing(value:Number):void
		{
			if(isNaN(_horizontalSpacing))
			{
				_horizontalSpacing = DEFAULT_HORIZONTAL_SPACING;
				return;
			}
			
			_horizontalSpacing = Math.max(0,value);
		}
		
		public function get backRowDepth():Number
		{
			return _backRowDepth;
		}
		
		public function set backRowDepth(value:Number):void
		{
			if(isNaN(value))
			{
				_backRowDepth = DEFAULT_BACK_ROW_DEPTH;
				return;
			}
			_backRowDepth = Math.max(0,value);
		}
		
		public function get backRowAngle():Number
		{
			return _backRowAngle;
		}
		
		public function set backRowAngle(value:Number):void
		{
			if(isNaN(value))
			{
				_backRowAngle = DEFAULT_BACK_ROW_ANGLE;
				return;
			}
			_backRowAngle = Math.max(0,value);
		}
		
		public function get verticalOffsetPercent():Number
		{
			return _verticalOffsetPercent;
		}
		
		public function set verticalOffsetPercent(value:Number):void
		{
			if(isNaN(value))
			{
				_verticalOffsetPercent = DEFAULT_VERTICAL_OFFSET;
				return;
			}
			
			_verticalOffsetPercent = Math.max(0,value);
		}
		
		public function get selectedIndex():uint
		{
			return _selectedIndex;
		}
		
		public function set selectedIndex(value:uint):void
		{
			if(_covers.length == 0)
			{
				_selectedIndex = 0;
				return;
			}
			
			if( _selectedIndex != value  )
			{
				ocultarBotonesDeLaFamilia(_selectedIndex);
				_selectedIndex = Math.max(0,Math.min(value,_covers.length - 1));
				
				_startTime = getTimer();
				determineLayout(_selectedIndex);
				removeEventListener(Event.ENTER_FRAME, enterFrame_CoverFlow);
				addEventListener(Event.ENTER_FRAME, enterFrame_CoverFlow);
			}
		}
		
		private function enterFrame_CoverFlow(e:Event):void 
		{
			_elapsed = getTimer() - _startTime;
			
			if (_elapsed > _tweenDuration)
			{
				removeEventListener(Event.ENTER_FRAME, enterFrame_CoverFlow);
				return;
			}
			
			for (_iteration = 0; _iteration < _covers.length; _iteration++)
			{
				_iterationCover = _covers[_iteration];
				_iterationCover.updateTween(_elapsed, _tweenDuration);
			}
		}
		
		private function mostrarOpcionesEnLaFamilia():void
		{
			if(_covers && _covers.length > 0)
			{
				var currentFamilia:CoverComoUnGrupo = _covers[selectedIndex];
				//if(showIconos == true)
				currentFamilia.mostrarBotonesDeNiveles();
			}
		}
		
		public function get delta():Number
		{
			return _delta;
		}
		
		public function set delta(value:Number):void
		{
			if(value > 0 )
			{
				_delta = Math.ceil(value * 0.000000000000000000000000000000001);
				
				if(_selectedIndex > 0 && _delta != 0 && _delta < 2)
				{
					selectedIndex -= 1;
				}
			}
			else 
			{
				_delta = Math.floor(value * 0.000000000000000000000000000000001);
				
				if(_selectedIndex < _covers.length-1 && _delta != 0 && _delta > -2)
				{
					selectedIndex += 1;
				}
			}
		}
		
		public function get currentNivel():String
		{
			return _currentNivel;
		}
		
		public function set currentNivel(value:String):void
		{
			_currentNivel = value;
		}
		
		public function get showIconos():Boolean
		{
			return _showIconos;
		}
		
		public function set showIconos(value:Boolean):void
		{
			_showIconos = value;
			if(_covers!=null)
				for (var i:int = 0; i < _covers.length; i++) 
				{
					var cover:CoverComoUnGrupo = _covers[i];
					cover.showIconos = _showIconos;
				}
			
		}
		
		public function get vista():String
		{
			return _vista;
		}
		
		public function set vista(value:String):void
		{
			_vista = value;
			if(_covers!=null)
				for (var i:int = 0; i < _covers.length; i++) 
				{
					var cover:CoverComoUnGrupo = _covers[i];
					cover.vista = _vista;
				}
			
		}
		
		
	}
}