package vista.skin.textInput
{
	import flash.events.Event;
	
	import mx.events.FlexEvent;
	import mx.events.PropertyChangeEvent;
	import mx.events.TouchInteractionEvent;
	
	import spark.components.supportClasses.StyleableTextField;
	import spark.skins.mobile.TextInputSkin;
	
	public class SkinTextInputPq extends TextInputSkin
	{
		public function SkinTextInputPq()
		{
			super();
		}
		
		override protected function createPromptDisplay():StyleableTextField
		{
			var prompt:StyleableTextField = new StyleableTextField(); //StyleableTextField(createInFontContext(StyleableTextField));
			prompt.styleName = this;
			prompt.setStyle( 'fontFamily', 'NovecentoCFF' );
			prompt.setStyle( 'fontWeight', 'bold' );
			prompt.setStyle( 'fontStyle', 'normal' );
			prompt.editable = false;
			prompt.mouseEnabled = false;
			//prompt.useTightTextBounds = false;
			return prompt;
		}
	
		override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void
		{
			/* No necesitamos fondo */
		}
		
	}
}