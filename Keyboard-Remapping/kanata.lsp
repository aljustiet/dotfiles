(defcfg
  macos-dev-names-include (
    "Apple Internal Keyboard / Trackpad"
  )
;;override-release-on-activation yes
  concurrent-tap-hold true
  process-unmapped-keys yes
;;log-layer-changes no
)

(defsrc
grv  1     2    3    4    5    6     7    8    9    0    -    =    bspc
tab  q     w    e    r    t    y     u    i    o    p    [    ]    \
caps a     s    d    f    g    h     j    k    l    ;    '    ret
lsft z     x    c    v    b  n     m    ,    .    /    rsft up
lctl lalt lmet         spc              rmet ralt   lft down rght
)

(deflayer graphite_angle_kp
@grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
tab     b    l    d    w    z    @'    f    o    u  j    ;    =    \
@ctresc n   r  t   s    g    y     h    a    e    i    @,   ret
@lsftl    x     m    c    v    q    k     p    .    @-   @/   rsft up
@laltg @lmet @lcomb        spc             @nav @rctl lft down rght
)

(deflayer graphite_angle_kp_default
grv  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
tab     b    l    d    w    z    @'    f    o    u  j    ;    =    \
caps n   r  t   s    g    y     h    a    e    i    @,   ret
lsft x     m    c    v    q    k     p    .    @-   @/   rsft up
lctl lalt lmet        spc             rmet ralt lft down rght
 )

(defalias
  ex S-1
;; oneshot (multi rmet (one-shot-press 2000 (layer-while-held symbol_layer)))
  ' (fork ' - (lsft rsft))
  , (fork , / (lsft rsft))
  - (fork - ' (lsft rsft))
  / (fork / , (lsft rsft))
)


(defalias endesc (tap-dance 200 (end esc)))

(deflayer graphite
@grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
tab     b     l    d    w    z    @'    f    o    u    j    ;    =    \
@ctresc n     r   @t_key    s    g    y     h    a    e    i    @,   ret
@lsftl     q     x    m    c    v    k     p    .    @-   @/   rsft up
@laltg @lmet @lcomb         spc             @nav @rctl lft down rght
)

(deflayer qwerty
@grl  1     2    3    4    5    6     7    8    9    0    -    =    bspc
tab  q     w    e    r    t    y     u    i    o    p    [    ]    \
@ctresc a  s    d    f    g    h     j    k    l    ;    '    ret
@lsftl z     x    c    v    b    n     m    ,    .    /    rsft up
@laltq @lmetq @lcomb         spc              @nav rctl lft down rght
)

(deflayer gaming_layout
@grl  1     2    3    4    5    6     7    8    9    0    -    =    bspc
tab  q     w    e    r    t    y     f    i    o    p    [    ]    \
@ctresc a  s    d    .    ,    h     j    k    l    ;    @,    ret
@lsft x     m    c    v    q    k     p    .    @-    @/    rsft up
@laltg @lmet  @galtb          spc              @nav rctl  lft down rght
)

(deflayer graphite_vim_layer
@grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
tab     b     l    d    w    z    @'    f    o    u    j    ;    =    \
esc n     r    t    s    g    y     h    a    e    i    @,   ret
lsft    q     x    m    c    v    k     p    .    @-   @/   rsft up
@laltg @lmet  @lcomb        spc             @nav rctl lft down rght
)

(deflayer nothing_layer
XX    XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX   XX   XX
XX   XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX   XX   XX
XX      XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX   XX
XX   XX    XX   XX   XX   XX   XX    XX   XX   XX   XX   XX      XX
XX     XX     XX             XX              XX XX XX XX XX
)

(deflayer default
@grl  1     2    3    4    5    6     7    8    9    0    -    =    bspc
tab  q     w    e    r    t    y     u    i    o    p    [    ]    \
caps a     s    d    f    g    h     j    k    l    ;    '    ret
lsft z     x    c    v    b  n     m    ,    .    /    rsft up
lctl lalt  lmet          spc              rmet ralt   lft down rght
)

(deflayer layers
_    @grk @grp @qwr lrld @sgl @sgvl @nl  _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _ up
_    _    _              _              _    _      lft down rght
)

(deflayer symbol_layer
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    @ex  _    _    _    _    ;    =    @%   @@   _    _
_    _    _    _    _    _    _    _    _    _    _    _ up
_    _    _              _              _    _      lft down rght
)

(deflayer vim_navigation
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _   C-w   _    _    _      A-lft _  _    _    _    _
_    lft up down rght        lft A-rght  lft @sdd @sdu rght _   _
_    _     _    _    _    _    n    p    _    _    _    _ up
_    _     _             _              _    _      lft down rght
)

(deflayer navigation
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
lctl M-lft M-up M-down M-rght lft rght lft down up rght _   _
lsft  _    _    _    _    _    _    _    _    _    _    _ up
_    _   lctl            _              _    _      lft down rght
)

(defalias
  C-lft (multi (release-key lalt) C-lft)
  C-rght (multi (unmod lctl) rght)
  C-down (multi (release-key lalt) (release-key ralt) C-down)
  C-up (multi (release-key lalt) (release-key ralt) C-up)
)

(deflayer lalt_navigation
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
lctl M-lft M-up M-down M-rght lft rght @C-lft @C-down @C-up @C-rght _   _
lsft  _    _    _    _    _    _    _    _    _    _    _ up
_    _   lctl            _              _    _      lft down rght
)

(deflayer lsft_lalt_ralt_navigation_layer
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
lctl   lft up down rght   lft rght lft down up rght _   _
_    _    _    _    _    _   A-n A-m    _    _    _    _ up
_    _  lctl             _              _    _      lft down rght
)

(deflayer navigation_keys_only
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _   pgdn pgup  _    _  pgup pgdn   _    _    _    _    _
lctl   lft up down rght   lft rght lft down up rght _   _
_    _    _    _    _    _   A-n A-m    _    _    _    _ up
_    _  lctl             _              _    _      lft down rght
)

(deflayer navigation_keys_only_without_modifier_keys
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
lctl   lft up down rght   lft rght @A-lft @A-down @A-up @A-rght _   _
_    _    _    _    _    _   A-n A-m    _    _    _    _ up
_    _  lctl             _              _    _      lft down rght
)

(defalias
  A-lft (unmod lft)
  A-down (unmod down)
  A-up (unmod up)
  A-rght (unmod rght)
)

(deflayer navigation_second
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    M-n M-r M-t  M-s    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _ up
_    _    _              _              _    _      lft down rght
)

(deflayer scrolling_layer
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _    _    _    _    _    _    _    _    _    _    _    _    _
_    _   @su @sd    _    _    _   @sl  @su  @sd  @sr   _    _
_    _    _    _    _    _    _    _    _    _    _    _ up
_    _    _              _              _    _      lft down rght
)

;; (deflayer selection_layer
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _ up
;;   _    _    _              _              _    _      lft down rght
;; )

(deflayer lmet_layer
_    _    _    _    _    _    _    _    _    _    _    -    =    _
_    b     l    d    w    z    @'    f    o    u    j  ;    =    _
_    n     r    t    s    g    y     h    a    e    i  @,   _
_    x     m    c    v    q    k     p    .    @-   @/ _ up
@scl   _    _           _             _   _      lft down rght
)

(deflayer lmetq_layer
_    _    _    _    _    _    _    _    _    _    _    -    =    _
_    b     l    d    w    z    @'    f    o    u    j  ;    =    _
_    n     r    t    s    g    y     h    a    e    i  @,   _
_    x     m    c    v    q    k     p    .    @-   @/ _ up
@scl   _    _           _             _    _      lft down rght
)

(defoverrides
  (lalt lsft t) (lctl lsft t)
  (lctl n) (lalt n)
  (lalt n) (lctl n)
  (lctl ]) (lalt =)
  (lctl [) (lalt -)
  (lctl home) (lalt home)
;;(ralt h) (left)
;;(ralt a) (down)
;;(ralt e) (up)
;;(ralt i) (right)
;;(ralt u) (pgup)
;;(ralt o) (pgdn)
;;(ralt l) (pgup)
;;(ralt d) (pgdn)
)

(deflayer lalt_layer_g
grv  1  2  3  4  5  6  7  8  9  0 @A-- @A-+ bspc
tab b   l    d  w    z    @'    f    o  u      j  ;     _    _
_   n     r  t  s g    y  h @A-a  e   i        _     _
lsft     x     m    c  v    q    @A-k  p    .    @-   @/ _     up
_   @ascl @alctl          @spcq               @nav lalt lft down rght
)

(defalias
    A-x (multi (unmod ctl) A-m )
    A-a (multi (unmod alt) a)
    A-l (multi (release-key lctl) lmet l)
    A-k (multi (release-key lctl) lalt k)
    A-b (multi (release-key lctl) lalt b)
    A-S-t (multi (release-key lctl) (release-key lsft) (release-key t) lalt lsft t)
    laltg (multi lctl (layer-while-held lalt_layer_g))
    A-- (multi (release-key ctl) alt -)
    A-+ (multi (release-key ctl) alt +)
)

(deflayer lalt_layer_q
_     _    _    _    _    _     _    _    _    _    _    _    _    _
@C-tab   b     l    d    w    z    @'    f    o    u    j  ;     _    _
_     n     r    t    s @ctl_g    y     h    a    e    i  @,    _
lsft    x     m    c    v    q    k     p    .    @-   @/ _ up
_   @ascl   _            @spcg               @anav lalt lft down rght
)

(deflayer mouse_actions
_    _    _    _    _    _    _    _    _    _    _    _    _   A-bspc
_ @clft @mup @crght _    _    _    [    ]    _    _    _    _    _
_ @mlft @mbck @mrght @mmid _    _   S-;    =    @%  @@    _     _
_    _    _   C-c  C-v   _    _    _    _    _    _    _ up
_    _    _              _             @anav _            lft down rght
)

;; (deflayer cmouse_actions
;;   _    _    _    _    _    _    _    _    _    _    _    _    _   C-bspc
;;   _ @clft @mup @crght _    _    _    _    _    _    _    _    _    _
;;   _ @mlft @mbck @mrght @mmid _    _   ;    =    @%   _    _     _
;;   _    _    _    _    _    _    _    _    _    _    _    _ up
;;   _    _    _              _              _ _            lft down rght
;; )

(deflayer command_tweaks
  _    1    2    3    4    5    6    7    8    9    0  @C-- @C-= _
tab q @C-l @C-d @C-w @C-z    @' @C-f @C-o @C-u j @C-; @C-= \
  _ n @C-r @C-t @C-s @alft @arght @C-h @C-a e i , ret
@sft x @C-x @C-c @C-v b @C-k @C-p . - /   @C-rsft up
lalt  _    _               _            _  _      lft down rght
)

(deflayer galt_tweaks
  _   @C-- @C-=  3    4    5    6    7    8    9    0  @C-- @C-=  @dline
tab @C-b l @C-d w @C-z    @' @C-f @C-o @C-u @C-j @C-; @C-= @C-\
  _ @C-n @C-r @C-t @C-s @alft @arght @C-h @C-a @C-e i @C-, ret
@sft @C-q @C-x @C-c @C-v @C-b @C-k @C-p @C-. @C--    @C-/   @C-rsft up
lalt  _    _               _            _    _      lft down rght
)

(deflayer shift_control_layer
@grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
tab     b    l    d    w    z    @'    f    o    u    j    ;    =    \
@ctresc n   r  @t    s    g    y     h    a    e    i    @,   ret
@lsftl    x     m    c    v    q    k     p    .    @-   @/   rsft up
@laltg @lmet  @lcomb        spc             @nav @rctl lft down rght
)

(defalias
  nlayer (one-shot-press 2000 (layer-while-held mouse_actions))
  A-S-a (multi (release-key ctl) A-a)
  dom_nav (multi lalt ralt (layer-while-held lalt_navigation))
  lsftl (multi lsft (layer-while-held shift_layer))
  C-, (multi (release-key alt) C-,)
  C-- (multi (release-key alt) M--)
  C-/ (multi (release-key alt) C-/)
  C-b (multi (release-key alt) C-b)
  C-l (multi (release-key alt) M-l)
  C-d (multi (release-key lmet) C-d)
  C-w (multi (release-key lmet) M-w)
  C-z (multi (release-key lmet) M-z)
  C-f (multi (release-key alt) C-f)
  C-o (multi (release-key lmet) M-o)
  C-u (multi (release-key alt) C-u)
  C-j (multi (release-key alt) C-j)
  C-; (multi (release-key alt) C-;)
  C-= (multi (release-key alt) M-=)
  C-+ (multi (release-key alt) C-+)
  C-\ (multi (release-key alt) C-\)
  C-n (multi (release-key alt) C-n)
  C-r (multi (release-key alt) C-r)
  C-t (multi (release-key alt) M-t)
  C-s (multi (release-key lmet) C-s)
  C-h (multi (release-key alt) C-h)
  C-a (multi (release-key alt) M-a)
  C-e (multi (release-key alt) C-e)
  C-i (multi (release-key alt) C-i)
  C-ret (multi (release-key alt) C-ret)
  C-x (multi (release-key lmet) M-x)
  C-m (multi (release-key lmet) C-m)
  C-c (multi (release-key lmet) M-c)
  C-v (multi (release-key lmet) M-v)
  C-q (multi (release-key lmet) C-q)
  C-k (multi (release-key lmet) C-k)
  C-p (multi (release-key lmet) C-p)
  C-rsft (multi (release-key alt) C-rsft)
  C-. (multi (release-key alt) C-.)
)

;; (deflayer alt_tweaks
;;   _ @A-1 @A-2 @A-3 @A-4 @A-5 @A-6 @A-7 @A-8 @A-9 @A-0   g    y    @dline
;; @A-tab b    l    d    w    z    @'    f    o    u    j    ;    =    \
;;   _    n    r    t    s @alft @arght  h   a    e i @,  _
;;  @sft  q    x    c    v    m    k    p    .    @-    @/    _ up
;; lalt  _    _               _            _    _      lft down rght
;; )

(deflayer salt_tweaks
  _    1    2    3    4    5    6    7    8    9    0   _    _    @dline
@A-tab b   l     d   w   z    @'    f    o    u    j    ;    =    \
  _    n   r     t  s   @alft @arght h    a    e    i    ,    _
 @sft  q   m @C-S-c  @C-S-v    q    k    p    .    -    /    _ up
lalt  _    _               spc           _    _      lft down rght
)

(deflayer input_change_q
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ up
  _    _    _              @spcq          _    _      lft down rght
)
(deflayer input_change_g
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ up
  _    _    _              @spcg          _    _      lft down rght
)

(deflayer navigate_channels
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _   C-left  @mad @mau C-rght _    _
  _    _    _    _    _    _    _    _    _    _    _    _ up
  _    _    _              @spcg          _    _      lft down rght
)

;; (deflayer diagonally_down_movement_layer
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _ up
;;   _    _    _              _              _    _      lft down rght
;; )

(deflayer shift_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ up
lctl   _  @lctl            _              _    _      lft down rght
)

(deflayer shift_alt_layer
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
@C-S-tab _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    a    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _ up
  _    _  @lctl            _              _    _      lft down rght
)

;; (deflayer lc_layer
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _    _
;;   _    _    _    _    _    _    _    _    _    _    _    _ up
;;   _    _  @lwhsat          _              _    _      lft down rght
;; )

(deflayer c_v
  _    _    _    _    _    _    _    _    _    _    _    _    _    _
@A-tab _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    _    _    _    _    _    _    _    _    _    _    _
  _    _    x    c    v    m    _    _    _    _    _    _ up
  _    _    _              _              _    _      lft down rght
)

(deflayer caps_layer
  @grl  1     2    3    4    5    6     7    8    9    0    [    ]    bspc
  tab   S-b  S-l  S-d  S-w  S-z    @'  S-f  S-o  S-u  S-j  S-;  S-=  S-\
@ctresc S-n S-r S-t  S-s  S-g  S-y   S-h  S-a  S-e  S-i    @,   ret
 @lsft  S-x   S-m  S-c  S-v  S-q  S-k   S-p  S-.   S-'   @/   rsft up
  @laltg @lmet @lcomb        spc             @nav @rctl lft down rght
)

(defalias
    mwu (mwheel-up 128 256)
    mwd (mwheel-down 128 256)
    mwl (mwheel-left 128 256)
    mwr (mwheel-right 128 256)
)

(defalias
    su (multi (unmod mwu))
    sd (multi (unmod mwd))
    sl (multi (unmod mwl))
    sr (multi (unmod mwr))
)

(defalias
    C-S-m (multi (release-key alt) C-m)
    C-S-v (multi (release-key alt) C-v)
    C-S-c (multi (release-key alt) C-c)
    C-S-q (multi (release-key alt) C-q)
    C-S-w (multi (release-key alt) C-w)
    C-S-t (multi (release-key alt) C-t)
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
    dwc (multi (release-key ctl) S-2)
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
      sdd (mwheel-down 200 308)
      sdu (mwheel-up 200 308)
    anav (multi (release-key lctl) (layer-while-held navigate_channels))
      nl (layer-switch nothing_layer)
      cl (multi lctl (layer-while-held navigate_channels))
   lwhnc (layer-while-held navigate_channels)
   ctl_g (multi (release-key alt) C-g)
   laltq (layer-while-held lalt_layer_q)
;; laltg (tap-dance 300 ((one-shot-press 1 (layer-while-held lalt_layer_g)) (multi lalt (layer-while-held graphite_angle_kp))))
;; laltq (multi lalt (one-shot-press 800 (layer-while-held lalt_layer_q)))
     sft (multi lsft (layer-while-held salt_tweaks))
     scl (multi lctl lmet (layer-while-held scrolling_layer))
 ;; ascl (multi (release-key alt) (layer-while-held scrolling_layer))
    ascl (layer-while-held scrolling_layer)
    lmet (multi lalt (layer-while-held lmet_layer))
    lmetq (multi lmet (layer-while-held lmetq_layer))
     mup (movemouse-up    16 16)
    mbck (movemouse-down  16 16)
    mlft (movemouse-left  16 16)
   mrght (movemouse-right 16 16)
;; addml (multi (movemouse-left 16 5) (layer-while-held diagonally_down_movement_layer))
  ;; lrm (multi (release-key lctl) (movemouse-left 16 5) (movemouse-down 16 5))
    clft mlft
   crght mrgt
    mmid mmid
       @ S-2
       % S-5
     mau A-up
     mad A-down
;;  alft (multi (release-key ctl) A-lft)
;; arght (multi (release-key ctl) A-rght)
    alft lft
   arght rght
)

(defalias
  spcq (multi (layer-switch qwerty) C-spc)
  spcg (multi (layer-switch graphite_angle_kp) C-spc)
  dline (multi (release-key alt) lsft home bspc)
;;lcomb (tap-dance 300 ((multi lalt (layer-while-held alt_tweaks)) (multi lctl (layer-while-held graphite_angle_kp)) (one-shot-press 60000 lctl)))
  galtb (multi alt (layer-while-held galt_tweaks))
  lcomb (multi met (layer-while-held command_tweaks))
  ;; lcomb (layer-while-held command_tweaks)
  bspw (layer-while-held mouse_actions)
  ctresc (tap-dance 300 (@bspw esc))
  nav (tap-dance 200 ((one-shot-press 2000 (layer-while-held navigation_keys_only)) (layer-switch vim_navigation) (layer-switch navigation) (multi ralt)))
  grl (tap-hold-press 3000 3000 grv (layer-toggle layers))
  grp (layer-switch graphite)
  sgl (layer-switch gaming_layout)
  grk (layer-switch graphite_angle_kp)
  def (layer-switch default)
  qwr (layer-switch qwerty)
)

;; (defalias
;;   chlalt (chord example lalt)
;;   chralt (chord example ralt)
;;   chlctl (chord example lctl)
;;chlsft (chord example lsft)
;;chlmet (chord example lmet)
;;  chlft  ( chord example lft)
;;  chdown ( chord example down)
;;  chup   ( chord example up)
;;  chrght ( chord example rght)
  ;; chctresc (chord example caps)
;;)

;;(defchords example 200
;;  (lft           ) lft
;;  (down          ) down
;;  (up            ) up
;;  (rght          ) rght
;;  (ralt ralt down)
;;(lalt          ) @lcomb
;;(ralt          ) @nav
;;(lctl          ) @laltg
;;(lmet          ) @lmet
;;(lsft          ) (multi lsft (layer-while-held shift_layer))
;;(lsft lctl     ) (multi lsft lalt (layer-while-held shift_alt_layer))
;;  (lsft lmet) (multi lsft lmet (layer-while-held lmet_layer))
;;  (lsft lalt) (multi lsft lctl (layer-while-held salt_tweaks))
;;  (lalt ralt) @dom_nav
;;  (lctl lmet) @scl
;;  (lctl lalt) @lca
;;)

(defchordsv2-experimental
  (lmet lalt lsft) (multi lmet lalt lsft) 200 all-released (nothing_layer)
  (lctl ralt lsft) (multi alt sft (layer-while-held navigation_keys_only)) 200 all-released (nothing_layer)
  (lalt lsft ralt) (multi lctl lsft (layer-while-held lsft_lalt_ralt_navigation_layer)) 200 all-released (nothing_layer)
;; (lctl ralt) (multi lalt (layer-while-held navigation_keys_only)) 200 all-released (nothing_layer)
  (lctl ralt) (multi lctl (layer-while-held navigation)) 200 all-released (nothing_layer)
  (lalt lsft) (multi lsft lalt (layer-while-held salt_tweaks)) 200 all-released (nothing_layer)
  (lalt ralt) @dom_nav 200 all-released (nothing_layer)
  (lmet ralt) (multi lmet ralt (layer-while-held graphite_angle_kp)) 200 all-released (nothing_layer)
  (lalt lctl) @lca 200 all-released (nothing_layer)
  (lmet lsft) (multi lsft lmet (layer-while-held lmet_layer)) 200 all-released (nothing_layer)
  (lmet lctl) @scl 200 all-released (nothing_layer)
  (lsft ralt) @lsft_ralt_navigation 200 all-released (nothing_layer)
  (lctl lsft) (multi lctl lsft (layer-while-held shift_control_layer)) 200 first-release (nothing_layer)
;;(lsft lctl) (multi lctl @lsftl) 200 first_release (nothing_layer)
;;(s d f) (macro b y e)     400 first-release (non-chord-layer)
)

(defalias 
  lsft_ralt_navigation (multi lsft (layer-while-held navigation))
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

;; (defalias
;;   swt (switch
;;     ;; case 1
;;     ((and a b (or c d) (or e f))) @ac1 break
;;     ;; case 2
;;     (a b c) @ac2 fallthrough
;;     ;; case 3
;;     () @ac3 break
;;   )
;; )
