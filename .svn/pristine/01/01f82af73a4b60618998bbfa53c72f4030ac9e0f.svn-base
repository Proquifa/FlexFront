package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.combos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	import skins.catalogos.catalogoAlertas;
	
	public class ModeloComboCatalogos extends EventDispatcher
	{
		private var _listaClientes:ArrayCollection;
		private var _listaClientesXusuario:ArrayCollection;
		private var _listaProveedores:ArrayCollection;
		private var _listaProveedoresPorTipo:ArrayCollection;
		private var _listaProveedoresPorRol:ArrayCollection;
		private var _arregloProveedores:ArrayCollection;
		private var _listaProductos:ArrayCollection;
		private var _listaSubProcesos:ArrayCollection;
		private var _listaProcesos:ArrayCollection;
		private var _listaEmpleadosActivos:ArrayCollection;
		private var _listaEmpleadosEsacMaster:ArrayCollection;
		private var _listaMarcas:ArrayCollection;
		private var _contactos:ArrayCollection;
		private var _listaCategoria:ArrayCollection;
		private var _listaEsacNombreCartera:ArrayCollection;
		private var cuentasBanco:ArrayCollection;
		private var bancosClientes:ArrayCollection;
		private var _listaFamilias:ArrayCollection;
		
		public function setobtenerBancos(datos:ArrayCollection):void
		{
			bancosClientes = new ArrayCollection;
			bancosClientes = datos;
			dispatchEvent(new Event("obtenerBancosClientesModeloComboCatalogo"));
		}
		[Bindable(event = "obtenerBancosClientesModeloComboCatalogo")]
		public function get obtenerBancos():ArrayCollection
		{
			return bancosClientes;
		}
		
		
		public function setobtenerCuentas(datos:ArrayCollection):void
		{
				cuentasBanco = new ArrayCollection;
				cuentasBanco = datos;
				dispatchEvent(new Event("obtenerCuentasModeloComboCatalogo"));
		}
		[Bindable(event = "obtenerCuentasModeloComboCatalogo")]
		public function get obtenerCuentas():ArrayCollection
		{
			return cuentasBanco;
		}
		
		[Bindable(event="listaClientes")]
		public function get ListaClientes():ArrayCollection
		{
			return _listaClientes;
		}
		
		public function setListaClientes ( datos:ArrayCollection ):void
		{
			this._listaClientes = datos;
			dispatchEvent( new Event("listaClientes") );
		}
		
		[Bindable(event="obtenerFamiliasModeloComboCatalogo")]
		public function get ListaFamilias():ArrayCollection
		{
			return _listaFamilias;
		}
		
		public function setListaFamilias ( datos:ArrayCollection ):void
		{
			this._listaFamilias = datos;
			dispatchEvent( new Event("obtenerFamiliasModeloComboCatalogo") );
		}
		
		
		public function setListaClientesXusuario ( datos:ArrayCollection ):void
		{
			this._listaClientesXusuario = datos;
			dispatchEvent( new Event("listaClientesXusuario") );
		}
		[Bindable(event="listaClientesXusuario")]
		public function get ListaClientesXusuario():ArrayCollection
		{
			return _listaClientesXusuario;
		}
		

		[Bindable(event="listaProveedores")]
		public function get ListaProveedores():ArrayCollection{
			return this._listaProveedores;
		}		
		public function setListaProveedores ( datos:ArrayCollection ):void{
			this._listaProveedores = datos;				
			dispatchEvent( new Event("listaProveedores") );
		}
		
		
		[Bindable(event="listaProveedoresPorTipo")]
		public function get regresaListaProveedoresPorTipo():ArrayCollection{
			return this._listaProveedoresPorTipo;
		}
		public function setListaProveedoresPorTipo( datos:ArrayCollection ):void{
			this._listaProveedoresPorTipo = datos;				
			dispatchEvent( new Event("listaProveedoresPorTipo") );
		}
		
		
		[Bindable(event="listaProveedoresPorRol")]
		public function get regresaListaProveedoresPorRol():ArrayCollection{
			return this._listaProveedoresPorRol;
		}
		public function setListaProveedoresPorRol( datos:ArrayCollection ):void{
			this._listaProveedoresPorRol = datos;				
			dispatchEvent( new Event("listaProveedoresPorRol") );
		}
		
		
		[Bindable(event="listaProductos")]
		public function get ListaProductos():ArrayCollection{
			return this._listaProductos;
		}		
		public function setListaProductos ( datos:ArrayCollection ):void{
			this._listaProductos = datos;				
			dispatchEvent( new Event("listaProductos") );
		}
		
		[Bindable(event="listaProcesos")]
		public function get ListaProcesos():ArrayCollection{
			return this._listaProcesos;
		}		
		public function setListaProcesos ( datos:ArrayCollection ):void{
			this._listaProcesos = datos;				
			dispatchEvent( new Event("listaProcesos") );
		}
		
		[Bindable(event="listaSubProcesos")]
		public function get ListaSubProcesos():ArrayCollection{
			return this._listaSubProcesos;
		}		
		public function setListaSubProcesos ( datos:ArrayCollection ):void{
			this._listaSubProcesos = datos;				
			dispatchEvent( new Event("listaSubProcesos") );
		}
		
		[Bindable(event="listaEmpleadosActivos")]
		public function get ListaEmpleadosActivos():ArrayCollection{
			return this._listaEmpleadosActivos;
		}		
		public function setListaEmpleadosActivos ( datos:ArrayCollection ):void{
			this._listaEmpleadosActivos = datos;				
			dispatchEvent( new Event("listaEmpleadosActivos") );
		}
		
		[Bindable(event="listaMarcas")]
		public function get ListaMarcas():ArrayCollection{
			return this._listaMarcas;
		}		
		public function setListaMarcas ( datos:ArrayCollection ):void{
			this._listaMarcas = datos;				
			dispatchEvent( new Event("listaMarcas") );
		}
		
		[Bindable(event="contactosPorProvedorCombo")]
		public function get Contactos():ArrayCollection{
			return this._contactos;
		}		
		public function setContactos( datos:ArrayCollection ):void{
			this._contactos = datos;				
			dispatchEvent( new Event("contactosPorProvedorCombo") );
		}
		// 					/EMPLEADOS X TIPO
		private var _listaEmpleadosPorTipo:ArrayCollection;
		public function setListaEmpleadosPorTipo ( datos:ArrayCollection ):void{
			_listaEmpleadosPorTipo = datos;				
			dispatchEvent( new Event("listaEmpleadosPorTipo") );
		}
		[Bindable(event="listaEmpleadosPorTipo")]
		public function get ListaEmpleadosPorTipo():ArrayCollection{
			return _listaEmpleadosPorTipo;
		}
		
		// 					/	OBTENER EMPLEADOS X TIPO
		private var _obtenerEmpleadosPorTipo:ArrayCollection;
		public function setObtenerEmpleadosPorTipo ( datos:ArrayCollection ):void{
			_obtenerEmpleadosPorTipo = datos;				
			dispatchEvent( new Event("obtenerEmpleadosXTipo") );
		}
		[Bindable(event="obtenerEmpleadosXTipo")]
		public function get obtenerEmpleadosPorTipo():ArrayCollection{
			return _obtenerEmpleadosPorTipo;
		}
		
		///////////////////////////////////////////////////////////////////////	OBTENER Paises //////////////////////////////////////////////////////////////////////
		private var _obtenerPaises:ArrayCollection;
		public function setObtenerPaises( datos:ArrayCollection ):void{
			_obtenerPaises = datos;				
			dispatchEvent( new Event("obtenerPaises") );
		}
		[Bindable(event="obtenerPaises")]
		public function get ObtenerPaises():ArrayCollection{
			return _obtenerPaises;
		}
		
		///////////////////////////////////////////////////////////////////////	OBTENER Unidades //////////////////////////////////////////////////////////////////////
		private var _listaUnidades:ArrayCollection;
		public function setObtenerUnidades( $datos:ArrayCollection ):void{
			_listaUnidades = $datos;				
			dispatchEvent( new Event("obtenerUnidades") );
		}
		[Bindable(event="obtenerUnidades")]
		public function get ObtenerUnidades():ArrayCollection{
			return _listaUnidades;
		}
		
		///////////////////////////////////////////////////////////////////////	OBTENER Rutas //////////////////////////////////////////////////////////////////////
		private var _listaRutas:ArrayCollection;
		public function setObtenerRutas( $datos:ArrayCollection ):void{
			_listaRutas = $datos;				
			dispatchEvent( new Event("listaRutasModeloComboCatalogos") );
		}
		[Bindable(event="listaRutasModeloComboCatalogos")]
		public function get ObtenerRutas():ArrayCollection{
			return _listaRutas;
		}

		///////////////////////////////////////////////////////////////////////	OBTENER Nivel de ingreso //////////////////////////////////////////////////////////////////////
		private var _listaNivelIngreso:ArrayCollection;
		public function setObtenerNivelesDeIngreso( $datos:ArrayCollection ):void
		{
			_listaNivelIngreso = $datos;				
			dispatchEvent( new Event("listaNivelDeIngresoModeloComboCatalogos") );
		}
		[Bindable(event="listaNivelDeIngresoModeloComboCatalogos")]
		public function get ObtenerNivelDeIngresos():ArrayCollection
		{
			return _listaNivelIngreso;
		}
		///////////////////////////////////////////////////////////////////////	OBTENER Catalogo de Productos //////////////////////////////////////////////////////////////////////
		private var _listaCatalogoProductos:ArrayCollection;
		public function setObtenerCatalogoProductos( $datos:ArrayCollection ):void{
			_listaCatalogoProductos = $datos;				
			dispatchEvent( new Event("CatalogoProductosModeloComboCatalogos") );
		}
		[Bindable(event="CatalogoProductosModeloComboCatalogos")]
		public function get ObtenerCatalogoProductos():ArrayCollection{
			return _listaCatalogoProductos;
		}
		///////////////////////////////////////////////////////////////////////	OBTENER Tiempos de entrega //////////////////////////////////////////////////////////////////////
		private var _listaTiemposDeEntrega:ArrayCollection;
		public function setObtenerTiemposEntrega( $datos:ArrayCollection ):void{
			_listaTiemposDeEntrega = $datos;				
			dispatchEvent( new Event("obtenTiemposDeEntregaModeloComboCatalogos") );
		}
		[Bindable(event="obtenTiemposDeEntregaModeloComboCatalogos")]
		public function get ObtenerTiemposEntrega():ArrayCollection{
			return _listaTiemposDeEntrega;
		}
		///////////////////////////////////////////////////////////////////////	OBTENER Paises //////////////////////////////////////////////////////////////////////
		private var _empresasCompro:ArrayCollection;
		public function setempresasCompro( datos:ArrayCollection ):void{
			_empresasCompro = datos;				
			dispatchEvent( new Event("empresasComproModeloComboCatalogo") );
		}
		[Bindable(event="empresasComproModeloComboCatalogo")]
		public function get obtenerEmpresasCompro():ArrayCollection{
			return _empresasCompro;
		}
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		public function error(obj:Object):void{
			alertaSingleton.showReintentar(obj.toString());
		}
		
		public function errorObtenerCatalogoProductosProveedores(o:Object):void
		{
			alertaSingleton.showReintentar(o.toString());
			trace(o.toString());
		}
		
		// 					EMPLEADOS X TIPO
		public function ModeloComboCatalogos(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function faultService($error:Object):void{
			alertaSingleton.showReintentar( catalogoAlertas.ERR_servicio+$error, catalogoAlertas.TIT_ERR);
		}
		
		//////////////////////  EMPLEADOS ESAC MASTER //////////////////////////////////////////////////
		[Bindable(event="listaEmpleadosEsacMaster")]
		public function get ListaEmpleadosEsacMaster():ArrayCollection{
			return this._listaEmpleadosEsacMaster;
		}		
		public function setListaEmpleadosEsacMaster ( datos:ArrayCollection ):void{
			this._listaEmpleadosEsacMaster = datos;				
			dispatchEvent( new Event("listaEmpleadosEsacMaster") );
		}
		
		//////////////////////  CLIENTES ESAC MASTER //////////////////////////////////////////////////
		[Bindable(event="listaClientesEsacMaster")]
		public function get ListaClientesEsacMaster():ArrayCollection{
			return this._listaEmpleadosEsacMaster;
		}		
		public function setListaClientesEsacMaster ( datos:ArrayCollection ):void{
			this._listaEmpleadosEsacMaster = datos;				
			dispatchEvent( new Event("listaClientesEsacMaster") );
		}
		
		
		[Bindable(event="listaCategoria")]
		public function get listaCategoria():ArrayCollection{
			return this._listaCategoria;
		}		
		public function setListaCategoria ( datos:ArrayCollection ):void{
			this._listaCategoria = datos;				
			dispatchEvent( new Event("listaCategoria") );
		}
		
		[Bindable(event="listaDepartamento")]
		public function get listaDepartamento():ArrayCollection{
			return this._listaCategoria;
		}		
		public function setListaDepartamento ( datos:ArrayCollection ):void{
			this._listaCategoria = datos;				
			dispatchEvent( new Event("listaDepartamento") );
		}
		
		[Bindable(event="listaArea")]
		public function get listaArea():ArrayCollection{
			return this._listaCategoria;
		}		
		public function setListaArea ( datos:ArrayCollection ):void{
			this._listaCategoria = datos;				
			dispatchEvent( new Event("listaArea") );
		}
		
		/*[Bindable(event="listaTipoChecada")]
		public function get listaTipoChecada():ArrayCollection{
			return this._listaCategoria;
		}		
		public function setListaTipoChecada ( datos:ArrayCollection ):void{
			this._listaCategoria = datos;				
			dispatchEvent( new Event("listaTipoChecada") );
		}*/
		
		[Bindable(event="listaTrabajador")]
		public function get listaTrabajador():ArrayCollection{
			return this._listaCategoria;
		}		
		public function setListaTrabajador ( datos:ArrayCollection ):void{
			this._listaCategoria = datos;				
			dispatchEvent( new Event("listaTrabajador") );
		}
		
		[Bindable(event="listaEsacNombresCartera")]
		public function get listaESACcarteras():ArrayCollection{
			return this._listaEsacNombreCartera;
		}		
		public function setListaEsacCarteras ( datos:ArrayCollection ):void{
			this._listaEsacNombreCartera = datos;				
			dispatchEvent( new Event("listaEsacNombresCartera") );
		}
		
		[Bindable(event="listaTipoIncidencia")]
		public function get listaTipoIncidencia():ArrayCollection{
			return this._listaCategoria;
		}		
		public function setListaTipoIncidencia ( datos:ArrayCollection ):void{
			this._listaCategoria = datos;				
			dispatchEvent( new Event("listaTipoIncidencia") );
		}

		private var listaAgentes:ArrayCollection;
		public function setRecibeListaAgentesAduanales($agentes:ArrayCollection ):void{
			listaAgentes = new ArrayCollection;
			listaAgentes = $agentes;				
			dispatchEvent( new Event("listaTipoIncidenciaModeloComboCatalgos") );
		}
		
		[Bindable(event="listaTipoIncidenciaModeloComboCatalgos")]
		public function get enviaListaAgentesAduanales():ArrayCollection{
			return listaAgentes;
		}		

		private var listaConceptosLugar:ArrayCollection;
		public function setRecibeListaConceptosLugarAgentesAduanales($conceptosLugar:ArrayCollection ):void
		{
			listaConceptosLugar = new ArrayCollection;
			listaConceptosLugar = $conceptosLugar;				
			dispatchEvent( new Event("listaConceptosLugarDeAgenteAduanalModeloComboCatalgos") );
		}
		
		[Bindable(event="listaConceptosLugarDeAgenteAduanalModeloComboCatalgos")]
		public function get enviaListaConceptosLugarAgentesAduanales():ArrayCollection
		{
			return listaConceptosLugar;
		}		
		
		private var listaEmpleadosSolamentePorTipo:ArrayCollection;
		public function setSolamentEmpleadosPorTipo($empleados:ArrayCollection):void
		{
			listaEmpleadosSolamentePorTipo = $empleados;
			dispatchEvent(new Event("mandarEmpleadosSolamentePorTipoModeloComboCatalogos"));
		}
		[Bindable(event="mandarEmpleadosSolamentePorTipoModeloComboCatalogos")]
		public function get enviarListaEmpleadosSolamentePorTipo():ArrayCollection
		{
			return listaEmpleadosSolamentePorTipo;
		}
		
		/**
		* Combo Empresas
		*/
		private var listaEmpresas:ArrayCollection;
		[Bindable(event="listaEmpresasModeloComboCatalogo")]
		public function get enviaListaEmpresas():ArrayCollection{
			return this.listaEmpresas;
		}		
		public function setRecibeListaEmpresas ( datos:ArrayCollection ):void{
			listaEmpresas = new ArrayCollection;
			this.listaEmpresas = datos;				
			dispatchEvent( new Event("listaEmpresasModeloComboCatalogo") );
		}

		private var condicionesPagoProveedor:ArrayCollection;
		public function setCondicionesDePagoProveedor($condiciones:ArrayCollection):void
		{
			condicionesPagoProveedor = $condiciones;
			dispatchEvent(new Event("mandarCondicionesPagoProveedorModeloComboCatalogos"));
		}
		[Bindable(event="mandarCondicionesPagoProveedorModeloComboCatalogos")]
		public function get enviarCondicionesPagoProveedor():ArrayCollection
		{
			return condicionesPagoProveedor;
		}

		private var bancosProveedor:ArrayCollection;
		public function setBancosProveedor($bancos:ArrayCollection):void
		{
			bancosProveedor = $bancos;
			dispatchEvent(new Event("mandarBancosDisponiblesProveedorModeloComboCatalogos"));
		}
		[Bindable(event="mandarBancosDisponiblesProveedorModeloComboCatalogos")]
		public function get enviarBancosPagoProveedor():ArrayCollection
		{
			return bancosProveedor;
		}
		
		/**
		 * Combo Corporativos
		 */
		private var listaCorporativos:ArrayCollection;
		[Bindable(event="listaCorporativosModeloComboCatalogo")]
		public function get enviaListaCorporativos():ArrayCollection{
			return this.listaCorporativos;
		}
		
		public function setRecibeListaCorporativos ( datos:ArrayCollection ):void{
			listaCorporativos = new ArrayCollection;
			this.listaCorporativos = datos;				
			dispatchEvent( new Event("listaCorporativosModeloComboCatalogo") );
		}
		
		
		/**
		 * Combo EMPRESAS
		 */
		private var listaEmpresasComboEmpresa:ArrayCollection;
		public function setRecibeEmpresasComboEmpresa ( datos:ArrayCollection ):void
		{
			listaEmpresasComboEmpresa = new ArrayCollection;
			this.listaEmpresasComboEmpresa = datos;				
			dispatchEvent( new Event("listaEmpresasComboEmpresaComboCatalogo") );
		}
		
		[Bindable(event="listaEmpresasComboEmpresaComboCatalogo")]
		public function get enviaEmpresasComboEmpresa():ArrayCollection
		{
			return this.listaEmpresasComboEmpresa;
		}
		
		
		/**
		 * Combo CONTACTOS
		 */
		private var listaContactosCombo:ArrayCollection;
		public function setRecibeContactosCombo ( datos:ArrayCollection ):void
		{
			listaContactosCombo = new ArrayCollection;
			listaContactosCombo = datos;				
			dispatchEvent( new Event("listaContactosComboEmpresaComboCatalogo") );
		}
		
		[Bindable(event="listaContactosComboEmpresaComboCatalogo")]
		public function get enviaContactosCombo():ArrayCollection
		{
			return listaContactosCombo;
		}
		
		/**
		 * Combo EMPRESAS EMBARQUE
		 */
		private var listaEmpresasComboEmpresaEmbarque:ArrayCollection;
		public function setRecibeEmpresasComboEmpresaEmbarque ( datos:ArrayCollection ):void
		{
			listaEmpresasComboEmpresaEmbarque = new ArrayCollection;
			this.listaEmpresasComboEmpresaEmbarque = datos;				
			dispatchEvent( new Event("listaEmpresasComboEmpresaEmbarqueComboCatalogo") );
		}
		
		[Bindable(event="listaEmpresasComboEmpresaEmbarqueComboCatalogo")]
		public function get enviaEmpresasComboEmpresaEmbarque():ArrayCollection
		{
			return this.listaEmpresasComboEmpresaEmbarque;
		}
		
		
		/**
		 * Combo Distribuidores
		 */
		
		private var listaDistribuidores:ArrayCollection;
		[Bindable(event="listaDistribuidoresModeloComboCatalogo")]
		public function get enviaListaDistribuidores():ArrayCollection{
			return this.listaDistribuidores;
		}
		
		public function setRecibeListaDistribuidores ( datos:ArrayCollection ):void{
			listaDistribuidores = new ArrayCollection;
			this.listaDistribuidores = datos;				
			dispatchEvent( new Event("listaDistribuidoresModeloComboCatalogo") );
		}
		
		private var _listaAgentes:ArrayCollection;
		public function setListaAgentes ( datos:ArrayCollection ):void
		{
			_listaAgentes = datos;				
			dispatchEvent( new Event("listaAgentesAduanalesModeloComboCatalogos") );
		}
		[Bindable(event="listaAgentesAduanalesModeloComboCatalogos")]
		public function get obtenerListaAgentes():ArrayCollection{
			return _listaAgentes;
		}		
		
		private var _listaTipoProductos:ArrayCollection;
		public function setListaTipoProductos ( datos:ArrayCollection ):void
		{
			_listaTipoProductos = datos;				
			dispatchEvent( new Event("listaTipoProductosModeloComboCatalogos") );
		}
		[Bindable(event="listaTipoProductosModeloComboCatalogos")]
		public function get obtenerListaTipoProductos():ArrayCollection{
			return _listaTipoProductos;
		}		

		
		private var _listaInspectores:ArrayCollection;
		public function setListaInspectores ( datos:ArrayCollection ):void
		{
			_listaInspectores = datos;				
			dispatchEvent( new Event("listaInspectoresModeloComboCatalogos") );
		}
		[Bindable(event="listaInspectoresModeloComboCatalogos")]
		public function get obtenerListaInspectores():ArrayCollection{
			return _listaInspectores;
		}
		
		private var _listaContactosAgenteAduanal:ArrayCollection;
		public function setListaContactosAgenteAduanal ( datos:ArrayCollection ):void
		{
			_listaContactosAgenteAduanal = datos;				
			dispatchEvent( new Event("listaContactosAgenteAduanalModeloComboCatalogos") );
		}
		[Bindable(event="listaContactosAgenteAduanalModeloComboCatalogos")]
		public function get obtenerListaContactosAgenteAduanal():ArrayCollection{
			return _listaContactosAgenteAduanal;
		}		
	}
}
