package mx.com.proquifa.proquifanet.admonComunicacion.vistas.eventos
{
	import mx.controls.dataGridClasses.DataGridColumn;
	
	import spark.components.supportClasses.Skin;
	import spark.components.supportClasses.SkinnableComponent;
	
	public class testGridColumn extends DataGridColumn
	{
		[Bindable]	public var icono:String;
		
		public function testGridColumn(columnName:String=null)
		{
			super(columnName);
		}
	}
}