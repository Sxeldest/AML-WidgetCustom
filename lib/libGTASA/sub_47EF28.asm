; =========================================================
; Game Engine Function: sub_47EF28
; Address            : 0x47EF28 - 0x47EFBA
; =========================================================

47EF28:  PUSH            {R4-R7,LR}
47EF2A:  ADD             R7, SP, #0xC
47EF2C:  PUSH.W          {R8-R11}
47EF30:  SUB             SP, SP, #4
47EF32:  MOV             R4, R0
47EF34:  LDR             R6, [R4,#0x18]
47EF36:  LDR             R0, [R6,#4]
47EF38:  CBNZ            R0, loc_47EF44
47EF3A:  LDR             R1, [R6,#0xC]
47EF3C:  MOV             R0, R4
47EF3E:  BLX             R1
47EF40:  CBZ             R0, loc_47EFAC
47EF42:  LDR             R0, [R6,#4]
47EF44:  LDR             R5, [R6]
47EF46:  SUBS.W          R10, R0, #1
47EF4A:  LDRB.W          R8, [R5],#1
47EF4E:  BNE             loc_47EF5C
47EF50:  LDR             R1, [R6,#0xC]
47EF52:  MOV             R0, R4
47EF54:  BLX             R1
47EF56:  CBZ             R0, loc_47EFAC
47EF58:  LDRD.W          R5, R10, [R6]
47EF5C:  LDR             R1, [R4]
47EF5E:  MOVS            R3, #0x5B ; '['
47EF60:  LDRB.W          R2, [R5],#1
47EF64:  MOV.W           R0, R8,LSL#8
47EF68:  MOV.W           R9, #1
47EF6C:  STR             R3, [R1,#0x14]
47EF6E:  ORR.W           R11, R0, R2
47EF72:  LDR             R1, [R4]
47EF74:  SUB.W           R8, R11, #2
47EF78:  LDR.W           R3, [R4,#0x17C]
47EF7C:  STR             R3, [R1,#0x18]
47EF7E:  LDR             R1, [R4]
47EF80:  STR.W           R8, [R1,#0x1C]
47EF84:  MOVS            R1, #1
47EF86:  LDR             R0, [R4]
47EF88:  LDR             R2, [R0,#4]
47EF8A:  MOV             R0, R4
47EF8C:  BLX             R2
47EF8E:  SUB.W           R0, R10, #1
47EF92:  CMP.W           R11, #3
47EF96:  STRD.W          R5, R0, [R6]
47EF9A:  BCC             loc_47EFB0
47EF9C:  LDR             R0, [R4,#0x18]
47EF9E:  MOV             R1, R8
47EFA0:  LDR             R2, [R0,#0x10]
47EFA2:  MOV             R0, R4
47EFA4:  BLX             R2
47EFA6:  MOV.W           R9, #1
47EFAA:  B               loc_47EFB0
47EFAC:  MOV.W           R9, #0
47EFB0:  MOV             R0, R9
47EFB2:  ADD             SP, SP, #4
47EFB4:  POP.W           {R8-R11}
47EFB8:  POP             {R4-R7,PC}
