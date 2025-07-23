package mx.com.proquifa.vista.modelo.RegistrarArribp
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	
	public class ModeloRegistrarArribo extends EventDispatcher
	{
		
		
		// ++++++++++++++++++++  OBTIENE LISTA DE ORDES DE ARRIBO  ++++++++++++++++++++
		
		public var listaOrdenes:ArrayCollection;
		public function setRecibeOrdenesArribo($ordenes:ArrayCollection):void
		{
			if($ordenes == null || $ordenes.length ==0)
				listaOrdenes = new ArrayCollection();
			else
				listaOrdenes = $ordenes
			
			dispatchEvent(new Event("recibeOrdenesArriboModeloRegistrarArribo"));
		}
		
		[Bindable(event="recibeOrdenesArriboModeloRegistrarArribo")]
		public function get enviarListaArriboOrdenes():ArrayCollection
		{
			return listaOrdenes;
		}
		
		
		
		// ++++++++++++++++++++  ACTUALIZA LISTA DE ORDES DE ARRIBO  ++++++++++++++++++++
		
		public var listaOrdenesUpdate:ArrayCollection;
		public function setRecibeOrdenesArriboUpdate($ordenes:ArrayCollection):void
		{
			if($ordenes == null || $ordenes.length ==0)
				listaOrdenesUpdate = new ArrayCollection();
			else
				listaOrdenesUpdate = $ordenes
			
			dispatchEvent(new Event("recibeOrdenesArriboUpdateModeloRegistrarArribo"));
		}
		
		[Bindable(event="recibeOrdenesArriboUpdateModeloRegistrarArribo")]
		public function get enviarListaArriboOrdenesUpdate():ArrayCollection
		{
			return listaOrdenesUpdate;
		}
		
		
		
		
		// ++++++++++++++++++++  OBTIENE LAS PARTIDAS ARRIBADAS POR ORDEN DESPACHO ++++++++++++++++++++
		
		public var partidasOD:ArrayCollection;
		public function setRecibePartidasArribadas($partidas:ArrayCollection):void
		{
			if($partidas == null || $partidas.length ==0)
				partidasOD = new ArrayCollection();
			else
				partidasOD = $partidas
			
			dispatchEvent(new Event("recibePartidasArribadasModeloRegistrarArribo"));
		}
		
		[Bindable(event="recibePartidasArribadasModeloRegistrarArribo")]
		public function get enviarPartidasArribadas():ArrayCollection
		{
			return partidasOD;
		}
		
		
		
		// ++++++++++++++++++++  CONFIRMACION INSERCION DE ORDEN DESPACHO FINAL  ++++++++++++++++++++
		
		public var confirmacion:Boolean;
		public function setRecibeConfirmacionInsert($respuesta:Boolean):void
		{
			confirmacion = $respuesta
			
			dispatchEvent(new Event("confirmacionInsertArriboModeloRegistrarArribo"));
		}
		
		[Bindable(event="confirmacionInsertArriboModeloRegistrarArribo")]
		public function get enviarConfirmacionIsertArribo():Boolean
		{
			return confirmacion;
		}
		
		
		
		
		
		
		
		
		// ++++++++++++++++++++++++  ERRORES    +++++++++++++++++++++++++++
		
		public function errorListaDespachos(objeto:Object):void
		{
			trace("ERROR LISTA ORDENES DESPACHO")
			alertaSingleton.show( objeto.toString() );
		}
		
		public function errorListaDespachosUpdate(objeto:Object):void
		{
			trace("ERROR ACTUALIZAR LISTA ORDENES DESPACHO")
			alertaSingleton.show( objeto.toString() );
		}
		
		public function errorPartidasArribadas(objeto:Object):void
		{
			trace("ERROR PARTIDAS ARRIBADAS POR ORDENES DESPACHO")
			alertaSingleton.show( objeto.toString() );
		}
		
		public function errorInsertPartidasArribo(objeto:Object):void
		{
			trace("ERROR AL HACER EL INSERT EN ARRIBO")
			alertaSingleton.show( objeto.toString() );
		}
		
		
		public function ModeloRegistrarArribo(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}