; =========================================================
; Game Engine Function: mpg123_fmt_all
; Address            : 0x2249DC - 0x224A42
; =========================================================

2249DC:  PUSH            {R4,R6,R7,LR}
2249DE:  ADD             R7, SP, #8
2249E0:  MOV             R4, R0
2249E2:  CBZ             R4, loc_224A2A
2249E4:  LDRB            R0, [R4,#4]
2249E6:  LSLS            R0, R0, #0x1A
2249E8:  BMI             loc_2249F0
2249EA:  LDR             R0, [R4]
2249EC:  CMP             R0, #3
2249EE:  BGE             loc_224A2E
2249F0:  MOVW            R0, #0x101
2249F4:  MOVS            R1, #0
2249F6:  MOV.W           R2, #0x1010101
2249FA:  MOVT            R0, #0x100
2249FE:  ADDS            R3, R4, R1
224A00:  ADDS            R1, #0xC
224A02:  CMP             R1, #0x78 ; 'x'
224A04:  STR             R2, [R3,#0x20]
224A06:  STR             R0, [R3,#0x24]
224A08:  STR             R2, [R3,#0x28]
224A0A:  BNE             loc_2249FE
224A0C:  MOVS            R1, #0
224A0E:  MOV.W           R2, #0x1010101
224A12:  ADDS            R3, R4, R1
224A14:  ADDS            R1, #0xC
224A16:  CMP             R1, #0x78 ; 'x'
224A18:  STR.W           R2, [R3,#0x98]
224A1C:  STR.W           R0, [R3,#0x9C]
224A20:  STR.W           R2, [R3,#0xA0]
224A24:  BNE             loc_224A12
224A26:  MOVS            R0, #0
224A28:  POP             {R4,R6,R7,PC}
224A2A:  MOVS            R0, #0x19
224A2C:  POP             {R4,R6,R7,PC}
224A2E:  LDR             R0, =(off_677664 - 0x224A38)
224A30:  MOVS            R1, #0x1C; size
224A32:  MOVS            R2, #1; n
224A34:  ADD             R0, PC; off_677664
224A36:  LDR             R0, [R0]
224A38:  LDR             R3, [R0]; s
224A3A:  ADR             R0, aNoteEnablingAl; "Note: Enabling all formats.\n"
224A3C:  BLX             fwrite
224A40:  B               loc_2249F0
