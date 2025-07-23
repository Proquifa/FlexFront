package clases {
    import flash.events.Event;
    import flash.events.MouseEvent;
    import mx.controls.CheckBox;
    import mx.events.FlexEvent;
    public class CheckBoxItemRenderer extends CheckBox {
        public function CheckBoxItemRenderer() {
            super();
            addEventListener(MouseEvent.CLICK,onClick);
        }
        // Override the set method for the data property.
        override public function set data(value:Object):void {
            if(value != null)  {
                super.data = value;
            }
            // Dispatch the dataChange event.
               dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
        }
        private function onClick(event:Event):void {
            owner.dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
        }
    }
}