package source.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.Ruta;
	import mx.controls.Alert;

	public class ModeloMensajeroGDL_Generales extends EventDispatcher
	{
		
		//=============================================================== LISTA DE PENDIENTE ====================================================================
		
		private var _arregloPendientes:ArrayCollection;
		public function setPendientesComprador($arreglo:ArrayCollection):void
		{
			if ($arreglo == null) return;
			
			for(var i:uint; i<$arreglo.length; i++)
			{
				($arreglo[i] as Ruta).numFila = i+1;
			}
			
			_arregloPendientes = $arreglo;
			dispatchEvent(new Event("envioPendientesMensajeroModeloCompadorGDL"));
		}
		
		[Bindable(event="envioPendientesMensajeroModeloCompadorGDL")]
		public function get getPendientesComprador():ArrayCollection
		{
			return _arregloPendientes;
		}
		
		//=============================================================== CONFIRMA PENDIENTE CERRADO ====================================================================
		
		private var _confirma:Boolean;
		public function setconfirmaPendienteCerrado($confirma:Boolean):void
		{
			if ($confirma == null) return;
			
			_confirma = $confirma;
			dispatchEvent(new Event("confimaPendienteCerradoMensajeroModeloCompadorGDL"));
		}
		
		[Bindable(event="confimaPendienteCerradoMensajeroModeloCompadorGDL")]
		public function get getConfirmaPendienteCerrado():Boolean
		{
			return _confirma;
		}
		
		//=========================================================================================================================================================

		public function errorInfo(fault:Object):void
		{
			Alert.show( fault.toString() );
		}
		
		public function ModeloMensajeroGDL_Generales(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}