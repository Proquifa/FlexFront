package vistas.contactoReceptor
{
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.mensajero.PersonalAlmacenCliente;
	import mx.utils.ObjectUtil;
	
	import spark.components.List;
	
	public class listaQueLlevaElControlDeLaEdicionContacto extends List
	{
		public function listaQueLlevaElControlDeLaEdicionContacto()
		{
			super();
		}
		
		
		override public function set dataProvider(value:IList):void
		{
			var currentList:ArrayCollection = value as ArrayCollection;
			
			var tempArray:Array = ObjectUtil.copy(currentList.source) as Array;
			
			tempArray = tempArray.sort(ordenarPorNombre);
			
			currentList = new ArrayCollection(tempArray);
			
			var agregarContactoItem:PersonalAlmacenCliente = new PersonalAlmacenCliente;
			agregarContactoItem.isContacto = false;
			
			currentList.addItem(agregarContactoItem);
			
			
			super.dataProvider = currentList;
		}
		
		
		private function ordenarPorNombre(item1:PersonalAlmacenCliente,item2:PersonalAlmacenCliente):int
		{
			if(item1.nombre.toLowerCase() > item2.nombre.toLowerCase())
			{
				return 1;
			}
			else if(item1.nombre.toLowerCase() == item2.nombre.toLowerCase())
			{
				return 0;
			}
			else
			{
				return -1;
			}
		}
		
	}
}