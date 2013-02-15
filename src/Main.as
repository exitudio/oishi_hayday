package
{
	import starling.display.Quad;
	import starling.display.Sprite;

	public class Main extends Sprite
	{
		public function Main()
		{
			super();

			var q:Quad = new Quad(100, 100, 0x00FFFF);
			addChild(q);
		}
	}
}
