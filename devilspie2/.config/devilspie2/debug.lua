gwc=get_window_class()
gwt=get_window_type()
gan=get_application_name()
gcin=get_class_instance_name()

if (gwc == "Brave-browser") and
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(-16, 14, 1312, 1098);
end
if (gan == "Picture in picture") then
	set_window_geometry2(1280, 24, 640, 352);
end
if (gwc == "mpv") then
	set_window_geometry2(1280, 24, 640, 352);
	stick_window();
end
if (get_window_name() == "term") or 
	(get_window_name() == "base") then
	set_window_geometry2(1280, 376, 640, 704);
	stick_window();
end
if (get_window_name() == "Neovim") then
  set_window_geometry2(1280, 1056, 0, 24);
end
if (gwc == "whatsapp-nativefier-d40211") or
	(gwc == "Spotify") or
	(gwc == "Code") then
	set_window_geometry2(1280, 376, 640, 704);
	stick_window();
end
if (gwc == "qBittorrent") and 
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(1280, 376, 640, 704);
end
if 	(gwc == "streamlink-twitch-gui") or
		(gwc == "helvum") or 
		-- (gwc == "Spotify") or 
		(gwc == "discord") then
	set_window_geometry2(0, 376, 1280, 704);
end
if (gwc == "obs") and
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(0, 376, 1280, 704);
end
if (gwc == "gnome-control-center") and
	(gwt == "WINDOW_TYPE_NORMAL") or 
	(gwc == "easyeffects") and 
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(-61, 321, 1402, 826);
end
if (gwc == "Timeshift-gtk") and
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(0, 376, 1280, 704);
end
if (gwc == "leagueclientux.exe") and
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(0, 360, 1280, 720);
end
if (gwc == "Org.gnome.Nautilus") and 
	(gwt == "WINDOW_TYPE_NORMAL") or 
	(gwc == "Gnome-podcasts") and
	(gwt == "WINDOW_TYPE_NORMAL") then
	set_window_geometry2(-35, 344, 1350, 774);
end
