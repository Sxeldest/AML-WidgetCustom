; =========================================================
; Game Engine Function: sub_213E78
; Address            : 0x213E78 - 0x213F02
; =========================================================

213E78:  PUSH            {R4-R7,LR}
213E7A:  ADD             R7, SP, #0xC
213E7C:  PUSH.W          {R3-R11}
213E80:  STR             R2, [SP,#0x30+var_28]
213E82:  MOV.W           R11, #0
213E86:  STR             R0, [SP,#0x30+var_2C]
213E88:  MOV             R10, R3
213E8A:  LDR             R0, =(__stack_chk_guard_ptr - 0x213E92)
213E8C:  MOV             R4, R1
213E8E:  ADD             R0, PC; __stack_chk_guard_ptr
213E90:  LDR             R0, [R0]; __stack_chk_guard
213E92:  LDR             R0, [R0]
213E94:  STR             R0, [SP,#0x30+var_20]
213E96:  STR.W           R11, [SP,#0x30+endptr]
213E9A:  LDR             R5, [R1,#8]
213E9C:  LDRB.W          R8, [R1]
213EA0:  BLX             __errno
213EA4:  LDR.W           R9, [R0]
213EA8:  MOV             R6, R0
213EAA:  STR.W           R11, [R0]
213EAE:  MOVS.W          R0, R8,LSL#31
213EB2:  IT EQ
213EB4:  ADDEQ           R5, R4, #1
213EB6:  ADD             R1, SP, #0x30+endptr; endptr
213EB8:  MOV             R0, R5; nptr
213EBA:  MOV             R2, R10; base
213EBC:  BLX             strtol
213EC0:  MOV             R4, R0
213EC2:  LDR             R0, [R6]
213EC4:  STR.W           R9, [R6]
213EC8:  CMP             R0, #0x22 ; '"'
213ECA:  ITT EQ
213ECC:  LDREQ           R0, [SP,#0x30+var_2C]; int
213ECE:  BLEQ            sub_213F0C
213ED2:  LDR             R6, [SP,#0x30+endptr]
213ED4:  CMP             R6, R5
213ED6:  ITT EQ
213ED8:  LDREQ           R0, [SP,#0x30+var_2C]; int
213EDA:  BLEQ            sub_213F5C
213EDE:  LDR             R1, [SP,#0x30+var_28]
213EE0:  CBZ             R1, loc_213EE6
213EE2:  SUBS            R0, R6, R5
213EE4:  STR             R0, [R1]
213EE6:  LDR             R0, [SP,#0x30+var_20]
213EE8:  LDR             R1, =(__stack_chk_guard_ptr - 0x213EEE)
213EEA:  ADD             R1, PC; __stack_chk_guard_ptr
213EEC:  LDR             R1, [R1]; __stack_chk_guard
213EEE:  LDR             R1, [R1]
213EF0:  CMP             R1, R0
213EF2:  ITTTT EQ
213EF4:  MOVEQ           R0, R4
213EF6:  ADDEQ           SP, SP, #0x14
213EF8:  POPEQ.W         {R8-R11}
213EFC:  POPEQ           {R4-R7,PC}
213EFE:  BLX             __stack_chk_fail
