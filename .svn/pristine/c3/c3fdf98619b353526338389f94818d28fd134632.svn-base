package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import flash.display.DisplayObject;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.alertPqNet.EventoAlertaPqNet;
	import mx.com.proquifa.proquifanet.rsl.vista.vistas.componentes.alertPqNet.alertPqNet;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	
	import skins.otros.sprite.ImageAnimated;
	
	public class alertaSingleton extends DisplayObject
	{
		public static var alerta:alertPqNet = new alertPqNet();
		[Bindable]
		private static var _elDisplayObject:DisplayObject;
		
		public function alertaSingleton()
		{
			super();
		}
		
		public static function get elDisplayObject():DisplayObject
		{
			return _elDisplayObject;
		}
		
		public static function set elDisplayObject(value:DisplayObject):void
		{
			_elDisplayObject = value;
		}
		public static function show($mensaje:String="", $encabezado:String="",$vieneD:String="", lbOk:String="",lbCancel:String="",lbYes:String="",lbNo:String="", $mensajes:ArrayCollection = null,$isAlertaEsperar:Boolean=false,closeHandler:Function = null,$isAlertaRoja:Boolean=false):void{
			/*if(alerta == null){
			alerta = new alertPqNet();
			alerta = PopUpManager.createPopUp(_elDisplayObject ,alertPqNet, true) as alertPqNet;
			}else{
			alerta.visible = true;
			}*/
			alerta == null ? alerta = new alertPqNet() : PopUpManager.removePopUp(alerta );
			//PopUpManager.removePopUp(alerta );
			alerta = PopUpManager.createPopUp( _elDisplayObject ,alertPqNet, true) as alertPqNet;
			if (closeHandler != null){
				alerta.addEventListener(EventoAlertaPqNet.CLOSE,closeHandler);
			}
			alerta.configurar($mensaje, $encabezado, $vieneD, lbOk, lbCancel, lbYes, lbNo, $mensajes,$isAlertaEsperar,$isAlertaRoja);
			if($isAlertaEsperar)
				(alerta.imgEsperar as ImageAnimated).play();
			PopUpManager.centerPopUp(alerta);
		}
		
		public static function showReintentar($mensaje:String="", $encabezado:String="",$vieneD:String="", lbOk:String="",lbReintentar:String="", $mensajes:ArrayCollection = null,$isAlertaEsperar:Boolean=false,closeHandler:Function = null):void{
			alerta = PopUpManager.createPopUp( _elDisplayObject ,alertPqNet, true) as alertPqNet;
			
			if (closeHandler != null){
				alerta.addEventListener(EventoAlertaPqNet.CLOSE,closeHandler);
			}
			alerta.configurarBotones($mensaje, $encabezado, $vieneD, lbOk, lbReintentar, $mensajes,$isAlertaEsperar);
			if($isAlertaEsperar)
				(alerta.imgEsperar as ImageAnimated).play();
			PopUpManager.centerPopUp(alerta);
		}
		
		public static function remove($isAlertaEsperar:Boolean = false):void
		{
			if($isAlertaEsperar && alerta.imgEsperar)
				(alerta.imgEsperar as ImageAnimated).stop();
			PopUpManager.removePopUp(alerta);
		}
	}
}