package mx.com.proquifa.proquifanet.rsl.vista.mocks
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Contacto;
	
	public class MockContactoService
	{
		private var _contactos:ArrayCollection = null;
		
		public function MockContactoService()
		{
			//TODO: implement function
			var contacto:Contacto = null;
			
			this._contactos = new ArrayCollection();
			
			contacto = new Contacto();			
			contacto.departamento = "ventas";
			contacto.EMail = "email@pruebas.com"
			contacto.empresa = "empresa";
			contacto.fax = "123456";
			contacto.idContacto = 1;
			contacto.nombre = "fulanito mock mendoza";
			contacto.puesto = "puesto jodido XP";
			contacto.telefono = "123456";
			contacto.telefonoN = "S/N";
			contacto.tipo = "tipo1";
			contacto.titulo = "Quimico";
//			contacto.habilitado = true;
			this._contactos.addItem( contacto );
			
			contacto = new Contacto();			
			contacto.departamento = "compras";
			contacto.EMail = "correo@pruebas.com"
			contacto.empresa = "laboratorio";
			contacto.fax = "987456";
			contacto.idContacto = 2;
			contacto.nombre = "nombre Mock";
			contacto.puesto = "puesto mas jodido Mock";
			contacto.telefono = "456789";
			contacto.telefonoN = "S/N";
			contacto.tipo = "tipo2";
			contacto.titulo = "doctor";
//			contacto.habilitado = false;
			this._contactos.addItem( contacto );
		}
	
		public function obtenerContactos(descripcion:String):ArrayCollection{
			return this._contactos;
		}
		public function obtnerContactosAvanzada():ArrayCollection{
			return this._contactos
		}
	}
}