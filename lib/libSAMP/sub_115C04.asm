; =========================================================
; Game Engine Function: sub_115C04
; Address            : 0x115C04 - 0x115C1A
; =========================================================

115C04:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP7CWidgetEEC1I10radar_rectEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x115C0A); `vtable for'std::__function::__func<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1},std::allocator<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1}>,void ()(CWidget *)> ...
115C06:  ADD             R2, PC; `vtable for'std::__function::__func<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1},std::allocator<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1}>,void ()(CWidget *)>
115C08:  ADDS            R2, #8
115C0A:  STR             R2, [R1]
115C0C:  VLDR            D16, [R0,#4]
115C10:  LDR             R0, [R0,#0xC]
115C12:  STR             R0, [R1,#0xC]
115C14:  VSTR            D16, [R1,#4]
115C18:  BX              LR
