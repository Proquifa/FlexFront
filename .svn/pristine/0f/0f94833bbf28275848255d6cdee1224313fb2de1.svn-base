package mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.grupoEmpresarial
{
	import flash.events.Event;
	
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.AsignacionFolio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.cobrosypagos.facturista.ConceptoFactura;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Importacion;
	
	
	public class EventoCatalogoGrupoEmpresarial extends Event
	{
		public var idEmpresa:Number;
		public var idConcepto:Number;
		public var folios:AsignacionFolio;
		public var concepto:ConceptoFactura;
		public var facElecronica:Boolean;
		public var facMatriz:Boolean
		
		public var datosImportacion:Importacion;
		
		//constantepara servicio
		public static const OBTENER_EMPRESAS_DEL_GRUPO:String = "obtenerEmpresasDelGrupoEventoCatalogoGrupoEmpresarial";
		public static const OBTENER_CONCEPTOS:String = "obtenerConceptosEventoCatalogoGrupoEmpresarial";
		public static const OBTENER_FOLIOS:String = "obtenerFoliosEventoCatalogoGrupoEmpresarial";
		public static const GUARDAR_FOLIO:String = "guardarFoliosEventoCatalogoGrupoEmpresarial";
		public static const ELIMINAR_CONCEPTOS:String = "eliminaConceptosEventoCatalogoGrupoEmpresarial";
		public static const ELIMINAR_CONCEPTOSBD:String = "eliminaConceptosBDEventoCatalogoGrupoEmpresarial";
		public static const AGREGA_CONCEPTOS:String = "agregaConceptosEventoCatalogoGrupoEmpresarial";
		public static const ASIGNA_TIPO_FACTURA:String = "asignaTipoFacturaEventoCatalogoGrupoEmpresarial";
		public static const ASIGNA_ROLES:String = "asignaRolesEventoCatalogoGrupoEmpresarial";
		public static const CONSULTA_CLAVE_UNIDAD:String = "consultaClaveUnidadEventoCatalogoGrupoEmpresarial";
		public static const CONSULTA_CLAVE_PROD_SERV:String = "consultaClaveProdServEventoCatalogoGrupoEmpresarial";
		
		public function EventoCatalogoGrupoEmpresarial(type:String, bubbles:Boolean=true, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
		}
		public override function clone():Event{
			return new EventoCatalogoGrupoEmpresarial(type,bubbles,cancelable);
		}
	}
}