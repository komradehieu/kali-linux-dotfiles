[bar/top]
width = 100%
height = 35 
offset-x = 0
offset-y = -1 
;bottom = true

background = #5a000000
foreground = #eee

underline-size = 2
underline-color = #eee

spacing = 1
padding-left = 0
padding-right = 0
module-margin-left = 0 
module-margin-right = 0

font-0 = Noto Sans:pixelsize=13;0
font-1 = FontAwesome:size=10;-2
font-2 = siji:pixelsize=10;0

modules-left = bspwm xwindow
modules-center = 
modules-right = battery volume mpd spotify date powermenu

;tray-position = right
;tray-padding = 2
;tray-background = #66333333

wm-restack = bspwm

scroll-up = bspwm-desknext
scroll-down = bspwm-deskprev

; MODULES

[module/bspwm]
type = internal/bspwm

ws-icon-0 = web;
ws-icon-1 = term;
ws-icon-2 = chat;
ws-icon-3 = code;
ws-icon-4 = music;
ws-icon-default = 

format = <label-state> <label-mode>

label-focused = %icon%
label-focused-background = #88000000
label-focused-underline= #ddd
label-focused-padding = 4

label-occupied = %icon%
label-occupied-padding = 4

label-urgent = %icon%
label-urgent-padding = 4

label-empty = %icon%
label-empty-foreground = #44ffffff
label-empty-padding = 4

[module/xwindow]
type = internal/xwindow
label = %title:0:120:...%
label-padding = 4

[module/date]
type = internal/date

; Seconds to sleep between updates
interval = 1.0

; See "man date" for details on how to format the date string
; NOTE: if you want to use syntax tags here you need to use %%{...}
date = %a %b %d, 

; Optional time format
time = %H:%M

; if `date-alt` or `time-alt` is defined, clicking
; the module will toggle between formats
date-alt = %A, %d %B %Y
time-alt = %H:%M:%S

label = %date% %time%
format =    <label>
;format-background = #ddffffff
format-background = #88000000
;format-foreground = #333
format-padding = 3

[module/padding]
type = custom/text
content = 	 
content-foreground = #00000000
content-background = #55000000

[module/battery]
type = internal/battery

full-at = 99

battery = BAT0
adapter = AC0

poll-interval = 5

format-charging = <animation-charging>  <label-charging>
format-discharging = <ramp-capacity>  <label-discharging>
format-full = <ramp-capacity>  <label-full>
label-charging = %percentage%
label-discharging = %percentage%
label-full = %percentage%
format-charging-padding = 3
format-discharging-padding = 3
format-full-padding = 3

ramp-capacity-0 = 
ramp-capacity-1 = 
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 

animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
animation-charging-framerate = 750

[module/backlight]
type = internal/backlight

card = intel_backlight
enable-scroll = true

format = <ramp> <label>
label = %percentage%

ramp-0 = 🌕
ramp-1 = 🌔
ramp-2 = 🌓
ramp-3 = 🌒
ramp-4 = 🌑

[module/volume]
type = internal/volume

format-volume = <ramp-volume>  <label-volume>
format-muted = <label-muted>
label-volume = %percentage%
label-muted =   muted
label-muted-foreground = #aaa
format-volume-padding = 3
format-muted-padding = 3

ramp-volume-0 = 
ramp-volume-1 = 
ramp-volume-2 = 
ramp-headphones-0 = 

[module/spotify]
type = custom/script

exec = /home/gamehelp16/Documents/np
interval = 1

format = <label>   
;format-background = #dd00c6e0
;format-foreground = #fff
;format-padding = 4

label = %output%

[module/powermenu]
type = custom/menu

label-open =   
;label-open-background = #dd0000
;label-open-foreground = #fff
label-close = cancel
;label-close-background = #dd0000
;label-close-foreground = #fff
label-open-padding = 4 
label-close-padding = 3 

menu-0-0 = reboot
menu-0-0-exec = menu-open-1
menu-0-1 = power off
menu-0-1-exec = menu-open-2
menu-0-0-padding = 3
menu-0-1-padding = 3

menu-1-0 = reboot?  
menu-1-0-exec = sudo reboot
menu-1-0-padding = 3

menu-2-0 = power off?  
menu-2-0-exec = sudo poweroff
menu-2-0-padding = 3

[module/mpd]
type = internal/mpd

host = 127.0.0.1
port = 6600
password = 

; Seconds to sleep between progressbar/song timer sync
; Default: 1
interval = 2

; Available tags:
;   <label-song> (default)
;   <label-time>
;   <bar-progress>
;   <toggle> - gets replaced with <icon-(pause|play)>
;   <toggle-stop> - gets replaced with <icon-(stop|play)>
;   <icon-random>
;   <icon-repeat>
;   <icon-repeatone>
;   <icon-prev>
;   <icon-stop>
;   <icon-play>
;   <icon-pause>
;   <icon-next>
;   <icon-seekb>
;   <icon-seekf>
format-online =    <label-song>

; Available tokens:
;   %artist%
;   %album%
;   %date%
;   %title%
; Default: %artist% - %title%
label-song = %title%
format-online-padding = 3
