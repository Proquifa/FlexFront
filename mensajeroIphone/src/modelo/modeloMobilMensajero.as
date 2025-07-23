package modelo
{
	import eventos.EventoMensajero;
	import eventos.EventoMensajeroCierre;
	import eventos.EventoMensajeroEnCierre;
	import eventos.EventoMensajeroEstadisticas;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import modelo.objetos.Coordenada;
	import modelo.objetos.Documento;
	import modelo.objetos.PendientesMensajero;
	import modelo.objetos.itemPendientes;
	import modelo.singletons.datosGlobales;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Empleado;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.DatosGlobales;
	import mx.utils.ObjectUtil;
	
	import vistas.popup.popUpMobilPqNet;

	public class modeloMobilMensajero extends EventDispatcher
	{
		
		public function recibirServicio(result:ArrayCollection):void{
			trace("");
		}
		
		public function modeloMobilMensajero(target:IEventDispatcher = null)
		{
			super(target);
			this.despachador = target;
		}
		
		private var despachador:IEventDispatcher;
		
		public var hola:String = "";
		
		private var m:Contacto = new Contacto();
		
		private var empleadoLogin:Empleado = new Empleado();
		private var validacionLogin:String = "";
		private var pendientesMensajero:ArrayCollection = new ArrayCollection();
		
		private var pendientesAgrupados:ArrayCollection = new ArrayCollection();
		
		private var pendientesporRuta:itemPendientes = new itemPendientes();
		
		private var pendienteSeleccionado:PendientesMensajero = new PendientesMensajero();
		
		private var documentoSeleccionado:Documento = new Documento();
		
		private var documentoVerificado:Documento = new Documento();
		
		private var pendientePersistencia:itemPendientes = new itemPendientes();
		
		private var latitud:Number = 0;
		private var longitud:Number = 0;
		
		//private var coordenadas:Coordenada = new Coordenada();
		
		private var pendienteCoordenada:itemPendientes = new itemPendientes();
		
		private var realizarPendiente:Boolean = false;
		
		private var objetoRealizacion:Object = null;
		
		private var validarDireccion:Boolean = false;
		
//////////////////////// Login /////////////////
		
		////////validación empleado////////////////
		public function recibirValidaEmpleado(resultado:Boolean):void{
			//if(resultado == true){
				this.validacionLogin = resultado.toString();
				this.dispatchEvent(new Event("regresarValidacionLogin"));
			//}
		}
		
		[Bindable (event="regresarValidacionLogin")]
		public function get regresarValidacionLogin():String{
			return this.validacionLogin;
		}
		
		public function faultValidaEmpleado(error:Object):void{
			trace(error.toString());
			
		}
		///////////////////////////////
		
		/////////traer datos empleado//es mas ///////////////
		
		public function recibirEmpleadoPorUsuario(empleado:Empleado):void{
			this.empleadoLogin = new Empleado();
			if( !isNaN(empleado.idEmpleado) && empleado.idEmpleado != 0){
				this.empleadoLogin = empleado;
				datosGlobales. getInstance().empleado_Login = empleado;
				this.dispatchEvent(new Event("regresarDatosEmpleadoEvent"));
				//this.dispatchEvent(new EventoMensajero(EventoMensajero.Prueba));
				var evento:EventoMensajero = new EventoMensajero(EventoMensajero.EVENTO_PRUEBA);
				despachador.dispatchEvent(evento);
			}
		}
		
		[Bindable (event="regresarDatosEmpleadoEvent")]
		public function get regresarDatosEmpleado():Empleado{
			return this.empleadoLogin;
		}
		
		public function faultEmpleadoPorUsuario(error:Object):void{
			trace(error.fault);
		}
		
////////////////////////////////////////////////////////////
///////////////////menu principal//////////////////////////
		
		///////////////consultar pendientes/////////////////
		
		public function recibirPendientesMensajero(pendientes:ArrayCollection):void{
			this.pendientesMensajero = new ArrayCollection();
			if(pendientes.length > 0){
				this.pendientesMensajero = pendientes;
				this.formarItemsPendientes();
				this.dispatchEvent(new Event("regresarPendientesMensajeroEvent"));
			}
		}
		
		[Bindable (event="regresarPendientesMensajeroEvent")]
		public function get regresarPendientesMensajero():ArrayCollection{
			//return this.pendientesMensajero;
			return this.pendientesAgrupados;
		}
		
		
		public function faultPendientesMensajero(fault:Object):void{
			trace(fault.toString());
		}
		
	
		
////////////////////////////////////////////////////////////
////////////////////vista pendientes////////////////////////
		
		//////////////formar item's vista pendientes////////////////////
		
		public function formarItemsPendientes():void{
			if(this.pendientesMensajero.length == 0){
				this.pendientesAgrupados = new ArrayCollection();
				this.pendientesporRuta = new itemPendientes();
				return;
			}
			
			var parseo:ArrayCollection = new ArrayCollection();
			parseo = ObjectUtil.copy(this.pendientesMensajero) as ArrayCollection;
			var objetos:ArrayCollection = new ArrayCollection();
			
			
			for(var m:int = 0; parseo.length != 0; m++){
				var arreglo:itemPendientes = new itemPendientes();
				
				arreglo.pendientes.addItem(parseo[0]);
				for(var r:int = 1; r<parseo.length; r++){
					if((parseo[0].empresa == parseo[r].empresa) && (parseo[0].ruta == parseo[r].ruta) && (parseo[0].direccion == parseo[r].direccion)){
						arreglo.pendientes.addItem(parseo[r]);
						parseo.removeItemAt(r);
						r = r -1;
					}
				}
				parseo.removeItemAt(0);
				arreglo.formar();
				objetos.addItem(arreglo);
			}
			/*var ultimo:itemPendientes = new itemPendientes();
			ultimo.ultimo = objetos.length.toString();
			objetos.addItem(ultimo);*/
			this.pendientesAgrupados = objetos;
		}
		
		//////////////regresar pendientes agrupados////////////////////////////////////////////		
		public function consultarPendientesAgrupados():void{
			this.dispatchEvent(new Event("regresarPendientesAgrupadosEvent"));
		}
		
		[Bindable (event="regresarPendientesAgrupadosEvent")]
		public function get regresarPendientesAgrupados():ArrayCollection{
			return this.pendientesAgrupados;
		}
///////////////////////////////////////////////////////////
		
		////////////////////////regresar pendientes por ruta/////////////////////
		
		public function consultarPendientesporRuta(item:itemPendientes):void{
			trace("consultarPendientesporRuta");
			this.pendientesporRuta = new itemPendientes();
			if(item.pendientes.length > 0){
				this.pendientesporRuta = item;
				this.dispatchEvent(new Event("regresarPendientesporRutaEvent"));
			}
			this.dispatchEvent(new Event("regresarPendientesporRutaEvent"));
		}
		
		
		[Bindable (event="regresarPendientesporRutaEvent")]
		public function get regresarPendientesporRuta():itemPendientes{
			return this.pendientesporRuta;
		}
		
//////////////////////////////////////////////////////////////
		
		
		////////////////////recibir Pendiente Seleccionado///////////////
		public function enviarPendienteSeleccionado(pendiente:PendientesMensajero):void{
			this.pendienteSeleccionado = new PendientesMensajero();
			if(pendiente.folio != null && pendiente.folio != ""){
				this.pendienteSeleccionado = pendiente
				this.dispatchEvent(new Event("pendienteSeleccionadoEvent"));
			}
		}
		
		
		[Bindable (event = "pendienteSeleccionadoEvent")]
		public function get regresaPendienteSeleccionado():PendientesMensajero{
			return this.pendienteSeleccionado;
		}
		
//////////////////////////////////////////////////////////////		
		
		////////////////////////recibir Documento Seleccionado//////////////
		public function recibirDocumentoSeleccionado(documento:Documento):void{
			this.documentoSeleccionado = new Documento();
			if(documento.folio != null && documento.folio != ""){
				this.documentoSeleccionado = documento;
				this.dispatchEvent(new Event("documentoSeleccionadoEvent"));
			}
		}
		
		[Bindable (event="documentoSeleccionadoEvent")]
		public function get regresaDocumentoSeleccionado():Documento{
			return this.documentoSeleccionado;
		}
		
///////////////////////////////////////////////////////////////
		
		
		/////////////////recibir Documento Verificado//////////////////////
		
		public function recibirDocumentoVerificado(documento:Documento):void{
			this.documentoVerificado = new Documento();
			if(documento.folio != null && documento.folio != ""){
				for(var m:int = 0; m<this.pendienteSeleccionado.documentos.length; m++){
					if(this.pendienteSeleccionado.documentos[m].folio == documento.folio){
						this.pendienteSeleccionado.documentos[m].verificado = true;
					}
				}
				this.dispatchEvent(new Event("documentoVerificadoEvent"));
			}
		}
		
		[Bindable (event="documentoVerificadoEvent")]
		public function get regresaDocumentoVerificado():PendientesMensajero{
			return this.pendienteSeleccionado;
		}
		
////////////////////////////////////////////////////////////////////////////
		
		///////////////////recibir coordenadas mensajero con pendientes///////////////////
		
		public function recibirCoordenadasMensajero(_pendiente:itemPendientes):void{
			this.pendienteCoordenada = new itemPendientes();
			this.pendienteCoordenada = _pendiente;
			
			this.dispatchEvent(new Event("regresarCoordenadasMensajeroEvent"));
		}
		
		[Bindable (event="regresarCoordenadasMensajeroEvent")]
		public function get regresarCoordenadasMensajero():itemPendientes{
			return this.pendienteCoordenada;
		}

		
////////////////////////////////////////////////////////////////////////////
		
		///////////////////recibir resultado realizar Pendiente/////////////
		
		public function recibirEjecutarRutaMensajero(resultado:Boolean):void{
			//this.realizarPendiente = false;
			this.objetoRealizacion = new Object();
			this.pendientePersistencia = new itemPendientes();
			if(resultado == true){
				//if(this.pendientesporRuta.pendientes.length > 1 ){
				if(this.pendientesporRuta.pendientes.length > 1 ){
					this.objetoRealizacion["resultado"] = true;
					this.objetoRealizacion["noVistas"] = 1;
					this.objetoRealizacion["vista"] = "";
					trace("aun existen pendientes");
					this.pendientePersistencia = this.pendientesporRuta;
				}
				else{
					trace("ya no existen pendientes");
					this.objetoRealizacion["resultado"] = true;
					this.objetoRealizacion["noVistas"] = 2;
					this.objetoRealizacion["vista"] = "";
				}
				
				//Codigo agregado para escuchar eventos en mapa desde modelo//
				var evento:EventoMensajero = new EventoMensajero(EventoMensajero.ACTUALIZAR_PENDIENTES_MENSAJERO);
				evento._usuario = datosGlobales.getInstance().empleado_Login.usuario;
				this.despachador.dispatchEvent(evento);
				
				var eventoEnCierre:EventoMensajeroEnCierre = new EventoMensajeroEnCierre(EventoMensajeroEnCierre.CONSULTAR_PENDIENTES_EN_CIERRE);
				eventoEnCierre._usuario = datosGlobales.getInstance().empleado_Login.usuario;
				this.despachador.dispatchEvent(eventoEnCierre);
				
				
				var eventoEstadistica:EventoMensajeroEstadisticas = new EventoMensajeroEstadisticas(EventoMensajeroEstadisticas.TRAER_DATOS_ESTADISTICAS);
				eventoEstadistica._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				this.despachador.dispatchEvent(eventoEstadistica);
				//Codigo agregado para escuchar eventos en mapa desde modelo//
				
			}
			else{
				this.objetoRealizacion["resultado"] = false;
				this.objetoRealizacion["noVistas"] = 0;
				this.objetoRealizacion["vista"] = "abiertos";
			}
			this.dispatchEvent(new Event("regresarEjecutarRutaMensajeroEvent"));
		}
		
		[Bindable (event="regresarEjecutarRutaMensajeroEvent")]
		public function get regresaEjecutarMensajero():Object{
			return this.objetoRealizacion;
		}
		
		public function errorEjecutarRutaMensajero(fault:Object):void{
			trace("Error al realizar pendiente");
		}
		
		
		public function actualizarDesdeAbiertos():void{
			
		}
		
/////////////////////////////////////////////////////////////////////////////
		
		/////////////////actualizar pendientes Mensajero////////////////////
		
		public function actualizarPendientesMensajero(pendientes:ArrayCollection):void{
			this.pendientesMensajero = new ArrayCollection();
			//if(pendientes.length > 0){
				/*for(var r:int = 0; r<pendientes.length; r++){
					pendientes[r].validarPosicion = true;
				}*/
				this.pendientesMensajero = pendientes;
				
				this.formarItemsPendientes();
				
				if(this.pendientePersistencia.empresa != ""){
					for(var p:int = 0; p < this.pendientesAgrupados.length; p++){
						if((this.pendientesAgrupados[p].empresa == this.pendientePersistencia.empresa) && (this.pendientesAgrupados[p].ruta == this.pendientePersistencia.ruta) && (this.pendientesAgrupados[p].direccion == this.pendientePersistencia.direccion)){
							this.pendientesAgrupados[p].latitud = this.pendientePersistencia.pendientes[0].latitud;
							this.pendientesAgrupados[p].longitud = this.pendientePersistencia.pendientes[0].longitud;
							this.pendientesAgrupados[p].altitud = this.pendientePersistencia.pendientes[0].altitud;
							for(var r:int = 0; r<this.pendientesAgrupados[p].pendientes.length; r++){
								this.pendientesAgrupados[p].pendientes[r].latitud = this.pendientePersistencia.pendientes[0].latitud;
								this.pendientesAgrupados[p].pendientes[r].longitud = this.pendientePersistencia.pendientes[0].longitud;
								this.pendientesAgrupados[p].pendientes[r].altitud = this.pendientePersistencia.pendientes[0].altitud;
								this.pendientesAgrupados[p].pendientes[r].validarPosicion = true;
							}
						}
					}
				}

				this.dispatchEvent(new Event("regresarPendientesMensajeroEvent"));
				this.dispatchEvent(new Event("regresarPendientesAgrupadosEvent"));
				this.dispatchEvent(new Event("regresarPendientesporRutaEvent"));
				if(this.objetoRealizacion.noVistas == 1){
					for(var m:int = 0; m<this.pendientesAgrupados.length; m++){
						if((this.pendientesporRuta.empresa == this.pendientesAgrupados[m].empresa) && (this.pendientesporRuta.ruta == this.pendientesAgrupados[m].ruta)){
							this.consultarPendientesporRuta(this.pendientesAgrupados[m] as itemPendientes);
						}
					}
				}
			//}
		}
		
		
///////////////////////////////////////////////////////////////////////////////
		//////////////actualizar coordenadas Mensajero////////////////////////
		
		public function resultActualizarCoordenadasMensajero(resultado:Boolean,_pendientesArreglo:ArrayCollection):void{
			this.validarDireccion = false;
			var _pendiente:PendientesMensajero = new PendientesMensajero();
			if(resultado == true){
				this.validarDireccion = true;
				_pendiente = _pendientesArreglo[0] as PendientesMensajero;
				this.pendientesporRuta.latitud = _pendiente.latitud;
				this.pendientesporRuta.longitud = _pendiente.longitud;
				this.pendientesporRuta.altitud = _pendiente.altitud;
				for(var m:int = 0; m<this.pendientesporRuta.pendientes.length; m++){
					this.pendientesporRuta.pendientes[m].latitud = _pendiente.latitud;
					this.pendientesporRuta.pendientes[m].longitud = _pendiente.longitud;
					this.pendientesporRuta.pendientes[m].altitud = _pendiente.altitud;
					this.pendientesporRuta.pendientes[m].validarPosicion = true;
				}
				
				for(var r:int = 0; r< this.pendientesAgrupados.length; r++){
					if((this.pendientesAgrupados[r].empresa == this.pendientesporRuta.empresa) && (this.pendientesporRuta.ruta == this.pendientesAgrupados[r].ruta) && (this.pendientesAgrupados[r].direccion == this.pendientesporRuta.direccion))
					{
						this.pendientesAgrupados[r] = this.pendientesporRuta;
					}
				}
				this.dispatchEvent(new Event("regresarValidarDireccion"));
				this.dispatchEvent(new Event("regresarPendientesporRutaEvent"));
				this.dispatchEvent(new Event("regresarPendientesAgrupadosEvent"));
			}
		}
		
		
		[Bindable (event="regresarValidarDireccion")]
		public function get returnValidarDireccion():Boolean{
			return this.validarDireccion;
		}
		
		
		public function faultActualizarCoordenadasMensajero(fault:Object):void{
			trace("Error al validar Dirección");
		}
		
///////////////////////////////////////////////////////////////////////////////
		////////////// validar visita mensajero ////////////////////////
		
		public function resultValidarVisita(_pendienteMensajero:PendientesMensajero):void{
			for(var m:int = 0; m<this.pendientesporRuta.pendientes.length; m++){
				this.pendientesporRuta.pendientes[m].validarPosicion = true;
			
			}
			for(var r:int = 0; r< this.pendientesAgrupados.length; r++){
				if((this.pendientesAgrupados[r].empresa == this.pendientesporRuta.empresa) && (this.pendientesporRuta.ruta == this.pendientesAgrupados[r].ruta) && (this.pendientesAgrupados[r].direccion == this.pendientesporRuta.direccion))
				{
					this.pendientesAgrupados[r] = this.pendientesporRuta;
				}
			}
			//this.dispatchEvent(new Event("regresarValidarVisita"));
			this.dispatchEvent(new Event("regresarPendientesporRutaEvent"));
			this.dispatchEvent(new Event("regresarPendientesAgrupadosEvent"));
		}
		
		/*[Bindable (event="regresarValidarVisita")]
		public function get returnValidarVisita():Object{
			return new Object();
		}*/
		
		
		public function pruebaMetodo():void{
			trace("entro evento fjaldsfjñ");
		}

		///////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////
		////////////// validar visita mensajero ////////////////////////
		
		public function recibirCierrePendientesNoRealizados(resultado:Boolean):void{
			//this.realizarPendiente = false;
			this.objetoRealizacion = new Object();
			if(resultado == true){
				//if(this.pendientesporRuta.pendientes.length > 1 ){
				this.objetoRealizacion["resultado"] = true;
				this.objetoRealizacion["noVistas"] = 1;
				this.objetoRealizacion["vista"] = "";
				
				//Codigo agregado para escuchar eventos en mapa desde modelo//
				
				var evento:EventoMensajero = new EventoMensajero(EventoMensajero.ACTUALIZAR_PENDIENTES_MENSAJERO);
				evento._usuario = datosGlobales.getInstance().empleado_Login.usuario;
				this.despachador.dispatchEvent(evento);
				
				var eventoCerrado:EventoMensajeroCierre = new EventoMensajeroCierre(EventoMensajeroCierre.CONSULTAR_PENDIENTES_CERRADOS);
				eventoCerrado._usuario = datosGlobales.getInstance().empleado_Login.usuario;
				this.despachador.dispatchEvent(eventoCerrado);
				
				var eventoEstadistica:EventoMensajeroEstadisticas = new EventoMensajeroEstadisticas(EventoMensajeroEstadisticas.TRAER_DATOS_ESTADISTICAS);
				eventoEstadistica._usuario =  datosGlobales.getInstance().empleado_Login.usuario;
				this.despachador.dispatchEvent(eventoEstadistica);
				//Codigo agregado para escuchar eventos en mapa desde modelo//
				this.dispatchEvent(new Event("regresarEjecutarRutaMensajeroEvent"));
			}
			else{
				trace("Error al cerrar pendientes desde proquifa");
			}
			
			
		}
		
		public function faultCierrePendientesNoRealizados(fault:Object):void{
			trace(fault.toString());
		}
		
	}
}