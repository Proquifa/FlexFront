package mx.com.proquifa.proquifanet.admonComunicacion.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoRecibido;

	public class ModeloParaRecepcionDocumentoService extends EventDispatcher
	{
		private var _documento:DocumentoRecibido = new DocumentoRecibido();
		private var _documentoMod:Boolean = new Boolean;
		private var _documentoGurdado:Number = new Number;
		private var _folio:String = new String;
		private var _usuario:ArrayCollection = new ArrayCollection();
		private var _vendedorPorEmpresa:CatalogoItem = new CatalogoItem();
		private var _empleados:ArrayCollection = new ArrayCollection();
		private var _validaEmpleado:Boolean;
		
		public function ModeloParaRecepcionDocumentoService(target:IEventDispatcher=null)
		{
			//TODO: implement function
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
		
		//Metodo para conseguir los Documentos
		[Bindable(event="cambioDocumento")]
		public function get Documento():DocumentoRecibido{
			return this._documento;
		}
		
		public function setDocumentos( datos:DocumentoRecibido ):void{
			this._documento = datos;				
			dispatchEvent( new Event("cambioDocumento") );
		}
		
		//Metodo para regresar el folio de un pedido modificado
		[Bindable(event="cambioFolio")]
		public function get Folio():String{
			return this._folio;
		}
		
		public function setFolio( datos:String ):void{
			this._folio = datos;				
			dispatchEvent( new Event("cambioFolio") );
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
		
		//Metodo para confirmar los DocumentosModiicados
		[Bindable(event="documentoGuardado")]
		public function get DocumentoG():Number{
			return this._documentoGurdado;
		}
		
		public function setDocumentoG( datos:Number ):void{
			this._documentoGurdado = datos;				
			dispatchEvent( new Event("documentoGuardado") );
		}
		
		//Metodo para confirmar los DocumentosModiicados
		[Bindable(event="cambioDocumentoMod")]
		public function get DocumentoMod():Boolean{
			return this._documentoMod;
		}
		
		public function setDocumentoMod( datos:Boolean ):void{
			this._documentoMod = datos;				
			dispatchEvent( new Event("cambioDocumentoMod") );
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
		
		/*
		 Modelo para regresar el Usuario Valido
		 */
		[Bindable(event="cambioEmpleadoValido")]
		public function get ValidaEmpleado():Boolean{
			return this._validaEmpleado;
		}
		
		public function setValidaEmpleado( resultado:Boolean ):void{
			this._validaEmpleado = resultado;
			dispatchEvent ( new Event("cambioEmpleadoValido") );
		}
	}
}