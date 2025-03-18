using System;
using System.Collections;
using GameCore;

namespace CrashTest1;

class Program
{
	private static void FloodFillBackgroundColors(List<Color> colors, List<Color> averageTileColors, int width, int height)
	{
		delegate Color(int x, int y, List<Color> cs) getColor = scope [&] (x, y, cs) => { if (x < 0 || y < 0 || x >= width || y >= height) { return Color.Opaque; } return cs[y * width + x]; };
		delegate void(int x, int y, Color c, List<Color> cs) setColor = scope [&] (x, y, c, cs) => cs[y * width + x] = c;

		var c = getColor(0, 0, colors);
		setColor(0, 0, c, colors);
	}

	public static int Main()
	{
		FloodFillBackgroundColors(new .(), new .(), 1, 1);
		return 0;
	}
}