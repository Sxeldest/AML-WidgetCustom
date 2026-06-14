; =========================================================
; Game Engine Function: sub_21AE78
; Address            : 0x21AE78 - 0x21AF88
; =========================================================

21AE78:  LDR             R1, [R1]
21AE7A:  LDR             R2, [R0]
21AE7C:  LDR             R0, [R1,#8]
21AE7E:  LDR             R1, [R2,#8]
21AE80:  CMP             R1, R0
21AE82:  ITT EQ
21AE84:  MOVEQ           R0, #0
21AE86:  BXEQ            LR
21AE88:  PUSH            {R4-R7,LR}
21AE8A:  ADD             R7, SP, #0x14+var_8
21AE8C:  PUSH.W          {R8-R10}
21AE90:  CBZ             R1, loc_21AEC2
21AE92:  LDR.W           R8, [R1]
21AE96:  CMP.W           R8, #0
21AE9A:  BEQ             loc_21AED2
21AE9C:  LDR.W           R12, [R8]
21AEA0:  MOV.W           R3, #0xF00
21AEA4:  LDRB.W          R2, [R12,#0x22]
21AEA8:  AND.W           R2, R3, R2,LSL#8
21AEAC:  CMP.W           R2, #0x100
21AEB0:  BEQ             loc_21AEBE
21AEB2:  CMP.W           R2, #0x500
21AEB6:  IT NE
21AEB8:  CMPNE.W         R2, #0x300
21AEBC:  BNE             loc_21AEDA
21AEBE:  MOVS            R3, #0x10
21AEC0:  B               loc_21AEDC
21AEC2:  MOV.W           R12, #0
21AEC6:  MOV.W           LR, #0
21AECA:  MOV.W           R8, #0
21AECE:  MOVS            R3, #0
21AED0:  B               loc_21AEE8
21AED2:  MOV.W           R12, #0
21AED6:  MOV.W           R8, #0
21AEDA:  MOVS            R3, #0
21AEDC:  LDRB            R2, [R1,#7]
21AEDE:  LDR.W           LR, [R1,#8]
21AEE2:  CMP             R2, #0xFF
21AEE4:  IT NE
21AEE6:  MOVNE           R3, #0x10
21AEE8:  MOVS            R4, #0
21AEEA:  CBZ             R0, loc_21AF1C
21AEEC:  LDR.W           R10, [R0]
21AEF0:  CMP.W           R10, #0
21AEF4:  BEQ             loc_21AF2A
21AEF6:  LDR.W           R9, [R10]
21AEFA:  MOV.W           R6, #0xF00
21AEFE:  LDRB.W          R2, [R9,#0x22]
21AF02:  AND.W           R2, R6, R2,LSL#8
21AF06:  CMP.W           R2, #0x100
21AF0A:  BEQ             loc_21AF18
21AF0C:  CMP.W           R2, #0x500
21AF10:  IT NE
21AF12:  CMPNE.W         R2, #0x300
21AF16:  BNE             loc_21AF32
21AF18:  MOVS            R2, #0x10
21AF1A:  B               loc_21AF34
21AF1C:  MOV.W           R9, #0
21AF20:  MOVS            R6, #0
21AF22:  MOV.W           R10, #0
21AF26:  MOVS            R2, #0
21AF28:  B               loc_21AF3E
21AF2A:  MOV.W           R9, #0
21AF2E:  MOV.W           R10, #0
21AF32:  MOVS            R2, #0
21AF34:  LDRB            R5, [R0,#7]
21AF36:  LDR             R6, [R0,#8]
21AF38:  CMP             R5, #0xFF
21AF3A:  IT NE
21AF3C:  MOVNE           R2, #0x10
21AF3E:  CMP             R1, R0
21AF40:  IT HI
21AF42:  ORRHI.W         R3, R3, #1
21AF46:  CMP             R12, R9
21AF48:  IT HI
21AF4A:  ORRHI.W         R3, R3, #8
21AF4E:  CMP             LR, R6
21AF50:  IT HI
21AF52:  ORRHI.W         R3, R3, #4
21AF56:  CMP             R8, R10
21AF58:  IT HI
21AF5A:  ORRHI.W         R3, R3, #2
21AF5E:  CMP             R1, R0
21AF60:  IT CC
21AF62:  MOVCC           R4, #1
21AF64:  CMP             R12, R9
21AF66:  IT CC
21AF68:  ORRCC.W         R4, R4, #8
21AF6C:  CMP             LR, R6
21AF6E:  ORR.W           R0, R4, R2
21AF72:  IT CC
21AF74:  ORRCC.W         R0, R0, #4
21AF78:  CMP             R8, R10
21AF7A:  IT CC
21AF7C:  ORRCC.W         R0, R0, #2
21AF80:  SUBS            R0, R3, R0
21AF82:  POP.W           {R8-R10}
21AF86:  POP             {R4-R7,PC}
