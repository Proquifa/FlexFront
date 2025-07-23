package mx.com.proquifa.proquifanet.admonComunicacion.vistas.mock
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Correo;
	
	public class MockPendientesPorEnviar
	{	
		private var _correo:ArrayCollection = null;		
		
		public function MockPendientesPorEnviar()
		{
			var correo:Correo = null;				
			this._correo = new ArrayCollection();
						
			correo = new Correo();			
			correo.fechaInicio = new Date;
			correo.origen = "recepcion";
			correo.destino = 44;
			correo.medio = "tel";
			correo.FolioDocumento = "NT-081709-0061,032210-8580";			
			correo.correo = "ogarcia@proquifa.com.mx";
			correo.ccorreo = "ogarcia@proquifa.com.mx";
			correo.cuerpoCorreo = "comentarios cuerpo de corro y demas para hacer espacio";
			correo.comentariosAdicionales= "comentatio 1 y _Comentario 2";
			this._correo.addItem( correo );
			
			correo = new Correo();			
			correo.fechaInicio = new Date;
			correo.origen = "recepcion";
			correo.destino = 44;
			correo.medio = "tel";
			correo.FolioDocumento = "032210-8580";			
			correo.correo = "ogarcia@proquifa.com.mx";
			correo.ccorreo = "ogarcia@proquifa.com.mx";
			correo.cuerpoCorreo = "comentarios cuerpo de corro y demas para hacer espacio 2";
			correo.comentariosAdicionales= "comentatio 2 y _Comentario 3";
			this._correo.addItem( correo );
			
		}
		
		public function pendientePorEnviar():ArrayCollection{		 
			 return this._correo;
		}
		
		
	}
}