; =========================================================
; Game Engine Function: _ZSt9terminatev
; Address            : 0x106D80 - 0x106DB2
; =========================================================

106D80:  PUSH            {R4,LR}
106D82:  BLX             j___cxa_get_globals_fast
106D86:  CMP             R0, #0
106D88:  ITT NE
106D8A:  LDRNE           R4, [R0]
106D8C:  CMPNE           R4, #0
106D8E:  BNE             loc_106DA0
106D90:  LDR             R0, =(__cxa_terminate_handler_ptr - 0x106D96)
106D92:  ADD             R0, PC; __cxa_terminate_handler_ptr
106D94:  LDR             R0, [R0]; __cxa_terminate_handler
106D96:  LDR             R0, [R0]; loc_106E6C
106D98:  DMB.W           ISH
106D9C:  BL              sub_106E00
106DA0:  ADD.W           R0, R4, #0x28 ; '('
106DA4:  BL              sub_1065DC
106DA8:  CMP             R0, #0
106DAA:  BEQ             loc_106D90
106DAC:  LDR             R0, [R4,#0x14]
106DAE:  BL              sub_106E00
