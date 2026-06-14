; =========================================================
; Game Engine Function: sub_115BDC
; Address            : 0x115BDC - 0x115BFE
; =========================================================

115BDC:  PUSH            {R4,R6,R7,LR}
115BDE:  ADD             R7, SP, #8
115BE0:  MOV             R4, R0
115BE2:  MOVS            R0, #0x10; unsigned int
115BE4:  BLX             j__Znwj; operator new(uint)
115BE8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP7CWidgetEEC1I10radar_rectEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x115BF2); `vtable for'std::__function::__func<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1},std::allocator<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1}>,void ()(CWidget *)> ...
115BEA:  VLDR            D16, [R4,#4]
115BEE:  ADD             R1, PC; `vtable for'std::__function::__func<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1},std::allocator<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1}>,void ()(CWidget *)>
115BF0:  LDR             R2, [R4,#0xC]
115BF2:  ADDS            R1, #8
115BF4:  STR             R1, [R0]
115BF6:  STR             R2, [R0,#0xC]
115BF8:  VSTR            D16, [R0,#4]
115BFC:  POP             {R4,R6,R7,PC}
