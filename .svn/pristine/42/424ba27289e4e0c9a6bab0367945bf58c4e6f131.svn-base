package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.cotizaciones
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PCotizaHistorial;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	public class ModeloBuscarCotizaciones extends EventDispatcher
	{
		private var _cotizacion:ArrayCollection;
		private var _partida:ArrayCollection;	
		private var _usuarios:ArrayCollection;
		private var _clientes:ArrayCollection;
		private var _seguimientos:ArrayCollection;
		private var _partMadre:ArrayCollection;
		private var pcotiza:PCotizaHistorial = new PCotizaHistorial();
		
		public function ModeloBuscarCotizaciones(target:IEventDispatcher=null)
		{super(target);}
		
		/**
		 * Funcion de result de busqueda de documento por folio
		 */
		
		public function HistorialSeguimientos(seguimientos:ArrayCollection):void{
			this._seguimientos = seguimientos;
			dispatchEvent(new Event("historialDeSeguimientos"));
		}
		
		[Bindable(Event="historialDeSeguimientos")]
		public function get regresarHistorialDeSeguimientos():ArrayCollection{
			return this._seguimientos;
		}	
		
		/**
		 * Funcion de result de busqueda de documento por folio
		 */
		public function cotizacionesResultantes(cotizacion:ArrayCollection):void{
			for( var d:int = 0; d < cotizacion.length; d++ ){
				cotizacion[d].numFila = d + 1;
			}
			//this._cotizacion = cotizacion;
			this._cotizacion = FuncionesEstaticas.getInstance().formatoObjetos(cotizacion);
			dispatchEvent(new Event("regresaCotizaciones"));
		}
		
		[Bindable(Event="regresaCotizaciones")]
		public function get regresarCotizaciones():ArrayCollection{
			return this._cotizacion;
		}
		
		/**
		 * Funcion de result de busqueda de usuarios tipo ESAC
		 */
		public function UsuariosEncontrados(usuarios:ArrayCollection):void{
			this._usuarios = usuarios;
			dispatchEvent(new Event ("regresarUsuariosEncontrados"));
		}
		
		[Bindable(event="regresarUsuariosEncontrados")]
		public function get regresarUsuarios():ArrayCollection{
			return this._usuarios;
		}
		
		/**
		 * Funcion de result de busqueda de clientes
		 */
		public function ClientesEncontrados(clientes:ArrayCollection):void{
			this._clientes = clientes;
			dispatchEvent(new Event ("regresarClientesEncontrados"));
		}
		
		[Bindable(event="regresarClientesEncontrados")]
		public function get regresarClientes():ArrayCollection{
			return this._clientes;
		}
		
		/**
		 * Funcion de result para obtener partidas cotizacion
		 */
		public function setPartidaCotizacion(cotiza:ArrayCollection):void{
			for( var d:int = 0; d < cotiza.length; d++ ){
				cotiza[d].numFila = d + 1;
			}
			//this._partida = cotiza;
			this._partida = FuncionesEstaticas.getInstance().formatoObjetos(cotiza);
			dispatchEvent(new Event ("regresarPartidaCotizacion"));
		}
		
		[Bindable(event="regresarPartidaCotizacion")]
		public function get partidaCotizacion():ArrayCollection{
			return this._partida;
		}
		
		/**
		 * Funcion de result para obtener partidas cotizacion madre
		 */
		public function setPartidaCotizacionMadre(cotMadre:ArrayCollection):void{
			this._partMadre = cotMadre;
			dispatchEvent(new Event ("regresarPartidaCotizacionMadre"));
		}
		
		[Bindable(event="regresarPartidaCotizacionMadre")]
		public function get partidaCotizacionMadre():ArrayCollection{
			return this._partMadre;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener datos en la tabla HistorialSeguimiento 
		 */ 
		private var _historialSeguimiento:ArrayCollection;
		public function setHistorialSeguimiento(historial:ArrayCollection):void{
			for( var d:int = 0; d < historial.length; d++ ){
				historial[d].numFila = d + 1;
			}
			_historialSeguimiento = historial;
			this._historialSeguimiento = FuncionesEstaticas.getInstance().formatoObjetos(historial);
			dispatchEvent(new Event ("cotizacionHistorialSeguimiento"));
		}
		
		[Bindable(event="cotizacionHistorialSeguimiento")]
		public function get historialSeguimiento():ArrayCollection{
			return this._historialSeguimiento;
		}
		
		/**
		 * Funcion de result que busca los datos para obtener tiempo PRoceso 
		 */ 
		private var _tiempoP:ArrayCollection;
		public function setTiempoProceso(tProceso:ArrayCollection):void{
			for( var d:int = 0; d < tProceso.length; d++ ){
				tProceso[d].numFila = d + 1;
			}
			//_tiempoP = tProceso;
			this._tiempoP = FuncionesEstaticas.getInstance().formatoObjetos(tProceso);
			dispatchEvent(new Event ("consultaTiempoProceso"));
		}
		
		[Bindable(event="consultaTiempoProceso")]
		public function get tiempoProceso():ArrayCollection{
			return this._tiempoP;
		}
		
		
		/**
		 * el Fault de busqueda de documento por folio
		 */
		public function faultCotizaciones(objeto:Object):void{
			alertaSingleton.showReintentar("Fallo al traer el la información");
		}
	}
}