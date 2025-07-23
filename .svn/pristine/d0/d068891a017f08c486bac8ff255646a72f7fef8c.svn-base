package modelo.adminPopUp
{
	import flash.display.DisplayObject;
	
	import vistas.popup.popUpMobilPqNet;

	public class AdminPopUp extends DisplayObject
	{
		
		private static var _parentDisplayObject:DisplayObject = null;
		
		public function AdminPopUp()
		{
			super();
		}

		public static function get parentDisplayObject():DisplayObject
		{
			return _parentDisplayObject;
		}

		public static function set parentDisplayObject(value:DisplayObject):void
		{
			_parentDisplayObject = value;
		}
		
		
		public static function show($mensaje:String):void{
			var alerta:popUpMobilPqNet = new popUpMobilPqNet();
			alerta.modoOk = true;
			alerta.mensaje = $mensaje;
			//alerta.open(parentDisplayObject,true);
		}

	}
}