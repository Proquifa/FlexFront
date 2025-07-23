package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	
	
	public class StringFunciones
	{
		
		private static var _instance:StringFunciones = null;
		
		/*	public static function getInstance():StringFunciones
		{
		if(_instance == null)
		{
		_instance = new StringFunciones();
		}
		return _instance;
		}*/
		public function StringFunciones()
		{
		}
		
		public static function noAccent(source : String) : String
		{
			source = source.replace(/[àáâãäå]/g, "a");
			source = source.replace(/[ÀÁÂÃÄÅ]/g, "A");
			source = source.replace(/[èéêë]/g, "e");
			source = source.replace(/[ËÉÊÈ]/g, "E");
			source = source.replace(/[ìíîï]/g, "i");
			source = source.replace(/[ÌÍÎÏ]/g, "I");
			source = source.replace(/[ðòóôõöø]/g, "o");
			source = source.replace(/[ÐÒÓÔÕÖØ]/g, "O");
			source = source.replace(/[ùúûü]/g, "u");
			source = source.replace(/[ÙÚÛÜ]/g, "U");
			source = source.replace(/[ýýÿ]/g, "y");
			source = source.replace(/[ÝÝŸ]/g, "Y");
			source = source.replace(/[ç]/g, "c");
			source = source.replace(/[Ç]/g, "C");
			source = source.replace(/[ñ]/g, "n");
			source = source.replace(/[Ñ]/g, "N");
			source = source.replace(/[š]/g, "s");
			source = source.replace(/[Š]/g, "S");
			source = source.replace(/[ž]/g, "z");
			source = source.replace(/[Ž]/g, "Z");
			source = source.replace(/[æ]/g, "ae");
			source = source.replace(/[Æ]/g, "AE");
			source = source.replace(/[œ]/g, "oe");
			source = source.replace(/[Œ]/g, "OE");
			return source;
		}
		
		public static function removerDuplicados($array:Array):Array
		{
			var i:int = 0;
			$array.sort();
			while(i < $array.length) 
			{
				while(i < $array.length+1 && $array[i] == $array[i+1]) 
				{
					$array.splice(i, 1);
				}
				i++;
			}
			return $array;
		}
		
		public static function removeDuplicatesArrayCollection($arrayColl:ArrayCollection, $atributo:String):ArrayCollection
		{
			for(var i:int=0; i<$arrayColl.length; i++)
			{
				for(var j:int = (i+1); j <$arrayColl.length; j++)
				{
					if($arrayColl[i].$atributo == $arrayColl[j].$atributo)
					{
						$arrayColl.removeItemAt(j);
						j-=1;
					}
				}
			}
			return $arrayColl;
		}
		
		public static function sortArreglo($lista:ArrayCollection,$campo:String, desend:Boolean = false):ArrayCollection
		{
			if($lista.length > 1)
			{
				var sortField:SortField = new SortField();
				sortField.name = $campo;
				sortField.descending = desend;
				var sort:Sort = new Sort();
				sort.fields = [sortField];
				$lista.sort = sort;
				$lista.refresh();
			}
			return $lista;
		}
		
	}
}
