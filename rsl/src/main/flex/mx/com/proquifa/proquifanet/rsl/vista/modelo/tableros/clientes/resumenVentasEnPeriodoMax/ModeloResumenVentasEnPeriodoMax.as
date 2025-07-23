package mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.resumenVentasEnPeriodoMax
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.tableros.clientes.resumenVentasEnPeriodoMax.EventoResumenVentasEnPeriodoMax;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.tableros.clientes.ResumenVentasESAC;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFormatosNumericos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloResumenVentasEnPeriodoMax extends EventDispatcher
	{
		public function ModeloResumenVentasEnPeriodoMax(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				try
				{
					if(new EventoResumenVentasEnPeriodoMax(EventoResumenVentasEnPeriodoMax[$tiposEventos[i]])== null)
					{
						return false;
					}
					else
					{
						return true;
					}
				}
				catch(error:Error) 
				{
					trace(error + "El Tipo de Evento: \""+$tiposEventos[i] + "\" No se encuentra en: EventoResumenVentasEnPeriodoMax// NO SE COLOCARÁ LA PANTALLA DE BLOQUEO")
					return false;
				}
			}
			return false;
		}
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera")
			{
				if(!currentEnEspera)
				{
					_servicesConsultados = new Object();
					if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento)))
					{
						numServicioCompletos=0;
						numServices = 0;
						actualizarEspera = new Object();
						serviciosCompletosDifKey = new Object();
						
						if($tiposEvento.length>0)
						{
							numServices += $tiposEvento.length;
						}
						currentEnEspera = true;
						actualizarEspera.isBusy = true;
						actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
						alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
					}
				}
				else
				{
					numServices += $tiposEvento.length;
				}
			}
			else if (mensaje =="terminaEspera")
			{
				
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String))
				{
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
					trace($errorOrWhoFinish.toString());
				}
				
				if(numServicioCompletos == numServices)
				{
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
					dispatchEvent( new Event("actualizaEsperaYBloqueoModeloResumenVentasEnPeriodoMax") );
				}
			}
			else if(mensaje =="error")
			{
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.show( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
				dispatchEvent( new Event("actualizaEsperaYBloqueoModeloResumenVentasEnPeriodoMax") );
			}
			
			
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloResumenVentasEnPeriodoMax")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		private var _servicesConsultados:Object;
		public function setNumeroServiciosConsultados($tipo:String):void
		{
			if(!_servicesConsultados.hasOwnProperty($tipo))
			{
				_servicesConsultados[$tipo] = $tipo;
				numServices ++;
			}
		}
		
		
		
		private var _clientesAltosFiltrados:ArrayCollection;
		public function setRecibeClientesAltosTodos($clientes:ArrayCollection):void
		{
			_clientesAltosFiltrados = new ArrayCollection;
			
			_clientesAltosFiltrados = $clientes;
			
			dispatchEvent(new Event("enviarLosClientesFiltradosAGridAltosModeloResumeVentasEnPeriodoMax"));
		}
		
		[Bindable(event="enviarLosClientesFiltradosAGridAltosModeloResumeVentasEnPeriodoMax")]
		public function get enviarClientesAltosTodos():ArrayCollection
		{
			return _clientesAltosFiltrados;
		}

		private var _clientesMediosFiltrados:ArrayCollection;
		public function setRecibeClientesMediosTodos($clientes:ArrayCollection):void
		{
			_clientesMediosFiltrados = new ArrayCollection;
			
			_clientesMediosFiltrados = $clientes;
			
			dispatchEvent(new Event("enviarLosClientesFiltradosAGridMediosModeloResumeVentasEnPeriodoMax"));
		}
		
		[Bindable(event="enviarLosClientesFiltradosAGridMediosModeloResumeVentasEnPeriodoMax")]
		public function get enviarClientesMediosTodos():ArrayCollection
		{
			return _clientesMediosFiltrados;
		}

		private var _clientesDistribuidorFiltrados:ArrayCollection;
		public function setRecibeClientesDistribuidorTodos($clientes:ArrayCollection):void
		{
			_clientesDistribuidorFiltrados = new ArrayCollection;
			
			_clientesDistribuidorFiltrados = $clientes;
			
			dispatchEvent(new Event("enviarLosClientesFiltradosAGridDistribuidorModeloResumeVentasEnPeriodoMax"));
		}
		
		[Bindable(event="enviarLosClientesFiltradosAGridDistribuidorModeloResumeVentasEnPeriodoMax")]
		public function get enviarClientesDistribuidorTodos():ArrayCollection
		{
			return _clientesDistribuidorFiltrados;
		}

		
		private var _currentVistaAltos:String;
		public function setRecibeSeleccionDeVistasAltos($vista:String):void
		{
			_currentVistaAltos = $vista;
			
			dispatchEvent(new Event("enviarSeleccionDeVistaEnClientesAltosModeloResumeVentasEnPeriodoMax"));
		}
		
		[Bindable(event="enviarSeleccionDeVistaEnClientesAltosModeloResumeVentasEnPeriodoMax")]
		public function get enviarSelecionDeVistaAltos():String
		{
			return _currentVistaAltos;
		}

		private var _currentVistaDistribuidor:String;
		public function setRecibeSeleccionDeVistasDistribuidor($vista:String):void
		{
			_currentVistaDistribuidor = $vista;
			dispatchEvent(new Event("enviarSeleccionDeVistaEnClientesDistribuidorModeloResumeVentasEnPeriodoMax"));
		}
		
		[Bindable(event="enviarSeleccionDeVistaEnClientesDistribuidorModeloResumeVentasEnPeriodoMax")]
		public function get enviarSelecionDeVistaDistribuidor():String
		{
			return _currentVistaDistribuidor;
		}
		
		
		/*_________________________________________________________________ ERRROR_________________________________________________________________*/
		
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
	}
}