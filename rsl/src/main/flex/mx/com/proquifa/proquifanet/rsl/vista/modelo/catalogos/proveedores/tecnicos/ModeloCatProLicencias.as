package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.tecnicos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.Licencia;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;

	public class ModeloCatProLicencias extends EventDispatcher
	{
		public function ModeloCatProLicencias(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private var _licencias:Licencia;
		private var resultadoUpdate:Boolean;
		
		public function setObtenerLicencias($licencia:Licencia):void{
			this._licencias = ObjectUtil.copy($licencia) as Licencia;
			dispatchEvent(new Event("enviarLicenciasModeloCatProLicencias"));
		}
		
		[Bindable(event="enviarLicenciasModeloCatProLicencias")]
		public function get enviarLicencias():Licencia{
			return this._licencias;
		}
		
		public function setResultadoLicencias($resultado:Boolean):void{
			resultadoUpdate = $resultado;
			dispatchEvent(new Event("enviarResultadoUpdateModeloCatProLicencias"));
		}
		
		[Bindable(event="enviarResultadoUpdateModeloCatProLicencias")]
		public function get enviarResultadoUpdate():Boolean{
			return resultadoUpdate;
		}
		
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
	}
}