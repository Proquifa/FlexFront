package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	import flash.utils.getDefinitionByName;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	import mx.controls.TextInput;
	import mx.events.ValidationResultEvent;
	import mx.utils.ObjectUtil;
	import mx.validators.EmailValidator;
	
	import avmplus.getQualifiedClassName;
	
	import skins.catalogos.catalogoAlertas;
	
	public class Util
	{
		[Bindable]	public static var _listaPeriodo:ArrayCollection = new ArrayCollection(["Anual","Semestral","Trimestral","Mensual","Quincenal"]);
		[Bindable]	public static var _listaSemestre:ArrayCollection = new ArrayCollection([{valor:"Enero - Junio",llave:1},{valor:"Julio - Diciembre",llave:2}]);
		[Bindable]	public static var _listaTrimestre:ArrayCollection = new ArrayCollection([{valor:"Enero - Marzo",llave:1},{valor:"Abril - Junio",llave:2},{valor:"Julio - Septiembre",llave:3},{valor:"Octubre - Diciembre",llave:4}]);
		[Bindable]	public static var _listaMensual:ArrayCollection = new ArrayCollection([{valor:"Enero",llave:1},{valor:"Febrero",llave:2},{valor:"Marzo",llave:3},{valor:"Abril",llave:4},{valor:"Mayo",llave:5},{valor:"Junio",llave:6},
			{valor:"Julio",llave:7},{valor:"Agosto",llave:8},{valor:"Septiembre",llave:9},{valor:"Octubre",llave:10},{valor:"Noviembre",llave:11},{valor:"Diciembre",llave:12}]);
		[Bindable]	public static var _listaquincenal:ArrayCollection = new ArrayCollection([{valor:"1ra. Enero",llave:1,mes:1},{valor:"2da. Enero",llave:2,mes:1},{valor:"1ra. Febrero",llave:1,mes:2},{valor:"2da. Febrero",llave:2,mes:2},
			{valor:"1ra. Marzo",llave:1,mes:3},{valor:"2da. Marzo",llave:2,mes:3},{valor:"1ra. Abril",llave:1,mes:4},{valor:"2da. Abril",llave:2,mes:4},{valor:"1ra. Mayo",llave:1,mes:5},{valor:"2da. Mayo",llave:2,mes:5},{valor:"1ra. Junio",llave:1,mes:6},
			{valor:"2da. Junio",llave:2,mes:6},{valor:"1ra. Julio",llave:1,mes:7},{valor:"2da. Julio",llave:2,mes:7},{valor:"1ra. Agosto",llave:1,mes:8},{valor:"2da. Agosto",llave:2,mes:8},{valor:"1ra. Septiembre",llave:1,mes:9},{valor:"2da. Septiembre",llave:2,mes:9},
			{valor:"1ra. Octubre",llave:1,mes:10},{valor:"2da. Octubre",llave:2,mes:10},{valor:"1ra. Noviembre",llave:1,mes:11},{valor:"2da. Noviembre",llave:2,mes:11},{valor:"1ra. Diciembre",llave:1,mes:12},{valor:"2da. Diciembre",llave:2,mes:12}]);
		
		private static var _instance:Util = null;
		
		public static function getInstance():Util
		{
			if(_instance == null)
			{
				_instance = new Util();
			}
			return _instance;
		}
		public function Util()
		{
		}
		
		public static var validadorPara:EmailValidator;
		public static var unaDireccionDCorreo:TextInput = new TextInput;
		/**
		 * Devuelve el valor del indice en la colecci&oacute;n de acuerdo a la llave.
		 */
		public static function indiceSeleccionado( coleccion:ArrayCollection, llave:Number ):Number{
			if( coleccion == null ){
				return -1;
			}
			for( var i:Number=0; i<coleccion.length; i++){
				if( (coleccion[i] as CatalogoItem).llave == llave ){
					return i;
				}
			}
			return -1;
		}
		/**
		 * Devuelve el valor del indice en la colecci&oacute;n de acuerdo a la llave.
		 */
		public static function indiceSeleccionadoComoObjetoEIdLlave( coleccion:ArrayCollection, llave:Number ):Number{
			if( coleccion == null ){
				return -1;
			}
			for( var i:Number=0; i<coleccion.length; i++){
				if( (coleccion[i] as Object).llave == llave ){
					return i;
				}
			}
			return -1;
		}
		/**
		 * Devuelve el valor del indice en la colecci&oacute;n de acuerdo a la llave.
		 */
		public static function indiceSeleccionadoComoObjeto( coleccion:ArrayCollection, llave:Number ):Number{
			if( coleccion == null ){
				return -1;
			}
			for( var i:Number=0; i<coleccion.length; i++){
				if( (coleccion[i] as Object).id == llave ){
					return i;
				}
			}
			return -1;
		}
		
		/**
		 * Devuelve el valor del indice en la colecci&oacute;n de acuerdo a la llave.Recibe un objeto tipo catalogoItem 
		 * para evaluar su String (valor) y regresa el indice
		 */
		public static function indiceSeleccionadoComoObjetoConString( coleccion:ArrayCollection, valor:String ):Number{
			if( coleccion == null ){
				return -1;
			}
			for( var i:Number=0; i<coleccion.length; i++){
				if( (coleccion[i] as Object).valor == valor ){
					return i;
				}
			}
			return -1;
		}
		/**
		 * Valida direcciones de correo 
		 */ 
		public static function verificaDireccionesDeCorreo ( listaCorreos:String ):Boolean{			
			var numero:Boolean = new Boolean;
			var ListDoc:Array = new Array();
			var i:int = 0;			
			ListDoc = listaCorreos.split(";");
			for(i=0;i<ListDoc.length;i++){		
				validadorPara = new EmailValidator();
				unaDireccionDCorreo.text = ListDoc[i];
				validadorPara.source = unaDireccionDCorreo;
				validadorPara.property = "text";
				validadorPara.requiredFieldError = "Direccion invalida";
				if( validarCorreo() ){
					numero = true;
				}else{
					numero = false;
					return numero;
					break;
				}
			}
			return numero;
		}
		
		
		public static function validarCorreo():Boolean {
			var emailPara_valido:ValidationResultEvent = validadorPara.validate();
			var validacionCompleta:Boolean = new Boolean();
			if (emailPara_valido.type == ValidationResultEvent.VALID ) {
				return validacionCompleta = true;
			}else{
				return validacionCompleta = false;
			}
		}	
		/**
		 * metodo para llenar los campos de un PieChart, regresa todos los tipos diferentes del campo especificado y su conteo
		 * utilizado en InsPhs-USA
		 */
		public function consultaPieChartConteoXCampo($lista:ArrayCollection, $nombreCampoBusqueda:String, $etiquetaElemento:String="Partida(s)"):ArrayCollection{
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			var objeto:Object = new Object();
			while(arrayTemp.length > 0 ){
				objeto = new Object();
				objeto.tipo = arrayTemp[0][$nombreCampoBusqueda];
				objeto.total = 0;
				objeto.etiquetaElemento = $etiquetaElemento;
				for( var m:int = 0; m<arrayTemp.length; m++){
					if( objeto.tipo == arrayTemp[m][$nombreCampoBusqueda]){
						objeto.total = objeto.total + 1;
						arrayTemp.removeItemAt(m);
						m = m-1;
					}
				}
				arrayRegreso.addItem(objeto);
			}
			return arrayRegreso;
		}
		
		
		/**
		 * Metodo para ordenar un ArrayCollection
		 * 
		 * @param array
		 * @param name Nombre por el cual va a ordenar
		 * @return ArrayCollection
		 * 
		 */
		public static function sortArray(array:ArrayCollection, name:String, desend:Boolean = false):ArrayCollection{
			
			var dataSortField:SortField = new SortField();
			dataSortField.name = name;
			dataSortField.descending = desend;
			var numericDataSort:Sort = new Sort();
			numericDataSort.fields = [dataSortField];
			array.sort = numericDataSort;
			array.refresh();
			return array;
		}
		
		
		/**
		 * Busca la propiedad en la clase u objeto para encontrar el valor deseado. 
		 * @param propiedad Propiedad por la cual se realizara la busqueda
		 * @param object Clase u Objeto en la cual se buscara la propiedad
		 * @return ? Retorna el valor de la propiedad.
		 * 
		 */
		public static function obtenerValorPropiedad(propiedad:String, object:*):*{
			var currentFila:* = object;
			if (propiedad.indexOf(".") > -1){
				var isPropertyError:Boolean = false;
				var propiedades:Array = propiedad.split(".");
				var ultimaPropiedad:String = propiedades.pop();
				
				var currentParent:* = currentFila;
				for (var j:int = 0; j < propiedades.length; j++ ){
					if (currentParent.hasOwnProperty(propiedades[j]))
						currentParent = currentParent[propiedades[j]];
					else
						isPropertyError = true;
				}
				
				if (currentParent.hasOwnProperty(ultimaPropiedad))
				{
					return currentParent[ultimaPropiedad];
				}
				else{
					isPropertyError = true;
				}
				
				if(isPropertyError){
					trace('No se encontro la propiedad: ' + propiedad.toString());
				}
			}
			else{
				return object[propiedad];
			}
		}
		
		//Convertir importancia, dificultad y mantenimeinto a Cadena
		public static function convertirPromediosImportancia(valor:int):String{
			var texto:String="";
			if(valor==5){
				texto="MAXIMA";
			}else if(valor==4){
				texto="ALTA";
			}else if(valor==3){
				texto="MEDIA";
			}else if(valor==2){
				texto="BAJA";
			}else if(valor==1){
				texto="MUY BAJA";
			}else{
				texto="NO ESPECIFICADO";
			}
			return texto;
		}
		public static function convertirPromediosDificultad(valor:int):String{
			var texto:String="";
			if(valor==5){
				texto="COMPLICADO";
			}else if(valor==4){
				texto="MUY DIFÍCIL";
			}else if(valor==3){
				texto="DIFÍCIL";
			}else if(valor==2){
				texto="FÁCIL";
			}else if(valor==1){
				texto="MUY FÁCIL";
			}else{
				texto="NO ESPECIFICADO";
			}
			return texto;
		}
		public static function convertirPromediosMantenimiento(valor:int):String{
			var texto:String="";
			if(valor==5){
				texto="MUY ALTO";
			}else if(valor==4){
				texto="ALTO";
			}else if(valor==3){
				texto="MEDIO";
			}else if(valor==2){
				texto="BAJO";
			}else if(valor==1){
				texto="MUY BAJO";
			}else{
				texto="NO ESPECIFICADO";
			}
			return texto;
		}
		
		
		public static function searchInArrayCollection(array:ArrayCollection, value:*, campo:String):int{
			if (array == null ){
				return -1;
			}
			
			for (var i:int = 0; i < array.length; i++){
				
				if (array[i].hasOwnProperty(campo) && array[i][campo] == value ){
					return i;
				}
			}
			return -1;
		}
		
		public static function formatoHorasIndicador(valor:String):String
		{
			if (valor != null )
			{
				if (valor.indexOf("h") != -1)
				{
					return valor.substr(0,valor.indexOf("h"))+"hrs";
				}
				else if (valor.indexOf("s") != -1)
				{
					return valor.substr(0,valor.indexOf("s") + 3);
				}
			}
			return "";
		}
		
		
		public static function getClass(obj : Object) : Class {
			return Class(getDefinitionByName( getQualifiedClassName(obj)));
		}
		
		/**
		 * Busca si el primer objeto en el campo es FT (Fuera de Tiempo), si lo es entonces agrega a la primera posicion el objecto de ET (En Tiempo)
		 * Esto sirve para que en FT siempre lo muestre de color ROJO y ET de color VERDE
		 * @param data la lista que se mostrara en la grafica
		 * @param campo campo en donde buscara la etiqueta para realizar la comparacion si es Fuera de Tiempo
		 * @param cadena texto para buscar si es FT o Fuera de Tiempo depende de lo que mande servicion
		 * @param objeto es la clase que se insertara en la lista si es que solo tiene un dato y es el FT
		 * @return 
		 */
		public static function agregarObjetoParaGraficaETyFT(data:ArrayCollection, campo:String, cadena:String, objeto:*):ArrayCollection
		{
			if (data && data.length > 0 )
			{
				if (data[0] is getClass(objeto) )
				{
					if (data[0][campo] == cadena)
					{
						data.addItemAt(objeto,0);
					}
				}
			}
			
			return data;
		}
		
		public static function compararFechas(date1:Date, date2:Date):Boolean
		{
			if (date1.getFullYear() == date2.getFullYear() &&
				date1.getMonth() == date2.getMonth() )
				return true;
			return false;
		}
		
		
		
		private static var factors:Array = [1, 1000, 60, 60, 24];
		private static var timeValues:Array = ["miliseconds", "seconds", "minutes", "hours", "days"];
		public static function substract(dt1:Date, dt2:Date, values:Array):Object {
			//Parámetros Opcionales
			if (dt1 == null) {
				dt1 = new Date();
			}
			if (dt2 == null) {
				dt2 = new Date();
			}
			if (values == null) {
				values = new Array(1, 2, 3);
			}
			//El último valor del array, para saber cuánto tendremos que dividirlo     
			var lastValue:Number = values[values.length-1];
			//El objeto que devolveremos
			var resultado:Object = new Object();
			//La diferencia en milisegundos
			var dif:Number = dt1.getTime()-dt2.getTime();
			var total:Number = dif;
			//La pasamos a las unidades superiores
			for (var i:Number = 0; i<=lastValue; i++) {
				total /= factors[i];
			}
			var j:Number = values.length-1;
			for (i=factors.length-1; i>=0; i--) {
				//Si hemos pedido ese dato..
				if (values[j] == i) {
					//lo redondeamos y devolvemos el resultado redondeado
					var redondeado:Number = Math.round(total);
					resultado[timeValues[i]] = redondeado;
					//Restamos la cantidad que ya hemos dvuelto a la que queda
					total -= redondeado;
					j--;
				}
				//De todas formas multiplicamos el resultado por el factor 
				total *= factors[i];
			}
			return resultado;
		}
		
		public static function abreviaturaTextoVisita(cadena:String):String {
			if (cadena) {
				switch(cadena)
				{
					case "PROGRAMADAS":
					{
						return "PROG";
						break;
					}
					case "MIXTAS":
					{
						return "MIX";
						break;
					}
						
					default:
					{
						return cadena;
						break;
					}
				}
			}
			
			return cadena;
		}
		
		
		private static var requestor:URLLoader = new URLLoader(); 
		public static function restAPIStatusFactura(emisor:String, receptor:String, total:String, uuid:String, completeHandler:Function, errorHandler:Function):void 
		{ 
			//Create the HTTP request object 
			var request:URLRequest = new URLRequest( "http://187.189.39.53:10080/StatusFactura/estatusFactura/" + emisor + "/" + receptor + "/" + total + "/" + uuid ); 
			request.method = URLRequestMethod.POST;
			
			//Initiate the transaction 
			requestor = new URLLoader(); 
			requestor.addEventListener( Event.COMPLETE, completeHandler ); 
			requestor.addEventListener( IOErrorEvent.IO_ERROR, errorHandler ); 
			requestor.addEventListener( SecurityErrorEvent.SECURITY_ERROR, errorHandler ); 
			requestor.load( request ); 
		}
		
		
		public static function rutaNueva(folio:String):Object {
			var obj:Object = new Object;
			var year:String = "";
			obj.nuevaRuta = false;
			obj.ruta = year;
			
			if (folio) {
				var pattern:RegExp = /\D/gi;				
				var dateActual:Date = new Date();				
				
				if (folio.indexOf("Guia-") == -1){
					folio = folio.replace(pattern, "");
					if (parseInt((folio as String).substring(4,6)) < parseInt(dateActual.getFullYear().toString().substring(2,4)) ) { //&& parseInt((folio as String).substring(0,2)) >= 10 
						obj.nuevaRuta = true;
						year = "20";
						year += (folio as String).substring(4,6) + "/";
						/*year += (folio as String).substring(0,2) + "/";*/
					}
				}
				
				obj.ruta = year;
			}	
			return obj;			
		}
		
		public static function rutaFecha(date:*):Object {
			var obj:Object = new Object;
			var year:String = "";
			
			var dateActual:Date = new Date();
			
			if (date is Date ) {
				if (date.getFullYear() < dateActual.getFullYear() )
					year = date.getFullYear().toString() + "/";
			} 
			else if (date is Number) {
				if (date < dateActual.getFullYear())
					year = date.toString() + "/";
			}
			
			obj.ruta = year;
			
			return obj;
		}
		
		public static function iniciaEspera(mensaje:String):void
		{
			if(mensaje == "iniciarEspera")
			{
				alertaSingleton.show(catalogoAlertas.INICIAR_ESPERA,"","","","","","",null,true);
			}
			else if (mensaje == "terminaEspera" )
			{
				alertaSingleton.remove(true);
			}
			
			
		}
		
	}
}
