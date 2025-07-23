package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.generales
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Horario;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.utils.ObjectUtil;

	public class ModeloCatProDirecciones extends EventDispatcher
	{
		
		private var posicionToCeldas:Object = {0:'8:00',1:'8:30',2:'9:00',3:'9:30',4:'10:00',5:'10:30',6:'11:00',7:'11:30',8:'12:00',9:'12:30',10:'13:00',11:'13:30',
			12:'14:00',13:'14:30',14:'15:00',15:'15:30',16:'16:00',17:'16:30',18:'17:00',19:'17:30',20:'18:00',21:'18:30',22:'19:00',23:'19:30',24:'20:00',25:'20:30'};
		
		private var combinacionXdias:Object = 
			{
				'01234':'Lunes a Viernes','0123':'Lunes a Jueves','012':'Lunes a Miércoles','01': 'Lunes y Martes',
				'1234':'Martes a Viernes','123':'Martes a Jueves','12':'Martes y Miércoles',
				'234':'Miércoles a Viernes','23':'Miércoles y Jueves',
				'34':'Jueves y Viernes',
				'024':'Lunes, Miercoles y Viernes', '13':'Martes y Jueves'
			};
		
		private var nombresDeArreglos:Object = 
			{
				0:'plunes',1:'pmartes',2:'pmiercoles',3:'pjueves',4:'pviernes'
			};
		
		private var nombreDeLosDias:Object = 
			{
				0:"Lunes",1:"Martes",2:"Miércoles",3:"Jueves",4:"Viernes"
			};
		
		public function ModeloCatProDirecciones(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		
		private var variable:Horario;
		private var _direcciones:ArrayCollection;
		
		
		public function setRecibeDireccionesDelCliente($direcciones:Direccion):void
		{
			if ($direcciones == null ) return;
			_direcciones = new ArrayCollection;
			_direcciones.addItem($direcciones);
			//_direcciones = $direcciones;
			dispatchEvent(new Event("solicitarLasDireccionesDelProveedoresModeloCatProveedor_Direcciones"));
		}
		
		[Bindable(event="solicitarLasDireccionesDelProveedoresModeloCatProveedor_Direcciones")]
		public function get mandarLasDireccionesDelCliente():ArrayCollection
		{
			return _direcciones;
		}
		
		private var horarios:ArrayCollection;
		public function setRecibeHorariosPorTipoDireccionesDelCliente($direcciones:ArrayCollection):void
		{
			if ($direcciones == null ) return;
			
			horarios = $direcciones;
			
			construirHorarios(horarios);
			
			dispatchEvent(new Event("solicitarLosHorariosDireccionesDelProveedoresModeloCatClientes_Direcciones"));
		}
		
		[Bindable(event="solicitarLosHorariosDireccionesDelProveedoresModeloCatClientes_Direcciones")]
		public function get mandarLosHorariosDireccionesDelCliente():ArrayCollection
		{
			return horarios;
		}
		
		private var clienteDireccionxPais:Direccion;
		public function setRecibeDireccionxPais($dato:ArrayCollection):void
		{
			clienteDireccionxPais = new Direccion;
			if ($dato != null && $dato.length > 0){
				var currentSQL:Query = new Query($dato,['estado','municipio','colonia']);
				var colonias:Array = currentSQL.getValoresCampoOmitiendoRepetidosDeTodoElUniverso("colonia");
				
				clienteDireccionxPais.lstColonias = new ArrayCollection(colonias);
				clienteDireccionxPais.estado = $dato[0].estado;
				clienteDireccionxPais.municipio = $dato[0].municipio;
			}
			
			dispatchEvent(new Event("recibeDireccionxPaisProveedoresModeloCatProveedoresFinanciero"));
		}
		
		[Bindable(event="recibeDireccionxPaisProveedoresModeloCatProveedoresFinanciero")]
		public function get enviaDireccionxPais():Direccion
		{
			return clienteDireccionxPais;
		}
		
		private var respuestaHorario:Boolean;
		public function setRecibeRespuestaHorarios($dato:Boolean):void
		{
			respuestaHorario = $dato;
			
			dispatchEvent(new Event("recibeRespuestaHorarioModeloCatProveedoresFinanciero"));
		}
		
		[Bindable(event="recibeRespuestaHorarioModeloCatProveedoresFinanciero")]
		public function get enviaRespuestaHorarios():Boolean
		{
			return respuestaHorario;
		}
		
		private var _infoDireccion:ArrayCollection;
		public function setRecibeInfoParaDireccion($infoDirecc:ArrayCollection):void
		{
			_infoDireccion = $infoDirecc;
			
			dispatchEvent(new Event("enviarInfoDeDireccionModeloCatProveedores_Direcciones"));
		}
		[Bindable(event="enviarInfoDeDireccionModeloCatProveedores_Direcciones")]
		public function get enviarInfoDeDireccion():ArrayCollection
		{
			return _infoDireccion;
		}
		
		
		//Respuesta Actualizar Direccion
		
		private var respuesta:Number;
		public function setRespuestaActualizacionDireccion($infoDirecc:Number):void
		{
			respuesta = $infoDirecc;
			
			dispatchEvent(new Event("enviarRespuestaDireccionModeloCatProveedores_Direcciones"));
		}
		[Bindable(event="enviarRespuestaDireccionModeloCatProveedores_Direcciones")]
		public function get enviarRespuestaDireccion():Number
		{
			return respuesta;
		}
		
		public static function construirHorarios($horarios:ArrayCollection):void{
			if ($horarios == null)
				return;
			
			var arrayHorario:Array = $horarios.source;
			var currentHorario:Horario;
			var rangos:Array;
			var diasEnTexto:Vector.<String> = new Vector.<String>;
			var soloDias:Vector.<String> = new Vector.<String>;
			var soloHoras:Vector.<String> = new Vector.<String>;
			
			var modelo:ModeloCatProDirecciones = new ModeloCatProDirecciones();
			
			for (var i:int = 0; i < $horarios.length; i++) 
			{
				diasEnTexto = new Vector.<String>;
				soloDias = new Vector.<String>;
				soloHoras = new Vector.<String>;
				currentHorario = $horarios[i];
				
				if(currentHorario.diario)
				{
					rangos = modelo.obtenerLosRangosDeunDia(currentHorario.plunes);
					if(modelo.determinarSiSonIguales(rangos))
					{
						diasEnTexto.push("Lunes a Viernes de " + modelo.obtenerHora(rangos[0],"inicio") + " a " + modelo.obtenerHora(rangos[0],"fin"));
						soloDias.push("Lunes a Viernes");
						soloHoras.push(modelo.obtenerHora(rangos[0],"inicio") + " - " +  modelo.obtenerHora(rangos[0],"fin"));
					}
					else
					{
						diasEnTexto.push("Lunes a Viernes de " + modelo.obtenerHora(rangos[0],"inicio") + " a " + modelo.obtenerHora(rangos[0],"fin") +" y " + modelo.obtenerHora(rangos[1],"inicio") + " a " + modelo.obtenerHora(rangos[1],"fin"));
						soloDias.push("Lunes a Viernes");
						soloHoras.push(modelo.obtenerHora(rangos[0],"inicio") + " - " +  modelo.obtenerHora(rangos[0],"fin") + " y " + modelo.obtenerHora(rangos[1],"inicio") + " - " +  modelo.obtenerHora(rangos[1],"fin"));
					}
				}
				else
				{
					//checar que días traen son válidos o traen información
					var informacionSemana:Object = modelo.obtenerPrimerDiaYTotalDeDiasConHorarios(currentHorario);
					modelo.construirHorariosEnTextos(informacionSemana,currentHorario,diasEnTexto,soloDias,soloHoras);
				}
				currentHorario.diasEnTexto = diasEnTexto;
				currentHorario.onlyDias = soloDias; 
				currentHorario.onlyHoras = soloHoras;
			}
		}
		
		private function obtenerLosRangosDeunDia($curDia:ArrayCollection):Array
		{
			var arrayReturn:Array = new Array;
			var primerRango:Vector.<int> = new Vector.<int>;
			var segundoRango:Vector.<int> = new Vector.<int>;
			
			if($curDia)
			{
				//Se realiza esto temporalmente para quitar los negativos
				$curDia = new ArrayCollection($curDia.source.filter(quitarNumerosNegativos));
				//$curDia.refresh();
				
				var arrayTemp:Array = $curDia.source;
				var indexCut:int;
				var indexCut2:int = 0;
				if(arrayTemp.length > 0)
				{
					
					if(arrayTemp.length == 2)
					{
						
						primerRango.push(arrayTemp[0]);
						segundoRango.push(arrayTemp[1]);
					}
					else 
					{
						var consecutivo:int = arrayTemp[0];
						for (var i:int = 0; i <= arrayTemp.length; i++) 
						{
							if(consecutivo == arrayTemp[i])
							{
								consecutivo++;
								indexCut = i;
							}
							else
							{
								indexCut++;
								break;
							}
							
						}
						
						primerRango = Vector.<int>(arrayTemp.slice(0,indexCut));
						segundoRango = Vector.<int>(arrayTemp.slice(indexCut,arrayTemp.length));
						
					}
					
					arrayReturn.push(primerRango);
					arrayReturn.push(segundoRango);
				}
			}
			
			return arrayReturn;
		}
		
		private function construirHorariosEnTextos($infoSemana:Object,$curHorario:Horario,$diasTexto:Vector.<String>,$soloDias:Vector.<String>,$soloHoras:Vector.<String>):void
		{
			//PRIMERO VERIFICAR SI LOS DÍAS SON IGUALES
			var rangos:Array;
			var iguales:Vector.<int> = new Vector.<int>;
			var diferentes:Vector.<int> = new Vector.<int>;
			var igualCadena:String = "";
			var diferenteCadena:String = "";
			var currentPivotDay:String = nombresDeArreglos[$infoSemana.primerDia];
			var currentVectorDiasConInfo:Vector.<int> =  ObjectUtil.copy($infoSemana.vectorDiasConInfo ) as Vector.<int>;
			var currentDiasConInfo:Object = ObjectUtil.copy($infoSemana.diasConInfo);
			
			$infoSemana.diasConInfo = new Object;
			
			iguales.push($infoSemana.primerDia);
			igualCadena = $infoSemana.primerDia;
			delete currentDiasConInfo[$infoSemana.primerDia];
			
			if($infoSemana.totalDias == 1)
			{
				rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[currentPivotDay]));
				if(determinarSiSonIguales(rangos))
				{
					$diasTexto.push(nombreDeLosDias[$infoSemana.primerDia]+" de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
					$soloDias.push(nombreDeLosDias[$infoSemana.primerDia]);
					$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
				}
				else
				{
					$diasTexto.push(nombreDeLosDias[$infoSemana.primerDia]+" de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin") +" y " + obtenerHora(rangos[1],"inicio") + " a " + obtenerHora(rangos[1],"fin"));
					$soloDias.push(nombreDeLosDias[$infoSemana.primerDia]);
					$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " +  obtenerHora(rangos[0],"fin") + " y " + obtenerHora(rangos[1],"inicio") + " - " +  obtenerHora(rangos[1],"fin"));
				}
			}
			else
			{
				if($infoSemana.totalDias >= 0)
				{
					//if(currentPivotDay == "plunes")
					//{
					
						for (var j:int = 1; j < $infoSemana.totalDias; j++) 
						{
							//for(var l:int = $infoSemana.primerDia+1; l < 5; l++)
							//{
								//var pdias:int = $infoSemana.primerDia+1;
								var diaString:String = nombresDeArreglos[currentVectorDiasConInfo[j]];
								if(determinarSiSonIguales(null,ArrayCollection($curHorario[currentPivotDay]).source,ArrayCollection($curHorario[diaString]).source))
								{
									iguales.push(currentVectorDiasConInfo[j]);
									igualCadena += currentVectorDiasConInfo[j];
									delete currentDiasConInfo[currentVectorDiasConInfo[j]];
								}
								else
								{
									diferentes.push(currentVectorDiasConInfo[j]);
									diferenteCadena += currentVectorDiasConInfo[j];
									$infoSemana.diasConInfo[currentVectorDiasConInfo[j]] = currentVectorDiasConInfo[j];
								}
							//}
						}
					//}
					
					if(iguales.length == $infoSemana.totalDias)
					{
						
						//for(var l:int = 0; l<2; l++)
						//{
							if(sonDiasConsecutivos(iguales))
							{
								rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[nombresDeArreglos[iguales[0]]]));
								if(determinarSiSonIguales(rangos))
								{
									if($infoSemana.totalDias > 2)
									{
									$diasTexto.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]] + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
									$soloDias.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]]);
									$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
									}
									else if($infoSemana.totalDias == 2)
									{
										$diasTexto.push(nombreDeLosDias[iguales[0]] + " y " + nombreDeLosDias[iguales[iguales.length -1]] + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
										$soloDias.push(nombreDeLosDias[iguales[0]] + " y " + nombreDeLosDias[iguales[iguales.length -1]]);
										$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
										
									}
									
								}
								else
								{
									$diasTexto.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]] + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin") +" y " + obtenerHora(rangos[1],"inicio") + " a " + obtenerHora(rangos[1],"fin"));
									$soloDias.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]]);
									$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " +  obtenerHora(rangos[0],"fin") + " y " + obtenerHora(rangos[1],"inicio") + " - " +  obtenerHora(rangos[1],"fin"));
								}
							}
							else
							{
								var cadenaDeDias:String = "";
								var m:int = currentVectorDiasConInfo[0];
								for (var k:int = 0; k < iguales.length; k++) 
								{
									if(k == 0)
									{
										cadenaDeDias += nombreDeLosDias[m];
									}
									else if(k == (iguales.length-1))
									{
										cadenaDeDias += " y " + nombreDeLosDias[iguales[k]];
									}
									else
									{  
										cadenaDeDias += ", " + nombreDeLosDias[iguales[k]];
									}
								}
								
								rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[nombresDeArreglos[iguales[0]]]));
								if(determinarSiSonIguales(rangos))
								{
									$diasTexto.push(cadenaDeDias + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
									$soloDias.push(cadenaDeDias);
									$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
								}
								else
								{
									$diasTexto.push(cadenaDeDias + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin") +" y " + obtenerHora(rangos[1],"inicio") + " a " + obtenerHora(rangos[1],"fin"));
									$soloDias.push(cadenaDeDias);
									$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " +  obtenerHora(rangos[0],"fin") + " y " + obtenerHora(rangos[1],"inicio") + " - " +  obtenerHora(rangos[1],"fin"));
								}
							}
							/*rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[nombresDeArreglos[iguales[0]]]));
							if(rangos[0][0] == rangos[1][0])
							{
							
							$diasTexto.push(combinacionXdias[igualCadena] + " " + obtenerHora(rangos[l],"inicio") + " a " + obtenerHora(rangos[l],"fin"));
							$soloDias.push(combinacionXdias[igualCadena]);
							$soloHoras.push(obtenerHora(rangos[l],"inicio") + " - " + obtenerHora(rangos[l],"fin"));
							break;
						
							}
							else
							{
								$diasTexto.push(combinacionXdias[igualCadena] + " " + obtenerHora(rangos[l],"inicio") + " a " + obtenerHora(rangos[l],"fin"));
								$soloDias.push(combinacionXdias[igualCadena]);
								$soloHoras.push(obtenerHora(rangos[l],"inicio") + " - " + obtenerHora(rangos[l],"fin"));
							}*/
						//}
							
								
					}
					else if(iguales.length == 1 && iguales[0] >= 0)
					{
						
						rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[nombresDeArreglos[iguales[0]]]));
						if(determinarSiSonIguales(rangos))
						{
							$diasTexto.push(nombreDeLosDias[iguales[0]] +" de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
							$soloDias.push(nombreDeLosDias[iguales[0]]);
							$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
						}
						else
						{
							$diasTexto.push(nombreDeLosDias[iguales[0]] +" de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin") +" y " + obtenerHora(rangos[1],"inicio") + " a " + obtenerHora(rangos[1],"fin"));
							$soloDias.push(nombreDeLosDias[iguales[0]]);
							$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " +  obtenerHora(rangos[0],"fin") + " y " + obtenerHora(rangos[1],"inicio") + " - " +  obtenerHora(rangos[1],"fin"));
						}
						
						$infoSemana.totalDias = $infoSemana.totalDias - iguales.length;
						$infoSemana.vectorDiasConInfo = diferentes;
						$infoSemana.primerDia = diferentes[0];
						construirHorariosEnTextos($infoSemana,$curHorario,$diasTexto,$soloDias,$soloHoras);
					}
					else if(iguales.length > 1)
					{
						$infoSemana.totalDias = $infoSemana.totalDias - iguales.length;
						$infoSemana.vectorDiasConInfo = diferentes;
						$infoSemana.primerDia = diferentes[0];
						
						if(sonDiasConsecutivos(iguales))
						{
							rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[nombresDeArreglos[iguales[0]]]));
							if(determinarSiSonIguales(rangos))
							{
								$diasTexto.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]] + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
								$soloDias.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]]);
								$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
							}
							else
							{
								$diasTexto.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]] + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin") +" y " + obtenerHora(rangos[1],"inicio") + " a " + obtenerHora(rangos[1],"fin"));
								$soloDias.push(nombreDeLosDias[iguales[0]] + " a " + nombreDeLosDias[iguales[iguales.length -1]]);
								$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " +  obtenerHora(rangos[0],"fin") + " y " + obtenerHora(rangos[1],"inicio") + " - " +  obtenerHora(rangos[1],"fin"));
							}
						}
						else
						{
							var cadenaDeDias1:String = "";
							var n:int = currentVectorDiasConInfo[0];
							for (var w:int = 0; w < iguales.length; w++) 
							{
								if(w == 0)
								{
									cadenaDeDias1 += nombreDeLosDias[n];
								}
								else if(w == (iguales.length-1))
								{
									cadenaDeDias1 += " y " + nombreDeLosDias[iguales[w]];
								}
								else
								{  
									cadenaDeDias1 += ", " + nombreDeLosDias[iguales[w]];
								}
							}
							
							rangos = obtenerLosRangosDeunDia(ArrayCollection($curHorario[nombresDeArreglos[iguales[0]]]));
							if(determinarSiSonIguales(rangos))
							{
								$diasTexto.push(cadenaDeDias1 + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin"));
								$soloDias.push(cadenaDeDias1);
								$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " + obtenerHora(rangos[0],"fin"));
							}
							else
							{
								$diasTexto.push(cadenaDeDias1 + " de " + obtenerHora(rangos[0],"inicio") + " a " + obtenerHora(rangos[0],"fin") +" y " + obtenerHora(rangos[1],"inicio") + " a " + obtenerHora(rangos[1],"fin"));
								$soloDias.push(cadenaDeDias1);
								$soloHoras.push(obtenerHora(rangos[0],"inicio") + " - " +  obtenerHora(rangos[0],"fin") + " y " + obtenerHora(rangos[1],"inicio") + " - " +  obtenerHora(rangos[1],"fin"));
							}
						}
						
						construirHorariosEnTextos($infoSemana,$curHorario,$diasTexto,$soloDias,$soloHoras);
					}
				}
			}
		
		}
		private function obtenerPrimerDiaYTotalDeDiasConHorarios($horario:Horario):Object
		{
			var informacionDelaSemana:Object = new Object;
			var totalDeDias:uint = 0;
			var keyDiasConInfo:Object = new Object;
			var vectorDiasConInfo:Vector.<int> = new Vector.<int>;
			
			var primerDia:int = 0;
			if(!$horario.lunes)
			{
				if(!$horario.martes)
				{
					if(!$horario.miercoles)
					{
						if(!$horario.jueves)
						{
							if(!$horario.viernes)
							{
								primerDia = -1;// en realidad no tendría que suceder este.
							}
							else
							{
								primerDia = 4;
							}
						}
						else
						{
							primerDia = 3;
						}
					}
					else
					{
						primerDia = 2;
					}
				}
				else
				{
					primerDia = 1;
				}
			}
			else
			{
				primerDia = 0;
			}
			
			for (var i:int = 0; i < 5; i++) 
			{
				switch(i)
				{
					case 0:{ 
						if($horario.lunes)
						{ 
							totalDeDias ++; keyDiasConInfo[0] = 0; vectorDiasConInfo.push(0);
						} 
						break;
						}
					case 1:{ 
						if($horario.martes)
						{ 
							totalDeDias ++; keyDiasConInfo[1] = 1; vectorDiasConInfo.push(1);
						} 
						break;
						}
					case 2:{ 
						if($horario.miercoles)
						{ 
							totalDeDias ++; keyDiasConInfo[2] = 2; vectorDiasConInfo.push(2);
						} 
						break;
						}
					case 3:{ 
						if($horario.jueves)
						{ 
							totalDeDias ++; keyDiasConInfo[3] = 3; vectorDiasConInfo.push(3);
						} 
						break;
						}
					case 4:{ 
						if($horario.viernes)
						{
							totalDeDias ++; keyDiasConInfo[4] = 4; vectorDiasConInfo.push(4);
						}
						break;
						}
					}
				}
			
			
			informacionDelaSemana.primerDia = primerDia;
			informacionDelaSemana.totalDias = totalDeDias;
			informacionDelaSemana.diasConInfo = keyDiasConInfo;
			informacionDelaSemana.vectorDiasConInfo = vectorDiasConInfo;
			
			return informacionDelaSemana;
		}
		
		private function determinarSiSonIguales($rangos:Array= null, $arreglo1:Array = null, $arreglo2:Array = null):Boolean
		{
			var sonIguales:Boolean = false;
			
			if($rangos)
			{
				if($rangos.length == 2)
				{
					if(ObjectUtil.compare($rangos[0],$rangos[1]) == 0 )
					{
						sonIguales = true;
					}
				}
			}
			else if($arreglo1  && $arreglo2)
			{
				if(ObjectUtil.compare($arreglo1,$arreglo2) == 0 )
				{
					sonIguales = true;
				}
			}
			
			return sonIguales;
		}
		
		private function sonDiasConsecutivos($array:Vector.<int>):Boolean
		{
			var sonDiasConsecutivos:Boolean = true;
			var consecutivo:int = $array[0];
			
			for(var i:int = 0; i < $array.length; i++) 
			{
				if(consecutivo == $array[i])
				{
					consecutivo ++;
				}
				else
				{
					sonDiasConsecutivos = false;
					break;
				}
			}
			
			return sonDiasConsecutivos;
		}
		
		private function quitarNumerosNegativos(item:*, index:int, array:Array):Boolean
		{
			if(item > -1)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		private function obtenerHora($array:Vector.<int>, $tipo:String):String
		{
			var stringToReturn:String = "Sin hora";
			
			if($tipo == "inicio")
			{
				stringToReturn = posicionToCeldas[$array[0]]; 
			}
			else if($tipo == "fin")
			{
				stringToReturn = posicionToCeldas[$array[$array.length-1]+1]; 
			}
			return stringToReturn;
		}
		
	}
}