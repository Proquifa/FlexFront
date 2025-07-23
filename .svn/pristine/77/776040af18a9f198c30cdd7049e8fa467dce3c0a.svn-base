package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.clientes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecioProducto;
	import mx.utils.ObjectUtil;

	public class ModeloCatClientes_Contrato extends EventDispatcher
	{
		public function ModeloCatClientes_Contrato(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		
		
		/**
		 ************************************************************** carga configuraciones de Precio Lista **************************************************************
		 */ 
		private var _configuracionPrecioLista:ConfiguracionPrecioProducto;
		public function setRecibeConfiguracionPrecioLista($dato:ConfiguracionPrecioProducto):void{
			_configuracionPrecioLista = $dato;
			dispatchEvent(new Event ("setRecibeConfiguracionPrecioListaModeloCatClientes_Oferta_contratos"));
		}
		
		[Bindable(event="setRecibeConfiguracionPrecioListaModeloCatClientes_Oferta_contratos")]
		public function get regresaConfiguracionPrecioLista():ConfiguracionPrecioProducto{
			return _configuracionPrecioLista;
		}
		
		
		
		/**
		 ******************************************************** Carga la configuración precio de una CLASIFICACIÓN	 **************************************************************
		 */ 
		private var _configuracionPrecioClasificacion:ConfiguracionPrecioProducto;
		public function setRecibeConfiguracionClasificacion($dato:ConfiguracionPrecioProducto):void{
			_configuracionPrecioClasificacion = $dato;
			dispatchEvent(new Event ("cargaConfiguracionPrecioClasificacionModeloCatCliente_Contratos"));
		}
		
		[Bindable(event="cargaConfiguracionPrecioClasificacionModeloCatCliente_Contratos")]
		public function get regresaConfiguracionClasificacion():ConfiguracionPrecioProducto{
			return _configuracionPrecioClasificacion;
		}
		
		/**
		 ************************************************************** RECIBE LAS FAMILIAS DEL PROVEEDOR solicitado **************************************************************
		 */ 
		private var _familias:ArrayCollection;
		public function setRecibeFamiliasDelProveedor($familias:ArrayCollection):void{
			_familias = $familias;
			dispatchEvent(new Event ("enviarFamiliasDelProveedorSeleccionadoModeloCatCliente_Contratos"));
		}
		
		[Bindable(event="enviarFamiliasDelProveedorSeleccionadoModeloCatCliente_Contratos")]
		public function get RegresaFamiliasDelProveedor():ArrayCollection{
			return _familias;
		}
		
		/**
		 ************************************************************** INFO OFERTA Clientes  **************************************************************
		 */ 
		private var _oferta:ArrayCollection;
		public function sefInfoOferta($oferta:ArrayCollection):void{
			this._oferta = $oferta;
			dispatchEvent(new Event ("obtenerInfOfertaModeloCatClientes_Contratos"));
		}
		
		[Bindable(event="obtenerInfOfertaModeloCatClientes_Contratos")]
		public function get infoOferta():ArrayCollection{
			return this._oferta;
		}
		
		
		/**
		 ************************************************************** CARGA CONFIGURACION DE FAMILIA **************************************************************
		 */ 
		private var _configuracionFamilia:ArrayCollection;
		public function setRecibeConfiguracionFamilia(datos:ArrayCollection):void{
			this._configuracionFamilia = ObjectUtil.copy( datos ) as ArrayCollection;
			dispatchEvent(new Event ("cargaConfiguracionFamiliaModeloCatClientes_Contratos"));
		}
		
		[Bindable(event="cargaConfiguracionFamiliaModeloCatClientes_Contratos")]
		public function get RecibeConfiguracionFamilia():ArrayCollection{
			return this._configuracionFamilia;
		}
		
		/**
		 ***************    NEW    *********************************************** carga configuraciones de CLASIFICACION **************************************************************
		 */ 
		private var _configuracionesClasificacion:ArrayCollection;
		public function setRecibeConfiguracionesClasificacion($clasif:ArrayCollection):void{
			_configuracionesClasificacion = $clasif;
			dispatchEvent(new Event ("enviarConfiguracionesPrecioClasificacionModeloCliente_Contratos"));
		}
		
		[Bindable(event="enviarConfiguracionesPrecioClasificacionModeloCliente_Contratos")]
		public function get enviaConfiguracionesClasificacion():ArrayCollection{
			return this._configuracionesClasificacion;
		}
		
		/**
		 ****************** NEW ***************************************** carga configuracionesprecio NIVEL COSTO **************************************************************
		 */ 
		private var _configuracionesCosto:ArrayCollection;
		public function setRecibeConfiguracionesPrecioCosto($configuraciones:ArrayCollection):void{
			_configuracionesCosto = $configuraciones;
			dispatchEvent(new Event ("enviaConfiguracionesPrecioCostoModeloCatCliente_Contratos"));
		}
		
		[Bindable(event="enviaConfiguracionesPrecioCostoModeloCatCliente_Contratos")]
		public function get enviaConfiguracionesPrecioCosto():ArrayCollection{
			return this._configuracionesCosto;
		}
		
		
		
		/**
		 *************** *********************************************** reciveidContratoDe generar contrato**************************************************************
		 */ 
		private var _idContratoGenerado:Number;
		public function setRecibeIdContratoGenerado($id:Number):void{
			_idContratoGenerado = $id;
			dispatchEvent(new Event ("enviaridContratoGenerado"));
		}
		
		[Bindable(event="enviaridContratoGenerado")]
		public function get enviaIdcontratoDeGenerarContrato():Number{
			return this._idContratoGenerado;
		}
		
		
		
		/**
		 *************** ***********************************************CONFIRMACION DE FINALIZAR CONTRATO**************************************************************
		 */ 
		private var _respuestaFinalizarCon:Number;
		public function serRecibeConfirmacionDeFinalizarContrato($res:Number):void{
			_respuestaFinalizarCon = $res;
			dispatchEvent(new Event ("enviarRespuestaFinalizarContrato"));
		}
		
		[Bindable(event="enviarRespuestaFinalizarContrato")]
		public function get enviaRespuestaFinalizarContrato():Number{
			return this._respuestaFinalizarCon;
		}
		
		
		/**
		 ************************************************************** carga configuraciones de Precio Lista **************************************************************
		 */ 
		/*private var _configuracionPrecioLista:ConfiguracionPrecioProducto;
		public function setRecibeConfiguracionPrecioLista($dato:ConfiguracionPrecioProducto):void{
			_configuracionPrecioLista = $dato;
			dispatchEvent(new Event ("setRecibeConfiguracionPrecioListaModeloCatClientes_Oferta_contratos"));
		}
		
		[Bindable(event="setRecibeConfiguracionPrecioListaModeloCatClientes_Oferta_contratos")]
		public function get regresaConfiguracionPrecioLista():ConfiguracionPrecioProducto{
			return _configuracionPrecioLista;
		}*/
	}
}