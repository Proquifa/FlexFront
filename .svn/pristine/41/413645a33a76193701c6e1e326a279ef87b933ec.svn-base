package mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.documentosRecibidos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.DocumentoRecibido;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.FuncionesEstaticas;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.controls.Alert;
	
	public class ModeloBuscarDoctosR extends EventDispatcher
	{	
		private var _documento:DocumentoRecibido;
		private var _documentos:ArrayCollection;
		private var _clientes:ArrayCollection;
		private var _proveedores:ArrayCollection;
		private var _usuarios:ArrayCollection;
		
		public function ModeloBuscarDoctosR (target:IEventDispatcher=null)
		{
			super(target);
		}
		
		/**
		 * Funcion de result de busqueda de documento por folio
		 */
		public function DocumentoResultante(documentos:ArrayCollection):void{
			/*if (resultado.nombreEmpresa == null && resultado.tipo == null) return;
			
			resultado.numFila = 1;	
			if( resultado.numero == null || resultado.numero == "0" || resultado.numero == "" ){
				resultado.numero = "ND"
			}
			this._documento = resultado
			var areglo:ArrayCollection = new ArrayCollection();
			areglo.addItem( this._documento );
			_documentos  = areglo;*/ //FuncionesEstaticas.getInstance().formatoObjetos( areglo ) ;
			
			if(documentos == null) return;
			_documentos = new ArrayCollection();
			for(var i:int = 0; i < documentos.length; i++){
				(documentos.getItemAt(i) as DocumentoRecibido).numFila = i + 1;
				if( (documentos.getItemAt( i ) as DocumentoRecibido).numero == null || (documentos.getItemAt( i ) as DocumentoRecibido).numero == "0" || (documentos.getItemAt( i ) as DocumentoRecibido).numero == "" ){
					(documentos.getItemAt( i ) as DocumentoRecibido).numero = "ND";
				}
				if( i == documentos.length - 1) documentos[i].finLista = true;
			}
			this._documentos = documentos ;
			dispatchEvent(new Event ("regresarDoctoR"));
		}
		/**
		 * funcion q recibe el listado de documentos por Referencia
		 */
		public function DocumentoReferencia(resultado:ArrayCollection):void{
			this._documentos = new ArrayCollection();
			this._documentos = resultado;
			for( var h:int = 0; h < resultado.length; h++){
				this._documentos[h].numFila = h + 1;
			}
			dispatchEvent(new Event ("regresarDoctoR"));
		}
		
		[Bindable(event="regresarDoctoR")]
		public function get regresarDocumentoR():ArrayCollection{
			return this._documentos;
		}
		
		/**
		 * Funcion de result de búsqueda de documentos por avanzada 
		 */
		public function DocumentosResultantes(documentos:ArrayCollection):void{
			for(var i:int = 0; i < documentos.length; i++){
				(documentos.getItemAt(i) as DocumentoRecibido).numFila = i + 1;
				if( (documentos.getItemAt( i ) as DocumentoRecibido).numero == null || (documentos.getItemAt( i ) as DocumentoRecibido).numero == "0" || (documentos.getItemAt( i ) as DocumentoRecibido).numero == "" ){
					(documentos.getItemAt( i ) as DocumentoRecibido).numero = "ND";
				}
			}
			this._documentos = FuncionesEstaticas.getInstance().formatoObjetos( documentos ) ;
			
			dispatchEvent(new Event ("regresarDoctosR"));
		}
		
		[Bindable(event="regresarDoctosR")]
		public function get regresarDocumentosR():ArrayCollection{
			return this._documentos;
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
		 * Funcion de result de busqueda de proveedores
		 */
		public function ProveedoresEncontrados(proveedores:ArrayCollection):void{
			this._proveedores = proveedores;
			dispatchEvent(new Event ("regresarProveedoresEncontrados"));
		}
		
		[Bindable(event="regresarProveedoresEncontrados")]
		public function get regresarProveedores():ArrayCollection{
			return this._proveedores;
		}
		
		/**
		 * el Fault de busqueda de cientes y proveedores
		 */
		public function faultClientesProveedoresUsuarios(objeto:Object):void{
			Alert.show("Fallo al traer la información");
		}
		
		/**
		 * el Fault de busqueda de documento por folio
		 */
		public function faultDocumentoRecibido(objeto:Object):void{
			//Alert.show("No hay coincidencias");
			alertaSingleton.show(objeto.toString());
		}
		
	}
}