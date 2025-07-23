package mx.com.proquifa.proquifanet.rsl.vista.modelo.admoncomunicacion
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	import mx.controls.Alert;

	public class ModeloEnviaCorreoAdmonComunicacion extends EventDispatcher
	{
		private var _correoCotizacion:Boolean;
		private var _correoPedido:Boolean;
		private var _correoNotificado:Boolean;
		private var _correoFactura:Boolean;
		private var _contacto:Contacto;
		
		public function ModeloEnviaCorreoAdmonComunicacion(target:IEventDispatcher=null)
		{
			super(target);
		}
		/*
		 Modelo para regresar el correo enviado de la cotizacion
		 */
		[Bindable(event="correoEnviadoCotizacion")]
		public function get EnviaCorreoCotizacion():Boolean{
			return this._correoCotizacion;
		}
		
		public function setEnviaCorreoCotizacion( resultado:Boolean ):void{
			this._correoCotizacion = resultado;
			dispatchEvent ( new Event("correoEnviadoCotizacion") );
		}
		/*
		 Modelo para regresar el correo enviado de pedido
		 */
		[Bindable(event="correoEnviadoPedido")]
		public function get EnviaCorreoPedido():Boolean{
			return this._correoPedido;
		}
		
		public function setEnviaCorreoPedido( resultado:Boolean ):void{
			this._correoPedido = resultado;
			dispatchEvent ( new Event("correoEnviadoPedido") );
		}
		/*
		 Modelo para regresar el correo enviado de Notifiaciones
		 */
		[Bindable(event="correoEnviadoNotificacion")]
		public function get EnviaCorreoNotificacion():Boolean{
			return this._correoNotificado;
		}
		
		public function setEnviaCorreoNotificacion( resultado:Boolean ):void{
			this._correoNotificado = resultado;
			dispatchEvent ( new Event("correoEnviadoNotificacion") );
		}
		/*
		 Modelo para regresar el correo enviado de factura
		 */
		[Bindable(event="correoEnviadoFactura")]
		public function get EnviaCorreoFactura():Boolean{
			return this._correoFactura;
		}
		
		public function setEnviaCorreoFactura( resultado:Boolean ):void{
			this._correoFactura = resultado;
			dispatchEvent ( new Event("correoEnviadoFactura") );
		}
		
		/*
		 Modelo para regresar el correo enviado de factura
		 */
		[Bindable(event="regresaContacto")]
		public function get RegresaContacto():Contacto{
			return this._contacto;
		}
		
		public function setRegresaContacto( resultado:Contacto ):void{
			this._contacto = resultado;
			dispatchEvent ( new Event("regresaContacto") );
		}
		
		
		public function faultCotizacionesPorEnviar(error:Object):void{
			Alert.show("Error en el nuevo servicio");
		}
	}
}