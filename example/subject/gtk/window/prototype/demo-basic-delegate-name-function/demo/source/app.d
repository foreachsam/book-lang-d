import std.stdio;

import gtk.Main;
import gtk.Window;

import gdk.Event;
import gtk.Widget;


void main (string[] args)
{
	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Main.d#L387
	Main.init(args);

	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Window.d#L140
	Window win = new Window("Demo Window");

	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Widget.d#L6805
	bool onDelete (Event evt, Widget wgt)
	{
		// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Main.d#L614
		Main.quit();

		//return true;
		return false;
	}

	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Widget.d#L6805
	win.addOnDelete(&onDelete);

	win.showAll();

	// https://github.com/gtkd-developers/GtkD/blob/v3.5.1/src/gtk/Main.d#L516
	Main.run();
}
