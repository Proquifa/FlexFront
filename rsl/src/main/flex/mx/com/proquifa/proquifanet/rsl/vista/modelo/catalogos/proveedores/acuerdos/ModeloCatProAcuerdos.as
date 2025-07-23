package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.acuerdos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.InformacionPagos;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloCatProAcuerdos extends EventDispatcher
	{
		public function ModeloCatProAcuerdos(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private var listaRelacionEmpresas:ArrayCollection;
		public function setRecibeListaRelacionEmpresasPorProveedor($empresas:ArrayCollection):void
		{
			listaRelacionEmpresas = $empresas;
			dispatchEvent(new Event("enviarListaDeRelacionDeEmpresarPorProveedorModeloCatProAcuerdos"));
		}
		
		[Bindable(event="enviarListaDeRelacionDeEmpresarPorProveedorModeloCatProAcuerdos")]
		public function get enviarListaRelacionEmpresasPorProveedor():ArrayCollection
		{
			return listaRelacionEmpresas;
		}

		private var confirmacionDeActualizarListaEmpresas:Boolean;
		public function setConfirmacionDeActualizarListaEmpresasRelacionadasProveedor($confirmacionDeGuardado:Boolean):void
		{
			confirmacionDeActualizarListaEmpresas = $confirmacionDeGuardado;
			dispatchEvent(new Event("enviarConfirmacionDeGuardadoListaEmpresasProveedorModeloCatProAcuerdos"));
		}
		
		[Bindable(event="enviarConfirmacionDeGuardadoListaEmpresasProveedorModeloCatProAcuerdos")]
		public function get enviarConfirmacionGuardadoListaEmpresasRelacionProveedor():Boolean
		{
			return confirmacionDeActualizarListaEmpresas;
		}

		private var informacionPagos:InformacionPagos;
		public function setRecibeInformacionDePagosParaProveedor($infoPagos:InformacionPagos):void
		{
			informacionPagos = $infoPagos;
			dispatchEvent(new Event("enviarinformacionPagosParaProveedorModeloCatProAcuerdos"));
		}
		
		[Bindable(event="enviarinformacionPagosParaProveedorModeloCatProAcuerdos")]
		public function get enviarInformacionPagosParaProveedor():InformacionPagos
		{
			return informacionPagos;
		}

		
		private var respuestaDeActualizarInfoPagos:Boolean;
		public function setRecibeRespuestaDeActualizarInfoPagosProveedor($respuesta:Boolean):void
		{
			respuestaDeActualizarInfoPagos = $respuesta;
			dispatchEvent(new Event("enviarRespuestaDeActualizarInforPagoProveedorModeloCatProAcuerdos"));
		}
		
		[Bindable(event="enviarRespuestaDeActualizarInforPagoProveedorModeloCatProAcuerdos")]
		public function get enviarRespuestaDeActualizarInformacionPagoProveedor():Boolean
		{
			return respuestaDeActualizarInfoPagos;
		}
		
		public function error(objeto:Object):void{
			alertaSingleton.show( objeto.toString() );
		}
	}
}