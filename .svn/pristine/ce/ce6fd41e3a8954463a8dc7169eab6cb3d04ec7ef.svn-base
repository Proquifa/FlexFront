package mx.com.proquifa.proquifanet.rsl.vista.mocks
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Cliente;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Pendiente;
	
	public class PendientesMock
	{
		private var pendientes:ArrayCollection = null;
		
		public function PendientesMock()
		{
			var pendiente:Pendiente;
			var cliente:Cliente;
			
			/*
			 * Mock para cargar pendientes de Busqueda de Productos
			 */			
			pendientes = new ArrayCollection();			
					
			pendiente = new Pendiente();
			pendiente.partida= "0";
			pendiente.tipoPendiente="Buscar producto F/S";
			cliente= new Cliente();
			cliente.nombre = "VARIAN";
			pendiente.cliente = cliente;
			pendiente.docto = "45632";
			pendiente.numeroPartidas=2;
			pendientes.addItem( pendiente );
			
			pendiente = new Pendiente();
			pendiente.partida = "1";
			pendiente.tipoPendiente = "Buscar producto F/S";
			cliente= new Cliente();
			cliente.nombre = "ALCON";
			pendiente.cliente = cliente;
			pendiente.docto = "45612";
			pendiente.numeroPartidas=2;
			pendientes.addItem( pendiente );
		}
		
		public function  obtenerPendientesPorUsuario(usuario:String , tipoPendiente:String):ArrayCollection{
			return this.pendientes;
		} 	
	}
	
}