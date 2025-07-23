package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.incidentes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.controls.Alert;
	
	public class ModeloRegistraIncidente extends EventDispatcher
	{
		private var _registraIncidente:Incidente;
		
		
		public function ModeloRegistraIncidente(target:IEventDispatcher=null)
		{
			//TODO: implement function
			super(target);
		}
		
		//Metodo para conseguir Usuarios de las Cotizaciones
		public function setRegistroIncidente (datos:Incidente,incOriginal:Incidente):void{
			this._registraIncidente = datos;				
			dispatchEvent( new Event("registroIncidente") );
		}
		
		[Bindable(event="registroIncidente")]
		public function get RegistroIncidente():Incidente{
			return this._registraIncidente
		}
		
		public function faultRegistroIncidente ( datos:Object ):void{
			Alert.show(datos.faultString.toString(),"Atencion");
		}
		
		public function reset():void{
			this._registraIncidente = null;
		}
	}
}