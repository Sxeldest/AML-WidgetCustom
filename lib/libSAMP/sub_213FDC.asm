; =========================================================
; Game Engine Function: sub_213FDC
; Address            : 0x213FDC - 0x21406A
; =========================================================

213FDC:  PUSH            {R4-R7,LR}
213FDE:  ADD             R7, SP, #0xC
213FE0:  PUSH.W          {R3-R11}
213FE4:  STR             R2, [SP,#0x30+var_28]
213FE6:  MOV.W           R11, #0
213FEA:  STR             R0, [SP,#0x30+var_2C]
213FEC:  MOV             R10, R3
213FEE:  LDR             R0, =(__stack_chk_guard_ptr - 0x213FF6)
213FF0:  MOV             R4, R1
213FF2:  ADD             R0, PC; __stack_chk_guard_ptr
213FF4:  LDR             R0, [R0]; __stack_chk_guard
213FF6:  LDR             R0, [R0]
213FF8:  STR             R0, [SP,#0x30+var_20]
213FFA:  STR.W           R11, [SP,#0x30+var_24]
213FFE:  LDR             R5, [R1,#8]
214000:  LDRB.W          R8, [R1]
214004:  BLX             __errno
214008:  LDR.W           R9, [R0]
21400C:  MOV             R6, R0
21400E:  STR.W           R11, [R0]
214012:  MOVS.W          R0, R8,LSL#31
214016:  IT EQ
214018:  ADDEQ           R5, R4, #4
21401A:  ADD             R1, SP, #0x30+var_24
21401C:  MOV             R0, R5; s
21401E:  MOV             R2, R10
214020:  BL              sub_220680
214024:  MOV             R4, R0
214026:  LDR             R0, [R6]
214028:  STR.W           R9, [R6]
21402C:  CMP             R0, #0x22 ; '"'
21402E:  ITT EQ
214030:  LDREQ           R0, [SP,#0x30+var_2C]; int
214032:  BLEQ            sub_213F0C
214036:  LDR             R0, [SP,#0x30+var_24]
214038:  CMP             R0, R5
21403A:  ITT EQ
21403C:  LDREQ           R0, [SP,#0x30+var_2C]; int
21403E:  BLEQ            sub_213F5C
214042:  LDR             R1, [SP,#0x30+var_28]
214044:  CBZ             R1, loc_21404E
214046:  LDR             R0, [SP,#0x30+var_24]
214048:  SUBS            R0, R0, R5
21404A:  ASRS            R0, R0, #2
21404C:  STR             R0, [R1]
21404E:  LDR             R0, [SP,#0x30+var_20]
214050:  LDR             R1, =(__stack_chk_guard_ptr - 0x214056)
214052:  ADD             R1, PC; __stack_chk_guard_ptr
214054:  LDR             R1, [R1]; __stack_chk_guard
214056:  LDR             R1, [R1]
214058:  CMP             R1, R0
21405A:  ITTTT EQ
21405C:  MOVEQ           R0, R4
21405E:  ADDEQ           SP, SP, #0x14
214060:  POPEQ.W         {R8-R11}
214064:  POPEQ           {R4-R7,PC}
214066:  BLX             __stack_chk_fail
