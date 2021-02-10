# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 10
#font pango:Fixedsys Excelsior 3.01 Regular 12
#font xft:Tamzen 12
# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 10
#font xft:URWGothic-Book 11
#font xft:Source Code Pro 11
#
# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec rxvt-unicode
# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
#bindsym $mod+d exec dmenu_run

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# i3 gaps
for_window [class="^.*"] border pixel 0
gaps inner 10
gaps outer 10

#smart_borders on

bindsym $mod+z		gaps outer current plus 5
bindsym $mod+Shift+z	gaps outer current minus 5

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+ccaron focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+ccaron move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym ccaron resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Set colors from Xresources
# Change 'color7' and 'color2' to whatever colors you want i3 to use 
# from the generated scheme.
# NOTE: The '#f0f0f0' in the lines below is the color i3 will use if
# it fails to get colors from Xresources.
set_from_resource $fg i3wm.color7 #f0f0f0
set_from_resource $bg i3wm.color2 #f0f0f0
set_from_resource $gg i3wm.color0 #f0f0f0
set_from_resource $ag i3wm.color8 #f0f0f0

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
	position          top
	workspace_buttons yes
	separator_symbol  " "
    
	#font pango:Fixedsys Excelsior 3.01 Regular 12
	#font xft:Tamzen 12
    	colors {
        	background $gg ##1C1F26
        	statusline #c5c5c5
		
        	focused_workspace   #1A1A1A $bg #1A1A1A
        	active_workspace    #268bd2 #1A1A1A
        	inactive_workspace  $bg #1A1A1A 
        	urgent_workspace    #ffffff #900000

        	#focused_workspace   #000000 $gg
        	#active_workspace    #268bd2 #000000
        	#inactive_workspace  $ag #000000 
        	#urgent_workspace    #ffffff #900000
    	}
	status_command i3status -c /etc/i3status.conf
}

# Screen Shots
bindsym Print exec scrot '%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f ~/Pictures/'
bindsym Control+Print exec gnome-screenshot -i


# class                 border  backgr. text indicator child_border
client.focused          $bg     $bg     $fg  #7F47F3	#7F47F3

 ####048AC7
client.focused_inactive $bg     $bg     $fg  #26292F       #26292F
client.unfocused        $bg     $bg     $fg  #26292F       #26292F
client.urgent           $bg     $bg     $fg  #DE0000       #438CC8
client.placeholder      $bg     $bg     $fg  #DE0000       #438CC8

client.background       $bg

# PROTIP: You can also dynamically set dmenu's colors this way:
bindsym $mod+d exec dmenu_run -nb "$fg" -nf "$gg" -sb "$gg" -sf "$fg"

# wallpaper control, became addicted to it
#bindsym $mod+u exec wal -i $(find /home/rab1t/Pictures/WALLPAPS_DARK/ -type f | shuf -n 1)
exec xrdb /home/rab1t/.Xresources
exec wal -R
exec nitrogen --restore

exec --no-startup-id redshift
#exec --no-startup-id redshift -O 5000
exec --no-startup-id nm-applet
#exec --no-startup-id /home/rab1t/launch_polybar.sh
exec --no-startup-id nitrogen --restore
exec --no-startup-id compton -b

#brightness controls
bindsym $mod+o exec brightnessup
bindsym $mod+p exec brightnessdown

# Pulse Audio controls
bindsym XF86AudioRaiseVolume exec amixer -D pulse sset Master 5%+
bindsym XF86AudioLowerVolume exec amixer -D pulse sset Master 5%-
bindsym XF86AudioMute exec amixer -D pulse sset Master 0%

