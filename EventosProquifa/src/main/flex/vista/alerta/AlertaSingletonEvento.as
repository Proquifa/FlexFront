/**
 * Copia de mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton
 * solo se cambia el tamaño del cuadro de mensaje para que se ajuste a las necesidades
 * de la aplicacion sin afectar el diseño de lo que ya se a trabajado en las diferentes vistas....
*/
package vista.alerta
{
	import flash.display.DisplayObject;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.alertPqNet.EventoAlertaPqNet;
	import mx.managers.PopUpManager;
	
	import skins.otros.sprite.ImageAnimated;
	
	public class AlertaSingletonEvento extends DisplayObject
	{
		
		public static var alerta:alertPqNet = new alertPqNet();
		[Bindable] private static var _elDisplayObject:DisplayObject;
		
		public function AlertaSingletonEvento()
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
		public static function show($mensaje:String="", $encabezado:String="",$vieneD:String="", lbOk:String="",lbCancel:String="",lbYes:String="",lbNo:String="", $mensajes:ArrayCollection = null,$isAlertaEsperar:Boolean=false,closeHandler:Function = null):void{
			alerta = PopUpManager.createPopUp( _elDisplayObject ,alertPqNet, true) as alertPqNet;
			if (closeHandler != null){
				alerta.addEventListener(EventoAlertaPqNet.CLOSE,closeHandler);
			}
			alerta.configurar($mensaje, $encabezado, $vieneD, lbOk, lbCancel, lbYes, lbNo, $mensajes,$isAlertaEsperar);
			if($isAlertaEsperar)
				(alerta.imgEsperar as ImageAnimated).play();
			PopUpManager.centerPopUp(alerta);
		}
		public static function remove($isAlertaEsperar:Boolean = false):void
		{
			if($isAlertaEsperar)
				(alerta.imgEsperar as ImageAnimated).stop();
			PopUpManager.removePopUp(alerta);
		}
		
		
	}
}