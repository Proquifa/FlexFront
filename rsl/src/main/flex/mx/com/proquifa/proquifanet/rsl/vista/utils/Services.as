package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;

	public class Services
	{		
		  // private static var urlGeneral:String = 'http://172.24.20.12:8080/ProquifaNet/'; //PRODUCCION IP
		   private static var urlGeneral:String = 'https://pqnetangular.ryndem.mx/ProquifaNet/'; //PRODUCCION
		 //private static var urlGeneral:String = 'http://192.168.2.98:8081/api/'; //localhost
		  //private static var urlGeneral:String = 'http://172.24.32.14:8080/ProquifaNet/'; //RACKSPACE DEV
		// private static var urlGeneral:String = 'http://192.168.2.118:8080/api/';//ip del backend(Maquina Ocardona)
		
		public function Services()
		{
		}
		
		
		private static var requestor:URLLoader = new URLLoader(); 
		public static function getScoring(url:String,completeHandler:Function, errorHandler:Function):void 
		{ 
			//Create the HTTP request object 
			var request:URLRequest = new URLRequest( urlGeneral + url ); 
			request.method = URLRequestMethod.POST;
			
			//Initiate the transaction 
			requestor = new URLLoader(); 
			requestor.addEventListener( Event.COMPLETE, completeHandler ); 
			requestor.addEventListener( IOErrorEvent.IO_ERROR, errorHandler ); 
			requestor.addEventListener( SecurityErrorEvent.SECURITY_ERROR, errorHandler ); 
			requestor.load( request ); 
		}
		
		public static function getEndPoint(url:String, body:*, completeHandler:Function, errorHandler:Function):void 
		{ 
			//Create the HTTP request object 
			var request:URLRequest = new URLRequest( urlGeneral + url ); 
			request.method = URLRequestMethod.POST;
			request.data = body;
			
			var header:URLRequestHeader = new URLRequestHeader("Content-Type", "application/json");
			
			request.requestHeaders.push(header);
			
			//Initiate the transaction 
			requestor = new URLLoader(); 
			requestor.addEventListener( Event.COMPLETE, completeHandler ); 
			requestor.addEventListener( IOErrorEvent.IO_ERROR, errorHandler ); 
			requestor.addEventListener( SecurityErrorEvent.SECURITY_ERROR, errorHandler ); 
			requestor.load( request ); 
		}
	}
}