package mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita
{
	import mx.collections.ArrayCollection;
	
	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.ventas.visitas.ResumenSolicitudVisitasyReporteVisita")]
	[Bindable]
	public class ResumenSolicitudVisitasyReporteVisita
	{
		private var _visitas:ArrayCollection;
		private var _reporteVisita:ArrayCollection;
		
		
		public function ResumenSolicitudVisitasyReporteVisita()
		{
			
		}

		public function get reporteVisita():ArrayCollection
		{
			return _reporteVisita;
		}

		public function set reporteVisita(value:ArrayCollection):void
		{
			_reporteVisita = value;
		}

		public function get visitas():ArrayCollection
		{
			return _visitas;
		}

		public function set visitas(value:ArrayCollection):void
		{
			_visitas = value;
		}

	}
}