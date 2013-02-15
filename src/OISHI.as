package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.system.Capabilities;

	public class OISHI extends Sprite
	{
		public function OISHI()
		{
			super();

			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			trace("os:", Capabilities.os);
			trace("cpuArchitecture:", Capabilities.screenResolutionX);
		}
	}
}
