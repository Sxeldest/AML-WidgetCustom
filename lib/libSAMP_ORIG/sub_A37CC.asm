; =========================================================
; Game Engine Function: sub_A37CC
; Address            : 0xA37CC - 0xA37F2
; =========================================================

A37CC:  LDR             R2, [R0,#0x14]
A37CE:  CMP             R2, R1
A37D0:  ITT LE
A37D2:  LDRLE           R0, [R0,#0x2C]
A37D4:  BXLE            LR
A37D6:  LDR             R2, [R0,#0x1C]
A37D8:  MOVW            R3, #0xFFFF
A37DC:  LDRD.W          R12, R0, [R0,#0x28]
A37E0:  LDRH.W          R1, [R2,R1,LSL#1]
A37E4:  CMP             R1, R3
A37E6:  ADD.W           R2, R1, R1,LSL#2
A37EA:  IT NE
A37EC:  ADDNE.W         R0, R12, R2,LSL#3
A37F0:  BX              LR
