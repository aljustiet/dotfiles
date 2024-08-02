(defcfg
  linux-dev (
    /dev/input/by-path/platform-i8042-serio-0-event-kbd
    /dev/input/by-path/pci-0000:33:00.4-usbv2-0:1:1.0-event-kbd
    /dev/input/by-path/pci-0000:33:00.4-usb-0:1:1.0-event-kbd
    /dev/input/by-path/pci-0000:34:00.4-usbv2-0:1.4:1.0-event-kbd
    /dev/input/by-path/pci-0000:34:00.4-usb-0:1.4:1.0-event-kbd
    /dev/input/by-path/pci-0000:34:00.3-usbv2-0:1.2:1.0-event-kbd
    /dev/input/by-path/pci-0000:34:00.3-usb-0:1.2:1.0-event-kbd
    /dev/input/by-path/pci-0000:34:00.4-usb-0:1.3:1.0-event-kbd
;;  /dev/input/by-path/pci-0000:34:00.4-usb-0:1.3:1.1-event
;;  /dev/input/by-path/pci-0000:34:00.4-usb-0:1.3:1.1-event-mouse
;;  /dev/input/by-path/pci-0000:34:00.4-usb-0:1.3:1.1-mouse
    /dev/input/by-path/pci-0000:34:00.4-usbv2-0:1.3:1.0-event-kbd
;;  /dev/input/by-path/pci-0000:34:00.4-usbv2-0:1.3:1.1-event
    /dev/input/by-path/pci-0000:34:00.4-usbv2-0:1.3:1.1-event-mouse
;;  /dev/input/by-path/pci-0000:34:00.4-usbv2-0:1.3:1.1-mouse
	/dev/input/by-id/usb-Logitech_USB_Receiver-event-kbd
	/dev/input/by-id/usb-Logitech_USB_Receiver-event-if01
	/dev/input/by-id/usb-Logitech_USB_Receiver-if01-mouse
	/dev/input/by-id/usb-Logitech_USB_Receiver-if01-event-mouse
;;  /dev/input/event27
;;  /dev/input/event26
;;  /dev/input/event24
;;  /dev/input/event25
;;  /dev/input/event22
;;  /dev/input/event23
;;  /dev/input/event21
;;  /dev/input/event9
;;  /dev/input/event10
;;  /dev/input/event11
;;  /dev/input/event12
  )
  process-unmapped-keys yes
;;log-layer-changes no
)



(defsrc
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  grv  1     2    3    4    5    6     7    8    9    0    -    =    bspc
  tab  q     w    e    r    t    y     u    i    o    p    [    ]    \
  caps a     s    d    f    g    h     j    k    l    ;    '    ret
  lsft z     x    c    v    b  n     m    ,    .    /    rsft pgup up pgdn
  lctl lmet  lalt          spc              ralt prtsc rctl   lft down rght
)

(deflayer graphite_angle_kp
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
  tab     b    l    d    w    z    @'    f    o    u    j    ;    =    \
  @ctresc n   r  @t    s    g    y     h    a    e    i    @,   ret
 @lsft    x     m    c    v    q    k     p    .    @-   @/   rsft  pgup up pgdn
  @chlctl @chlmet  @chlalt        spc             @chralt @prtsc @rctl lft down rght
)

(deflayer graphite
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
  tab     b     l    d    w    z    @'    f    o    u    j    ;    =    \
  @ctresc n     r   @t_key    s    g    y     h    a    e    i    @,   ret
 @lsft    q     x    m    c    v    k     p    .    @-   @/   rsft  pgup up pgdn
  @laltg @lmet  @chlalt        spc             @chralt @nav_layer @rctl lft down rght
)

(deflayer qwerty
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    -    =    bspc
  tab  q     w    e    r    t    y     u    i    o    p    [    ]    \
  @ctresc a  s    d    f    g    h     j    k    l    ;    '    ret
 @lsft z     x    c    v    b    n     m    ,    .    /    rsft     pgup up pgdn
  @laltq @chlmet @chlalt         spc              @chralt @nlayer rctl  lft down rght
)

(deflayer gaming_layout
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    -    =    bspc
  tab  q     w    e    r    y    t     u    i    o    p    [    ]    \
  @ctresc a  s    .    f    d    h     j    k    l    ;    '    ret
 @lsft z     x    c    v    b    n     m    ,    d    /    rsft     pgup up pgdn
  @laltq @lmet  @chlalt         spc              @chralt @nlayer rctl  lft down rght
)

(deflayer graphite_vim_layer
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
  tab     b     l    d    w    z    @'    f    o    u    j    ;    =    \
  esc n     r    t    s    g    y     h    a    e    i    @,   ret
  lsft    q     x    m    c    v    k     p    .    @-   @/   rsft  pgup up pgdn
  @laltg @lmet  @chlalt        spc             @chralt @nlayer rctl lft down rght
)

(deflayer nothing_layer
  @grk  XX     XX   XX   XX   XX   XX   XX    XX   XX   XX   XX   XX  XX   XX  XX  XX
  XX    XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX   XX   XX
  XX   XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX   XX   XX
  XX      XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX   XX
  XX   XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX      XX XX XX
  XX     XX     XX             XX              XX      XX      XX  XX XX XX
)

(deflayer default
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    -    =    bspc
  tab  q     w    e    r    t    y     u    i    o    p    [    ]    \
  caps a     s    d    f    g    h     j    k    l    ;    '    ret
  lsft z     x    c    v    b  n     m    ,    .    /    rsft pgup up pgdn
  lctl lmet  lalt          spc              ralt prtsc rctl   lft down rght
)

(deflayer layers
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    @grk @grp @qwr lrld @sgl @sgvl _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              _              _    _    _      lft down rght
)

(deflayer symbol_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    @ex  _    _    _    _    ;    =    @%   @@   _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              _              _    _    _      lft down rght
)

(deflayer navigation
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
 lctl M-lft M-up M-down M-rght lft rght lft down up rght _   _
 lsft  _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _   lctl            _              _    _    _      lft down rght
)

(deflayer navigation_keys_only
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
lctl   lft up down rght   lft rght lft down up rght _   _
  _    _    _    _    _    _   A-n A-m    _    _    _    _ pgup up pgdn
  _    _  lctl             _              _    _    _      lft down rght
)

(deflayer navigation_second
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    M-n M-r M-t  M-s    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              _              _    _    _      lft down rght
)

(deflayer scrolling_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _   @sl  @sd  @su  @sr   _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              _              _    _    _      lft down rght
)

;; (deflayer selection_layer
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
;;   _    _    _              _              _    _    _      lft down rght
;; )

(deflayer lmet_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    b     l    d    w    z    @'    f    o    u    j  ;    =    _
  _    n     r    t    s    g    y     h    a    e    i  @,   _
  _    x     m    c    v    q    k     p    .    @-   @/ _ pgup up pgdn
@scl   _    _              _              _    _    _      lft down rght
)

(deflayer lalt_layer_g
  _     _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  grv   _    _    _    _    _    _    _    _    _    _    _    _    _
@C-tab   b     l    d    w    z    @'    f    o  @dwa   j  ;     _    _
  _   A-n     r    t    s @C-g    y    @ddwa @swa @ewa  @pwa     _     _
@lsfta   x     m    c    v    q    k   A-p    .    @-   @/ _     pgup A-up pgdn
  _   @ascl @alctl          @spcq               @anav   _   lalt A-lft A-down A-rght
)

(deflayer lalt_layer_q
  _     _    _    _    _    _     _    _    _    _    _    _    _    _   _   _   _
  _     _    _    _    _    _     _    _    _    _    _    _    _    _
@C-tab   b     l    d    w    z    @'    f    o    u    j  ;     _    _
  _     n     r    t    s @ctl_g    y     h    a    e    i  @,    _
lsft    x     m    c    v    q    k     p    .    @-   @/ _     pgup   up pgdn
  _   @ascl   _            @spcg               @anav   _ lalt lft down rght
)

(deflayer mouse_actions
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _   C-bspc
  _ @clft @mup @crght _    _    _    _    _    _    _    _    _    _
  _ @mlft @mbck @mrght @mmid _    _   ;    =    @%  @@    _     _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              _             @anav _ _            lft down rght
)

;; (deflayer cmouse_actions
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _   C-bspc
;;   _ @clft @mup @crght _    _    _    _    _    _    _    _    _    _
;;   _ @mlft @mbck @mrght @mmid _    _   ;    =    @%   _    _     _
;;   _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
;;   _    _    _              _              _ _ _            lft down rght
;; )

(deflayer alt_tweaks
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _ @A-1 @A-2 @A-3 @A-4 @A-5 @A-6 @A-7 @A-8 @A-9 @A-0   g    y    @dline
@A-tab b    l    d    w    z    @'    f    o    u    j    ;    =    \
  _    n    r    t    s @alft @arght  h   a    e i @,  _
 @sft  q    x    c    v    m    k    p    .    @-    @/    _ pgup up pgdn
lalt  _    _               _            _    _    _      lft down rght
)

(deflayer salt_tweaks
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    1    2    3    4    5    6    7    8    9    0   _    _    @dline
@A-tab b    l    d    w    z    @'    f    o    u    j    ;    =    \
  _    n    r    t    s @alft @arght h    a    e    i    ,    _
 @sft  q    x    c    v    m    k    p    .    -    /    _ pgup up pgdn
lalt  _    _               spc           _    _    _      lft down rght
)

(deflayer input_change_q
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              @spcq          _    _    _      lft down rght
)
(deflayer input_change_g
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              @spcg          _    _    _      lft down rght
)

(deflayer navigate_channels
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _   C-left  @mad @mau C-rght _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _    _              @spcg          _    _    _      lft down rght
)

;; (deflayer diagonally_down_movement_layer
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
;;   _    _    _              _              _    _    _      lft down rght
;; )

(deflayer shift_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _  @lctl            _              _    _    _      lft down rght
)

(deflayer shift_alt_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
@C-S-tab _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    a    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
  _    _  @lctl            _              _    _    _      lft down rght
)

;; (deflayer lc_layer
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _ pgup up pgdn
;;   _    _  @lwhsat          _              _    _    _      lft down rght
;; )

(deflayer c_v
  _    _    _    _    _    _    _    _    _    _    _    _    _    _   _   _   _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
@A-tab _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    x    c    v    m    _    _    _    _    _    _ pgup up pgdn
  _    _    _              _              _    _    _      lft down rght
)

(deflayer caps_layer
  esc f1     f2   f3   f4   f5   f6   f7    f8   f9   f10  f11  f12 home end ins del
  @grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
  tab   S-b  S-l  S-d  S-w  S-z    @'  S-f  S-o  S-u  S-j  S-;  S-=  S-\
@ctresc S-n S-r S-t  S-s  S-g  S-y   S-h  S-a  S-e  S-i    @,   ret
 @lsft  S-x   S-m  S-c  S-v  S-q  S-k   S-p  S-.   S-'   @/   rsft  pgup up pgdn
  @chlctl @chlmet  @chlalt        spc             @chralt @prtsc @rctl lft down rght
)

(defaliasenvcond (LAPTOP lp1)
  met @lp1me
)

(defaliasenvcond (LAPTOP lp2)
  met @lp2met
)

(defalias
    lca (multi lctl lalt)
    alctl (multi lalt lctl)
    al_lft (multi (release-key ctl) lft)
    al_down (multi (release-key ctl) down)
    al_up (multi (release-key ctl) up)
    al_rght (multi (release-key ctl) rght)
    t t
;;  t (tap-hold 0 200 t (tap-hold-release-timeout 0 300 (layer-while-held navigation) (layer-while-held navigation) t))
;;  ddwa S-;
    dd (multi (release-key alt) S-;)
    ddwa (multi lalt (fork h @dd (lalt)))
    C-S-tab (multi (release-key alt) C-S-tab)
    lsfta (multi lalt lsft (layer-while-held shift_alt_layer))
    swm (multi (release-key met) ;)
    ewm (multi (release-key met) =)
    pwm (multi (release-key met) S-5)
    dwm (multi (release-key met) S-2)
    prtsc (layer-while-held symbol_layer)
 ;; prtsc (multi prtsc (layer-while-held symbor_layer))
    swa (multi (release-key alt) ;)
    ewa (multi (release-key alt) =)
    pwa (multi (release-key alt) S-5)
    dwa (multi (release-key alt) S-2)
 ;; spc (tap-hold-press 600 200 spc (layer-while-held mouse_actions))
    spc spc
    lalt (multi lalt (layer-while-held graphite_angle_kp))
 ;; oat (tap-hold-press-timeout   200 200 o @arr bspc)
 ;; ect (tap-hold-release-timeout 200 200 e @chr esc)
    t_key t
 ;; t (tap-dance)
 ;; t (tap-hold 200 200 @t_key (layer-while-held navigation_keys_only))
 ;; t (multi t (layer-while-held navigation_keys_only))
    nav_layer (multi (layer-while-held navigation_second))
    C-tab C-tab
    A-tab (multi (release-key ctl) A-tab)
    rctl (multi rctl (layer-while-held c_v))
    C-g C-g
    lctl (multi lctl (layer-while-held c_v))
 ;; lsft (tap-dance 300 ((multi lsft (layer-while-held shift_layer)) (layer-toggle caps_layer)))
    lsft lsft
    sgvl (layer-toggle graphite_vim_layer)
      to (macro C-t C-v ret)
  lwhsat (multi lsft lctl (layer-while-held salt_tweaks))
     A-1 (multi (release-key ctl) A-1)
     A-2 (multi (release-key ctl) A-2)
     A-3 (multi (release-key ctl) A-3)
     A-4 (multi (release-key ctl) A-4)
     A-5 (multi (release-key ctl) A-5)
     A-6 (multi (release-key ctl) A-6)
     A-7 (multi (release-key ctl) A-7)
     A-8 (multi (release-key ctl) A-8)
     A-9 (multi (release-key ctl) A-9)
     A-0 (multi (release-key ctl) A-0)
      su (multi (release-key lmet) (mwheel-up 200 308))
      sd (multi (release-key lmet) (mwheel-down 200 308))
      sl (multi (release-key lmet) (mwheel-left 200 308))
      sr (multi (release-key lmet) (mwheel-right 200 308))
    anav (multi (release-key lctl) (layer-while-held navigate_channels))
      nl (layer-switch nothing_layer)
      cl (multi lctl (layer-while-held navigate_channels))
   lwhnc (layer-while-held navigate_channels)
   ctl_g (multi (release-key alt) C-g)
   laltg (layer-while-held lalt_layer_g)
   laltq (layer-while-held lalt_layer_q)
;; laltg (tap-dance 300 ((one-shot-press 1 (layer-while-held lalt_layer_g)) (multi lalt (layer-while-held graphite_angle_kp))))
;; laltq (multi lalt (one-shot-press 800 (layer-while-held lalt_layer_q)))
     sft (multi lsft (layer-while-held salt_tweaks))
     scl (layer-while-held scrolling_layer)
 ;; ascl (multi (release-key alt) (layer-while-held scrolling_layer))
    ascl (layer-while-held scrolling_layer)
    lmet (multi lmet (layer-while-held lmet_layer))
     mup (movemouse-up    16 12)
    mbck (movemouse-down  16 12)
    mlft (movemouse-left  16 12)
   mrght (movemouse-right 16 12)
;; addml (multi (movemouse-left 16 5) (layer-while-held diagonally_down_movement_layer))
  ;; lrm (multi (release-key lctl) (movemouse-left 16 5) (movemouse-down 16 5))
    clft mlft
   crght mrgt
    mmid mmid
       @ S-2
       % S-5
     mau A-up
     mad A-down
    alft (multi (release-key ctl) A-lft)
   arght (multi (release-key ctl) A-rght)

)
(defalias
  ex S-1
;; oneshot (multi rmet (one-shot-press 2000 (layer-while-held symbol_layer)))
  nlayer (one-shot-press 2000 (layer-while-held mouse_actions))
  ' (fork ' - (lsft rsft))
  , (fork , / (lsft rsft))
  - (fork - ' (lsft rsft))
  / (fork / , (lsft rsft))
)
(defalias
  spcq (multi (layer-switch qwerty) M-spc)
  spcg (multi (layer-switch graphite_angle_kp) M-spc)
  dline (multi (release-key ctl) lsft home bspc)
  laltb (tap-dance 300 ((multi lctl (layer-while-held alt_tweaks)) (multi lctl (layer-while-held graphite_angle_kp)) (one-shot-press 60000 lctl)))
  ;; laltb (multi alt (layer-while-held alt_tweaks))
  ;; laltb (layer-while-held alt_tweaks)
  bspw (layer-while-held mouse_actions)
  ctresc (tap-dance 300 (@bspw esc))
  nav (tap-dance 200 ((one-shot-press 2000 (layer-while-held navigation_keys_only)) (multi ralt)))
  grl (tap-hold-press 3000 3000 grv (layer-toggle layers))
  grp (layer-switch graphite)
  sgl (layer-switch gaming_layout)
  grk (layer-switch graphite_angle_kp)
  def (layer-switch default)
  qwr (layer-switch qwerty)
)

(defalias
  chlalt (chord example lalt)
  chralt (chord example ralt)
  chlctl (chord example lctl)
  chlmet (chord example lmet)
;;  chlft  ( chord example lft)
;;  chdown ( chord example down)
;;  chup   ( chord example up)
;;  chrght ( chord example rght)
  ;; chctresc (chord example caps)
  dom_nav (multi lctl (layer-while-held navigation))
)

(defchords example 200
;;  (lft           ) lft
;;  (down          ) down
;;  (up            ) up
;;  (rght          ) rght
;;  (ralt ralt down)
  (lalt          ) @laltb
  (ralt          ) @nav
  (lctl          ) @laltg
  (lmet          ) @lmet
  (lalt ralt) @dom_nav
  (lctl lmet) @scl
  (lctl lalt) @lca
)

(deffakekeys
  ctl lctl
  sft lsft
  met lmet
  alt lalt
  ;; bspw (multi lctl (layer-while-held mouse_actions))
  ;; ctresc (tap-dance 200 (bspw esc))


  ;; Press all modifiers
  pal (multi
        (on-press-fakekey ctl press)
        (on-press-fakekey sft press)
        (on-press-fakekey met press)
        (on-press-fakekey alt press)
      )

  ;; Release all modifiers
  ral (multi
        (on-press-fakekey ctl release)
        (on-press-fakekey sft release)
        (on-press-fakekey met release)
        (on-press-fakekey alt release)
      )
)

(defalias
  psf (on-press-fakekey sft press)
  rsf (on-press-fakekey sft release)

  pal (on-press-fakekey pal tap)
  ral (on-press-fakekey ral tap)

  isf (on-idle-fakekey sft tap 1000)
)
