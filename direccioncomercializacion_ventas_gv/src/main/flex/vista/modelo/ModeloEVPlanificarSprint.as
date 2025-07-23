package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;
	import mx.controls.Alert;

	public class ModeloEVPlanificarSprint extends EventDispatcher
	{
		/**
		 ***************************************************** TOTALES VISITA CLIENTE AGRUPADOS *************************************************************
		 */
		
		private var totalesClientes:ArrayCollection;
		private var listaGraficaClientes:ArrayCollection;
		private var listaGraficaTipoVisitas:ArrayCollection;
		public function setObtenerSolicitudesPoolVisitas( data:ArrayCollection ):void{
			if( data == null ){
				totalesClientes = new ArrayCollection();
				listaGraficaClientes = new ArrayCollection();
				listaGraficaTipoVisitas = new ArrayCollection();
			}else{
				totalesClientes = data;
				listaGraficaClientes = new ArrayCollection();
				listaGraficaTipoVisitas = new ArrayCollection();
				
				var totalSolicitudes:int;
				var totalCRM:int;
				
				for each (var temp:VisitaCliente in data) 
				{
					var resumen:ResumenConsulta = new ResumenConsulta;
					resumen.etiqueta = temp.nombreCliente;
					resumen.totalSolicitudes = temp.numSolicitud;
					resumen.totalCRM = temp.numCRM;
					resumen.totalClientes = 1;
					resumen.totalVisita = temp.numSolicitud + temp.numCRM;
					listaGraficaClientes.addItem(resumen);
					
					totalSolicitudes += temp.numSolicitud;
					totalCRM += temp.numCRM;
					
				}
				
				var resumenTV:ResumenConsulta = new ResumenConsulta;
				resumenTV.etiqueta = "SOLICITUDES";
				resumenTV.totalSolicitudes = totalSolicitudes;
				resumenTV.totalCRM = 0;
				resumenTV.totalVisita = totalSolicitudes;
				listaGraficaTipoVisitas.addItem(resumenTV);
				
				resumenTV = new ResumenConsulta;
				resumenTV.etiqueta = "CRM";
				resumenTV.totalSolicitudes = 0;
				resumenTV.totalCRM = totalCRM;
				resumenTV.totalVisita = totalCRM;
				listaGraficaTipoVisitas.addItem(resumenTV);
				
			}
			
			dispatchEvent( new Event("obtenerTotalesVisitaClienteAgrupadasModeloEVPlanificarSprint") );
			dispatchEvent( new Event("obtenerlistaGraficaClienteAgrupadasModeloEVPlanificarSprint") );
			dispatchEvent( new Event("obtenerlistaGraficaTipoVisitaAgrupadasModeloEVPlanificarSprint") );
		}
		
		[Bindable(event="obtenerTotalesVisitaClienteAgrupadasModeloEVPlanificarSprint")]
		public function get enviarTotalesVisitasClientesAgrupadas():ArrayCollection{
			return totalesClientes;
		}
		[Bindable(event="obtenerlistaGraficaClienteAgrupadasModeloEVPlanificarSprint")]
		public function get enviarGraficaClientesAgrupadas():ArrayCollection{
			return listaGraficaClientes;
		}
		[Bindable(event="obtenerlistaGraficaTipoVisitaAgrupadasModeloEVPlanificarSprint")]
		public function get enviarGraficaTipoVisitaAgrupadas():ArrayCollection{
			return listaGraficaTipoVisitas;
		}
		
		/**
		 *****************************************************  VISITA CLIENTE  *************************************************************
		 */
		
		private var listaVisitaCliente:ArrayCollection;
		public function setObtenerVisitaClientePorEmpleado( data:ArrayCollection ):void{
			if( data == null ){
				listaVisitaCliente = new ArrayCollection();
				
			}else{
				listaVisitaCliente = data;
				var numFila:int = 0;
				for each (var temp:VisitaCliente in data) 
				{
					temp.numFila = numFila;
					temp.nombreContacto = temp.contacto.nombreCompleto;
					numFila++;
				}
			}
			
			dispatchEvent( new Event("obtenerlistaVisitaClientePorEmpleadoModeloEVPlanificarSprint") );
		}
		[Bindable(event="obtenerlistaVisitaClientePorEmpleadoModeloEVPlanificarSprint")]
		public function get enviarListaVisitaClientePorEmpleado():ArrayCollection{
			return listaVisitaCliente;
		}
		
		
		/**
		 ***************************************************** SPRINTS ABIERTOS *************************************************************
		 */
		
		private var listaSprints:ArrayCollection;
		public function setObtenerSprintsAbiertos( data:ArrayCollection ):void{
			if( data == null ){
				listaSprints = new ArrayCollection();
				
				
			}else{
				listaSprints = data;
			}
			
			dispatchEvent( new Event("obtenerlistaSprintsAbiertosModeloEVPlanificarSprint") );
		}
		[Bindable(event="obtenerlistaSprintsAbiertosModeloEVPlanificarSprint")]
		public function get enviarSprintsAbiertos():ArrayCollection{
			return listaSprints;
		}
		
		/**
		 ***************************************************** GUARDAR SPRINT *************************************************************
		 */
		
		private var guardadoExito:Boolean;
		public function setObtenerRespuestaGuardado( data:Boolean ):void{
			guardadoExito = data;
			
			dispatchEvent( new Event("obtenerrespuestaGuardadoVisitaModeloEVPlanificarSprint") );
		}
		[Bindable(event="obtenerrespuestaGuardadoVisitaModeloEVPlanificarSprint")]
		public function get enviarRespuestoGuardado():Boolean{
			return guardadoExito;
		}
		/**
		 ***************************************************** PLANIFICAR SPRINT *************************************************************
		 */
		
		private var planificarSprintExito:Boolean;
		public function setObtenerRespuestaPlanificarSprint( data:Boolean ):void{
			planificarSprintExito = data;
			
			dispatchEvent( new Event("obtenerRespuestaPlanificarVisitaModeloEVPlanificarSprint") );
		}
		[Bindable(event="obtenerRespuestaPlanificarVisitaModeloEVPlanificarSprint")]
		public function get enviarRespuestoPlanificarSprint():Boolean{
			return planificarSprintExito;
		}
		
		public function ModeloEVPlanificarSprint(target:IEventDispatcher=null)
		{
			super(target)
		}
		
		public function errorAtenderPlanificarSprint(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
	}
}