package mx.com.proquifa.proquifanet.ventas.vista.mocks
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.Cotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.PartidaCotizacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.Producto;
	
	public class PartidasAInvestigarServiceMock
	{
		private var cotizaciones:ArrayCollection = null;
		private var partidasCotizacion:ArrayCollection = null;
		private var conceptosProducto:PartidaCotizacion = null;
		private var actualiza:PartidaCotizacion = null;
		
		public function PartidasAInvestigarServiceMock()
		{
			var folioCotiza:Cotizacion;
			var pcotizas:PartidaCotizacion;
			var producto:Producto;
			
			/*
				Mock para el array Cotizaciones
			*/			
			cotizaciones = new ArrayCollection();
			
			folioCotiza = new Cotizacion();
			folioCotiza.idCotizacion = 1;
			folioCotiza.folioCotizacion = "032856-0001";
			cotizaciones.addItem( folioCotiza );
			
			folioCotiza = new Cotizacion();
			folioCotiza.idCotizacion = 2;
			folioCotiza.folioCotizacion = "032856-0002";
			cotizaciones.addItem( folioCotiza );
			
			folioCotiza = new Cotizacion();
			folioCotiza.idCotizacion = 3;
			folioCotiza.folioCotizacion = "032856-0003";
			cotizaciones.addItem( folioCotiza );
			
			/*
				MOCK PARA EL ARRAY DE LAS PARTIDAS DE LA COTIZACION
			*/	
			
			partidasCotizacion = new ArrayCollection();	
			
			pcotizas = new PartidaCotizacion();		
			pcotizas.idPartidaCotizacion = 1;
			pcotizas.cantidad = 1;
			pcotizas.idProducto = 01;
			pcotizas.cotizacion = "010810-0123";
			pcotizas.codigo = "ABC";
			pcotizas.fabrica = "ASTM";
			partidasCotizacion.addItem( pcotizas );
			
			pcotizas = new PartidaCotizacion();			
			pcotizas.idPartidaCotizacion = 2;
			pcotizas.cantidad = 1;
			pcotizas.idProducto = 02;
			pcotizas.cotizacion = "010910-0124";
			pcotizas.codigo = "ABCD";
			pcotizas.fabrica = "USP";
			partidasCotizacion.addItem( pcotizas );
			
			/*
			 * MOCK DE PRODUCTO
			 */
			conceptosProducto = new PartidaCotizacion();
			conceptosProducto.cantidad = 4;
			conceptosProducto.idPartidaCotizacion = 010203;
			conceptosProducto.idProducto = 184;			
			conceptosProducto.cotizacion = "010810-0123";
			conceptosProducto.codigo = "ABC";			
			conceptosProducto.fabrica = "ASTM";
			conceptosProducto.concepto = "XMLOP_4tuV";
			conceptosProducto.presentacion = "20";
			conceptosProducto.unidades = "mg";
			conceptosProducto.tipo = "Reactivos";
			
		}
		
		public function obtenerCotizacionesPorClienteUsuario(idCliente:Number, usuario:String):ArrayCollection{	
			return this.cotizaciones;		
		}
		
		public function obtenerPartidasPorFolioCotizacionTipo(folioCotizacion:String, tipo:String):ArrayCollection{
			return this.partidasCotizacion;
		}
		public function obtenerProductosPorIDPCotizas(idPCortiza:Number):PartidaCotizacion{
			return this.conceptosProducto;
		}
		public function guardarProducto(partidaCotiza:PartidaCotizacion):PartidaCotizacion{			 
			 actualiza = partidaCotiza;
			 return this.actualiza;
		}
	}
}