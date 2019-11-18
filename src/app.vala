public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.antonioJASR.valita",
            flags: ApplicationFlags.FLAGS_NONE
            );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";


        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 6;
        
        var button = new Gtk.Button.with_label("Click me!");
        var label = new Gtk.Label (null);

        button.clicked.connect (() => {
            label.label = "Hello World!";
            label.angle = 90;
            button.sensitive = false;
        });

        grid.add (button);
        grid.add (label);
        
        this.setupNotifications(grid);

        main_window.add (grid);
        main_window.show_all ();
    
    }

    private void setupNotifications(Gtk.Grid grid) {
        var button = new Gtk.Button.with_label("Notify me");

        button.clicked.connect (() => {
            var notification = new Notification ("Hello Mundo");
            notification.set_body("Este es mi primera notificación");
            this.send_notification ("com.github.antonioJASR.valita", notification);
        });

        grid.add (button);
    }

    public static int main (string[] args) {
        var app = new MyApp();
        return app.run (args);
    }
}
