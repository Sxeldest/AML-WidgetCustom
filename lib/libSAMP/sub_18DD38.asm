; =========================================================
; Game Engine Function: sub_18DD38
; Address            : 0x18DD38 - 0x18DDFC
; =========================================================

18DD38:  PUSH            {R4-R7,LR}
18DD3A:  ADD             R7, SP, #0xC
18DD3C:  PUSH.W          {R8-R10}
18DD40:  SUB             SP, SP, #0x20
18DD42:  CMP             R0, #0
18DD44:  BEQ             loc_18DDE4
18DD46:  MOV             R8, R1
18DD48:  CMP             R1, #1
18DD4A:  BHI             loc_18DDEA
18DD4C:  SUB.W           R1, R2, #0x10
18DD50:  MOV             R6, R2
18DD52:  MOV             R9, R0
18DD54:  STRB.W          R8, [R0]
18DD58:  MOV             R0, #0xFFFFFFFE
18DD5C:  CMP             R1, #0x10
18DD5E:  BHI             loc_18DDF4
18DD60:  MOVS            R2, #1
18DD62:  LSL.W           R1, R2, R1
18DD66:  MOV             R2, #0x10101
18DD6E:  TST             R1, R2
18DD70:  BEQ             loc_18DDF4
18DD72:  LSLS            R0, R6, #3
18DD74:  STR.W           R0, [R9,#4]
18DD78:  CBZ             R3, loc_18DDF0
18DD7A:  ADD.W           R0, R9, #8; dest
18DD7E:  MOV             R1, R3; src
18DD80:  MOV             R2, R6; n
18DD82:  BLX             strncpy
18DD86:  LDR             R2, =(dword_382770 - 0x18DD92)
18DD88:  MOVS            R1, #6
18DD8A:  ADD.W           R1, R1, R6,LSR#2
18DD8E:  ADD             R2, PC; dword_382770
18DD90:  STR             R1, [R2]
18DD92:  MOV             R10, R2
18DD94:  MOVS            R1, #0
18DD96:  MOV             R2, SP
18DD98:  BIC.W           R4, R1, #3
18DD9C:  LDRB            R3, [R0,R1]
18DD9E:  AND.W           R5, R1, #3
18DDA2:  ADD             R4, R2
18DDA4:  ADDS            R1, #1
18DDA6:  CMP             R6, R1
18DDA8:  STRB            R3, [R4,R5]
18DDAA:  BNE             loc_18DD98
18DDAC:  ADD.W           R2, R9, #0x30 ; '0'
18DDB0:  MOV             R0, SP; src
18DDB2:  BL              sub_18D45C
18DDB6:  MOVS            R0, #1
18DDB8:  CMP.W           R8, #1
18DDBC:  BNE             loc_18DDF4
18DDBE:  LDR.W           R1, [R10]
18DDC2:  CMP             R1, #2
18DDC4:  BLT             loc_18DDF4
18DDC6:  ADD.W           R4, R9, #0x40 ; '@'
18DDCA:  MOVS            R6, #1
18DDCC:  MOV             R0, R4
18DDCE:  MOVS            R1, #4
18DDD0:  BL              sub_18D3F0
18DDD4:  LDR.W           R0, [R10]
18DDD8:  ADDS            R6, #1
18DDDA:  ADDS            R4, #0x10
18DDDC:  CMP             R6, R0
18DDDE:  BLT             loc_18DDCC
18DDE0:  MOVS            R0, #1
18DDE2:  B               loc_18DDF4
18DDE4:  MOV             R0, #0xFFFFFFFD
18DDE8:  B               loc_18DDF4
18DDEA:  MOV.W           R0, #0xFFFFFFFF
18DDEE:  B               loc_18DDF4
18DDF0:  MOV             R0, #0xFFFFFFFE
18DDF4:  ADD             SP, SP, #0x20 ; ' '
18DDF6:  POP.W           {R8-R10}
18DDFA:  POP             {R4-R7,PC}
