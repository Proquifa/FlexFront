package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.comerciales
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.EventoCatProGeneral;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.comerciales.EventoAuxiliarEnLaActualizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.incidentes.EventoAccion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.FormulaPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecioProducto;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Proveedor;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	
	
	public class ModeloCatProOferta extends EventDispatcher
	{
		private var variable:FormulaPrecio;
		
		public function ModeloCatProOferta(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 ************************************************************** carga configuracionesprecio NIVEL COSTO **************************************************************
		 */ 
		private var _configuracionesCosto:ArrayCollection;
		public function setRecibeConfiguracionesPrecioCosto($configuraciones:ArrayCollection):void{
			_configuracionesCosto = $configuraciones;
			dispatchEvent(new Event ("enviaConfiguracionesPrecioCostoModeloCatProOferta"));
		}
		
		[Bindable(event="enviaConfiguracionesPrecioCostoModeloCatProOferta")]
		public function get enviaConfiguracionesPrecioCosto():ArrayCollection{
			return this._configuracionesCosto;
		}
		
		/**
		 ************************************************************** carga configuraciones de producto **************************************************************
		 */ 
		private var _configuracionesProducto:ArrayCollection;
		public function setRecibeConfiguracionesProducto(datos:ArrayCollection):void{
			_configuracionesProducto = datos;
			dispatchEvent(new Event ("enviarConfiguracionesPrecioProductoModeloCatProOferta"));
		}
		
		[Bindable(event="enviarConfiguracionesPrecioProductoModeloCatProOferta")]
		public function get enviaConfiguracionesProducto():ArrayCollection{
			return this._configuracionesProducto;
		}
		
		/**
		 ************************************************************** carga configuraciones de CLASIFICACION **************************************************************
		 */ 
		private var _configuracionesClasificacion:ArrayCollection;
		public function setRecibeConfiguracionesClasificacion($clasif:ArrayCollection):void{
			_configuracionesClasificacion = $clasif;
			dispatchEvent(new Event ("enviarConfiguracionesPrecioClasificacionModeloCatProOferta"));
		}
		
		[Bindable(event="enviarConfiguracionesPrecioClasificacionModeloCatProOferta")]
		public function get enviaConfiguracionesClasificacion():ArrayCollection{
			return this._configuracionesClasificacion;
		}
		
		/**
		 ************************************************************** recibe las familias del Proveedor solicitado **************************************************************
		 */ 
		private var _familias:ArrayCollection;
		public function setRecibeFamiliasDelProveedor($familias:ArrayCollection):void{
			_familias = $familias;
			dispatchEvent(new Event ("enviarFamiliasDelProveedorSeleccionadoModeloCatProOferta"));
		}
		
		[Bindable(event="enviarFamiliasDelProveedorSeleccionadoModeloCatProOferta")]
		public function get RegresaFamiliasDelProveedor():ArrayCollection{
			return _familias;
		}
		/**
		 ************************************************************** carga configuraciones de familia **************************************************************
		 */ 
		private var _configuracionFamilia:ArrayCollection;
		public function setRecibeConfiguracionFamilia(datos:ArrayCollection):void
		{
			this._configuracionFamilia = ObjectUtil.copy( datos ) as ArrayCollection;
			dispatchEvent(new Event ("cargaConfiguracionFamiliaModeloCatProOferta"));
		}
		
		[Bindable(event="cargaConfiguracionFamiliaModeloCatProOferta")]
		public function get RecibeConfiguracionFamilia():ArrayCollection{
			return this._configuracionFamilia;
		}
		
		/**
		 ************************************************************** carga configuraciones de Precio Lista **************************************************************
		 */ 
		private var _configuracionPrecioLista:ConfiguracionPrecioProducto;
		public function setRecibeConfiguracionPrecioLista($dato:ConfiguracionPrecioProducto):void{
			_configuracionPrecioLista = $dato;
			dispatchEvent(new Event ("cargaConfiguracionPrecioListaModeloCatProOferta"));
		}
		
		[Bindable(event="cargaConfiguracionPrecioListaModeloCatProOferta")]
		public function get regresaConfiguracionPrecioLista():ConfiguracionPrecioProducto{
			return _configuracionPrecioLista;
		}
		
		/**
		 ************************************************************** Carga la configuración precio de una CLASIFICACIÓN	 **************************************************************
		 */ 
		private var _configuracionPrecioClasificacion:ConfiguracionPrecioProducto;
		public function setRecibeConfiguracionClasificacion($dato:ConfiguracionPrecioProducto):void{
			_configuracionPrecioClasificacion = $dato;
			dispatchEvent(new Event ("cargaConfiguracionPrecioClasificacionModeloCatProOferta"));
		}
		
		[Bindable(event="cargaConfiguracionPrecioClasificacionModeloCatProOferta")]
		public function get regresaConfiguracionClasificacion():ConfiguracionPrecioProducto{
			return _configuracionPrecioClasificacion;
		}
		
		/**
		 ************************************************************** Carga los costos relacionados con la clasificacion	 **************************************************************
		 */ 
		private var _costosDeClasificacion:ArrayCollection;
		public function setRecibeLosCostosRelacionadosConClasificacion($dato:ArrayCollection):void{
			_costosDeClasificacion = $dato;
			dispatchEvent(new Event ("cargaCostosRelacionadosConLaClasifiacionModeloCatProOferta"));
		}
		
		[Bindable(event="cargaCostosRelacionadosConLaClasifiacionModeloCatProOferta")]
		public function get regresaCostosRelacionadosConLaClasificacion():ArrayCollection{
			return _costosDeClasificacion;
		}
		/**
		 ************************************************************** guarda Costo **************************************************************
		 */ 
		private var _guardaCosto:Boolean;
		public function setGuardaCosto(datos:Boolean):void{
			this._guardaCosto =  datos;
			dispatchEvent(new Event ("guardaCostoModeloCatProOferta"));
		}
		
		[Bindable(event="guardaCostoModeloCatProOferta")]
		public function get GuardaCosto():Boolean{
			return this._guardaCosto;
		}
		
		/**
		 ************************************************************** guarda Configuracion **************************************************************
		 */ 
		private var _guardaConfiguracion:Boolean;
		public function setGuardaConfiguracionLista(datos:Boolean):void{
			this._guardaConfiguracion =  datos;
			dispatchEvent(new Event ("GuardaConfiguracionListaModeloCatProOferta"));
		}
		
		[Bindable(event="GuardaConfiguracionListaModeloCatProOferta")]
		public function get GuardaConfiguracionLista():Boolean{
			return this._guardaConfiguracion;
		}
		
		/**
		 ************************************************************** guarda Configuracion **************************************************************
		 */ 
		private var _restablecer:Boolean;
		public function setRestablecer(datos:Boolean):void{
			this._restablecer =  datos;
			dispatchEvent(new Event ("RestablecerModeloCatProOferta"));
		}
		
		[Bindable(event="RestablecerModeloCatProOferta")]
		public function get Restablecer():Boolean{
			return this._restablecer;
		}
		
		/**
		 ************************************************************** guarda Precio **************************************************************
		 */ 
		private var _confirmaPrecio:Boolean;
		public function setGuardaPrecio(datos:Boolean):void{
			this._confirmaPrecio =  datos;
			dispatchEvent(new Event ("confirmaPrecioModeloCatProOferta"));
		}
		
		[Bindable(event="confirmaPrecioModeloCatProOferta")]
		public function get GuardaPrecio():Boolean{
			return this._confirmaPrecio;
		}
		/**
		 ************************************************************** envia Proveedor **************************************************************
		 */ 
		private var _proveedor:Proveedor;
		public function setEnviaProveedor(evt:EventoCatProGeneral):void{
			this._proveedor = evt.proveedorSeleccionado;
			dispatchEvent(new Event ("proveedoresEnviadoModeloCatProOferta"));
		}
		
		[Bindable(event="proveedoresEnviadoModeloCatProOferta")]
		public function get enviaProveedor():Proveedor{
			return this._proveedor;
		}
		
		
		/**
		 ************************************************************** obtener el costo del producto compra  **************************************************************
		 */ 
		private var costoDelProducto:Number;
		public function setRecibirElCosoDelProductoCompra($costoDelProducto:Number):void{
			costoDelProducto =  $costoDelProducto;
			dispatchEvent(new Event ("regresarElCostoDelProductoCompraModeloCatProOferta"));
		}
		
		[Bindable(event="regresarElCostoDelProductoCompraModeloCatProOferta")]
		public function get regresaCostoDelProductoCompra():Number{
			return costoDelProducto;
		}
		
		/**
		 ************************************************************** actualiza VIGENCIA y restringido Stock,FExpress, Distribuidor a nivel familia **************************************************************
		 */ 
		private var _actializadoVigenciaYRestrccion:Boolean;
		public function setRespuestaActualizarVigenciaYRestringido($respuesta:Boolean):void
		{
			_actializadoVigenciaYRestrccion =  $respuesta;
			dispatchEvent(new Event ("respuestaActualizarVigenciaYRestringidoMinOCModeloCatProOferta"));
		}
		
		[Bindable(event="respuestaActualizarVigenciaYRestringidoMinOCModeloCatProOferta")]
		public function get regresaConfirmacionDeActualizarVigenciaYRestringido():Boolean
		{
			return _actializadoVigenciaYRestrccion;
		}
		
		/**
		 ************************************************************** actualiza MontoMinOC **************************************************************
		 */ 
		private var _actualizarMontoMinOC:Boolean;
		public function setRespuestaActualizarMontoMinOC($respuesta:Boolean):void{
			_actualizarMontoMinOC =  $respuesta;
			dispatchEvent(new Event ("respuestaActualizarMontoMinOCModeloCatProOferta"));
		}
		
		[Bindable(event="respuestaActualizarMontoMinOCModeloCatProOferta")]
		public function get regresaConfirmacionDeActualizarMontoMinOC():Boolean{
			return _actualizarMontoMinOC;
		}
		
		
		/**
		 ************************************************************** solicitar el MontoMinOC Actual **************************************************************
		 */ 
		private var _montoMinOCActual:ConfiguracionPrecio;
		public function setRecibeMontoMinOCActual($montoMinOCActual:ConfiguracionPrecio):void{
			_montoMinOCActual =  $montoMinOCActual;
			dispatchEvent(new Event ("regresarMontoMinOCActualModeloCatProOferta"));
		}
		
		[Bindable(event="regresarMontoMinOCActualModeloCatProOferta")]
		public function get regresaMontoMinOcActual():ConfiguracionPrecio{
			return _montoMinOCActual;
		}
		
		/**
		 ************************************************************** solicitar informacion de la formula de Precio **************************************************************
		 */ 
		private var _infoFormula:FormulaPrecio;
		public function setRecibeInfoDeFormulaPrecio($formulaPrecio:FormulaPrecio):void
		{
			_infoFormula =  $formulaPrecio;
			dispatchEvent(new Event ("regresarInformacionFormulaPrecioModeloCatProOferta"));
		}
		
		[Bindable(event="regresarInformacionFormulaPrecioModeloCatProOferta")]
		public function get regresaInfoDeFormulaPrecio():FormulaPrecio{
			return _infoFormula;
		}
		
		/**
		 ************************************************************** solicitar informacion de la formula de Precio para Clasificación**************************************************************
		 */ 
		private var _infoFormulaClasificacion:FormulaPrecio;
		public function setRecibeInfoDeFormulaPrecioClasificacion($formulaPrecioClasificacion:FormulaPrecio):void
		{
			_infoFormulaClasificacion =  $formulaPrecioClasificacion;
			dispatchEvent(new Event ("regresarInformacionFormulaPrecioClasificacionModeloCatProOferta"));
		}
		
		[Bindable(event="regresarInformacionFormulaPrecioClasificacionModeloCatProOferta")]
		public function get regresaInfoDeFormulaPrecioClasificacion():FormulaPrecio{
			return _infoFormulaClasificacion;
		}
		
		
		/**
		 ************************************************************** enviar configuracion seleccionada  **************************************************************
		 */ 
		private var _configuracionSeleccionada:ConfiguracionPrecio;
		public function setRecibeConfiguracionSeleccionada($configuracion:ConfiguracionPrecio):void{
			_configuracionSeleccionada = $configuracion;
			dispatchEvent(new Event ("enviarConfiguracionSeleccionadaParaleerSusPropiedadesModeloCatProOferta"));
		}
		
		[Bindable(event="enviarConfiguracionSeleccionadaParaleerSusPropiedadesModeloCatProOferta")]
		public function get enviaConfiguracionSeleccionada():ConfiguracionPrecio{
			return _configuracionSeleccionada;
		}
		
		/**
		 ************************************************************** enviar las Familias Ordenadas Para cinturon en otras Vistas **************************************************************
		 */ 
		private var _todasLasfamiliasOrdenadas:ArrayCollection;
		public function setTodasLasFamiliasOrdenadas($todasFamilias:ArrayCollection):void{
			_todasLasfamiliasOrdenadas = $todasFamilias;
			dispatchEvent(new Event ("enviarTodasLasFamiliasOrdenadasParaCinturonEnOtrasVistasModeloCatProOferta"));
		}
		
		[Bindable(event="enviarTodasLasFamiliasOrdenadasParaCinturonEnOtrasVistasModeloCatProOferta")]
		public function get enviaTodasLasFamiliasOrdenadas():ArrayCollection{
			return _todasLasfamiliasOrdenadas;
		}
		
		/**
		 ************************************************************** recibe solicitud para actualizar todas las configuraciones **************************************************************
		 */ 
		private var _eventoActualizarConfiguraciones:EventoAuxiliarEnLaActualizacion;
		public function setRecibeSolicitudActualizarConfiguraciones($eve:EventoAuxiliarEnLaActualizacion):void{
			_eventoActualizarConfiguraciones = $eve;
			dispatchEvent(new Event ("enviarSolicitudParaActualizarConfiguracionesModeloCatProOferta"));
		}
		
		[Bindable(event="enviarSolicitudParaActualizarConfiguracionesModeloCatProOferta")]
		public function get setEnviaSolicitudActualizarConfiguraciones():EventoAuxiliarEnLaActualizacion{
			return _eventoActualizarConfiguraciones;
		}
		
		/**
		 ************************************************************** recibe respuesta Restablecer Todo **************************************************************
		 */ 
		
		private var _restablecerTodo:Boolean;
		public function setRestablecerTodoPorNivel(datos:Boolean):void{
			this._restablecerTodo =  datos;
			dispatchEvent(new Event("RestablecerTodoModeloCatProOferta"));
		}
		
		[Bindable(event="RestablecerTodoModeloCatProOferta")]
		public function get RestablecerTodoPorNivel():Boolean{
			return this._restablecerTodo;
		}
		
		/**
		 ************************************************************** carga configuraciones de CLASIFICACION por ID PROVEEDOR **************************************************************
		 */ 
		private var _configuracionesClasificacion_PRO:ArrayCollection;
		public function setRecibeConfiguracionesClasificacionPro($clasif:ArrayCollection):void{
			_configuracionesClasificacion_PRO = $clasif;
			dispatchEvent(new Event ("enviarConfiguracionesClasificacionesPorIdProveedor"));
		}
		
		[Bindable(event="enviarConfiguracionesClasificacionesPorIdProveedor")]
		public function get enviaConfiguracionesClasificacionPro():ArrayCollection{
			return this._configuracionesClasificacion_PRO;
		}
		
		
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
		
	}
}