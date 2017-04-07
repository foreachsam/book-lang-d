import std.stdio;

import gtk.Main;
import gtk.Window;

import gdk.Event;
import gtk.Widget;

// https://tour.dlang.org/tour/en/basics/classes
public class Demo
{

	protected Window win;

	protected string title;

	public this (string title)
	{
		this.title = title;
	}

	public void init ()
	{
		initWin();
	}

	protected void initWin ()
	{
		//https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Window.d#L140
		win = new Window(title);

		// https://tour.dlang.org/tour/en/basics/delegates
		// https://dlang.org/spec/function.html#closures
		// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Widget.d#L6805
		win.addOnDelete(&onDelete);

		win.showAll();
	}

	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Widget.d#L6805
	protected bool onDelete (Event evt, Widget wgt)
	{
		// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Main.d#L614
		Main.quit();

		//return true;
		return false;
	}

}

void main (string[] args)
{
	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Main.d#L387
	Main.init(args);

	Demo win = new Demo("Demo Window");

	win.init();

	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Main.d#L516
	Main.run();
}
