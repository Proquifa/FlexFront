package modelo
{
	import eventos.EventoMensajeroCierre;
	import eventos.EventoMensajeroEnCierre;
	import eventos.EventoMensajeroEstadisticas;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import modelo.objetos.PendientesMensajero;
	import modelo.objetos.itemPendientes;
	import modelo.singletons.datosGlobales;
	import modelo.singletons.enRealizacion.DatosGlobalesEnRealizacion;
	
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectUtil;
	
	import vistas.renders.renderEnCierre.Objects.PendientesEnCierreObject;
	
	
	public class modeloMobilMensajeroEnCierre extends EventDispatcher
	{
		public function modeloMobilMensajeroEnCierre(target:IEventDispatcher = null)
		{
			super(target);
			despachador = target;
			
		}
		
		private var _pendientesEnCierreMensajero:ArrayCollection = new ArrayCollection();
		private var _pendientesEnCierreAgrupados:ArrayCollection = new ArrayCollection();
		
		private var pendientesPorVerificar:itemPendientes = new itemPendientes();
		
		private var pendienteNoVerificado:PendientesMensajero = new PendientesMensajero();
		private var pendientePorJustificar:PendientesMensajero = new PendientesMensajero();
		private var objetoEliminarVistas:Object = null;
		private var despachador:IEventDispatcher;
		
		private var currentIndexSelectedEnClienteEventoRuta:int;
		
		public function recibirPendientesEnCierre($pendientes:ArrayCollection):void
		{
			_pendientesEnCierreMensajero = new ArrayCollection();
			
			if($pendientes.length > 0)
			{
				_pendientesEnCierreMensajero = $pendientes;
				
				formarItemsPendientesParaElMenuPrincipalDePendientes();
				
				/*				if(_pendientesEnCierreAgrupados.length > 0)
				formarItemsParaMenuPendientesPorTipoEvento(0);*/
				
				dispatchEvent(new Event("regresarPendientesParaElMenuPrincipalDePendientesModeloMobilMensajero"));
			}
		}
		
		[Bindable (event="regresarPendientesParaElMenuPrincipalDePendientesModeloMobilMensajero")]
		public function get regresarPendientesEnCierre():ArrayCollection
		{
			return _pendientesEnCierreAgrupados;
		}
		
		public function formarItemsPendientesParaElMenuPrincipalDePendientes():void
		{
			if(_pendientesEnCierreMensajero.length == 0)
			{
				_pendientesEnCierreAgrupados = new ArrayCollection();
				return;
			}
			
			var parseo:ArrayCollection = new ArrayCollection();
			parseo = ObjectUtil.copy(_pendientesEnCierreMensajero) as ArrayCollection;
			var objetos:ArrayCollection = new ArrayCollection();
			
			for(var m:int = 0; parseo.length != 0; m++)
			{
				var arreglo:itemPendientes = new itemPendientes();
				
				arreglo.pendientes.addItem(parseo[0]);
				
				for(var r:int = 1; r<parseo.length; r++)
				{
					if((parseo[0].empresa == parseo[r].empresa ) && (parseo[0].ruta == parseo[r].ruta) && (parseo[0].direccion == parseo[r].direccion))
					{
						arreglo.pendientes.addItem(parseo[r]);
						parseo.removeItemAt(r);
						r = r -1;
					}
				}
				parseo.removeItemAt(0);
				arreglo.formar();
				objetos.addItem(arreglo);
			}
			
			_pendientesEnCierreAgrupados = objetos;
		}
		
		private var pendientesAgrupadosPorTipoEvento:ArrayCollection;
		private var entregas:PendientesEnCierreObject = new PendientesEnCierreObject;
		private var cobros:PendientesEnCierreObject = new PendientesEnCierreObject;
		private var revisiones:PendientesEnCierreObject = new PendientesEnCierreObject;
		private var recoleccionEspecial:PendientesEnCierreObject = new PendientesEnCierreObject;
		private var recoleccion:PendientesEnCierreObject = new PendientesEnCierreObject;
		private var entregaEspecial:PendientesEnCierreObject = new PendientesEnCierreObject;
		private function formarItemsParaMenuPendientesPorTipoEvento($index:int):void
		{
			entregas = new PendientesEnCierreObject;
			cobros = new PendientesEnCierreObject;
			revisiones = new PendientesEnCierreObject;
			recoleccionEspecial = new PendientesEnCierreObject;
			recoleccion = new PendientesEnCierreObject;
			entregaEspecial = new PendientesEnCierreObject;
			
			pendientesAgrupadosPorTipoEvento = new ArrayCollection();
			
			if(_pendientesEnCierreAgrupados.length > $index && $index != -1)
			{
				var pendientes:ArrayCollection = itemPendientes(_pendientesEnCierreAgrupados[$index]).pendientes as ArrayCollection;
				for (var i:int = 0; i < pendientes.length; i++) 
				{
					var currPendiente:PendientesMensajero = pendientes[i] as PendientesMensajero;
					
					switch(currPendiente.evento)
					{
						case "Entrega":
						{
							entregas.label = "ENTREGA";
							entregas.icono = "entrega";
							entregas.total ++;
							entregas.empresa = currPendiente.empresa;
							entregas.direccion = currPendiente.direccion;
							entregas.evento = currPendiente.evento;
							
							if(!entregas.pendientes)
								entregas.pendientes = new Array;
							entregas.pendientes.push(currPendiente);
							break;
						}
						case "Entrega especial":
						{
							entregaEspecial.label = "ENTREGA ESPECIAL";
							entregaEspecial.icono = "entregaEspecial";
							entregaEspecial.total ++;
							entregaEspecial.empresa = currPendiente.empresa;
							entregaEspecial.direccion = currPendiente.direccion;
							entregaEspecial.evento = currPendiente.evento;
							
							if(!entregaEspecial.pendientes)
								entregaEspecial.pendientes = new Array;
							entregaEspecial.pendientes.push(currPendiente);
							break;
						}
						case "Cobro":
						{
							cobros.label = "COBRO";
							cobros.icono = "cobro";
							cobros.total ++;
							cobros.empresa = currPendiente.empresa;
							cobros.direccion = currPendiente.direccion;
							cobros.evento = currPendiente.evento;
							
							if(!cobros.pendientes)
								cobros.pendientes = new Array;
							cobros.pendientes.push(currPendiente);
							break;
						}
						case "Revision":
						{
							revisiones.label = "REVISIÓN";
							revisiones.icono = "revision";
							revisiones.total ++;
							revisiones.empresa = currPendiente.empresa;
							revisiones.direccion = currPendiente.direccion;
							revisiones.evento = currPendiente.evento;
							
							if(!revisiones.pendientes)
								revisiones.pendientes = new Array;
							revisiones.pendientes.push(currPendiente);
							break;
						}
						case "Recoleccion especial":
						{
							recoleccionEspecial.label = "RECOLECCIÓN ESPECIAL";
							recoleccionEspecial.icono = "recoleccionEspecial";
							recoleccionEspecial.total ++;
							recoleccionEspecial.empresa = currPendiente.empresa;
							recoleccionEspecial.direccion = currPendiente.direccion;
							recoleccionEspecial.evento = currPendiente.evento;
							
							if(!recoleccionEspecial.pendientes)
								recoleccionEspecial.pendientes = new Array;
							recoleccionEspecial.pendientes.push(currPendiente);
							break;
						}
						case "Recolección":
						{
							recoleccion.label = "RECOLECCIÓN";
							recoleccion.icono = "recoleccion";
							recoleccion.total ++;
							recoleccion.empresa = currPendiente.empresa;
							recoleccion.direccion = currPendiente.direccion;
							recoleccion.evento = currPendiente.evento;
							
							if(!recoleccion.pendientes)
								recoleccion.pendientes = new Array;
							recoleccion.pendientes.push(currPendiente);
							break;
						}
					}
				}
				
				if(entregas.total > 0)
					pendientesAgrupadosPorTipoEvento.addItem(entregas);
				
				if(cobros.total > 0)
					pendientesAgrupadosPorTipoEvento.addItem(cobros);
				
				if(revisiones.total > 0)
					pendientesAgrupadosPorTipoEvento.addItem(revisiones);
				
				if(recoleccionEspecial.total > 0)
					pendientesAgrupadosPorTipoEvento.addItem(recoleccionEspecial);
				
				if(recoleccion.total > 0)
					pendientesAgrupadosPorTipoEvento.addItem(recoleccion);
				
				if(entregaEspecial.total > 0)
					pendientesAgrupadosPorTipoEvento.addItem(entregaEspecial);
			}
		}
		
		private var currenItemPendienteKey:String;
		public function recibirPendientesParaVerificacion($key:String):void
		{
			//currentIndexSelectedEnClienteEventoRuta = $index;
			currenItemPendienteKey = $key;
			currentIndexSelectedEnClienteEventoRuta = buscarIndex($key,_pendientesEnCierreAgrupados);
			
			formarItemsParaMenuPendientesPorTipoEvento(currentIndexSelectedEnClienteEventoRuta);
			
			//dispatchEvent(new Event("regresarPendientesPorVerificarModeloMobilMensajeroEnCierre"));
		}
		
		/*[Bindable (event="regresarPendientesPorVerificarModeloMobilMensajeroEnCierre")]*/
		public function get regresarPendientesPorVerificar():ArrayCollection
		{
			return pendientesAgrupadosPorTipoEvento;
		}
		
		
		private function buscarIndex($key:String,array:ArrayCollection):int
		{
			var index:int = -1;
			
			for (var i:int = 0; i < array.length; i++) 
			{
				if(array[i].key == $key)
				{
					index = i;
					break;
				}
			}
			return index;
		}
		
		
		///////////////////////////////////////////////////////////		
		
		[Bindable (event="regresarPendientesEnCierreAgrupadosModeloMobilMensajeroEnCierre")]
		public function get regresarPendientesEnCierreAgrupadosParaElMenuEnCierre():ArrayCollection
		{
			return _pendientesEnCierreAgrupados;
		}
		
		//////////////////////////////////////////////////////////
		
		/*		public function recibirPendientesVerificacion(pendientes:itemPendientes):void{
		pendientesPorVerificar = new itemPendientes();
		pendientesPorVerificar = pendientes;
		dispatchEvent(new Event("regresarPendientesPorVerificarEvent"));
		}*/
		
		/*[Bindable (event="regresarPendientesPorVerificarEvent")]
		public function get regresarPendientesPorVerificar():itemPendientes{
		return pendientesPorVerificar;
		}*/
		
		//////////////////////////////////////////////////////////
		
		/*private var _pendientes:Array;*/
		private var _currentPendientePorTipoSeleccionadoKey:String;
		private var _currentIndexPorTipoSeleccionado:int;
		public function recibePendientesPorTipo($key:String):void
		{
			/*_pendientes = new Array;*/
			_currentPendientePorTipoSeleccionadoKey = $key;
			
			_currentIndexPorTipoSeleccionado = buscarIndex($key,pendientesAgrupadosPorTipoEvento);
			
			globales.currentPendientes = PendientesEnCierreObject(pendientesAgrupadosPorTipoEvento[_currentIndexPorTipoSeleccionado]).pendientes;
			
			
			//dispatchEvent(new Event("regresarPendientesPorTipoModeloMobilMensajero"));
		}
		
		/*[Bindable (event="regresarPendientesPorTipoModeloMobilMensajero")]
		public function get regresarPendientesPorTipo():Array
		{
		return _pendientes
		}*/
		
		
		
		//////////////////////////////////////////////////////////
		
		public function resultPendienteNoVerificado(pendiente:PendientesMensajero):void
		{
			pendienteNoVerificado = new PendientesMensajero();
			pendienteNoVerificado = pendiente;
			dispatchEvent(new Event("regresarPendienteNoVerificadoEvent"));
		}
		
		[Bindable (event="regresarPendienteNoVerificadoEvent")]
		public function get regresarPendienteNoVerificado():PendientesMensajero
		{
			return pendienteNoVerificado;
		}
		
		////////////////////////////////////////////////////////
		
		
		public function recibirPendientePorVerificar(_pendiente:PendientesMensajero):void{
			pendientePorJustificar = new PendientesMensajero();
			pendientePorJustificar = _pendiente;
			dispatchEvent(new Event("regresarPendientePorJustificarEvent"));
		}
		
		[Bindable (event="regresarPendientePorJustificarEvent")]
		public function get regresarPendientePorJustificar():PendientesMensajero{
			return pendientePorJustificar;
		}
		
		
		/////////////////////////////////////////////////////////
		
		public function recibirCierrePendiente(resultado:Boolean,pendiente:PendientesMensajero):void
		{
			if(resultado == true)
			{
				for(var m:int = 0; m<pendientesPorVerificar.pendientes.length;m++)
				{
					if(pendientesPorVerificar.pendientes[m].folioEvento == pendiente.folioEvento)
					{
						pendientesPorVerificar.pendientes.removeItemAt(m);
						pendientesPorVerificar.formar();
						
						for(var n:int = 0; n<_pendientesEnCierreAgrupados.length;n++)
						{
							if((_pendientesEnCierreAgrupados[n].empresa ==  pendientesPorVerificar.empresa) && (_pendientesEnCierreAgrupados[n].ruta == pendientesPorVerificar.ruta) 
								&& (_pendientesEnCierreAgrupados[n].direccion == pendientesPorVerificar.direccion))
							{
								if(pendientesPorVerificar.pendientes.length == 0)
								{
									_pendientesEnCierreAgrupados.removeItemAt(n);
									objetoEliminarVistas = new Object();
									objetoEliminarVistas["noVistas"] = 1;
									objetoEliminarVistas["vista"] = "";
									dispatchEvent(new Event("eliminarVistasDesdeMenu"));
								}
								else
								{
									_pendientesEnCierreAgrupados[n] = pendientesPorVerificar;
									dispatchEvent(new Event("regresarPendientesPorVerificarEvent"));
								}
							}
							
						}
					}
				}
				
				/*dispatchEvent(new Event("regresarPendientesParaElMenuPrincipalDePendientesModeloMobilMensajero"));*/
				
				var eventoCierre:EventoMensajeroCierre = new EventoMensajeroCierre(EventoMensajeroCierre.CONSULTAR_PENDIENTES_CERRADOS);
				eventoCierre._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoCierre);
				
				var eventoEstadistica:EventoMensajeroEstadisticas = new EventoMensajeroEstadisticas(EventoMensajeroEstadisticas.TRAER_DATOS_ESTADISTICAS);
				eventoEstadistica._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoEstadistica);
			}
			else
			{
				trace("no actualizo Servicio");
			}
		}
		
		
		public function faultCierrePendiente(fault:Object):void
		{
			trace("error al actualizar");
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		private function eliminarFolio($item:PendientesMensajero,$index:int,array:Array):Boolean
		{
			if($item.folioEvento != folioAEliminarEnVista)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		private var folioAEliminarEnVista:String;
		public function recibirRespuestaDeCierreAPendienteNoRealizado($resultado:Boolean):void
		{
			if($resultado ==true)
			{
				
				folioAEliminarEnVista = globales.currentPendienteNoVerificado.folioEvento; 
				var tempArray:Array = _pendientesEnCierreMensajero.source.filter(eliminarFolio);
				_pendientesEnCierreMensajero = new ArrayCollection(tempArray);
				
				formarItemsPendientesParaElMenuPrincipalDePendientes();
				
				formarItemsParaMenuPendientesPorTipoEvento(currentIndexSelectedEnClienteEventoRuta);
				
				var indexPendienteAgrupadoPorTipo:int = buscarIndex(_currentPendientePorTipoSeleccionadoKey,pendientesAgrupadosPorTipoEvento);
				
				var noVistasAEliminar:int;
				if(pendientesAgrupadosPorTipoEvento.length == 0)
				{
					noVistasAEliminar = 4;
				}
				else if(indexPendienteAgrupadoPorTipo == -1)
				{
					noVistasAEliminar = 3;
				}
				else
				{
					noVistasAEliminar = 2;
					switch(globales.currentPendienteNoVerificado.evento)
					{
						case "Entrega":
						{
							if(entregas.total > 0)
								globales.currentPendientes = entregas.pendientes;
							else
								noVistasAEliminar = 3;
							
							break;
						}
						case "Cobro":
						{
							if(cobros.total > 0)
								globales.currentPendientes = cobros.pendientes;
							else
								noVistasAEliminar = 3;
							break;
						}
						case "Revision":
						{
							if(revisiones.total > 0)
								globales.currentPendientes = revisiones.pendientes;
							else
								noVistasAEliminar = 3;
							break;
						}
						case "Recoleccion especial":
						{
							if(recoleccionEspecial.total > 0)
								globales.currentPendientes = recoleccionEspecial.pendientes;
							else
								noVistasAEliminar = 3;
							break;
						}
						case "Entrega Especial":
						{
							if(entregaEspecial.total > 0)
								globales.currentPendientes = entregaEspecial.pendientes;
							else
								noVistasAEliminar = 3;
							break;
						}
					}
				}
				
				
				/*				for(var m:int = 0; m<pendientesPorVerificar.pendientes.length;m++){
				if(pendientesPorVerificar.pendientes[m].folioEvento == pendiente.folioEvento){
				pendientesPorVerificar.pendientes.removeItemAt(m);
				pendientesPorVerificar.formar();
				
				for(var n:int = 0; n<_pendientesEnCierreAgrupados.length;n++){
				if((_pendientesEnCierreAgrupados[n].empresa ==  pendientesPorVerificar.empresa) && (_pendientesEnCierreAgrupados[n].ruta == pendientesPorVerificar.ruta) && (_pendientesEnCierreAgrupados[n].direccion == pendientesPorVerificar.direccion)){
				if(pendientesPorVerificar.pendientes.length == 0){
				_pendientesEnCierreAgrupados.removeItemAt(n);
				noVistas = 3;
				}
				else{
				_pendientesEnCierreAgrupados[n] = pendientesPorVerificar;
				dispatchEvent(new Event("regresarPendientesPorVerificarEvent"));
				noVistas = 2;
				}
				}
				
				}
				}
				}*/
				
				objetoEliminarVistas = new Object;
				objetoEliminarVistas["noVistas"] = noVistasAEliminar;
				objetoEliminarVistas["vista"] =  "";
				dispatchEvent(new Event("eliminarVistasDesdeMenu"));
				
				/*dispatchEvent(new Event("regresarPendientesParaElMenuPrincipalDePendientesModeloMobilMensajero"));*/
				
				/*var eventoCierre:EventoMensajeroCierre = new EventoMensajeroCierre(EventoMensajeroCierre.CONSULTAR_PENDIENTES_CERRADOS);
				eventoCierre._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoCierre);*/
				
				var eventoEstadistica:EventoMensajeroEstadisticas = new EventoMensajeroEstadisticas(EventoMensajeroEstadisticas.TRAER_DATOS_ESTADISTICAS);
				eventoEstadistica._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoEstadistica);
			}
			else{
				trace("no actualizo Servicio 2");
			}
			
		}
		
		
		/*public function setRecibeIndicacionParaMandarPendientesARealizacion():void
		{
		dispatchEvent(new Event("mandarPendientesSeleccionadosPreviamenteALaVistaRealizacionModeloMobilMensajeroEnCierre"));
		}
		
		[Bindable(event="mandarPendientesSeleccionadosPreviamenteALaVistaRealizacionModeloMobilMensajeroEnCierre")]
		public function get enviaPendientesAlaVistaRealizacionDePendientes():Array
		{
		return null;
		}*/
		
		
		/*		private var _contactos:Array;
		private var pendientesARealizar:RealizarPendientesObject;
		public function setRecibeContactosParaRealizacionDePendientes($pendientesARealizar:RealizarPendientesObject):void
		{
		
		pendientesARealizar = $pendientesARealizar;
		
		_contactos = new Array;
		_contactos.push({nombre:"JUANITO PEREZ",puesto:"ASISTENTE DE COMPRAS"});
		_contactos.push({nombre:"ROSA GONZÁLES",puesto:"SECRETARIA"});
		_contactos.push({nombre:"RODOLFO RAMÍREZ",puesto:"ALMACENISTA"});
		_contactos.push({nombre:"JOSÉ PÉREZ",puesto:"ASISTENTE DE COMPRAS"});
		_contactos.push({nombre:"HUGO HERNÁNDEZ",puesto:"ALMACENISTA"});
		_contactos.push({nombre:"VICTORIA MATIAS",puesto:"ASISTENTE CALIDAD"});
		
		
		pendientesARealizar.contactos = _contactos;
		
		dispatchEvent(new Event("mandarContactosParaLaVistaTodosLosContactosParaRealizacionDePendientesModeloMobilMensajeroEnCierre"));
		}*/
		private var globales:DatosGlobalesEnRealizacion = DatosGlobalesEnRealizacion.getInstance();
		/*private var pendientesARealizar:RealizarPendientesObject;*/
		
		public function setRecibeContactosParaRealizacionDePendientes($listaContactos:ArrayCollection):void
		{
			
			/*pendientesARealizar = $pendientesARealizar;*/
			
			/*			if($listaContactos && $listaContactos.length == 0)
			{
			_contactos = new Array;
			var item:PersonalAlmacenCliente;
			
			item = new PersonalAlmacenCliente;
			item.nombre = "JUANITO PEREZ";
			item.puesto = "ASISTENTE DE COMPRAS";
			item.idPersonal = 1;
			_contactos.push(item);
			
			item = new PersonalAlmacenCliente;
			item.nombre = "ROSA GONZÁLES";
			item.puesto = "SECRETARIA";
			item.idPersonal = 2;
			_contactos.push(item);
			
			item = new PersonalAlmacenCliente;
			item.nombre = "RODOLFO RAMÍREZ";
			item.puesto = "ALMACENISTA";
			item.idPersonal = 3;
			_contactos.push(item);
			
			item = new PersonalAlmacenCliente;
			item.nombre = "JOSÉ PÉREZ";
			item.puesto = "ASISTENTE DE COMPRAS";
			item.idPersonal = 4;
			_contactos.push(item);
			
			item = new PersonalAlmacenCliente;
			item.nombre = "HUGO HERNÁNDEZ";
			item.puesto = "ALMACENISTA";
			item.idPersonal = 5;
			_contactos.push(item);
			
			item = new PersonalAlmacenCliente;
			item.nombre = "VICTORIA MATIAS";
			item.puesto = "ASISTENTE CALIDAD";
			item.idPersonal = 6;
			_contactos.push(item);
			
			}
			else
			{
			_contactos = $listaContactos.source;
			}*/
			
			globales.contactosOriginales = $listaContactos;
			
			globales.ponerLaSiguienteVista = "listaTodosLosContactosReceptoresView";
			
			dispatchEvent(new Event("ponerLaSiguienteVistaContactosModeloMobilMensajeroEnCierre"));
		}
		
		[Bindable(event="ponerLaSiguienteVistaContactosModeloMobilMensajeroEnCierre")]
		public function get ponerLaSiguienteVista():String
		{
			return globales.ponerLaSiguienteVista;
		}
		
		
		private var _respuestaDeActualizarContactos:Boolean;
		public function setRecibeRespuesDeActualizarContactos($respuesta:Boolean):void
		{
			_respuestaDeActualizarContactos = $respuesta;
			
			if(_respuestaDeActualizarContactos)
			{
				/*globales.ponerLaSiguienteVista = "listaTodosLosContactosReceptoresView"; */
				/*dispatchEvent(new Event("ponerLaSiguienteVistaContactosModeloMobilMensajeroEnCierre"));*/
				
				
				var solicitarContactos:EventoMensajeroEnCierre = new EventoMensajeroEnCierre(EventoMensajeroEnCierre.SOLICITAR_CONTACTOS_PARA_REALIZACION_DE_PENDIENTES);
				solicitarContactos.idEmpresa = globales.currentIdEmpresa;
				despachador.dispatchEvent(solicitarContactos);
			}
		}
		
		/*[Bindable(event="enviarRespuestaDeHaberActualizadoLosContactosModeloMobilMensajeroEnCierre")]
		public function get enviarRespuestaDeActualizarContactos():Boolean
		{
		return _respuestaDeActualizarContactos;
		}*/
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		public function faultCierrePendienteNoRealizado(fault:Object):void{
			trace("error al actualizar 2");
		}
		
		
		[Bindable (event="eliminarVistasDesdeMenu")]
		public function get eliminarVistasDesdeMenuEvent():Object
		{
			var objetoPaso:Object = objetoEliminarVistas;
			return objetoPaso;
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		private function quitarFoliosDeVista():void
		{

			
		}
		
		
		public function recibirRespuestaDeCierrePendientesRealizados(resultado:Boolean):void
		{
			if(resultado == true)
			{
/*				pendientesPorVerificar = new itemPendientes();
				for(var m:int = 0; m<_pendientesEnCierreAgrupados.length;m++)
				{
					if((_pendientesEnCierreAgrupados[m].empresa ==  pendientes[0].empresa) && (_pendientesEnCierreAgrupados[m].ruta == pendientes[0].ruta) 
						&& (_pendientesEnCierreAgrupados[m].direccion == pendientes[0].direccion))
					{
						_pendientesEnCierreAgrupados.removeItemAt(m);					
					}
				}*/
				
				for (var i:int = 0; i < globales.currentPendientesParaRealizacion.length; i++) 
				{
					var pendMensajeroRealizado:PendientesMensajero = globales.currentPendientesParaRealizacion[i];
					folioAEliminarEnVista =  pendMensajeroRealizado.folioEvento;
					var tempArray:Array = _pendientesEnCierreMensajero.source.filter(eliminarFolio);	
					_pendientesEnCierreMensajero = new ArrayCollection(tempArray);
					
				}
				
				formarItemsPendientesParaElMenuPrincipalDePendientes();
				
				formarItemsParaMenuPendientesPorTipoEvento(currentIndexSelectedEnClienteEventoRuta);
				
				//var indexPendienteAgrupadoPorTipo:int = buscarIndex(_currentPendientePorTipoSeleccionadoKey,pendientesAgrupadosPorTipoEvento);
				
				var noVistasAEliminar:int;
				if(pendientesAgrupadosPorTipoEvento.length == 0)
				{
					noVistasAEliminar = 5;
				}
				else 
				{
					noVistasAEliminar = 4;
				}
				
				objetoEliminarVistas = new Object();
				objetoEliminarVistas["noVistas"] = noVistasAEliminar;
				objetoEliminarVistas["vista"] = "";
				dispatchEvent(new Event("eliminarVistasDesdeMenu"));
				
				dispatchEvent(new Event("regresarPendientesParaElMenuPrincipalDePendientesModeloMobilMensajero"));
				
				var eventoCierre:EventoMensajeroCierre = new EventoMensajeroCierre(EventoMensajeroCierre.CONSULTAR_PENDIENTES_CERRADOS);
				eventoCierre._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoCierre);
				
/*				var eventoEnCierre:EventoMensajeroEnCierre = new EventoMensajeroEnCierre(EventoMensajeroEnCierre.CONSULTAR_PENDIENTES_EN_CIERRE);
				eventoEnCierre._usuario = datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoEnCierre);*/
				
				
				
				var eventoEstadistica:EventoMensajeroEstadisticas = new EventoMensajeroEstadisticas(EventoMensajeroEstadisticas.TRAER_DATOS_ESTADISTICAS);
				eventoEstadistica._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				despachador.dispatchEvent(eventoEstadistica);
				
				
				/*dispatchEvent(new Event("regresarPendientesEnCierreAgrupadosModeloMobilMensajeroEnCierre"));*/
			}
			else{
				trace("Error servicio realizar todos los pendientes");
			}
		}
		
		public function faultCierreTodosPendientesNoRealizados(fault:Object):void{
			trace(fault.toString());
		}
		
		public function faultPendientesEnCierre(fault:Object):void{
			trace(fault.toString());
		}
		
	}
}