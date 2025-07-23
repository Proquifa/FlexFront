package mx.com.proquifa.proquifanet.admonComunicacion.vistas.modelo
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.alertPqNet.EventoAlertaPqNet;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	import mx.core.Container;
	import mx.core.FlexGlobals;
	import mx.core.UIComponent;
	
	import skins.catalogos.catalogoAlertas;

	public class ModeloLlamadasAdmonComunicacion extends EventDispatcher
	{
		private var _usuario:ArrayCollection = new ArrayCollection();
		private var _llamadaGuardada:Boolean = new Boolean;
		private var _vendedorPorEmpresa:CatalogoItem = new CatalogoItem();
		private var _empleados:ArrayCollection = new ArrayCollection();
		
		public function ModeloLlamadasAdmonComunicacion(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		//Metodo para conseguir Usuarios
		[Bindable(event="cambioUsuario")]
		public function get Usuarios():ArrayCollection{
			return this._usuario
		}
		
		public function setUsuarios ( datos:ArrayCollection ):void{
			this._usuario = datos;				
			dispatchEvent( new Event("cambioUsuario") );
		}
		
		//Metodo para la Llamada Guardada
		[Bindable(event="cambioLlamada")]
		public function get Llamada():Boolean{
			return this._llamadaGuardada;
		}
		
		public function setLlamada ( datos:Boolean ):void{
			this._llamadaGuardada = datos;				
			dispatchEvent( new Event("cambioLlamada") );
		}
		
		//Metodo para regresar el empleado por la empresa
		[Bindable(event="cambioVendedor")]
		public function get Vendedor():CatalogoItem{
			return this._vendedorPorEmpresa
		}
		
		public function setVendedor ( vendedor:CatalogoItem ):void{
			this._vendedorPorEmpresa = vendedor;				
			dispatchEvent( new Event("cambioVendedor") );
		}
		//Metodo para regresar a los empleados habilitados
		[Bindable(event="cambioEmpleado")]
		public function get Empleado():ArrayCollection{
			return this._empleados;
		}
		
		public function setEmpleado ( empleado:ArrayCollection ):void{
			this._empleados = empleado;				
			dispatchEvent( new Event("cambioEmpleado") );
		}
		
		public function faultCotizacionesPorEnviar(error:Object):void{
			//Alert.show("Error en el nuevo servicio");
			alertaSingleton.show( catalogoAlertas.ERR_servicio+error, catalogoAlertas.TIT_ERR);
		}
		public function faultObtenerEmpleadosPorEmpresaEnLlamada(error:Object):void{
			//Alert.show("Error al seleccionar contacto");
			alertaSingleton.show( catalogoAlertas.ERR_servicio+error, catalogoAlertas.TIT_ERR);
		}
	}
}