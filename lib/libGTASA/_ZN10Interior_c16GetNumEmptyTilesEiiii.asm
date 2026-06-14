; =========================================================
; Game Engine Function: _ZN10Interior_c16GetNumEmptyTilesEiiii
; Address            : 0x4479D6 - 0x447A9E
; =========================================================

4479D6:  PUSH            {R4-R7,LR}
4479D8:  ADD             R7, SP, #0xC
4479DA:  PUSH.W          {R8-R11}
4479DE:  LDR.W           R11, [R0,#0x14]
4479E2:  MOV.W           LR, #1
4479E6:  CMP             R3, #0
4479E8:  LDR.W           R12, [R7,#arg_0]
4479EC:  IT EQ
4479EE:  MOVEQ.W         LR, #0xFFFFFFFF
4479F2:  CMP             R3, #3
4479F4:  LDRB.W          R10, [R11,#2]
4479F8:  ORR.W           R3, R3, #2
4479FC:  IT EQ
4479FE:  MOVEQ.W         LR, #0xFFFFFFFF
447A02:  CMP             R3, #3
447A04:  BNE             loc_447A52
447A06:  RSB.W           R3, R1, R1,LSL#4
447A0A:  ADD.W           R0, R0, R3,LSL#1
447A0E:  ADD.W           R9, R0, #0x68 ; 'h'
447A12:  RSB.W           R0, LR, LR,LSL#4
447A16:  MOV.W           R8, R0,LSL#1
447A1A:  MOVS            R0, #0
447A1C:  CMP.W           R12, #1
447A20:  BGE             loc_447A2E
447A22:  ADD             R9, R8
447A24:  ADD             R1, LR
447A26:  ADDS            R0, #1
447A28:  CMP.W           R12, #1
447A2C:  BLT             loc_447A22
447A2E:  ADD.W           R6, R9, R2
447A32:  MOVS            R3, #0
447A34:  CMP             R1, R10
447A36:  BGE             loc_447A98
447A38:  CMP             R1, #0
447A3A:  BLT             loc_447A98
447A3C:  LDRB.W          R4, [R11,#3]
447A40:  ADDS            R5, R2, R3
447A42:  CMP             R5, R4
447A44:  BCS             loc_447A98
447A46:  LDRB            R4, [R6,R3]
447A48:  CBNZ            R4, loc_447A98
447A4A:  ADDS            R3, #1
447A4C:  CMP             R3, R12
447A4E:  BLT             loc_447A34
447A50:  B               loc_447A22
447A52:  RSB.W           R3, R1, R1,LSL#4
447A56:  ADD.W           R3, R2, R3,LSL#1
447A5A:  ADD             R0, R3
447A5C:  ADD.W           R8, R0, #0x68 ; 'h'
447A60:  MOVS            R0, #0
447A62:  CMP.W           R12, #1
447A66:  BGE             loc_447A74
447A68:  ADD             R8, LR
447A6A:  ADD             R2, LR
447A6C:  ADDS            R0, #1
447A6E:  CMP.W           R12, #1
447A72:  BLT             loc_447A68
447A74:  MOVS            R6, #0
447A76:  MOV             R3, R8
447A78:  ADDS            R5, R1, R6
447A7A:  CMP             R5, R10
447A7C:  BGE             loc_447A98
447A7E:  CMP             R5, #0
447A80:  BLT             loc_447A98
447A82:  LDRB.W          R4, [R11,#3]
447A86:  CMP             R2, R4
447A88:  BCS             loc_447A98
447A8A:  LDRB            R4, [R3]
447A8C:  CBNZ            R4, loc_447A98
447A8E:  ADDS            R6, #1
447A90:  ADDS            R3, #0x1E
447A92:  CMP             R6, R12
447A94:  BLT             loc_447A78
447A96:  B               loc_447A68
447A98:  POP.W           {R8-R11}
447A9C:  POP             {R4-R7,PC}
