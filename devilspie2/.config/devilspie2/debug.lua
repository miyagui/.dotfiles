gwc=get_window_class()
gwt=get_window_type()
gan=get_application_name()
-- gcin=get_class_instance_name()
gwn=get_window_name()

-- guide to use with gnome extension tactile
-- [Q][W][E] pos1 QWASZX
-- [A][S][D] pos2 ASZX
-- [Z][X][C] pos3 E
--           pos4 DC

if (gwt == "WINDOW_TYPE_NORMAL") then
-- position 1
  if 
--    (gwn == "alacroto") or
    (gwc == "firefox") then 
    set_window_geometry2(0, 24, 1280, 1056);
  end
-- position 2 
---- gnome-apps 
  if (gwn == "NewsFlash") or
    (gwc == "Geary") or 
    (gwc == "Org.gnome.Nautilus") or
    (gwc == "Gnome-podcasts") or
    (gwc == "Lutris") then
    set_window_geometry2(-35, 344, 1350, 774);
  end
---- other apps
  if 	(gwc == "streamlink-twitch-gui") or
      (gwc == "helvum") or 
      (gwc == "discord") or 
      (gwc == "obs") or
      (gwc == "Timeshift-gtk") or 
      (gwc == "KeePassXC") or
      (gwc == "Evolution") or
      (gwc == "Steam") then
    set_window_geometry2(0, 376, 1280, 704);
  end
  if (gwc == "gnome-control-center") or
    (gwc == "easyeffects") then 
    set_window_geometry2(-61, 321, 1402, 826);
  end
  if (gwc == "leagueclientux.exe") then
    set_window_geometry2(0, 360, 1280, 720);
  end
-- position 3a
--[[  if (gan == "Picture in picture") or]]
    --[[(gwc == "mpv") then]]
    --[[set_window_geometry2(1280, 24, 640, 352);]]
    --[[stick_window();]]
  --[[end]]
--position 3b
  if (gwc == "whatsapp-nativefier-d40211") or
    (gwc == "Spotify") or
    (gwc == "Code") or
    (gwc == "qBittorrent") or
    (gwn == "alacroto") or
    (gwc == "qimgv") then
    set_window_geometry2(1280, 24, 640, 704);
    stick_window();
  end
  if (gwc == "Gpodder") or
    (gwc == "Com.github.geigi.cozy") or
    (gwc == "Komikku") then
    set_window_geometry2(1245, -8, 710, 774);
    stick_window();
  end
--position 3.5  
  if (gwc == "amberol") then
    set_window_geometry2(1219, 321, 762, 826);
  end
--position 4a
  --if (gwc == "whatsapp-nativefier-d40211") or
    --(gwc == "Spotify") or
    --(gwc == "Code") or 
    --(gwc == "Vivaldi-stable") or
    --(gwc == "qBittorrent") or
    --(gwn == "nvim") or
    --(gwn == "term") then
    --set_window_geometry2(1280, 376, 640, 704);
    --stick_window();
  --end
--position 4b
  if (gan == "Picture in picture") or
    (gan == "Picture-in-Picture") or
    (gwc == "mpv") then
    set_window_geometry2(1280, 728, 640, 352);
    stick_window();
  end
  if (gwc == "Gnome-terminal") then
    set_window_geometry2(1245, 696, 710, 421);
  end
end



