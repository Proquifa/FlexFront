package mx.com.proquifa.proquifanet.rsl.vista.vistas.componentes.pq.seleccionHorario.Clases
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.clientes.generales.EventoCatClientes_Direcciones;
	
	
	[Event(name="quitarImagenDelMouse_EventoGridSeleccionHorario", type="flash.events.Event")]
	[Event(name="enviarLasCeldasSeleccionada", type="flash.events.Event")]
	public class GridSeleccionHorario extends Sprite
	{
		public static const GRID_WIDTH:int = 5;
		public static const GRID_HEIGHT:int = 25;
		
		private var todasLasCeldas:Object; 
		private var isMouseDown:Boolean;
		
		private var _currentLunes:Vector.<int> = new Vector.<int>;
		private var _currentMartes:Vector.<int> = new Vector.<int>;
		private var _currentMiercoles:Vector.<int> = new Vector.<int>;
		private var _currentJueves:Vector.<int> = new Vector.<int>;
		private var _currentViernes:Vector.<int> = new Vector.<int>;
		private var requiereValidacion:Vector.<Boolean> = new Vector.<Boolean>(GRID_WIDTH);
		
		private var isMouseButtonDownGointToUp:Boolean;
		private var isMouseButtonDownGointToUpXSeleccionFila:Boolean;
		
		private var _celdaWidth:Number;
		private var _celdaHeight:Number;
		
		private var _color:uint = Celda.COLOR_BLANCO;
		
		public function GridSeleccionHorario()
		{
			super();
			
			this.addEventListener(MouseEvent.MOUSE_DOWN,gridSeleccionHorarioMouseEventHandler_MOUSEDOWN,false,0,true);
			//this.addEventListener(MouseEvent.MOUSE_UP, gridSeleccionHorarioMouseEventHandler_MOUSEUP,false,0,true);
			this.addEventListener(Event.ENTER_FRAME,enterFrameHandler,false,0,true);
		}
		
		
		public function actualizarTamanio($width:Number,$height:Number):void
		{
			currentCeldasSeleccionadas_key = new Object;
			todasLasCeldas = new Object;
			
			_celdaWidth = Math.round($width/GRID_WIDTH);
			_celdaHeight = Math.round($height/GRID_HEIGHT);
			
			for (var x:int = 0; x < GRID_WIDTH; x++) 
			{
				for (var y:int = 0; y < GRID_HEIGHT; y++) 
				{
					var celda:Celda = new Celda(x,y,_celdaWidth,_celdaHeight);
					addChild(celda);
					todasLasCeldas[x.toString()+"_"+y.toString()] = celda;
				}
			}
		}
		
		private function enterFrameHandler(event:Event):void
		{
			
			var claveCoordenada:String;
			var currentCeldaSelec:Celda;
			var claveY:String;
			var claveX:String;
			
			if(isMouseDown)
			{
				if(event.target.mouseX > 0 && event.target.mouseY > 0)
				{
					
					var coordenada_X:int = Number(int(event.target.mouseX/_celdaWidth)); 
					var coordenada_y:int = Number(int(event.target.mouseY/_celdaHeight)); 
					
					if(isSeleccionActivada)
					{
						if((coordenada_X >= 0 && coordenada_X < GRID_WIDTH) && (coordenada_y >= 0 && coordenada_y < GRID_HEIGHT))
						{
							
							claveCoordenada = coordenada_X.toString()+"_"+coordenada_y.toString();
							if(!currentCeldasSeleccionadas_key.hasOwnProperty(claveCoordenada))
							{
								currentCeldasSeleccionadas_key[claveCoordenada] = claveCoordenada;
								/*ultimaSeleccionVisual.push(claveCoordenada);*/
								
								currentCeldaSelec = todasLasCeldas[claveCoordenada];
								currentCeldaSelec.setColor(Celda.COLOR_GRIS,true);
								color = Celda.COLOR_GRIS;
								claveY = coordenada_y.toString();
								claveX = coordenada_X.toString();
								
								switch(claveX)
								{
									case '0': 
									{ 
										currentLunes.push(coordenada_y);
										requiereValidacion[0] = true;
										break;
									}
									case '1': 
									{ 
										currentMartes.push(coordenada_y);
										requiereValidacion[1] = true;
										break;
									}
									case '2': 
									{
										requiereValidacion[2] = true;
										currentMiercoles.push(coordenada_y); 
										break;
									}
									case '3': 
									{ 
										requiereValidacion[3] = true;
										currentJueves.push(coordenada_y); 
										break;
									}
									case '4': 
									{
										requiereValidacion[4] = true;
										currentViernes.push(coordenada_y); 
										break;
									}
								}
							}
						}
						else
						{
							isMouseButtonDownGointToUp = true;
							isMouseDown = false;
							isSeleccionActivada = false;
							dispatchEvent(new Event("quitarImagenDelMouse_EventoGridSeleccionHorario"));
						}
					}
					else if(activarBorrarSeleccion)
					{
						if((coordenada_X >= 0 && coordenada_X < GRID_WIDTH) && (coordenada_y >= 0 && coordenada_y < GRID_HEIGHT))
						{
							claveCoordenada = coordenada_X.toString()+"_"+coordenada_y.toString();
							
							if(currentCeldasSeleccionadas_key.hasOwnProperty(claveCoordenada))
							{
								delete currentCeldasSeleccionadas_key[claveCoordenada];
								currentCeldaSelec = todasLasCeldas[claveCoordenada];
								currentCeldaSelec.setColor(Celda.COLOR_BLANCO);
								color = Celda.COLOR_BLANCO;
								
								claveY = coordenada_y.toString();
								claveX = coordenada_X.toString();
								
								switch(claveX)
								{
									case '0': 
									{ 
										requiereValidacion[0] = true;
										currentLunes.splice(currentLunes.indexOf(coordenada_y),1);
										break;
									}
									case '1': 
									{ 
										requiereValidacion[1] = true;
										currentMartes.splice(currentMartes.indexOf(coordenada_y),1);
										break;
									}
									case '2': 
									{
										requiereValidacion[2] = true;
										currentMiercoles.splice(currentMiercoles.indexOf(coordenada_y),1); 
										break;
									}
									case '3': 
									{ 
										requiereValidacion[3] = true;
										currentJueves.splice(currentJueves.indexOf(coordenada_y),1); 
										break;
									}
									case '4': 
									{
										requiereValidacion[4] = true;
										currentViernes.splice(currentViernes.indexOf(coordenada_y),1); 
										break;
									}
								}
							}
							
							
							
						}
						else
						{
							isMouseButtonDownGointToUp = true;
							isMouseDown = false;
							activarBorrarSeleccion = false;
							dispatchEvent(new Event("quitarImagenDelMouse_EventoGridSeleccionHorario"));
						}
					}
				}
				else
				{
					isMouseButtonDownGointToUp = true;
					isMouseDown = false;
					activarBorrarSeleccion = false;
					isSeleccionActivada = false;
					dispatchEvent(new Event("quitarImagenDelMouse_EventoGridSeleccionHorario"));
				}
			}
			
			if(isMouseButtonDownGointToUp)
			{
				isMouseButtonDownGointToUp = false;
				
				for (var i:int = 0; i < requiereValidacion.length; i++) 
				{
					if(requiereValidacion[i])
					{
						requiereValidacion[i] = false;
						switch(i)
						{
							case 0:{ validarDiaDeLaSemana(currentLunes,0); break; }
							case 1:{ validarDiaDeLaSemana(currentMartes,1); break; }
							case 2:{ validarDiaDeLaSemana(currentMiercoles,2); break; }
							case 3:{ validarDiaDeLaSemana(currentJueves,3); break; }
							case 4:{ validarDiaDeLaSemana(currentViernes,4); break; }
						}
					}
				}
			}
			
			if(isMouseButtonDownGointToUpXSeleccionFila)
			{
				isMouseButtonDownGointToUpXSeleccionFila = false;
				
				validarDiaDeLaSemana(currentLunes,0); 
				validarDiaDeLaSemana(currentMartes,1);
				validarDiaDeLaSemana(currentMiercoles,2);
				validarDiaDeLaSemana(currentJueves,3);
				validarDiaDeLaSemana(currentViernes,4);
			}
		}
		
		private var lunes:Vector.<int> = new Vector.<int>;
		private var martes:Vector.<int> = new Vector.<int>;
		private var miercoles:Vector.<int> = new Vector.<int>;
		private var jueves:Vector.<int> = new Vector.<int>;
		private var viernes:Vector.<int> = new Vector.<int>;
		private function validarDiaDeLaSemana($diaVector:Vector.<int>,$numDia:int):void
		{
			
			if(isValidoElRangoSeleccionado($diaVector))
			{
				switch($numDia)
				{
					case 0:{ lunes = $diaVector.concat(); break; }
					case 1:{ martes = $diaVector.concat(); break; }
					case 2:{ miercoles = $diaVector.concat(); break; }
					case 3:{ jueves = $diaVector.concat(); break; }
					case 4:{ viernes = $diaVector.concat(); break; }
				}
			}
			else
			{
				switch($numDia)
				{
					case 0:{ currentLunes = lunes.concat(); break; }
					case 1:{ currentMartes = martes.concat(); break; }
					case 2:{ currentMiercoles = miercoles.concat(); break; }
					case 3:{ currentJueves = jueves.concat(); break; }
					case 4:{ currentViernes = viernes.concat(); break; }
				}
			}
			
			switch($numDia)
			{
				case 0:{ $diaVector = currentLunes; break; }
				case 1:{ $diaVector = currentMartes; break; }
				case 2:{ $diaVector = currentMiercoles; break; }
				case 3:{ $diaVector = currentJueves; break; }
				case 4:{ $diaVector = currentViernes; break; }
			}
			actualizarSeleccionVisualYKeyCeldasSeleccionadas($diaVector,$numDia);
		}
		
		private function isValidoElRangoSeleccionado($arregloDia:Vector.<int>):Boolean
		{
			var isValido:Boolean = true;
			var numDeIntervalos:uint = 0;
			var pivote:int=0;
			var repetir:Boolean = true;
			var consecutivo:int = 0;
			
			$arregloDia.sort(Array.NUMERIC);
			
			if($arregloDia.length > 0)
			{
				pivote = $arregloDia[consecutivo];
				var i:int = 0;	
				
				while(repetir)
				{
					if(consecutivo < $arregloDia.length)
					{
						if(!($arregloDia[consecutivo] == (pivote + i)))
						{
							numDeIntervalos++;
							pivote = $arregloDia[consecutivo];
							i = 0;
							
							if(numDeIntervalos > 1)
							{
								repetir = false;
								isValido = false;
							}
						}
						else
						{
							consecutivo++;
							i++;
						}
					}
					else
					{
						repetir = false;
					}
				}
			}
			
			return isValido;
		}
		
		private function actualizarSeleccionVisualYKeyCeldasSeleccionadas($diaVector:Vector.<int>,$numDia:int):void
		{
			desSeleccionarUnaColumnaCompleta($numDia);
			seleccionarHorasPorDia($diaVector,$numDia);
		}
		
		private var _currentCeldasSeleccionadas_key:Object;
		private function gridSeleccionHorarioMouseEventHandler_MOUSEDOWN(event:MouseEvent):void
		{
			isMouseDown = true;
			requiereValidacion = new Vector.<Boolean>(GRID_WIDTH);
			this.addEventListener(MouseEvent.MOUSE_UP, gridSeleccionHorarioMouseEventHandler_MOUSEUP,false,0,true);
		}
		
		private function gridSeleccionHorarioMouseEventHandler_MOUSEUP(event:MouseEvent):void
		{
			if(isMouseDown)
				isMouseButtonDownGointToUp = true;
			removeEventListener(MouseEvent.MOUSE_UP,gridSeleccionHorarioMouseEventHandler_MOUSEUP);
			
			isMouseDown = false;
		}
		
		private var isSeleccionActivada:Boolean;
		public function activarSeleccionEnElGrid():void
		{
			isSeleccionActivada = true;
			activarBorrarSeleccion = false;
		}
		
		public function desactivarSeleccionEnElGrid():void
		{
			isSeleccionActivada = false;
			activarBorrarSeleccion = false;
		}
		
		private var activarBorrarSeleccion:Boolean;
		public function activarBorrarSeleccionEnElGrid():void
		{
			isSeleccionActivada = false;
			activarBorrarSeleccion = true;
		}
		
		public function seleccionarTodoEnELGrid():void
		{
			var cordenada:String;
			for (var x:int = 0; x < GRID_WIDTH; x++) 
			{
				for (var y:int = 0; y < GRID_HEIGHT; y++) 
				{
					cordenada = x+"_"+y;
					var currentCelda:Celda = todasLasCeldas[cordenada];
					
					if(!currentCeldasSeleccionadas_key)
					{
						currentCeldasSeleccionadas_key = new Object;
					}
					
					if(!currentCeldasSeleccionadas_key.hasOwnProperty(currentCelda.posicion_x+"_"+currentCelda.posicion_y))
					{
						currentCeldasSeleccionadas_key[cordenada] = cordenada;
						currentCelda.setColor(Celda.COLOR_GRIS,true);
						color = Celda.COLOR_GRIS;
						
						var claveX:String = x.toString();
						var claveY:String = y.toString();
						
						switch(claveX)
						{
							case '0':{ currentLunes.push(claveY); break; }
							case '1':{ currentMartes.push(claveY); break; }
							case '2':{ currentMiercoles.push(claveY); break; }
							case '3':{ currentJueves.push(claveY); break; }
							case '4':{ currentViernes.push(claveY); break; }
						}
					}
				}
			}
			lunes = currentLunes.concat();
			martes = currentMartes.concat();
			miercoles = currentMiercoles.concat();
			jueves = currentJueves.concat();
			viernes = currentViernes.concat();
			
			if(isSeleccionActivada)
				isSeleccionActivada = false;
		}
		
		public function desSeleccionarTodoEnElGrid():void
		{
			var cordenada:String;
			
			if(currentCeldasSeleccionadas_key)
			{
				for (var x:int = 0; x < GRID_WIDTH; x++) 
				{
					for (var y:int = 0; y < GRID_HEIGHT; y++) 
					{
						cordenada = x+"_"+y;
						var currentCelda:Celda = todasLasCeldas[cordenada];
						if(currentCeldasSeleccionadas_key.hasOwnProperty(currentCelda.posicion_x+"_"+currentCelda.posicion_y)) 
						{
							delete currentCeldasSeleccionadas_key[cordenada];
							currentCelda.setColor(Celda.COLOR_BLANCO);
							color = Celda.COLOR_BLANCO;
						}
					}
				}
			}
			
			lunes = new Vector.<int>;
			currentLunes = new Vector.<int>; 
			currentMartes = new Vector.<int>;
			martes = new Vector.<int>;
			currentMiercoles = new Vector.<int>;
			miercoles = new Vector.<int>;
			jueves = new Vector.<int>;
			currentJueves = new Vector.<int>;
			viernes = new Vector.<int>;
			currentViernes = new Vector.<int>;
			
			if(isSeleccionActivada)
				isSeleccionActivada = false;
		}
		
		public function seleccionarUnaFilaCompleta($fila:int):void
		{
			for (var x:int = 0; x < GRID_WIDTH; x++) 
			{
				if($fila < GRID_HEIGHT)
				{
					
					var coordenada:String = x+"_"+$fila;
					var currentCelda:Celda = todasLasCeldas[coordenada];
					
					if(currentCeldasSeleccionadas_key)
					{
						if(!currentCeldasSeleccionadas_key.hasOwnProperty(coordenada))
						{
							currentCeldasSeleccionadas_key[coordenada] = coordenada;
							currentCelda.setColor(Celda.COLOR_GRIS,true);
							color = Celda.COLOR_GRIS;
							
							switch(x)
							{
								case 0:{
									
									currentLunes.push($fila); 
									break; }
								case 1:{ currentMartes.push($fila); break; }
								case 2:{ currentMiercoles.push($fila); break; }
								case 3:{ currentJueves.push($fila); break; }
								case 4:{ currentViernes.push($fila); break; }
							}
						}
					}
				}
			}
		}
		
		public function activarValidacionDebidoASeleccionPorFila():void
		{
			isMouseButtonDownGointToUpXSeleccionFila = true;
		}
		
		public function desSeleccionarUnaFilaCompleta($fila:int):void
		{
			for (var x:int = 0; x < 5; x++) 
			{
				var coordenada:String = x+"_"+$fila;
				var currentCelda:Celda = todasLasCeldas[coordenada];
				
				if(currentCeldasSeleccionadas_key)
				{
					if(currentCeldasSeleccionadas_key.hasOwnProperty(coordenada))
					{
						delete currentCeldasSeleccionadas_key[coordenada];
						currentCelda.setColor(Celda.COLOR_BLANCO);
						color = Celda.COLOR_BLANCO;
						
						var claveX:String = x.toString();
						
						switch(claveX)
						{
							case '0': 
							{ 
								requiereValidacion[0] = true;
								currentLunes.splice(currentLunes.indexOf($fila),1);
								break;
							}
							case '1': 
							{ 
								requiereValidacion[1] = true;
								currentMartes.splice(currentMartes.indexOf($fila),1);
								break;
							}
							case '2': 
							{
								requiereValidacion[2] = true;
								currentMiercoles.splice(currentMiercoles.indexOf($fila),1); 
								break;
							}
							case '3': 
							{ 
								requiereValidacion[3] = true;
								currentJueves.splice(currentJueves.indexOf($fila),1); 
								break;
							}
							case '4': 
							{
								requiereValidacion[4] = true;
								currentViernes.splice(currentViernes.indexOf($fila),1); 
								break;
							}
						}
					}
				}
			}
		}
		
		public function desSeleccionarUnaColumnaCompleta($columna:int):void
		{
			for (var i:int = 0; i < GRID_HEIGHT; i++) 
			{
				var coordenada:String = $columna+"_"+i;
				var currentCelda:Celda = todasLasCeldas[coordenada];
				
				if(currentCeldasSeleccionadas_key.hasOwnProperty(coordenada))
				{
					delete currentCeldasSeleccionadas_key[coordenada];
					currentCelda.setColor(Celda.COLOR_BLANCO);
					color = Celda.COLOR_BLANCO;
				}
			}
		}
		
		private function seleccionarHorasPorDia($arregloDia:Vector.<int>,$numDia:int):void
		{
			for( var i:int = 0; i < $arregloDia.length; i++) 
			{
				var coordenada:String = $numDia+"_"+$arregloDia[i];
				var currentCelda:Celda = todasLasCeldas[coordenada];
				
				if(!currentCeldasSeleccionadas_key.hasOwnProperty(coordenada))
				{
					currentCeldasSeleccionadas_key[coordenada] = coordenada;
					currentCelda.setColor(Celda.COLOR_GRIS,true);
					color = Celda.COLOR_GRIS;
					
				}
			}
			dispatchEvent(new Event("enviarLasCeldasSeleccionada"));
		}
		
		
		public function settearHorasPorDiaDeLaSemana($arregloDia:Array,$numDia:int):void
		{
			
			var dia:Vector.<int> = Vector.<int>($arregloDia);
			
			
			if(dia || dia.length > 0)
			{
				for( var i:int = 0; i < dia.length; i++) 
				{
					var coordenada:String = $numDia+"_"+$arregloDia[i];
					var currentCelda:Celda = todasLasCeldas[coordenada];
					
					if(currentCelda)
					{
						if(!currentCeldasSeleccionadas_key.hasOwnProperty(coordenada))
						{
							currentCeldasSeleccionadas_key[coordenada] = coordenada;
							currentCelda.setColor(Celda.COLOR_GRIS,true);
							color = Celda.COLOR_GRIS;
							
							var claveX:String = $numDia.toString();
							var claveY:String = $arregloDia[i].toString();
							
							switch(claveX)
							{
								case '0':{ currentLunes.push(claveY); break; }
								case '1':{ currentMartes.push(claveY); break; }
								case '2':{ currentMiercoles.push(claveY); break; }
								case '3':{ currentJueves.push(claveY); break; }
								case '4':{ currentViernes.push(claveY); break; }
							}
						}
					}
				}
			}
			else
			{
				switch($numDia.toString())
				{
					case '0':{ currentLunes = new Vector.<int>; break; }
					case '1':{ currentMartes = new Vector.<int>; break; }
					case '2':{ currentMiercoles = new Vector.<int>; break; }
					case '3':{ currentJueves = new Vector.<int>; break; }
					case '4':{ currentViernes = new Vector.<int>; break; }
				}
			}
			
			switch($numDia.toString())
			{
				case '0':{ lunes = currentLunes.concat(); break; }
				case '1':{ martes = currentMartes.concat(); break; }
				case '2':{ miercoles = currentMiercoles.concat(); break; }
				case '3':{ jueves = currentJueves.concat(); break; }
				case '4':{ viernes = currentViernes.concat(); break; }
			}
		}
		
		public function obtenerHorarioPorDiaDeLaSemana($diaDeLaSemana:int):ArrayCollection
		{
			var currentDia:ArrayCollection;
			
			switch($diaDeLaSemana)
			{
				case 0:
				{
					lunesToService = new ArrayCollection;
					obtenerRangos(lunes,$diaDeLaSemana,lunesToService);
					currentDia = lunesToService;
					break; 
				}
				case 1:
				{ 
					martesToService = new ArrayCollection;
					currentDia = martesToService;
					obtenerRangos(martes,$diaDeLaSemana,martesToService); 
					break; 
				}
				case 2:
				{
					miercolesToService = new ArrayCollection;
					obtenerRangos(miercoles,$diaDeLaSemana,miercolesToService);
					currentDia = miercolesToService;
					break; 
				}
				case 3:
				{
					juevesToService = new ArrayCollection;
					obtenerRangos(jueves,$diaDeLaSemana,juevesToService);
					currentDia = juevesToService;
					break; 
				}
				case 4:
				{
					viernesToService = new ArrayCollection;
					currentDia = viernesToService;
					obtenerRangos(viernes,$diaDeLaSemana,viernesToService); 
					break; 
				}
			}
			
			return currentDia;
		}
		
		private var lunesToService:ArrayCollection;
		private var martesToService:ArrayCollection;
		private var miercolesToService:ArrayCollection;
		private var juevesToService:ArrayCollection;
		private var viernesToService:ArrayCollection;
		private function obtenerRangos($arregloDia:Vector.<int>, $diaDeLaSemana:int,$arrayParaServicio:ArrayCollection):void
		{
			var isValido:Boolean = true;
			var numDeIntervalos:uint = 0;
			var pivote:int=0;
			var repetir:Boolean = true;
			var consecutivo:int = 0;
			
			$arregloDia.sort(Array.NUMERIC);
			
			if($arregloDia.length > 0)
			{
				numDeIntervalos++;
				pivote = $arregloDia[consecutivo];
				var i:int = 0;	
				
				while(repetir)
				{
					if(consecutivo < $arregloDia.length)
					{
						if(!($arregloDia[consecutivo] == (pivote + i)))
						{
							numDeIntervalos++;
							pivote = $arregloDia[consecutivo];
							i = 0;
							
							if(numDeIntervalos > 1)
							{
								repetir = false;
								isValido = false;
							}
						}
						else
						{
							consecutivo++;
							i++;
						}
					}
					else
					{
						repetir = false;
					}
				}
			}
			if(numDeIntervalos == 2)
			{
				for (var j:int = 0; j < $arregloDia.length; j++) 
				{
					$arrayParaServicio.addItem($arregloDia[j]);
				}
			}
			else if(numDeIntervalos == 1)
			{
				for (var k:int = 0; k < 2; k++) 
				{
					for (var i2:int = 0; i2 < $arregloDia.length; i2++) 
					{
						$arrayParaServicio.addItem($arregloDia[i2]);
					}
				}
			}
		}
	
		public function get celdaWidth():Number
		{
			return _celdaWidth;
		}

		public function set celdaWidth(value:Number):void
		{
			_celdaWidth = value;
		}
		
		public function get celdaHeight():Number
		{
			return _celdaHeight;
		}

		public function set celdaHeight(value:Number):void
		{
			_celdaHeight = value;
		}

		[Bindable]
		public function get color():uint
		{
			return _color;
		}

		public function set color(value:uint):void
		{
			_color = value;
		}

		public function get currentLunes():Vector.<int>
		{
			return _currentLunes;
		}

		public function set currentLunes(value:Vector.<int>):void
		{
			_currentLunes = value;
		}

		public function get currentMartes():Vector.<int>
		{
			return _currentMartes;
		}

		public function set currentMartes(value:Vector.<int>):void
		{
			_currentMartes = value;
		}

		public function get currentMiercoles():Vector.<int>
		{
			return _currentMiercoles;
		}

		public function set currentMiercoles(value:Vector.<int>):void
		{
			_currentMiercoles = value;
		}

		public function get currentJueves():Vector.<int>
		{
			return _currentJueves;
		}

		public function set currentJueves(value:Vector.<int>):void
		{
			_currentJueves = value;
		}

		public function get currentViernes():Vector.<int>
		{
			return _currentViernes;
		}

		public function set currentViernes(value:Vector.<int>):void
		{
			_currentViernes = value;
		}

		public function get currentCeldasSeleccionadas_key():Object
		{
			return _currentCeldasSeleccionadas_key;
		}

		public function set currentCeldasSeleccionadas_key(value:Object):void
		{
			_currentCeldasSeleccionadas_key = value;
		}


	}
}