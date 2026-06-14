; =========================================================
; Game Engine Function: sub_115B90
; Address            : 0x115B90 - 0x115BD4
; =========================================================

115B90:  PUSH            {R4,R5,R7,LR}
115B92:  ADD             R7, SP, #8
115B94:  SUB             SP, SP, #0x18
115B96:  MOV             R4, R0
115B98:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN15function_helperIFvP7CWidgetEEC1I10radar_rectEEMT_FvS4_EPS9_EUlS4_E_NS_9allocatorISD_EES5_EE - 0x115BA4); `vtable for'std::__function::__func<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1},std::allocator<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1}>,void ()(CWidget *)> ...
115B9A:  LDRD.W          R2, R3, [R1]
115B9E:  MOV             R5, SP
115BA0:  ADD             R0, PC; `vtable for'std::__function::__func<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1},std::allocator<function_helper<void ()(CWidget *)>::function_helper<radar_rect>(void (radar_rect::*)(CWidget *),radar_rect*)::{lambda(CWidget *)#1}>,void ()(CWidget *)>
115BA2:  LDR             R1, [R1,#8]
115BA4:  ADDS            R0, #8
115BA6:  STRD.W          R1, R5, [SP,#0x20+var_14]
115BAA:  STR             R0, [SP,#0x20+var_20]
115BAC:  MOV             R0, R5
115BAE:  MOV             R1, R4
115BB0:  STRD.W          R2, R3, [SP,#0x20+var_1C]
115BB4:  BL              sub_115C66
115BB8:  LDR             R0, [SP,#0x20+var_10]
115BBA:  CMP             R5, R0
115BBC:  BEQ             loc_115BC4
115BBE:  CBZ             R0, loc_115BCE
115BC0:  MOVS            R1, #5
115BC2:  B               loc_115BC6
115BC4:  MOVS            R1, #4
115BC6:  LDR             R2, [R0]
115BC8:  LDR.W           R1, [R2,R1,LSL#2]
115BCC:  BLX             R1
115BCE:  MOV             R0, R4
115BD0:  ADD             SP, SP, #0x18
115BD2:  POP             {R4,R5,R7,PC}
