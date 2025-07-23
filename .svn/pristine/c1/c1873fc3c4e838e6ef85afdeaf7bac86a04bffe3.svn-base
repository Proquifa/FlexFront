package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.despachos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.consultas.despachos.EventoConsultaPermisos;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PermisoImportacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.TiempoProceso;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	import skins.catalogos.catalogoAlertas;
	
	/**
	 *  ////////////////////////////////////////////////////////////////// Consulta permisos importacion //////////////////////////////////////////////////////////////////
	 */ 
	public class ModeloConsultaPermisos extends EventDispatcher
	{
		/**
		 * //////////////////////////////////////////////////////////// Consulta permisos Avanzada //////////////////////////////////////////////////////////// 
		 */
		private var _consultaPermisos:ArrayCollection;
		public function setConsultaPermisos( $dato:ArrayCollection ):void{
			_consultaPermisos= new ArrayCollection();
			_consultaPermisos = ObjectUtil.copy( $dato ) as ArrayCollection;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaPermisosEventoConsultaPermisos");
			}
			
			dispatchEvent( new Event('consultaPermisosModeloConsultaPermisos') );
		}
		/**
		 * //////////////////////////////////////////////////////////// Consulta permisos Avanzada //////////////////////////////////////////////////////////// 
		 */
		[Bindable(event="consultaPermisosModeloConsultaPermisos")]
		public function get ConsultaPermisos():ArrayCollection{
			return this._consultaPermisos;
		}
		/**
		 * //////////////////////////////////////////////////////////// Consulta permisos Rapida //////////////////////////////////////////////////////////// 
		 */
		public function setConsultaPermisosRapida( $dato:ArrayCollection ):void{
			_consultaPermisos= new ArrayCollection();
			_consultaPermisos = ObjectUtil.copy( $dato ) as ArrayCollection;
			dispatchEvent( new Event('consultaPermisosModeloConsultaPermisos') );
		}
		
		/**
		 * //////////////////////////////////////////////////////////// Consulta GRAFICAS //////////////////////////////////////////////////////////// 
		 */
		private var _consultaGraficas:ArrayCollection;
		public function setConsultaGraficas( $dato:ArrayCollection ):void{
			_consultaGraficas= new ArrayCollection();
			_consultaGraficas = ObjectUtil.copy( $dato ) as ArrayCollection;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"consultaGraficasEventoConsultaPermisos");
			}
			
			dispatchEvent( new Event('consultaGraficasEventoConsultaPermisos') );
		}
		
		[Bindable(event="consultaGraficasEventoConsultaPermisos")]
		public function get ConsultaGraficas():ArrayCollection{
			return this._consultaGraficas;
		}
		
		/**
		 * //////////////////////////////////////////////////////////// Consulta permisos Avanzada //////////////////////////////////////////////////////////// 
		 */
		private var historialPermisos:ArrayCollection;
		public function setHistorial( $dato:ArrayCollection ):void{
			if($dato == null ) return;
			
			historialPermisos= new ArrayCollection();
			historialPermisos = ObjectUtil.copy( $dato ) as ArrayCollection;
			var isWithFinProceso:Boolean = false;
			
			if( $dato.length > 0){
				
				for (var i:int = 0; i < historialPermisos.length; i++) 
				{
					if(i == 0)
						( historialPermisos[i] as TiempoProceso ).NC = true;
					
					if((historialPermisos[i] as TiempoProceso).etiquetas.toUpperCase() == 'PERMISO IMPORTACIÓN' )
						isWithFinProceso = true;
				}
				
				if(!isWithFinProceso){
					var ultimoObject: Object = new Object;
					ultimoObject.etiquetas = "total";
					historialPermisos.addItem(ultimoObject);
				}
			}
			dispatchEvent( new Event('historialModeloConsultaPermisos') );
		}
		
		[Bindable(event="historialModeloConsultaPermisos")]
		public function get Historial():ArrayCollection{
			return this.historialPermisos;
		}
		/**
		 * //////////////////////////////////////////////////////////// Consulta Generales //////////////////////////////////////////////////////////// 
		 */
		private var eventoGenerales:EventoConsultaPermisos;
		public function setGenerales($datos:ArrayCollection, $dato:EventoConsultaPermisos ):void{
			eventoGenerales = $dato;
			eventoGenerales.listaGenerales = new ArrayCollection();
			eventoGenerales.listaGenerales = ObjectUtil.copy( $datos ) as ArrayCollection;
			dispatchEvent( new Event('generalesModeloConsultaPermisos') );
		}
		
		[Bindable(event="generalesModeloConsultaPermisos")]
		public function get Generales():EventoConsultaPermisos{
			return this.eventoGenerales;
		}
		
		
		/**
		 * //////////////////////////////////////////////////////////// Consulta Totales hoy //////////////////////////////////////////////////////////// 
		 */
		private var totales:ArrayCollection;
		public function setTotales( $dato:ArrayCollection ):void{
			totales = $dato;
			
			if(actualizarEspera!= null && currentEnEspera){
				setControlDeBloqueoPantalla("terminaEspera",null,null,"obtenerTotalesPorPeriodoEventoConsultaPermisos");
			}
			
			dispatchEvent( new Event('totalModeloConsultaPermisos') );
		}
		[Bindable(event="totalModeloConsultaPermisos")]
		public function get Totales():ArrayCollection{
			return this.totales;
		}
		/**
		 * //////////////////////////////////////////////////////////// Consulta Totales Pasado //////////////////////////////////////////////////////////// 
		 */
		private var totalesPasado:ArrayCollection;
		public function setTotalesPasado( $dato:ArrayCollection ):void{
			totalesPasado = $dato;
			dispatchEvent( new Event('totalPasadoModeloConsultaPermisos') );
		}
		
		[Bindable(event="totalPasadoModeloConsultaPermisos")]
		public function get TotalesPasado():ArrayCollection{
			return this.totalesPasado;
		}
		/**
		 * //////////////////////////////////////////////////////////// Consulta Totales PostPasado //////////////////////////////////////////////////////////// 
		 */
		private var totalesPostPasado:ArrayCollection;
		public function setTotalesPosPasado( $dato:ArrayCollection ):void{
			totalesPostPasado = $dato;
			dispatchEvent( new Event('totalPostPasadoModeloConsultaPermisos') );
		}
		
		[Bindable(event="totalPostPasadoModeloConsultaPermisos")]
		public function get TotalesPostPasado():ArrayCollection{
			return this.totalesPostPasado;
		}
		
		
		
		private var currentEnEspera:Boolean;
		private var actualizarEspera:Object = new Object;
		private var numServices:uint;
		private var numServicioCompletos:uint;
		private var serviciosCompletosDifKey:Object = new Object;
		public function setControlDeBloqueoPantalla(mensaje:String,$tiposEvento:Array,$idCurrentBottons:Array,$errorOrWhoFinish:Object):void
		{
			if(mensaje == "iniciarEspera"){
				if(Boolean(verificarSiElExistenLosTiposDeEvento($tiposEvento))){
					numServicioCompletos=0;
					numServices = 0;
					actualizarEspera = new Object();
					serviciosCompletosDifKey = new Object();
					numServices = $tiposEvento.length;
					currentEnEspera = true;
					actualizarEspera.isBusy = true;
					actualizarEspera["idCurrentButtons"] = $idCurrentBottons;
					alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
				}
			}else if (mensaje =="terminaEspera"){
				if(!serviciosCompletosDifKey.hasOwnProperty($errorOrWhoFinish as String)){
					numServicioCompletos++;
					serviciosCompletosDifKey[($errorOrWhoFinish as String)] = ($errorOrWhoFinish as String);
				}
				if(numServicioCompletos == numServices){
					alertaSingleton.remove(true);
					actualizarEspera.isBusy=false;
					currentEnEspera = false;
					numServices = 0;
				}
			}else if(mensaje =="error"){
				alertaSingleton.remove(true);
				currentEnEspera = false;
				alertaSingleton.showReintentar( $errorOrWhoFinish.toString(), catalogoAlertas.TIT_ERR);
				actualizarEspera.isBusy=false;
			}
			
			dispatchEvent( new Event("actualizaEsperaYBloqueoModeloConsultaCompras") );
		}
		
		private function verificarSiElExistenLosTiposDeEvento($tiposEventos:Array):Boolean
		{
			for (var i:int = 0; i < $tiposEventos.length; i++) 
			{
				if((EventoConsultaPermisos[$tiposEventos[i]])== null){
					return false;
				}
			}
			return true;
		}
		[Bindable(event="actualizaEsperaYBloqueoModeloConsultaCompras")]
		public function get actualizarEstadoDeEsperaYBloqueo():Object
		{
			return actualizarEspera;
		}
		
		/**
		 * //////////////////////////////////////////////////////////// Error //////////////////////////////////////////////////////////// 
		 */
		public function error(obj:Object):void{
			alertaSingleton.showReintentar(obj.toString());
		}
		
		public function ModeloConsultaPermisos(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}