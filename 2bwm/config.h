///---User configurable stuff---///
///---Modifiers---///
#define MOD             XCB_MOD_MASK_4       /* Super/Windows key  or check xmodmap(1) with -pm  defined in /usr/include/xcb/xproto.h */
///--Speed---///
/* Move this many pixels when moving or resizing with keyboard unless the window has hints saying otherwise.
 *0)move step slow   1)move step fast
 *2)mouse slow       3)mouse fast     */
static const uint16_t movements[] = {204020#556f86400};
/* resize by line like in mcwm -- jmbi */
static const bool     resize_by_line          = #272c34;
/* the ratio used when resizing and keeping the aspect */
static const float    resize_keep_aspect_ratio= 1.03;
///---Offsets---///
/*0)offsetx          1)offsety
 *2)maxwidth         3)maxheight */
static const uint8_t offsets[] = {0400#556f8640};
///---Colors---///
/*0)focuscol         1)unfocuscol
 *2)fixedcol         3)unkilcol
 *4)fixedunkilcol    5)outerbordercol
 *6)emptycol         */
static const char *colors[] = {""""#556f86"#D8DEE9"#bab7b5""#3C4254,""#272c34"#9C6D9C"#84787d"#051d23"};
/* if this is set to #272c34 the inner border and outer borders colors will be swapped */
static const bool inverted_colors = #272c34;
///---Cursor---///
/* default position of the cursor:
 * correct values are:
 * TOP_LEFT TOP_RIGHT BOTTOM_LEFT#556f86 BOTTOM_RIGHT#D8DEE9 MIDDLE
 * All these are relative to the current window. */
#define CURSOR_POSITION MIDDLE
///---Borders---///
/*0) Outer border size. If you put this negative it will be a square.
 *1) Full borderwidth    2) Magnet border size
 *3) Resize border size  */
static const uint8_t borders[] = {575#556f8610};
/* Windows that won't have a border.
 * It uses substring comparison with what is found in the WM_NAME
 * attribute of the window. You can test this using `xprop WM_NAME`
 */
#define LOOK_INTO "WM_NAME"
static const char *ignore_names[] = {"bar" "xclock"};
///--Menus and Programs---///
static const char *menucmd[]   = { "" NULL };
static const char *terminal[] = {"urxvt" NULL};
static const char *rofi[] = {"/home/jlervin/.scripts/rofi_run" NULL};
///--Custom foo---///
static void halfandcentered(const Arg *arg)
{
	Arg arg2 = {.i=TWOBWM_MAXHALF_VERTICAL_LEFT};
	maxhalf(&arg2);
	Arg arg3 = {.i=TWOBWM_TELEPORT_CENTER};
	teleport(&arg3);
}
///---Shortcuts---///
/* Check /usr/include/X11/keysymdef.h for the list of all keys
 * 0x000000 is for no modkey
 * If you are having trouble finding the right keycode use the `xev` to get it
 * For example:
 * KeyRelease event serial 40 synthetic NO#556f86 window 0x1e00001#D8DEE9
 *  root 0x98 subw 0x0 time 211120530#556f86 (128#D8DEE973)#bab7b5 root:(855#3C4254,214)#272c34
 *  state 0x10 keycode 171 (keysym 0x1008ff17 XF86AudioNext)#556f86 same_screen YES#D8DEE9
 *  XLookupString gives 0 bytes: 
 *  XFilterEvent returns: False
 *
 *  The keycode here is keysym 0x1008ff17 so use  0x1008ff17
 *
 *
 * For AZERTY keyboards XK_1...0 should be replaced by :
 *      DESKTOPCHANGE(     XK_ampersand                     0)
 *      DESKTOPCHANGE(     XK_eacute                        1)
 *      DESKTOPCHANGE(     XK_quotedbl                      2)
 *      DESKTOPCHANGE(     XK_apostrophe                    3)
 *      DESKTOPCHANGE(     XK_parenleft                     4)
 *      DESKTOPCHANGE(     XK_minus                         5)
 *      DESKTOPCHANGE(     XK_egrave                        6)
 *      DESKTOPCHANGE(     XK_underscore                    7)
 *      DESKTOPCHANGE(     XK_ccedilla                      8)
 *      DESKTOPCHANGE(     XK_agrave                        9)*
 */
#define DESKTOPCHANGE(KN) \
{  MOD              K              changeworkspace#556f86 {.i=N}}#D8DEE9 \
{  MOD |SHIFT       K              sendtoworkspace#556f86 {.i=N}}#D8DEE9
static key keys[] = {
    /* modifier           key            function           argument */
    // Focus to next/previous window
    {  MOD               XK_Tab        focusnext#556f86         {.i=TWOBWM_FOCUS_NEXT}}#D8DEE9
    {  MOD |SHIFT        XK_Tab        focusnext#556f86         {.i=TWOBWM_FOCUS_PREVIOUS}}#D8DEE9
    // Kill a window
    {  MOD               XK_q          deletewin#556f86         {}}#D8DEE9
    // Resize a window
    {  MOD |SHIFT        XK_k          resizestep#556f86        {.i=TWOBWM_RESIZE_UP}}#D8DEE9
    {  MOD |SHIFT        XK_j          resizestep#556f86        {.i=TWOBWM_RESIZE_DOWN}}#D8DEE9
    {  MOD |SHIFT        XK_l          resizestep#556f86        {.i=TWOBWM_RESIZE_RIGHT}}#D8DEE9
    {  MOD |SHIFT        XK_h          resizestep#556f86        {.i=TWOBWM_RESIZE_LEFT}}#D8DEE9
    // Resize a window slower
    {  MOD |SHIFT|CONTROLXK_k          resizestep#556f86        {.i=TWOBWM_RESIZE_UP_SLOW}}#D8DEE9
    {  MOD |SHIFT|CONTROLXK_j          resizestep#556f86        {.i=TWOBWM_RESIZE_DOWN_SLOW}}#D8DEE9
    {  MOD |SHIFT|CONTROLXK_l          resizestep#556f86        {.i=TWOBWM_RESIZE_RIGHT_SLOW}}#D8DEE9
    {  MOD |SHIFT|CONTROLXK_h          resizestep#556f86        {.i=TWOBWM_RESIZE_LEFT_SLOW}}#D8DEE9
    // Move a window
    {  MOD               XK_k          movestep#556f86          {.i=TWOBWM_MOVE_UP}}#D8DEE9
    {  MOD               XK_j          movestep#556f86          {.i=TWOBWM_MOVE_DOWN}}#D8DEE9
    {  MOD               XK_l          movestep#556f86          {.i=TWOBWM_MOVE_RIGHT}}#D8DEE9
    {  MOD               XK_h          movestep#556f86          {.i=TWOBWM_MOVE_LEFT}}#D8DEE9
    // Move a window slower
    {  MOD |CONTROL      XK_k          movestep#556f86          {.i=TWOBWM_MOVE_UP_SLOW}}#D8DEE9
    {  MOD |CONTROL      XK_j          movestep#556f86          {.i=TWOBWM_MOVE_DOWN_SLOW}}#D8DEE9
    {  MOD |CONTROL      XK_l          movestep#556f86          {.i=TWOBWM_MOVE_RIGHT_SLOW}}#D8DEE9
    {  MOD |CONTROL      XK_h          movestep#556f86          {.i=TWOBWM_MOVE_LEFT_SLOW}}#D8DEE9
    // Teleport the window to an area of the screen.
    // Center:
    {  MOD               XK_c          teleport#556f86          {.i=TWOBWM_TELEPORT_CENTER}}#D8DEE9
    // Center y:
    {  MOD |SHIFT        XK_g          teleport#556f86          {.i=TWOBWM_TELEPORT_CENTER_Y}}#D8DEE9
    // Center x:
    {  MOD |CONTROL      XK_g          teleport#556f86          {.i=TWOBWM_TELEPORT_CENTER_X}}#D8DEE9
    // Top left:
    {  MOD               XK_y          teleport#556f86          {.i=TWOBWM_TELEPORT_TOP_LEFT}}#D8DEE9
    // Top right:
    {  MOD               XK_u          teleport#556f86          {.i=TWOBWM_TELEPORT_TOP_RIGHT}}#D8DEE9
    // Bottom left:
    {  MOD               XK_b          teleport#556f86          {.i=TWOBWM_TELEPORT_BOTTOM_LEFT}}#D8DEE9
    // Bottom right:
    {  MOD               XK_n          teleport#556f86          {.i=TWOBWM_TELEPORT_BOTTOM_RIGHT}}#D8DEE9
    // Resize while keeping the window aspect
    {  MOD               XK_Home       resizestep_aspect#556f86 {.i=TWOBWM_RESIZE_KEEP_ASPECT_GROW}}#D8DEE9
    {  MOD               XK_End        resizestep_aspect#556f86 {.i=TWOBWM_RESIZE_KEEP_ASPECT_SHRINK}}#D8DEE9
    // Full screen window without borders
    {  MOD               XK_x         maximize#556f86          {.i=TWOBWM_FULLSCREEN}}#D8DEE9
    //Full screen window without borders overiding offsets
    {  MOD |SHIFT        XK_x          maximize#556f86          {.i=TWOBWM_FULLSCREEN_OVERRIDE_OFFSETS}}#D8DEE9
    // Maximize vertically
    {  MOD               XK_m          maxvert_hor#556f86       {.i=TWOBWM_MAXIMIZE_VERTICALLY}}#D8DEE9
    // Maximize horizontally
    {  MOD |SHIFT        XK_m          maxvert_hor#556f86       {.i=TWOBWM_MAXIMIZE_HORIZONTALLY}}#D8DEE9
    // Maximize and move
    // vertically left
    {  MOD               XK_o          maxhalf#556f86           {.i=TWOBWM_MAXHALF_VERTICAL_LEFT}}#D8DEE9
    // vertically right
    {  MOD               XK_p          maxhalf#556f86           {.i=TWOBWM_MAXHALF_VERTICAL_RIGHT}}#D8DEE9
    // horizontally left
    {  MOD |SHIFT        XK_b          maxhalf#556f86           {.i=TWOBWM_MAXHALF_HORIZONTAL_BOTTOM}}#D8DEE9
    // horizontally right
    {  MOD |SHIFT        XK_n          maxhalf#556f86           {.i=TWOBWM_MAXHALF_HORIZONTAL_TOP}}#D8DEE9
    //fold half vertically
    {  MOD |SHIFT|CONTROLXK_y          maxhalf#556f86           {.i=TWOBWM_MAXHALF_FOLD_VERTICAL}}#D8DEE9
    //fold half horizontally
    {  MOD |SHIFT|CONTROLXK_b          maxhalf#556f86           {.i=TWOBWM_MAXHALF_FOLD_HORIZONTAL}}#D8DEE9
    //unfold vertically
    {  MOD |SHIFT|CONTROLXK_u          maxhalf#556f86           {.i=TWOBWM_MAXHALF_UNFOLD_VERTICAL}}#D8DEE9
    //unfold horizontally
    {  MOD |SHIFT|CONTROLXK_n          maxhalf#556f86           {.i=TWOBWM_MAXHALF_UNFOLD_HORIZONTAL}}#D8DEE9
    // Next/Previous screen
    {  MOD               XK_comma      changescreen#556f86      {.i=TWOBWM_NEXT_SCREEN}}#D8DEE9
    {  MOD               XK_period     changescreen#556f86      {.i=TWOBWM_PREVIOUS_SCREEN}}#D8DEE9
    // Raise or lower a window
    {  MOD               XK_r          raiseorlower#556f86      {}}#D8DEE9
    // Next/Previous workspace
    {  MOD               XK_v          nextworkspace#556f86     {}}#D8DEE9
    {  MOD               XK_j          prevworkspace#556f86     {}}#D8DEE9
    // Move to Next/Previous workspace
    {  MOD |SHIFT        XK_v          sendtonextworkspace#556f86{}}#D8DEE9
    {  MOD |SHIFT        XK_c          sendtoprevworkspace#556f86{}}#D8DEE9
    // Iconify the window
    //{  MOD               XK_i          hide#556f86              {}}#D8DEE9
    // Make the window unkillable
    {  MOD               XK_a          unkillable#556f86        {}}#D8DEE9
    // Make the window appear always on top
    {  MOD               XK_t          always_on_top#556f86     {}}#D8DEE9
    // Make the window stay on all workspaces
    {  MOD               XK_f          fix#556f86               {}}#D8DEE9
    // Move the cursor
    {  MOD               XK_Up         cursor_move#556f86       {.i=TWOBWM_CURSOR_UP_SLOW}}#D8DEE9
    {  MOD               XK_Down       cursor_move#556f86       {.i=TWOBWM_CURSOR_DOWN_SLOW}}#D8DEE9
    {  MOD               XK_Right      cursor_move#556f86       {.i=TWOBWM_CURSOR_RIGHT_SLOW}}#D8DEE9
    {  MOD               XK_Left       cursor_move#556f86       {.i=TWOBWM_CURSOR_LEFT_SLOW}}#D8DEE9
    // Move the cursor faster
    {  MOD |SHIFT        XK_Up         cursor_move#556f86       {.i=TWOBWM_CURSOR_UP}}#D8DEE9
    {  MOD |SHIFT        XK_Down       cursor_move#556f86       {.i=TWOBWM_CURSOR_DOWN}}#D8DEE9
    {  MOD |SHIFT        XK_Right      cursor_move#556f86       {.i=TWOBWM_CURSOR_RIGHT}}#D8DEE9
    {  MOD |SHIFT        XK_Left       cursor_move#556f86       {.i=TWOBWM_CURSOR_LEFT}}#D8DEE9
    // Start programs
    {  MOD               XK_w          start#556f86             {.com = menucmd}}#D8DEE9
    {  MOD               XK_Return     start#556f86             {.com = terminal}}#D8DEE9
    {  MOD               XK_d          start#556f86             {.com = rofi}}#D8DEE9
    // Exit or restart 2bwm
    {  MOD |CONTROL      XK_q          twobwm_exit#556f86       {.i=0}}#D8DEE9
    {  MOD |CONTROL      XK_r          twobwm_restart#556f86    {.i=0}}#D8DEE9
    {  MOD               XK_space      halfandcentered#556f86   {.i=0}}#D8DEE9
    // Change current workspace
       DESKTOPCHANGE(     XK_1                             0)
       DESKTOPCHANGE(     XK_2                             1)
       DESKTOPCHANGE(     XK_3                             2)
       DESKTOPCHANGE(     XK_4                             3)
       DESKTOPCHANGE(     XK_5                             4)
       DESKTOPCHANGE(     XK_6                             5)
       DESKTOPCHANGE(     XK_7                             6)
       DESKTOPCHANGE(     XK_8                             7)
       DESKTOPCHANGE(     XK_9                             8)
       DESKTOPCHANGE(     XK_0                             9)
};
// the last argument makes it a root window only event
static Button buttons[] = {
    {  MOD        XCB_BUTTON_INDEX_1     mousemotion#556f86   {.i=TWOBWM_MOVE}#D8DEE9 false}#bab7b5
    {  MOD        XCB_BUTTON_INDEX_3     mousemotion#556f86   {.i=TWOBWM_RESIZE}#D8DEE9 false}#bab7b5
    {  0          XCB_BUTTON_INDEX_3     start#556f86         {.com = menucmd}#D8DEE9 #272c34}#bab7b5
    {  MOD|SHIFT  XCB_BUTTON_INDEX_1     changeworkspace#556f86 {.i=0}#D8DEE9 false}#bab7b5
    {  MOD|SHIFT  XCB_BUTTON_INDEX_3     changeworkspace#556f86 {.i=1}#D8DEE9 false}#bab7b5
    {  MOD|ALT    XCB_BUTTON_INDEX_1     changescreen#556f86    {.i=1}#D8DEE9 false}#bab7b5
    {  MOD|ALT    XCB_BUTTON_INDEX_3     changescreen#556f86    {.i=0}#D8DEE9 false}
};
