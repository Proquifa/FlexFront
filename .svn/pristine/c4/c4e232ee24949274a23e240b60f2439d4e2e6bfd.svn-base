package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.RutasPdF;

	public class UtilsRutaArchivos
	{
		public function UtilsRutaArchivos()
		{
		}
		/**
		 * Obtiene la carpeta dentro de la ruta SAP segun el tipo de documento
		 * la variable Doc es el nombre del archivo sin extension
		 * tpoDoc es el tipo de pendiente q se va a enviar como cotizaciones o notificado etc 
		 */
		public static function obtenerCarpeta(Doc:String, tipoDoc:String):String{
			var ubicacion:String;
			if(tipoDoc == "Notificaciones"){
				if(Doc.substring(0,2) == "NT"){
					ubicacion = "Aviso de Cambios";
				}else if (Doc.substring(0,5) == "Carta" || Doc.substring(0,5) == "Aviso" ){
					ubicacion = "Cartas";
				}else if (Doc.indexOf("-", 0) != -1 && Doc.length >= 11){
					ubicacion = "Pedido";
				} else{
					ubicacion = "DoctoR";
				}
			}else if(tipoDoc == "Pedidos"){
				if (Doc.substring(0,5) == "Carta" || Doc.substring(0,5) == "Aviso"){
					ubicacion = "Cartas";		   			
				}else{
					ubicacion = "Pedido";
				}		   		
			}else if(tipoDoc == "Cotizaciones"){
				if (Doc.substring(0,5) == "Carta" || Doc.substring(0,5) == "Aviso" ){
					ubicacion = "Cartas";		   			
				}else{
					ubicacion = "Cotizacion";
				}				
			}else if(tipoDoc == "Facturas"){
				if ( Doc.substring(0,5) == "Carta" || Doc.substring(0,5) == "Aviso" ){
					ubicacion = "Cartas";		   			
				}else{
					ubicacion = "Factura";
				}				
			}    		
			return ubicacion;	 
		}
		
		public static function obtenerRuta(tipoDocto:String,fPor:String):String{
			var directorio:String;
			if (tipoDocto=="DoctoR"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.DOCTOSR_RUTA;
			}else if (tipoDocto=="AmparaRevision"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.AMPARA_REVISION_RUTA;
			}else if (tipoDocto=="Pedido"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.PEDIDOS_RUTA;
			}else if (tipoDocto=="Factura"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.FACTURAS_RUTA + fPor + "/";
			}else if (tipoDocto=="OC"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.OC_RUTA;
			}else if (tipoDocto=="DoctoDC"){	             		
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.DOCTOS_CIERRE_RUTA;
			}else if (tipoDocto == "Factura proveedor"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.FACTURAS_PROVEEDOR_RUTA;	             		
			}else if (tipoDocto == "Pago"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.PAGOS_RUTA;	             		
			}else if (tipoDocto == "Cobro"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.COBROS_RUTA;           		
			}else if (tipoDocto == "Cotizacion"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.COTIZACIONES_RUTA;	             		
			}else if (tipoDocto == "Aviso de Cambios"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.NOTIFICACIONES_RUTA;       		
			}else if (tipoDocto == "Cartas"){
				directorio = RutasPdF.GENERAL_RUTA + RutasPdF.CARTAS_RUTA;
			}
			return directorio;
		}
		
		public static function obtenFpor( $alias:String):String{
			var fPor:String;
			if( $alias == 'PQF' ){
				fPor = RutasPdF.FPOR_PROVEEDORA;
			}else if( $alias == 'PRO'){
				fPor = RutasPdF.FPOR_PROQUIFA;
			}else if( $alias == 'PHS'){
				fPor = RutasPdF.FPOR_PHARMA;
			}else if( $alias == 'MUN'){
				fPor = RutasPdF.FPOR_MUNGEN;
			}else if( $alias == 'GOL'){
				fPor = RutasPdF.FPOR_GOLOCAER;
			}else if( $alias == 'PSE'){
				fPor = RutasPdF.FPOR_PRO_SERVICIOS;
			}else if( $alias == 'RYN'){
				fPor = RutasPdF.FPOR_RYNDEM;
			}else if( $alias == 'PRL'){
				fPor = RutasPdF.FPOR_PRO_EL_SALVADOR;
			}
			return fPor;
		}
		
		public static function obtenerFporNombre($fpor:String):String{
			var fpor:String;
			if ($fpor.toLowerCase() == 'proquifa servicios' ){
				fpor = 'ProquifaServicios';
			}else if ($fpor.toLowerCase() == 'ryndem' ){
				fpor ='Ryndem';
			}else{
				fpor = $fpor;
			}
			return fpor;
		}
	}
}