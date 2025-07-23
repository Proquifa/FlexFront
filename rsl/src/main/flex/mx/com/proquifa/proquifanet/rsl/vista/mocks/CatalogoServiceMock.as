package mx.com.proquifa.proquifanet.rsl.vista.mocks
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	
	public class CatalogoServiceMock
	{
		private var tiposProducto:ArrayCollection = null;
		private var unidades:ArrayCollection = null;
		private var fabricantes:ArrayCollection = null;
		private var _usuarios:ArrayCollection = null;
		private var _clientes:ArrayCollection = null;
		
		
		public function CatalogoServiceMock()
		{
			var catalogoItem:CatalogoItem = null;
			var usuarios:CatalogoItem = null;
			
			/*
				Mock para el array Unidades
			*/
			
			unidades = new ArrayCollection();
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 1;
			catalogoItem.valor = "cm";
			unidades.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 2;
			catalogoItem.valor = "g";
			unidades.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 3;
			catalogoItem.valor = "kg";
			unidades.addItem( catalogoItem );
			
			/*
				Mock para el array fabricantes
			*/
			fabricantes = new ArrayCollection();
			
			catalogoItem =new CatalogoItem();
			catalogoItem.llave = 1;
			catalogoItem.valor = "SIGMA";
			fabricantes.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 2;
			catalogoItem.valor = "USP"
			fabricantes.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 3;
			catalogoItem.valor = "EP";
			fabricantes.addItem( catalogoItem );
			
			/*
				Mock para el array tiposProducto
			*/
			tiposProducto = new ArrayCollection();
			
			catalogoItem =new CatalogoItem();
			catalogoItem.llave = 1;
			catalogoItem.valor = "Estandares";
			tiposProducto.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 2;
			catalogoItem.valor = "Reactivos"
			tiposProducto.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 3;
			catalogoItem.valor = "Labware";
			tiposProducto.addItem( catalogoItem );	
			
			
			/*
				Mock para el combo de usuarios
			*/
			this._usuarios = new ArrayCollection();
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "--TODOS--";
			usuarios.llave = 0;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "OCervantes";
			usuarios.llave = 113;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "IHernandez";
			usuarios.llave = 102;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "Entrenamiento";
			usuarios.llave = 95;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "EJimenez";
			usuarios.llave = 93;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "EAngeles";
			usuarios.llave = 111;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "MRMoreno";
			usuarios.llave = 30;
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "LTerrones";
			usuarios.llave = 81;			
			_usuarios.addItem( usuarios );
			
			usuarios =new CatalogoItem();			
			usuarios.valor = "CTirado";
			usuarios.llave = 104;
			_usuarios.addItem( usuarios );
			
			
			/*
				Mock para el array Clientes
			*/
			
			_clientes = new ArrayCollection();
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 0;
			catalogoItem.valor = "--TODOS--";
			_clientes.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 201;
			catalogoItem.valor = "EmpresaParaNotificado";
			_clientes.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 389;
			catalogoItem.valor = "EmpresaParaCotizaciones";
			_clientes.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 1;
			catalogoItem.valor = "EmpresaParaPedidos";
			_clientes.addItem( catalogoItem );
			
			catalogoItem = new CatalogoItem();
			catalogoItem.llave = 44;
			catalogoItem.valor = "EmpresaParaCompras";
			_clientes.addItem( catalogoItem );
						
		}
		
		public function obtenerTiposProducto():ArrayCollection{
			return tiposProducto;
		}
		
		public function obtenerUnidades():ArrayCollection{
			return unidades;
		}
		
		public function obtenerFabricantes():ArrayCollection{
			return fabricantes;
		}
		public function obtenerEmpleados():ArrayCollection{
			return _usuarios;
		}
		public function obtenerClientes():ArrayCollection{
			return _clientes;
		}

	}
}