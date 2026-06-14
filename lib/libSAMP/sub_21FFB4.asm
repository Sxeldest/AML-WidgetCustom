; =========================================================
; Game Engine Function: sub_21FFB4
; Address            : 0x21FFB4 - 0x2200DE
; =========================================================

21FFB4:  PUSH            {R4-R7,LR}
21FFB6:  ADD             R7, SP, #0xC
21FFB8:  PUSH.W          {R1-R11}
21FFBC:  MOV             R6, R0
21FFBE:  LDR             R0, =(__stack_chk_guard_ptr - 0x21FFC6)
21FFC0:  MOV             R4, R2
21FFC2:  ADD             R0, PC; __stack_chk_guard_ptr
21FFC4:  LDR             R0, [R0]; __stack_chk_guard
21FFC6:  LDR             R0, [R0]
21FFC8:  STR             R0, [SP,#0x38+var_20]
21FFCA:  LDR             R2, =(unk_384170 - 0x21FFD2)
21FFCC:  LDR             R0, [R7,#arg_0]
21FFCE:  ADD             R2, PC; unk_384170
21FFD0:  CMP             R0, #0
21FFD2:  IT NE
21FFD4:  MOVNE           R2, R0
21FFD6:  LDR             R0, [R2]
21FFD8:  CBZ             R0, loc_21FFE6
21FFDA:  MOV             R0, R2
21FFDC:  BL              sub_21FF78
21FFE0:  MOV.W           R5, #0xFFFFFFFF
21FFE4:  B               loc_22007A
21FFE6:  MOV             R9, R1
21FFE8:  CMP             R6, #0
21FFEA:  STR             R2, [SP,#0x38+var_28]
21FFEC:  BEQ             loc_220096
21FFEE:  MOV.W           R8, #0
21FFF2:  MOV.W           R10, #0
21FFF6:  MOVS            R5, #0
21FFF8:  STR.W           R9, [SP,#0x38+var_2C]
21FFFC:  STRD.W          R6, R3, [SP,#0x38+var_34]
220000:  B               loc_220068
220002:  LDR.W           R0, [R9]
220006:  LDR.W           R1, [R0,R8]
22000A:  CMP             R1, #0x7F
22000C:  BHI             loc_22001A
22000E:  CMP             R1, #0
220010:  STRB            R1, [R6,R5]
220012:  BEQ             loc_2200CA
220014:  MOV.W           R11, #1
220018:  B               loc_22005E
22001A:  SUB.W           R9, R3, R5
22001E:  CMP.W           R9, #4
220022:  BCC             loc_22003C
220024:  LDR             R2, [SP,#0x38+var_28]
220026:  ADDS            R0, R6, R5
220028:  BL              sub_21FFA0
22002C:  LDR             R6, [SP,#0x38+var_34]
22002E:  MOV             R11, R0
220030:  LDR             R2, [SP,#0x38+var_28]
220032:  ADDS            R0, #1
220034:  LDRD.W          R3, R9, [SP,#0x38+var_30]
220038:  BNE             loc_22005E
22003A:  B               loc_2200CE
22003C:  ADD             R0, SP, #0x38+src
22003E:  BL              sub_21FFA0
220042:  MOV             R11, R0
220044:  ADDS            R0, #1
220046:  BEQ             loc_2200D4
220048:  CMP             R11, R9
22004A:  BHI             loc_2200D8
22004C:  LDR             R6, [SP,#0x38+var_34]
22004E:  ADD             R1, SP, #0x38+src; src
220050:  MOV             R2, R11; n
220052:  ADDS            R0, R6, R5; dest
220054:  BLX             j_memcpy
220058:  LDR             R2, [SP,#0x38+var_28]
22005A:  LDRD.W          R3, R9, [SP,#0x38+var_30]
22005E:  ADD             R5, R11
220060:  ADD.W           R8, R8, #4
220064:  ADD.W           R10, R10, #1
220068:  CMP             R10, R4
22006A:  IT CC
22006C:  CMPCC           R5, R3
22006E:  BCC             loc_220002
220070:  LDR.W           R0, [R9]
220074:  ADD             R0, R8
220076:  STR.W           R0, [R9]
22007A:  LDR             R0, [SP,#0x38+var_20]
22007C:  LDR             R1, =(__stack_chk_guard_ptr - 0x220082)
22007E:  ADD             R1, PC; __stack_chk_guard_ptr
220080:  LDR             R1, [R1]; __stack_chk_guard
220082:  LDR             R1, [R1]
220084:  CMP             R1, R0
220086:  ITTTT EQ
220088:  MOVEQ           R0, R5
22008A:  ADDEQ           SP, SP, #0x1C
22008C:  POPEQ.W         {R8-R11}
220090:  POPEQ           {R4-R7,PC}
220092:  BLX             __stack_chk_fail
220096:  ADD.W           R8, SP, #0x38+src
22009A:  MOVS            R6, #0
22009C:  MOVS            R5, #0
22009E:  CMP             R4, R6
2200A0:  BEQ             loc_22007A
2200A2:  LDR.W           R0, [R9]
2200A6:  LDR.W           R1, [R0,R6,LSL#2]
2200AA:  CMP             R1, #0x7F
2200AC:  BHI             loc_2200B6
2200AE:  CMP             R1, #0
2200B0:  BEQ             loc_22007A
2200B2:  MOVS            R0, #1
2200B4:  B               loc_2200C4
2200B6:  LDR             R2, [SP,#0x38+var_28]
2200B8:  MOV             R0, R8
2200BA:  BL              sub_21FFA0
2200BE:  ADDS            R1, R0, #1
2200C0:  BEQ.W           loc_21FFE0
2200C4:  ADD             R5, R0
2200C6:  ADDS            R6, #1
2200C8:  B               loc_22009E
2200CA:  MOVS            R0, #0
2200CC:  B               loc_220076
2200CE:  MOV.W           R5, #0xFFFFFFFF
2200D2:  B               loc_220070
2200D4:  MOV.W           R5, #0xFFFFFFFF
2200D8:  LDR.W           R9, [SP,#0x38+var_2C]
2200DC:  B               loc_220070
