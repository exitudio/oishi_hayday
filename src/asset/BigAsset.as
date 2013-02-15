package asset
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	import flash.utils.setTimeout;

	import net.area80.starling.CanvasTextureSet;

	import starling.textures.Texture;

	public class BigAsset
	{
		private static var canvas:CanvasTextureSet;
		public static var bg:Texture;

		public function BigAsset()
		{

		}

		public static function initWithBitmapData(bitmapData:BitmapData):void
		{
			trace("bitmapData:", bitmapData.width);

			canvas = new CanvasTextureSet(bitmapData, false);
			trace("canvas:", canvas, canvas.canvasTexture);
			bg = canvas.initSubTextureByRect("bg", new Rectangle(0, 0, 22, 22), false);
		}
	}
}
