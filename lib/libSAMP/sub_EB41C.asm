; =========================================================
; Game Engine Function: sub_EB41C
; Address            : 0xEB41C - 0xEB4C6
; =========================================================

EB41C:  PUSH            {R4-R7,LR}
EB41E:  ADD             R7, SP, #0xC
EB420:  PUSH.W          {R8}
EB424:  SUB             SP, SP, #0x20
EB426:  MOV             R4, R0
EB428:  LDRD.W          R2, R0, [R0,#4]
EB42C:  CMP             R2, R0
EB42E:  BEQ             loc_EB44E
EB430:  LDR.W           R0, [R0,#-4]
EB434:  LDRB            R2, [R0]
EB436:  CMP             R2, #2
EB438:  BNE             loc_EB488
EB43A:  LDR             R0, [R0,#8]
EB43C:  BL              sub_EB59C
EB440:  LDR             R0, [R4,#8]
EB442:  LDR.W           R0, [R0,#-4]
EB446:  LDR             R0, [R0,#8]
EB448:  LDR             R0, [R0,#4]
EB44A:  SUBS            R0, #0x10
EB44C:  B               loc_EB4BE
EB44E:  LDRB            R1, [R1]
EB450:  ADD.W           R8, SP, #0x30+var_20
EB454:  ADD.W           R0, R8, #8
EB458:  STRB.W          R1, [SP,#0x30+var_20]
EB45C:  BL              sub_E5EF8
EB460:  LDR             R0, [R4]
EB462:  LDRB.W          R1, [SP,#0x30+var_20]
EB466:  LDRD.W          R3, R5, [R0,#8]
EB46A:  LDRB            R2, [R0]
EB46C:  STRB            R1, [R0]
EB46E:  LDRD.W          R1, R6, [SP,#0x30+var_18]
EB472:  STRD.W          R1, R6, [R0,#8]
EB476:  MOV             R0, R8
EB478:  STRB.W          R2, [SP,#0x30+var_20]
EB47C:  STRD.W          R3, R5, [SP,#0x30+var_18]
EB480:  BL              sub_E3F7A
EB484:  LDR             R0, [R4]
EB486:  B               loc_EB4BE
EB488:  LDRB            R1, [R1]
EB48A:  MOV             R8, SP
EB48C:  ADD.W           R0, R8, #8
EB490:  STRB.W          R1, [SP,#0x30+var_30]
EB494:  BL              sub_E5EF8
EB498:  LDR             R0, [R4,#0x10]
EB49A:  LDRB.W          R1, [SP,#0x30+var_30]
EB49E:  LDRD.W          R3, R6, [R0,#8]
EB4A2:  LDRB            R2, [R0]
EB4A4:  STRB            R1, [R0]
EB4A6:  LDRD.W          R1, R5, [SP,#0x30+var_28]
EB4AA:  STRD.W          R1, R5, [R0,#8]
EB4AE:  MOV             R0, R8
EB4B0:  STRB.W          R2, [SP,#0x30+var_30]
EB4B4:  STRD.W          R3, R6, [SP,#0x30+var_28]
EB4B8:  BL              sub_E3F7A
EB4BC:  LDR             R0, [R4,#0x10]
EB4BE:  ADD             SP, SP, #0x20 ; ' '
EB4C0:  POP.W           {R8}
EB4C4:  POP             {R4-R7,PC}
