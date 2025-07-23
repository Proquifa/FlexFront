package mx.com.proquifa.vista.modelo.cargarFaltante
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	
	public class ModeloCargarFaltante extends EventDispatcher
	{
		
		private var arrayListaFaltanteOD:ArrayCollection;
		public function setObtenerFaltanteOD(data:ArrayCollection):void
		{
			if(data == null || data.length == 0)
				arrayListaFaltanteOD = new ArrayCollection();
			else
				arrayListaFaltanteOD = data;
			for(var i:int = 0; i < arrayListaFaltanteOD.length;i++){
				for(var x:int = 0; x < arrayListaFaltanteOD[i].documentos.length;x++){
					if(arrayListaFaltanteOD[i].documentos[x].tipo.toLowerCase() == "cartauso")
						arrayListaFaltanteOD[i].documentos[x].campoBusqueda = "carta de uso";
					else if(arrayListaFaltanteOD[i].documentos[x].tipo.toLowerCase() == "adicional")					
						arrayListaFaltanteOD[i].documentos[x].campoBusqueda = "adicionales";
				}
			}
			dispatchEvent(new Event("enviarListaFaltanteODModeloCargarFaltante"));
		}
		
		[Bindable(event="enviarListaFaltanteODModeloCargarFaltante")]
		public function get enviarFaltantesOD():ArrayCollection
		{
			return arrayListaFaltanteOD;
		}
		
		//////////////////  OBTIENE RUTAS DE IMAGENES DE CARGAR FALTANTE  //////////////////
		[Bindable]public var docuemtnosCargarFaltante:ArrayCollection;
		public function setObtenerDocumentosCargarFaltante($ruta:ArrayCollection):void
		{
			if($ruta == null || $ruta.length ==0)
				docuemtnosCargarFaltante = new ArrayCollection();
			
			dispatchEvent(new Event("enviarDocumentosCargarFaltanteeModeloGestorComprasGenerarAcuse"));
		}
		[Bindable(event="enviarDocumentosCargarFaltanteeModeloGestorComprasGenerarAcuse")]
		public function get enviarDocumentosCargarFaltante():ArrayCollection
		{
			return docuemtnosCargarFaltante;
		}
		
		//////////////////  GUARDA DOCUMENTOS FALTANTES CARGAR FALTANTE  //////////////////
		public var guardadoCargarFaltante:Boolean;
		public function setObtenerRespuestaGuardadoCargarFaltante($respuesta:Boolean):void
		{
			guardadoCargarFaltante = $respuesta;
			dispatchEvent(new Event("cargarDocumentosModeloGestorComprasCargarFaltante"));
		}
		[Bindable(event="cargarDocumentosModeloGestorComprasCargarFaltante")]
		public function get enviarRespuestaGuardadoCargarFaltante():Boolean
		{
			return guardadoCargarFaltante;
		}
		
		
		//////////////////  GUARDA DOCUMENTOS FALTANTES CARGAR FALTANTE  //////////////////
		public var enviarDocCargarFaltante:Boolean;
		public function setObtenerRespuestaEnviarDocsCargarFaltante($respuesta:Boolean):void
		{
			enviarDocCargarFaltante = $respuesta;
			dispatchEvent(new Event("enviarDocumentosModeloGestorComprasCargarFaltante"));
		}
		[Bindable(event="enviarDocumentosModeloGestorComprasCargarFaltante")]
		public function get enviarRespuestaEnviarDocsCargarFaltante():Boolean
		{
			return enviarDocCargarFaltante;
		}
		
		///////////////////////////// OBTIENE IMAGEN PARA VISUALIZADOR PDF  ///////////////////////////// 
		private var rutaImagen:ArrayCollection;
		public function setImagenVisualizaPDF($rutaImagen:ArrayCollection):void
		{
			if($rutaImagen != null){				
				rutaImagen = $rutaImagen;
			}
			dispatchEvent(new Event("enviarFotoVisualizadorPDF"));
		}
		[Bindable(event="enviarFotoVisualizadorPDF")]
		public function get enviarDatosVisualizadorPDF():ArrayCollection
		{
			return rutaImagen;
		}
		///////////////////////////// OBTIENE AUTORIZACION PARA CERTIFICADOS NO DISPONIBLES  ///////////////////////////// 
		private var autorizacion:ArrayCollection;
		public function setAutorizacionCertificados($value:String):void
		{
			if($value == null){
				autorizacion = new ArrayCollection();			
			}else{
				autorizacion = new ArrayCollection();
				var arreglo:Array;
				arreglo = $value.split(",");
				var usuario:Object = new Object;
				for(var i:int = 0; i < arreglo.length;i++){
					/*usuario.nombre = "";
					usuario.pass = "";*/
					if((i%2) == 0)
						usuario.nombre = arreglo[i]
					else{
						usuario.pass = arreglo[i]
						autorizacion.addItem(usuario);
						usuario = new Object;
					}
					
				}
			}
			dispatchEvent(new Event("enviarAutorizacionCargarFaltante"));
		}
		[Bindable(event="enviarAutorizacionCargarFaltante")]
		public function get enviarAutorizacionCertificados():ArrayCollection
		{
			return autorizacion;
		}
		
		
		public function errorListaAgentes(objeto:Object):void
		{
			trace("ERROR LISTA AGENTES")
			alertaSingleton.show( objeto.toString() );
		}
		
		
		
		
		public function ModeloCargarFaltante(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}

