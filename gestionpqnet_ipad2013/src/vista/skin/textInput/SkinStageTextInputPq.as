package vista.skin.textInput
{
	import spark.components.supportClasses.StyleableStageText;
	import spark.components.supportClasses.StyleableTextField;
	import spark.core.IDisplayText;
	import spark.skins.mobile.StageTextInputSkin;
	
	public class SkinStageTextInputPq extends StageTextInputSkin
	{
		public function SkinStageTextInputPq()
		{
			super();
		}
		
		override protected function createPromptDisplay():IDisplayText
		{
			//super.createPromptDisplay();
			
			var prompt:StyleableTextField = StyleableTextField(createInFontContext(StyleableTextField));
			prompt.setStyle("fontFamily","NovecentoCFF");
			prompt.setStyle("fontWeight","bold");
			//prompt.setStyle("color","0x0B333C");
			prompt.setStyle("fontStyle","normal");
			prompt.styleName = this;
			prompt.editable = false;
			prompt.mouseEnabled = false;
			addChild(prompt);
			return prompt; 
		}
		
		override protected function measure():void
		{
			super.measure();
		}
		
//		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
//		{
//			super.layoutContents(unscaledWidth,unscaledHeight);
//			
//			if(promptDisplay)
//			{
//				if(promptDisplay is StyleableTextField)
//				{
//					/*StyleableTextField(promptDisplay).setStyle('fontFamily', 'bankGothic');
//					StyleableTextField(promptDisplay).setStyle('fontWeight', 'bold');*/
//					/*					StyleableTextField(promptDisplay).setStyle('fontStyle', 'normal');
//					*/
//					/*StyleableTextField(promptDisplay).commitStyles();*/
//					//setStyle('color','#BBFFDD');
//					StyleableTextField(promptDisplay).setStyle('fontFamily','NovecentoCFF');
//					StyleableTextField(promptDisplay).setStyle('color','#BBFFDD');
//					StyleableTextField(promptDisplay).commitStyles();
//				}
//			}
//		}
	}
}