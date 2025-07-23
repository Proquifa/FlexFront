package images
{
	[Bindable]
	public class CatalogoImagenes
	{
		public function CatalogoImagenes()
		{
		}
		
		public static var imagen:CatalogoImagenes = new CatalogoImagenes();
		
		[Embed(source="images/images/borrar.png")]
		public var borrar:Class;

		[Embed(source="images/images/registroEvento.png")]
		public var registro:Class;

		[Embed(source="images/images/face.png")]
		public var face:Class;

		[Embed(source="images/images/link.png")]
		public var link:Class;

		[Embed(source="images/images/twit.png")]
		public var twit:Class;
		
		[Embed(source="images/images/chekin.svg")]
		public var check:Class;
	}
}