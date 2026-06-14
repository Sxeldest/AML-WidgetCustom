; =========================================================
; Game Engine Function: sub_6F00E
; Address            : 0x6F00E - 0x6F070
; =========================================================

6F00E:  PUSH            {R4-R7,LR}
6F010:  ADD             R7, SP, #0xC
6F012:  PUSH.W          {R8}
6F016:  MOV             R5, R0
6F018:  LDRD.W          R1, R0, [R0,#0xC]
6F01C:  LDRB            R4, [R0]
6F01E:  CMP             R0, R1
6F020:  BCS             loc_6F028
6F022:  ADDS            R0, #1
6F024:  STR             R0, [R5,#0x10]
6F026:  B               loc_6F068
6F028:  LDRB            R0, [R5,#0x1C]
6F02A:  CBNZ            R0, loc_6F068
6F02C:  LDRD.W          R1, R6, [R5,#0x14]
6F030:  MOV.W           R8, #1
6F034:  LDRD.W          R3, R0, [R5]; stream
6F038:  LDR             R2, [R5,#8]; n
6F03A:  ADD             R1, R6
6F03C:  STR             R1, [R5,#0x18]
6F03E:  MOVS            R1, #1; size
6F040:  BLX             fread
6F044:  LDRD.W          R2, R3, [R5,#4]
6F048:  CMP             R0, R3
6F04A:  STR             R0, [R5,#0x14]
6F04C:  ADD.W           R1, R2, R0
6F050:  SUB.W           R6, R1, #1
6F054:  STRD.W          R6, R2, [R5,#0xC]
6F058:  BCS             loc_6F068
6F05A:  MOVS            R0, #0
6F05C:  STRB            R0, [R1]
6F05E:  LDR             R0, [R5,#0xC]
6F060:  STRB.W          R8, [R5,#0x1C]
6F064:  ADDS            R0, #1
6F066:  STR             R0, [R5,#0xC]
6F068:  MOV             R0, R4
6F06A:  POP.W           {R8}
6F06E:  POP             {R4-R7,PC}
