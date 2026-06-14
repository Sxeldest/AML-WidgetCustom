; =========================================================
; Game Engine Function: _ZN6CRadar10InitialiseEv
; Address            : 0x43DC40 - 0x43DCDA
; =========================================================

43DC40:  PUSH            {R4-R7,LR}
43DC42:  ADD             R7, SP, #0xC
43DC44:  PUSH.W          {R11}
43DC48:  SUB             SP, SP, #0x18
43DC4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x43DC52)
43DC4C:  LDR             R1, =(_ZN6CRadar13airstrip_blipE_ptr - 0x43DC58)
43DC4E:  ADD             R0, PC; __stack_chk_guard_ptr
43DC50:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x43DC5A)
43DC52:  LDR             R3, =(_ZN6CRadar17airstrip_locationE_ptr - 0x43DC5E)
43DC54:  ADD             R1, PC; _ZN6CRadar13airstrip_blipE_ptr
43DC56:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
43DC58:  LDR             R0, [R0]; __stack_chk_guard
43DC5A:  ADD             R3, PC; _ZN6CRadar17airstrip_locationE_ptr
43DC5C:  LDR             R1, [R1]; CRadar::airstrip_blip ...
43DC5E:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
43DC60:  LDR             R3, [R3]; CRadar::airstrip_location ...
43DC62:  LDR             R6, [R0]
43DC64:  MOVS            R0, #0
43DC66:  STR             R0, [R1]; CRadar::airstrip_blip
43DC68:  ADD.W           R1, R2, #0x14
43DC6C:  STRB            R0, [R3]; CRadar::airstrip_location
43DC6E:  MOVS            R2, #0xFA
43DC70:  STR             R6, [SP,#0x28+var_14]
43DC72:  MOVS            R3, #1
43DC74:  MOV.W           R6, #0x3F800000
43DC78:  STRH            R3, [R1,#8]
43DC7A:  SUBS            R2, #1
43DC7C:  STR             R6, [R1,#4]
43DC7E:  LDRH.W          R5, [R1,#0x11]
43DC82:  STR             R0, [R1,#0xC]
43DC84:  AND.W           R5, R5, #0xC000
43DC88:  STRB            R0, [R1,#0x10]
43DC8A:  STRH            R3, [R1]
43DC8C:  ORR.W           R5, R5, #1
43DC90:  STRH.W          R5, [R1,#0x11]
43DC94:  ADD.W           R1, R1, #0x28 ; '('
43DC98:  BNE             loc_43DC78
43DC9A:  LDR             R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x43DCA6)
43DC9C:  MOVS            R1, #0
43DC9E:  LDR             R5, =(aRadar02d - 0x43DCAC); "radar%02d"
43DCA0:  ADD             R6, SP, #0x28+var_24
43DCA2:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
43DCA4:  MOVT            R1, #0x43AF
43DCA8:  ADD             R5, PC; "radar%02d"
43DCAA:  MOVS            R4, #0
43DCAC:  LDR             R0, [R0]; CRadar::m_radarRange ...
43DCAE:  STR             R1, [R0]; CRadar::m_radarRange
43DCB0:  MOV             R0, R6
43DCB2:  MOV             R1, R5
43DCB4:  MOV             R2, R4
43DCB6:  BL              sub_5E6BC0
43DCBA:  ADDS            R4, #1
43DCBC:  CMP             R4, #0x90
43DCBE:  BNE             loc_43DCB0
43DCC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x43DCC8)
43DCC2:  LDR             R1, [SP,#0x28+var_14]
43DCC4:  ADD             R0, PC; __stack_chk_guard_ptr
43DCC6:  LDR             R0, [R0]; __stack_chk_guard
43DCC8:  LDR             R0, [R0]
43DCCA:  SUBS            R0, R0, R1
43DCCC:  ITTT EQ
43DCCE:  ADDEQ           SP, SP, #0x18
43DCD0:  POPEQ.W         {R11}
43DCD4:  POPEQ           {R4-R7,PC}
43DCD6:  BLX             __stack_chk_fail
