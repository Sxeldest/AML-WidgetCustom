; =========================================================
; Game Engine Function: mpg123_getvolume
; Address            : 0x226C60 - 0x226CDC
; =========================================================

226C60:  CMP             R0, #0
226C62:  ITT EQ
226C64:  MOVEQ.W         R0, #0xFFFFFFFF
226C68:  BXEQ            LR
226C6A:  CMP             R1, #0
226C6C:  ITTTT NE
226C6E:  MOVWNE          R12, #0xB450
226C72:  ADDNE           R12, R0
226C74:  VLDRNE          D16, [R12]
226C78:  VSTRNE          D16, [R1]
226C7C:  CMP             R2, #0
226C7E:  ITTTT NE
226C80:  MOVWNE          R1, #0x9348
226C84:  ADDNE           R1, R0
226C86:  VLDRNE          D16, [R1]
226C8A:  VSTRNE          D16, [R2]
226C8E:  MOVW            R1, #0xB348
226C92:  VMOV.I32        D16, #0
226C96:  LDR             R1, [R0,R1]
226C98:  CBZ             R1, loc_226CCE
226C9A:  CMP             R1, #2
226C9C:  BNE             loc_226CB0
226C9E:  MOVW            R1, #0x9354
226CA2:  LDR             R1, [R0,R1]
226CA4:  ADDS            R1, #1
226CA6:  MOV.W           R1, #0
226CAA:  IT NE
226CAC:  MOVNE           R1, #1
226CAE:  B               loc_226CB2
226CB0:  MOVS            R1, #0
226CB2:  ADD.W           R0, R0, R1,LSL#2
226CB6:  MOVW            R1, #0x9350
226CBA:  LDR             R1, [R0,R1]
226CBC:  ADDS            R1, #1
226CBE:  BEQ             loc_226CCE
226CC0:  MOVW            R1, #0x9358
226CC4:  ADD             R0, R1
226CC6:  VLDR            S0, [R0]
226CCA:  VCVT.F64.F32    D16, S0
226CCE:  CMP             R3, #0
226CD0:  MOV.W           R0, #0
226CD4:  IT NE
226CD6:  VSTRNE          D16, [R3]
226CDA:  BX              LR
