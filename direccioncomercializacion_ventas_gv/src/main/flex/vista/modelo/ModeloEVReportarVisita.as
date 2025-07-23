package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;
	import mx.controls.Alert;

	public class ModeloEVReportarVisita extends EventDispatcher
	{
		/**
		 ***************************************************** PLANIFICAR SPRINT *************************************************************
		 */
		
		private var listaVisitas:ArrayCollection;
		public function setObtenerVisitasRealizadas( data:ArrayCollection ):void{
			listaVisitas = new ArrayCollection;
			if(data){
				listaVisitas = data;
			}
			
			dispatchEvent( new Event("obtenerVisitasRealizadasModeloEVPlanificarSprint") );
		}
		
		private var respuestainsertarDocumentacion:Boolean;
		public function setrespuestaInsercionDoc( data:Boolean ):void{
			respuestainsertarDocumentacion = data;
			
			dispatchEvent( new Event("enviarRespuestaInsercionDocumentos") );
		}
		
		[Bindable(event="obtenerVisitasRealizadasModeloEVPlanificarSprint")]
		public function get enviarVisitasRealizadas():ArrayCollection{
			return listaVisitas;
		}
		
		[Bindable(event="enviarRespuestaInsercionDocumentos")]
		public function get enviarRespuestaInsercionDoc():Boolean{
			return respuestainsertarDocumentacion;
		}
		
		public function ModeloEVReportarVisita(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function errorReportarVisita(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		
		private var totalesClientes:ArrayCollection;
		private var listaGraficaClientes:ArrayCollection;
		private var listaGraficaTipoVisitas:ArrayCollection;
		public function setObtenerTotalesVisitaRV( data:ArrayCollection ):void{
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
			
			dispatchEvent( new Event("obtenerTotalesRepostarVisitaAgrupadas") );
			dispatchEvent( new Event("obtenerlistaGraficaClienteAgrupadasReportarVisita") );
			dispatchEvent( new Event("obtenerlistaGraficaTipoVisitaAgrupadasReportarVisita") );
		}
		
		[Bindable(event="obtenerTotalesRepostarVisitaAgrupadas")]
		public function get enviarTotalesVisitasClientesAgrupadas():ArrayCollection{
			return totalesClientes;
		}
		[Bindable(event="obtenerlistaGraficaClienteAgrupadasReportarVisita")]
		public function get enviarGraficaClientesAgrupadas():ArrayCollection{
			return listaGraficaClientes;
		}
		[Bindable(event="obtenerlistaGraficaTipoVisitaAgrupadasReportarVisita")]
		public function get enviarGraficaTipoVisitaAgrupadas():ArrayCollection{
			return listaGraficaTipoVisitas;
		}
		
		
	}
}