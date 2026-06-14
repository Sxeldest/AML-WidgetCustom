; =========================================================
; Game Engine Function: sub_4811D0
; Address            : 0x4811D0 - 0x481228
; =========================================================

4811D0:  PUSH            {R4-R7,LR}
4811D2:  ADD             R7, SP, #0xC
4811D4:  PUSH.W          {R8-R11}
4811D8:  SUB             SP, SP, #4
4811DA:  MOV             R4, R0
4811DC:  LDRD.W          R11, R10, [R7,#arg_0]
4811E0:  LDR             R5, [R4,#4]
4811E2:  MOV             R6, R1
4811E4:  MOV             R9, R3
4811E6:  MOV             R8, R2
4811E8:  CMP             R6, #1
4811EA:  BEQ             loc_4811FE
4811EC:  LDR             R0, [R4]
4811EE:  MOVS            R1, #0xE
4811F0:  STR             R1, [R0,#0x14]
4811F2:  LDR             R0, [R4]
4811F4:  STR             R6, [R0,#0x18]
4811F6:  LDR             R0, [R4]
4811F8:  LDR             R1, [R0]
4811FA:  MOV             R0, R4
4811FC:  BLX             R1
4811FE:  MOV             R0, R4; int
481200:  MOV             R1, R6
481202:  MOVS            R2, #0x78 ; 'x'
481204:  BL              sub_480EA8
481208:  MOVS            R1, #0
48120A:  STRD.W          R1, R11, [R0]
48120E:  STRD.W          R9, R10, [R0,#8]
481212:  STRB.W          R8, [R0,#0x20]
481216:  STRB.W          R1, [R0,#0x22]
48121A:  LDR             R1, [R5,#0x44]
48121C:  STR             R1, [R0,#0x24]
48121E:  STR             R0, [R5,#0x44]
481220:  ADD             SP, SP, #4
481222:  POP.W           {R8-R11}
481226:  POP             {R4-R7,PC}
