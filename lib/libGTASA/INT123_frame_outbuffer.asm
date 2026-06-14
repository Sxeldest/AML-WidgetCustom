; =========================================================
; Game Engine Function: INT123_frame_outbuffer
; Address            : 0x2259AE - 0x225A32
; =========================================================

2259AE:  PUSH            {R4-R7,LR}
2259B0:  ADD             R7, SP, #0xC
2259B2:  PUSH.W          {R8}
2259B6:  MOV             R4, R0
2259B8:  MOVW            R8, #0xB2C0
2259BC:  LDR.W           R0, [R4,R8]
2259C0:  MOVW            R1, #0xB2A0
2259C4:  ADDS            R6, R4, R1
2259C6:  CBZ             R0, loc_2259E2
2259C8:  LDR             R0, [R6]; p
2259CA:  CBZ             R0, loc_2259E6
2259CC:  MOVW            R1, #0xB2AC
2259D0:  ADDS            R5, R4, R1
2259D2:  LDR             R2, [R4,R1]
2259D4:  CMP.W           R2, #0x48000
2259D8:  BNE             loc_2259EE
2259DA:  MOV.W           R0, #0x48000
2259DE:  STR             R0, [R5]
2259E0:  B               loc_225A0A
2259E2:  MOVS            R0, #0
2259E4:  STR             R0, [R6]
2259E6:  MOVW            R0, #0xB2AC
2259EA:  ADDS            R5, R4, R0
2259EC:  B               loc_2259F6
2259EE:  BLX             free
2259F2:  MOVS            R0, #0
2259F4:  STR             R0, [R6]
2259F6:  MOV.W           R0, #0x48000
2259FA:  STR             R0, [R5]
2259FC:  MOV.W           R0, #0x48000; byte_count
225A00:  BLX             malloc
225A04:  CMP             R0, #0
225A06:  STR             R0, [R6]
225A08:  BEQ             loc_225A20
225A0A:  ADD.W           R0, R4, R8
225A0E:  MOVS            R1, #1
225A10:  STR             R1, [R0]
225A12:  MOVW            R1, #0xB2A8
225A16:  MOVS            R0, #0
225A18:  STR             R0, [R4,R1]
225A1A:  POP.W           {R8}
225A1E:  POP             {R4-R7,PC}
225A20:  MOVW            R0, #0xB468
225A24:  MOVS            R1, #7
225A26:  STR             R1, [R4,R0]
225A28:  MOV.W           R0, #0xFFFFFFFF
225A2C:  POP.W           {R8}
225A30:  POP             {R4-R7,PC}
