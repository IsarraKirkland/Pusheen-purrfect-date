package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/images/logo/default.png", "flixel/images/logo/default.png");
			type.set ("flixel/images/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/box.png", "flixel/flixel-ui/img/box.png");
			type.set ("flixel/flixel-ui/img/box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button.png", "flixel/flixel-ui/img/button.png");
			type.set ("flixel/flixel-ui/img/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_down.png", "flixel/flixel-ui/img/button_arrow_down.png");
			type.set ("flixel/flixel-ui/img/button_arrow_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_left.png", "flixel/flixel-ui/img/button_arrow_left.png");
			type.set ("flixel/flixel-ui/img/button_arrow_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_right.png", "flixel/flixel-ui/img/button_arrow_right.png");
			type.set ("flixel/flixel-ui/img/button_arrow_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_arrow_up.png", "flixel/flixel-ui/img/button_arrow_up.png");
			type.set ("flixel/flixel-ui/img/button_arrow_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_thin.png", "flixel/flixel-ui/img/button_thin.png");
			type.set ("flixel/flixel-ui/img/button_thin.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_toggle.png", "flixel/flixel-ui/img/button_toggle.png");
			type.set ("flixel/flixel-ui/img/button_toggle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/check_box.png", "flixel/flixel-ui/img/check_box.png");
			type.set ("flixel/flixel-ui/img/check_box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/check_mark.png", "flixel/flixel-ui/img/check_mark.png");
			type.set ("flixel/flixel-ui/img/check_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome.png", "flixel/flixel-ui/img/chrome.png");
			type.set ("flixel/flixel-ui/img/chrome.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_flat.png", "flixel/flixel-ui/img/chrome_flat.png");
			type.set ("flixel/flixel-ui/img/chrome_flat.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_inset.png", "flixel/flixel-ui/img/chrome_inset.png");
			type.set ("flixel/flixel-ui/img/chrome_inset.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_light.png", "flixel/flixel-ui/img/chrome_light.png");
			type.set ("flixel/flixel-ui/img/chrome_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/dropdown_mark.png", "flixel/flixel-ui/img/dropdown_mark.png");
			type.set ("flixel/flixel-ui/img/dropdown_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/finger_big.png", "flixel/flixel-ui/img/finger_big.png");
			type.set ("flixel/flixel-ui/img/finger_big.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/finger_small.png", "flixel/flixel-ui/img/finger_small.png");
			type.set ("flixel/flixel-ui/img/finger_small.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/hilight.png", "flixel/flixel-ui/img/hilight.png");
			type.set ("flixel/flixel-ui/img/hilight.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/invis.png", "flixel/flixel-ui/img/invis.png");
			type.set ("flixel/flixel-ui/img/invis.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/minus_mark.png", "flixel/flixel-ui/img/minus_mark.png");
			type.set ("flixel/flixel-ui/img/minus_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/plus_mark.png", "flixel/flixel-ui/img/plus_mark.png");
			type.set ("flixel/flixel-ui/img/plus_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/radio.png", "flixel/flixel-ui/img/radio.png");
			type.set ("flixel/flixel-ui/img/radio.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/radio_dot.png", "flixel/flixel-ui/img/radio_dot.png");
			type.set ("flixel/flixel-ui/img/radio_dot.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/swatch.png", "flixel/flixel-ui/img/swatch.png");
			type.set ("flixel/flixel-ui/img/swatch.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tab.png", "flixel/flixel-ui/img/tab.png");
			type.set ("flixel/flixel-ui/img/tab.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tab_back.png", "flixel/flixel-ui/img/tab_back.png");
			type.set ("flixel/flixel-ui/img/tab_back.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tooltip_arrow.png", "flixel/flixel-ui/img/tooltip_arrow.png");
			type.set ("flixel/flixel-ui/img/tooltip_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/defaults.xml", "flixel/flixel-ui/xml/defaults.xml");
			type.set ("flixel/flixel-ui/xml/defaults.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/default_loading_screen.xml", "flixel/flixel-ui/xml/default_loading_screen.xml");
			type.set ("flixel/flixel-ui/xml/default_loading_screen.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/default_popup.xml", "flixel/flixel-ui/xml/default_popup.xml");
			type.set ("flixel/flixel-ui/xml/default_popup.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/Data/data.db", "assets/Data/data.db");
			type.set ("assets/Data/data.db", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/fonts/Roboto-Black.ttf", "assets/fonts/Roboto-Black.ttf");
			type.set ("assets/fonts/Roboto-Black.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/images/ending1q1.png", "assets/images/ending1q1.png");
			type.set ("assets/images/ending1q1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Ending2q1.png", "assets/images/Ending2q1.png");
			type.set ("assets/images/Ending2q1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/exitbutton.png", "assets/images/exitbutton.png");
			type.set ("assets/images/exitbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/halloffam.png", "assets/images/halloffam.png");
			type.set ("assets/images/halloffam.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/halloffame.png", "assets/images/halloffame.png");
			type.set ("assets/images/halloffame.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/happyendingq.png", "assets/images/happyendingq.png");
			type.set ("assets/images/happyendingq.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/iceskatingendingq1.png", "assets/images/iceskatingendingq1.png");
			type.set ("assets/images/iceskatingendingq1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/menu.png", "assets/images/menu.png");
			type.set ("assets/images/menu.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Panel1q.png", "assets/images/Panel1q.png");
			type.set ("assets/images/Panel1q.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Panel2q.png", "assets/images/Panel2q.png");
			type.set ("assets/images/Panel2q.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/panel3q.png", "assets/images/panel3q.png");
			type.set ("assets/images/panel3q.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/PLAYbutton.png", "assets/images/PLAYbutton.png");
			type.set ("assets/images/PLAYbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/retrybutton.png", "assets/images/retrybutton.png");
			type.set ("assets/images/retrybutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/vegetarianendingq1.png", "assets/images/vegetarianendingq1.png");
			type.set ("assets/images/vegetarianendingq1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/_DS_Store", "assets/_DS_Store");
			type.set ("assets/_DS_Store", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("fonts/Roboto-Black.ttf", "fonts/Roboto-Black.ttf");
			type.set ("fonts/Roboto-Black.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("images/ending1q1.png", "images/ending1q1.png");
			type.set ("images/ending1q1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/Ending2q1.png", "images/Ending2q1.png");
			type.set ("images/Ending2q1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/exitbutton.png", "images/exitbutton.png");
			type.set ("images/exitbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/halloffam.png", "images/halloffam.png");
			type.set ("images/halloffam.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/halloffame.png", "images/halloffame.png");
			type.set ("images/halloffame.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/happyendingq.png", "images/happyendingq.png");
			type.set ("images/happyendingq.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/iceskatingendingq1.png", "images/iceskatingendingq1.png");
			type.set ("images/iceskatingendingq1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/menu.png", "images/menu.png");
			type.set ("images/menu.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/Panel1q.png", "images/Panel1q.png");
			type.set ("images/Panel1q.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/Panel2q.png", "images/Panel2q.png");
			type.set ("images/Panel2q.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/panel3q.png", "images/panel3q.png");
			type.set ("images/panel3q.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/PLAYbutton.png", "images/PLAYbutton.png");
			type.set ("images/PLAYbutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/retrybutton.png", "images/retrybutton.png");
			type.set ("images/retrybutton.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("images/vegetarianendingq1.png", "images/vegetarianendingq1.png");
			type.set ("images/vegetarianendingq1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("Data/data.db", "Data/data.db");
			type.set ("Data/data.db", Reflect.field (AssetType, "binary".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
