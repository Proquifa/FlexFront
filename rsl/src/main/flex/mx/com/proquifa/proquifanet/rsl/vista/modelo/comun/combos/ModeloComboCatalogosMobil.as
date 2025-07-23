package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.combos
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.CatalogoItem;
	
	public class ModeloComboCatalogosMobil extends EventDispatcher
	{
		private var _proposedProvider:ArrayCollection;
		private var _dataProvider:ArrayCollection;
		
		public function ModeloComboCatalogosMobil(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		// 					EMPLEADOS X TIPO
		private var _listaEmpleadosPorTipo:ArrayCollection;
		public function setListaEmpleadosPorTipo ( datos:ArrayCollection ):void
		{
			/*if( timerControl != null )
				timerControl.removeEventListener( TimerEvent.TIMER, asyncProcessListaClientesHandler );*/
			_listaEmpleadosPorTipo = datos;				
			dispatchEvent( new Event("listaEmpleadosPorTipo") );
		}
		
		[Bindable(event="listaEmpleadosPorTipo")]
		public function get ListaEmpleadosPorTipo():ArrayCollection
		{
			return _listaEmpleadosPorTipo;
		}
		// 					/ EMPLEADOS X TIPO
		
		[Bindable(event="regresarData")]
		public function get regresaDataProvider():ArrayCollection
		{
			return _dataProvider;
		}
		
		//	CLIENTES, trabajo asyncrono
		private var timerControl:Timer;
		private var iteraciones:int = 80;
		private var letraCapital:String = "";
		
		public function setAsyncListaClientes( datos:ArrayCollection ):void
		{
			_dataProvider = new ArrayCollection();
			_proposedProvider = datos;
			_totalStepsListaClientes = int( _proposedProvider.length/iteraciones) + 1;
			
			if( timerControl != null )
				timerControl.removeEventListener( TimerEvent.TIMER, asyncProcessListaClientesHandler );
			timerControl = new Timer( 50, _totalStepsListaClientes );
			timerControl.addEventListener(  TimerEvent.TIMER, asyncProcessListaClientesHandler, false, 0, true );
			timerControl.start();
		}
		
		private var _totalStepsListaClientes:int = -1;
		private var _progressListaClientes:int = -1;
		
		[Bindable(event="enviaAsyncBarLoaderProgress")]
		public function get regresaAsyncProgress():int
		{
			return _progressListaClientes;
		}
		
		protected function asyncStartListaClientesHandler():void
		{
			
		}
		
		protected function asyncProcessListaClientesHandler( event:TimerEvent ):void
		{
			var bNumeroCapitular:Boolean = false;
			var init:int = (event.currentTarget.currentCount -1) * iteraciones;
			var limite:int = event.currentTarget.currentCount * iteraciones > _proposedProvider.length - 1 ? _proposedProvider.length: event.currentTarget.currentCount * iteraciones;
			
			_progressListaClientes = int( (event.currentTarget.currentCount * 100) / _totalStepsListaClientes);
			dispatchEvent( new Event("enviaAsyncBarLoaderProgress") );
			
			trace( ' working ' + init.toString() + ' - ' + limite.toString() );
			//// codigo original
			for( var e:int = init; e < limite; e++ )
			{
				var currentItem:* = _proposedProvider[e];
				if( currentItem is CatalogoItem )
				{
					var comparar:String = (currentItem as CatalogoItem).valor.substr( 0, 1);
					if( comparar  != letraCapital )
					{
						if( !isNaN( Number( comparar)) && !bNumeroCapitular )
							bNumeroCapitular = true;
						if( !isNaN( Number(comparar) ) )
							comparar = "#";
						//(currentItem as CatalogoItem).capitular = true;
						
						var objCapital:Object = new Object();
						objCapital.capital = comparar;
						_dataProvider.addItem( objCapital );
						//dataCaps.addItem( comparar );
						letraCapital = (currentItem as CatalogoItem).valor.substr( 0, 1);
					}
					else
					{
						//(currentItem as CatalogoItem).capitular = false;
					}
				}
				_dataProvider.addItem( currentItem );
			}
			//// /codigo original 
			if( e > _proposedProvider.length-1 )
				asyncCompleteListaClientesHandler();
		}
		
		protected function asyncCompleteListaClientesHandler():void
		{
			dispatchEvent( new Event("regresarData") );
		}
		
		public function faultObtenerClientes( $error:Object ):void
		{
			trace( $error.toString() );
		}
		
	}
}