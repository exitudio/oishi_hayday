package
{
	import asset.BigAsset;

	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;
	import flash.utils.setTimeout;

	import net.area80.async.AsyncTaskManager;

	import starling.core.Starling;
	import starling.events.Event;

	public class uikitcomponent extends Sprite
	{
		private static var asyncTaskManager:AsyncTaskManager;

		public function uikitcomponent()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.frameRate = 60;

			Capabilities.isDebugger

			asyncTaskManager = new AsyncTaskManager();

			var star:Starling = new Starling(Main, stage, new Rectangle(0, 0, stage.stageWidth, stage.stageHeight));
			star.start();

			asyncTaskManager.addBitmapDataLoaderAsTask("bg.png", function(bitmapData:BitmapData):void {
				BigAsset.initWithBitmapData(bitmapData);
			});

			asyncTaskManager.signalComplete.add(function():void {
				asyncTaskManager.dispose();
				asyncTaskManager = null;
			});
			asyncTaskManager.signalProgress.add(function(a:Number, b:Number):void {
			});
			asyncTaskManager.run();



		/*NativeApplication.nativeApplication.addEventListener(
			flash.events.Event.ACTIVATE, function(e:*):void {star.start();});

		NativeApplication.nativeApplication.addEventListener(
			flash.events.Event.DEACTIVATE, function(e:*):void {star.stop();});*/

		}
	}
}
