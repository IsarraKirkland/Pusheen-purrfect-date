package;


import haxe.Resource;
import haxe.Timer;
import haxe.Unserializer;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.AssetType;
import lime.utils.Bytes;
import lime.utils.Log;

#if sys
import haxe.io.Path;
import sys.FileSystem;
#end


@:keep @:dox(hide) class DefaultAssetLibrary extends AssetLibrary {
	
	
	private var lastModified:Float;
	private var rootPath:String;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			
			rootPath = Reflect.field (ApplicationMain.config, "assetsPrefix");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos)
			rootPath = "assets/";
			#elseif (windows && !cs)
			rootPath = FileSystem.absolutePath (Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_roboto_black_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_black_ttf);
		
		#end
		
		var useManifest = #if html5 true #else false #end;
		var id;
		id = "assets/fonts/Roboto-Black.ttf";
		classTypes.set (id, __ASSET__assets_fonts_roboto_black_ttf);
		types.set (id, AssetType.FONT);
		#if html5
		preload.set (id, true);
		#end id = "assets/images/cat.jpg";useManifest = true;
		id = "assets/images/menu-button.png";useManifest = true;
		id = "fonts/Roboto-Black.ttf";
		classTypes.set (id, __ASSET__fonts_roboto_black_ttf);
		types.set (id, AssetType.FONT);
		#if html5
		preload.set (id, true);
		#end id = "images/cat.jpg";useManifest = true;
		id = "images/menu-button.png";useManifest = true;
		
		
		if (useManifest) {
			
			loadManifest ();
			
			#if sys
			if (false && Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath (rootPath + "manifest");
				
				if (FileSystem.exists (path)) {
					
					lastModified = FileSystem.stat (path).mtime.getTime ();
					
					timer = new Timer (2000);
					timer.run = function () {
						
						var modified = FileSystem.stat (path).mtime.getTime ();
						
						if (modified > lastModified) {
							
							lastModified = modified;
							loadManifest ();
							
							onChange.dispatch ();
							
						}
						
					}
					
				}
				
			}
			#end
			
		}
		
	}
	
	
	private function loadManifest ():Void {
		
		var bytes = Resource.getBytes ("__ASSET_MANIFEST__");
		var manifest;
		
		if (bytes != null) {
			
			var manifest = AssetManifest.fromBytes (bytes);
			manifest.basePath = rootPath;
			__fromManifest (manifest);
			
		} else {
			
			// TODO: Make asynchronous
			
			var manifest = AssetManifest.fromFile (rootPath + "manifest");
			
			if (manifest != null) {
				
				manifest.basePath = rootPath;
				__fromManifest (manifest);
				
			} else {
				
				Log.warn ("Could not load asset manifest (bytes was null)");
				
			}
			
			//AssetManifest.loadFromFile (rootPath + "manifest").onComplete (function (manifest:AssetManifest) {
				//
				//if (manifest != null) {
					//
					//__fromManifest (manifest);
					//
				//} else {
					//
					//Log.warn ("Could not load asset manifest (bytes was null)");
					//
				//}
				//
				//__fromManifest (manifest);
				//
			//}).onError (function (e:Dynamic) {
				//
				//Log.warn ('Could not load asset manifest (${e})');
				//
			//});
			
		}
		
	}
	
	
}


#if !display
#if flash









#elseif (desktop || cpp)



@:keep #if display private #end class __ASSET__assets_fonts_roboto_black_ttf extends lime.text.Font { public function new () { __fontPath = #if (ios || tvos) "assets/" + #end "assets/fonts/Roboto-Black.ttf"; name = "Roboto Black"; super (); }}
@:keep #if display private #end class __ASSET__fonts_roboto_black_ttf extends lime.text.Font { public function new () { __fontPath = #if (ios || tvos) "assets/" + #end "fonts/Roboto-Black.ttf"; name = "Roboto Black"; super (); }}


#else

@:keep #if display private #end class __ASSET__assets_fonts_roboto_black_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/Roboto-Black.ttf"; #end name = "Roboto Black"; super (); }}
@:keep #if display private #end class __ASSET__fonts_roboto_black_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Black.ttf"; #end name = "Roboto Black"; super (); }}


#end

#if (openfl && !flash)

@:keep #if display private #end class __ASSET__OPENFL__assets_fonts_roboto_black_ttf extends openfl.text.Font { public function new () { #if !html5 __fontPath = #if (ios || tvos) "assets/" + #end "assets/fonts/Roboto-Black.ttf"; #end name = "Roboto Black"; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__fonts_roboto_black_ttf extends openfl.text.Font { public function new () { #if !html5 __fontPath = #if (ios || tvos) "assets/" + #end "fonts/Roboto-Black.ttf"; #end name = "Roboto Black"; super (); }}


#end
#end