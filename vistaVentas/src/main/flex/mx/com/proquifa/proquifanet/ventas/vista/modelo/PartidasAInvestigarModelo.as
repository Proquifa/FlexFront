package mx.com.proquifa.proquifanet.ventas.vista.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.PartidaCotizacion;

	public class PartidasAInvestigarModelo extends EventDispatcher
	{
		private var _partidasAInvestigar:ArrayCollection;
		private var _unidades:ArrayCollection;
		private var _fabricantes:ArrayCollection;
		private var _tipoProductos:ArrayCollection;
		private var _obtenerCotizacionesPorUsuario:ArrayCollection;
		private var _PartidasCotizacionPorFolioTipo:ArrayCollection;
		private var _conceptosProducto:PartidaCotizacion;
		private var _guardaProducto:Boolean;
		
		
		public function PartidasAInvestigarModelo(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		[Bindable(event="cambioUnidades")]
		public function get unidades():ArrayCollection{
			return this._unidades;
		}
		
		public function setUnidades ( datos:ArrayCollection ):void{
			this._unidades = datos;
			dispatchEvent ( new Event("cambioUnidades") );
		}
		
		
		[Bindable(event="cambioFabricantes")]
		public function get fabricantes():ArrayCollection{
			return this._fabricantes;
		}
		
		public function setFabricantes ( datosFabricantes:ArrayCollection ):void{
			this._fabricantes = datosFabricantes;
			dispatchEvent ( new Event("cambioFabricantes") );
		}
		
		[Bindable(event="cambioTipoProductos")]
		public function get tipoProductos():ArrayCollection{
			return this._tipoProductos;
		}
		
		public function setTipoProductos ( datosTipoProductos:ArrayCollection ):void{
			this._tipoProductos = datosTipoProductos;
			dispatchEvent ( new Event("cambioTipoProductos") );
		}
		
		/*
		 Modelo para  los folios de la cotizacionPorClienteUsuario
		 */
		[Bindable(event="cambioObtenerCotizacionesPorUsuario")]
		public function get ObtenerCotizacionesPorUsuario():ArrayCollection{
			return this._obtenerCotizacionesPorUsuario;
		}
		
		public function setObtenerCotizacionesPorUsuario ( datosObtenerCotizacionesPorUsuario:ArrayCollection ):void{
			this._obtenerCotizacionesPorUsuario = datosObtenerCotizacionesPorUsuario;
			dispatchEvent ( new Event("cambioObtenerCotizacionesPorUsuario") );
		}
		
		 /*
		 Modelo para  las partidas de las cotizaciones
		 */
		[Bindable(event="cambioPartidasCotizacionPorFolioTipo")]
		public function get PartidasCotizacionPorFolioTipo():ArrayCollection{
			return this._PartidasCotizacionPorFolioTipo;
		}
		
		public function setPartidasCotizacionPorFolioTipo ( datosPC:ArrayCollection ):void{
			this._PartidasCotizacionPorFolioTipo = datosPC;
			dispatchEvent ( new Event("cambioPartidasCotizacionPorFolioTipo") );
		}
		/*
		 Modelo para  las partidas de las cotizaciones
		 */
		[Bindable(event="cambioConceptosProducto")]
		public function get ConceptoProductos():PartidaCotizacion{
			return this._conceptosProducto;
		}
		
		public function setConceptoProductos( datosCP:PartidaCotizacion ):void{
			this._conceptosProducto = datosCP;
			dispatchEvent ( new Event("cambioConceptosProducto") );
		}
		/*
		 Modelo para regresar el producto guardado
		 */
		[Bindable(event="cambioProductoGuardado")]
		public function get GuardaProducto():Boolean{
			return this._guardaProducto;
		}
		
		public function setGuardaProducto( resultado:Boolean ):void{
			this._guardaProducto = resultado;
			dispatchEvent ( new Event("cambioProductoGuardado") );
		}
	}
}
