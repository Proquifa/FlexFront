package vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.alertPqNet.ResultAlert;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.SolicitudVisita;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.Visita;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsGrid;
	import mx.controls.Alert;
	import mx.utils.ObjectUtil;
	
	import vista.evento.EventoEVGestionarVisitas;
	import vista.evento.EventoEVReqMovil;

	public class ModeloEVGestionarVisitas extends EventDispatcher
	{
		
		/**
		 ***************************************************** obtener universo de solicitudes *************************************************************
		 */
		private var _solicitudes:ArrayCollection;
		private var _arrSolicitudes:ArrayCollection;
		private var _idUsuario:int;
		private var keys:Object;
		public function setSolicitudesPrincipal( $dato:ArrayCollection, $idUsuario:int = 0,$vieneDe:String =""):void{
			if( $dato == null ){ return; }
			_solicitudes = $dato;
			_idUsuario = $idUsuario;
			
			for(var d:int = 0; d<_solicitudes.length ; d++){
				(_solicitudes[d] as SolicitudVisita).numFila = d + 1;
			}
			
			_arrSolicitudes = new ArrayCollection();
			var arrTemp:ArrayCollection = ObjectUtil.copy($dato) as ArrayCollection;
			var objSolicitud:SolicitudVisita = new SolicitudVisita();
			var contador:int = 0;
			
			keys = new Object();
			var arrContactos:Array = new Array();
			
			while(arrTemp.length > 0 ){
				contador += 1;
				arrContactos = new Array();
				objSolicitud = new SolicitudVisita();
				objSolicitud = (arrTemp[0] as SolicitudVisita);
				
				for(var m:int = 0; m<arrTemp.length ; m++){
					if(objSolicitud.cliente.idCliente == (arrTemp[m] as SolicitudVisita).cliente.idCliente){
						objSolicitud.cliente = (arrTemp[m] as SolicitudVisita).cliente;
						objSolicitud.numSolicitudes += 1;
						
						//if(objSolicitud.contacto.idContacto != (arrTemp[m] as SolicitudVisita).contacto.idContacto ){
							arrContactos.push((arrTemp[m] as SolicitudVisita).contacto.idContacto);
							//objSolicitud.numContactos += 1;	
						//}
						
						if(objSolicitud.empleado.idEmpleado != (arrTemp[m] as SolicitudVisita).empleado.idEmpleado){
							objSolicitud.numOrigen += 1;	
						}
						
						if((arrTemp[m] as SolicitudVisita).tiempoRealizacion == 'FT' ){
							objSolicitud.fueraDeTiempo += 1;
						}
						if((arrTemp[m] as SolicitudVisita).tiempoRealizacion == 'ET' ){
							objSolicitud.enTiempo += 1;
						}
						
						if(arrTemp[m].urgencia == 'Baja' || arrTemp[m].urgencia == 'BAJA') objSolicitud.numUrgenciaBaja += 1;
						if(arrTemp[m].urgencia == 'Media' || arrTemp[m].urgencia == 'MEDIA') objSolicitud.numUrgenciaMedia += 1;
						if(arrTemp[m].urgencia == 'Alta' || arrTemp[m].urgencia == 'ALTA') objSolicitud.numUrgenciaAlta += 1;
						
						objSolicitud.fechaSolicitud = (arrTemp[m] as SolicitudVisita).fechaSolicitud;
						//objSolicitud.urgencia = (arrTemp[m] as SolicitudVisita).urgencia;
						arrTemp.removeItemAt(m)
						m = m -1;
					}
				}
				keys = new Object();				
				var arrTempContacto:Array = new Array();
				arrTempContacto = arrContactos.filter(quitarDuplicados);
				objSolicitud.numContactos = arrTempContacto.length;
				objSolicitud.numFila = contador;
				_arrSolicitudes.addItem(objSolicitud);
				//arrTemp.removeItemAt(0);
			}
			
			
			dispatchEvent( new Event("enviaIdUsuarioModeloEVReqMovil"));
			dispatchEvent( new Event("univerosSolicitudesPorClienteModeloEVReqMovil"));
			dispatchEvent( new Event("solicitudesPorClienteModeloEVReqMovil"));
			if($vieneDe != "")
				dispatchEvent( new Event("seActualizoUniversoModeloEVReqMovil"));
		}
		
		[Bindable(Event="seActualizoUniversoModeloEVReqMovil")]
		public function get seActualizoUniverso():ArrayCollection{
			return this._arrSolicitudes;
		}
		
		private function quitarDuplicados(item:Object, id:uint, array:Array):Boolean
		{
			if(keys.hasOwnProperty(item)){
				return false;
			}else{
				keys[item] = item;
				return true;
			}
		}
		
		[Bindable(Event="solicitudesPorClienteModeloEVReqMovil")]
		public function get solicitudPorClientePrincipal():ArrayCollection{
			return this._arrSolicitudes;
		}
		
		[Bindable(Event="univerosSolicitudesPorClienteModeloEVReqMovil")]
		public function get universoSolicitudPrincipal():ArrayCollection{
			return this._solicitudes;
		}
		
		
		[Bindable(Event="enviaIdUsuarioModeloEVReqMovil")]
		public function get enviaIdUsuario():int{
			return this._idUsuario;
		}
		
		/**
		 ***************************************************** lista contactos por id cliente *************************************************************
		 */
		
		private var _lstSolicitudes:ArrayCollection;
		public function setListaContactos( $dato:int ):void{
			if( $dato == 0 ) return;
			var contador:int = 0;
			var arrTemp:ArrayCollection = ObjectUtil.copy(_solicitudes) as ArrayCollection;
			_lstSolicitudes = new ArrayCollection();
			for(var d:int = 0; d<arrTemp.length; d++){
				if((arrTemp[d] as SolicitudVisita).cliente.idCliente == $dato){
					_lstSolicitudes.addItem(arrTemp[d]);
				}
			}
			
			dispatchEvent( new Event("listaSolicitudesModeloEVReqMovil") );
		}
		
		[Bindable(Event="listaSolicitudesModeloEVReqMovil")]
		public function get listaContactos():ArrayCollection{
			return this._lstSolicitudes;
		}
		
		/**
		 ***************************************************** Agrupa las solicitudes de visita por medio del id de Solicitud, y devuelve el id de Visita y su folio *************************************************************
		 */
		
		private var _visita:Visita;
		public function setAgruparSolicitudes( $dato:Visita,$lista:ArrayCollection):void{
			_visita = $dato;
			_visita.solicitudes = $lista;
			dispatchEvent( new Event("idVisitayFolioModeloEVReqMovil") );
		}
		
		[Bindable(Event="idVisitayFolioModeloEVReqMovil")]
		public function get agruparSolicitudes():Visita{
			return this._visita;
		}
		
		/**
		 ***************************************************** reInicia botnera *************************************************************
		 */
		private var _boton:int;
		public function setBotonera():void{
			_boton = 1;
			dispatchEvent( new Event("reIniciaBotoneraModeloEVReqMovil") );
		}
		
		[Bindable(Event="reIniciaBotoneraModeloEVReqMovil")]
		public function get botonera():int{
			return this._boton;
		}
		
		
		/**
		 ***************************************************** Descarta una solicitud por medio de su id, su folio y una justificación *************************************************************
		 */
		
		private var _descarta:Boolean;
		public function setDescartarSolicitudes( $dato:Boolean):void{
			_descarta = $dato;
			dispatchEvent( new Event("descartarSolicitudModeloEVReqMovil") );
		}
		
		[Bindable(Event="descartarSolicitudModeloEVReqMovil")]
		public function get descartarSolicitudes():Boolean{
			return this._descarta;
		}
		
		/**
		 ***************************************************** MuestraInspector *************************************************************
		 */
		private var evtInspector:EventoEVGestionarVisitas;
		public function setMuestraInspector( evt:EventoEVGestionarVisitas ):void{
			if( evt == null )
				return;
			evtInspector = evt;
			dispatchEvent( new Event("muestraInspectorEventoEVGestionarVisitas") );
		}
		[Bindable(Event="muestraInspectorEventoEVGestionarVisitas")]
		public function get MuestraInspector():EventoEVGestionarVisitas{
			return this.evtInspector;

		}
		
		/**
		 ***************************************************** ObtenVisita *************************************************************
		 */
		 
		private var _visitaInspector:Visita;
		public function setObtenVisita( dato:Visita ):void{
			_visitaInspector = dato
			dispatchEvent( new Event("obtenViistaModeloEventoEVGestionarVisitas") );
		}
		[Bindable(Event="obtenViistaModeloEventoEVGestionarVisitas")]
		public function get ObtenVisita():Visita{
			return this._visitaInspector;
		}
		/**
		 ***************************************************** Confirma guardado de inspector *************************************************************
		 */
		private var _evtConfirmaGuardado:EventoEVGestionarVisitas;
		public function setConfirmaGuardarInspector( dato:Boolean,evt:EventoEVGestionarVisitas = null ):void{
			if( !dato ){
								
				return;
			}
			_evtConfirmaGuardado = evt;
			_evtConfirmaGuardado.confirmaGuardar = dato;
			dispatchEvent( new Event("confirmaGuardadoInspectorEventoEVGestionarVisitas") );
		}
		[Bindable(Event="confirmaGuardadoInspectorEventoEVGestionarVisitas")]
		public function get ConfirmaGuardarInspector():EventoEVGestionarVisitas{
			return this._evtConfirmaGuardado;
		}
		
		
		/**
		 *****************************************************lista referencias *************************************************************
		 */
		private var _listaReferencias:ArrayCollection;
		public function setListaReferencias( dato:ArrayCollection):void{
			if( dato == null ) return;
			_listaReferencias = new ArrayCollection();
			_listaReferencias = dato
			dispatchEvent( new Event("listaReferenciasEventoEVGestionarVisitas") );	
			
		}
		[Bindable(Event="listaReferenciasEventoEVGestionarVisitas")]
		public function get obtnerListaReferencias():ArrayCollection{
			return this._listaReferencias;
		}
		
		/**
		 *****************************************************finaliza inspector *************************************************************
		 */
		private var _finalizaInspector:Boolean;
		public function setFinalizaInspector( dato:Boolean ):void{
			if( !dato )
				return;
			_finalizaInspector = dato
			dispatchEvent( new Event("finalizaInspectorEventoEVGestionarVisitas") );
		}
		[Bindable(Event="finalizaInspectorEventoEVGestionarVisitas")]
		public function get FinalizaInspector():Boolean{
			return this._finalizaInspector;
		}
		/**
		 *****************************************************Garficos Inspeccion *************************************************************
		 */
		//		COTIZACION DIFERENTE PEDIDOS
		private var _linealCotDifPed:ArrayCollection;
		public function setLinealCotDifPed( $datos:ArrayCollection):void{
			_linealCotDifPed = $datos;
			dispatchEvent( new Event("regresaLinealCotDifPedModeloEVGestionarVisitas") );
		}
		[Bindable(event="regresaLinealCotDifPedModeloEVGestionarVisitas")]
		public function get listaLinealCotDifPed():ArrayCollection{
			return _linealCotDifPed;
		}
		//		COTIZACION IGUAL PEDIDOS
		private var _linealCotPedido:ArrayCollection;
		public function setLinealCotPedido( $datos:ArrayCollection ):void{
			_linealCotPedido = $datos;
			dispatchEvent( new Event("regresaCotIgualPedModeloEVGestionarVisitas") );
		}
		[Bindable(event="regresaCotIgualPedModeloEVGestionarVisitas")]
		public function get listaLinealCotPedido():ArrayCollection{
			return _linealCotPedido;
		}
		//		CANCELACION COTIZACION
		private var _linealCancelacionCot:ArrayCollection;
		public function setLinealCancelacionCot( $datos:ArrayCollection ):void{
			_linealCancelacionCot = $datos;
			dispatchEvent( new Event("regresaLinealCancelacionCotEVGestionarVisitas") );
		}
		[Bindable(event="regresaLinealCancelacionCotEVGestionarVisitas")]
		public function get listaLinealCancelacionCot():ArrayCollection{
			return _linealCancelacionCot;
		}
		//		MIX PRODUCTOS
		private var _linealMixProductos:ArrayCollection;
		public function setLinealMixProductos( $datos:ArrayCollection ):void{
			_linealMixProductos = $datos;
			dispatchEvent( new Event("regresaLinealMixProductosEVGestionarVisitas") );
		}
		[Bindable(event="regresaLinealMixProductosEVGestionarVisitas")]
		public function get listaLinealMixProductos():ArrayCollection{
			return _linealMixProductos;
		}
		//		MIX MARCAS LINEAL
		private var _linealMixMarcas:ArrayCollection;
		public function setLinealMixMarcas( $datos:ArrayCollection ):void{
			_linealMixMarcas = $datos;
			dispatchEvent( new Event("regresaLinealMixMarcasEVGestionarVisitas") );
		}
		[Bindable(event="regresaLinealMixMarcasEVGestionarVisitas")]
		public function get listaLinealMixMarcas():ArrayCollection{
			return _linealMixMarcas;
		}
		//		SEGUIMIENTOS
		private var _linealSeguimientos:ArrayCollection;
		public function setLinealSeguimientos( $datos:ArrayCollection ):void{
			_linealSeguimientos = $datos;
			dispatchEvent( new Event("regresaLinealSeguimientosEVGestionarVisitas") );
		}
		[Bindable(event="regresaLinealSeguimientosEVGestionarVisitas")]
		public function get listaLinealSeguimientos():ArrayCollection{
			return _linealSeguimientos;
		}
		/**
		 ***************************************************** actualizaVistaDespuesInspeccion *************************************************************
		 */
		private var _idClienteInspeccion:int;
		public function setActualizaVistaFinalizaInspector( event:EventoEVGestionarVisitas ):void{
			if( event == null ){
				return;
			}
			_idClienteInspeccion = event.idCliente;
			dispatchEvent( new Event("ActualizaVistaDespuesInspeccionModeloEVGestionarVisitas") );
		}
		[Bindable(event="ActualizaVistaDespuesInspeccionModeloEVGestionarVisitas")]
		public function get ActualizaVistaFinalizaInspector():int{
			return _idClienteInspeccion;
		}

		/**
		 ***************************************************** PUSH VISTA GESTIONAR VISITA PRINCIPAL *************************************************************
		 */
		private var _idEmpleado:Number;
		public function setPushGestionarVisita($idEmpleado:Number):void{
			_idEmpleado = $idEmpleado;
			dispatchEvent( new Event("pushVistaGestionarModeloEVGestionarVisitas") );
		}
		[Bindable(event="pushVistaGestionarModeloEVGestionarVisitas")]
		public function get pushGestionarVisita():Number{
			return _idEmpleado;
		}
		/**
		 ***************************************************** limpia Id Contacto *************************************************************
		 */
		
		public function errorSolicitudes(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		public function errorDescartar(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		public function errorReferencias(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		public function errorAgrupar(objeto:Object):void{
			Alert.show( objeto.toString() );
		}
		public function ModeloEVGestionarVisitas(target:IEventDispatcher=null)
		{
			super(target)
		}
	}
}