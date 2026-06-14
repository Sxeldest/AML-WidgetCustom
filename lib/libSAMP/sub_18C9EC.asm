; =========================================================
; Game Engine Function: sub_18C9EC
; Address            : 0x18C9EC - 0x18CA7A
; =========================================================

18C9EC:  PUSH            {R4-R7,LR}
18C9EE:  ADD             R7, SP, #0xC
18C9F0:  PUSH.W          {R8-R11}
18C9F4:  SUB             SP, SP, #4
18C9F6:  MOV             R5, R0
18C9F8:  LDR             R0, [R0,#0x18]
18C9FA:  MOV             R8, R1
18C9FC:  LDR             R1, [R5,#0x1C]
18C9FE:  MOV             R9, R2
18CA00:  ADDS.W          R2, R0, R2,LSL#3
18CA04:  UBFX.W          R11, R0, #3, #6
18CA08:  MOV.W           R3, R9,LSR#29
18CA0C:  ADCS            R1, R3
18CA0E:  ADD.W           R0, R11, R9
18CA12:  CMP             R0, #0x40 ; '@'
18CA14:  STRD.W          R2, R1, [R5,#0x18]
18CA18:  BCC             loc_18CA56
18CA1A:  ADD.W           R10, R5, #0x20 ; ' '
18CA1E:  RSB.W           R6, R11, #0x40 ; '@'
18CA22:  ADD.W           R0, R10, R11; dest
18CA26:  MOV             R1, R8; src
18CA28:  MOV             R2, R6; n
18CA2A:  BLX             j_memcpy
18CA2E:  ADDS            R4, R5, #4
18CA30:  MOV             R0, R5; int
18CA32:  MOV             R2, R10; src
18CA34:  MOV             R1, R4; int
18CA36:  BL              sub_18BAC8
18CA3A:  EOR.W           R0, R11, #0x7F
18CA3E:  CMP             R0, R9
18CA40:  BCS             loc_18CA5A
18CA42:  ADD.W           R2, R8, R6; src
18CA46:  MOV             R0, R5; int
18CA48:  MOV             R1, R4; int
18CA4A:  BL              sub_18BAC8
18CA4E:  ADD.W           R0, R6, #0x7F
18CA52:  ADDS            R6, #0x40 ; '@'
18CA54:  B               loc_18CA3E
18CA56:  MOVS            R6, #0
18CA58:  B               loc_18CA5E
18CA5A:  MOV.W           R11, #0
18CA5E:  ADD.W           R0, R5, R11
18CA62:  ADD.W           R1, R8, R6
18CA66:  SUB.W           R2, R9, R6
18CA6A:  ADDS            R0, #0x20 ; ' '
18CA6C:  ADD             SP, SP, #4
18CA6E:  POP.W           {R8-R11}
18CA72:  POP.W           {R4-R7,LR}
18CA76:  B.W             sub_2242EC
