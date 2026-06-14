; =========================================================
; Game Engine Function: _Z13GxtCharOvrStrPtS_i
; Address            : 0x5A83E8 - 0x5A8412
; =========================================================

5A83E8:  LDRH.W          R12, [R1]
5A83EC:  CMP             R2, #0
5A83EE:  MOV             R3, R0
5A83F0:  IT GT
5A83F2:  ADDGT.W         R3, R3, R2,LSL#1
5A83F6:  CMP.W           R12, #0
5A83FA:  BEQ             loc_5A840C
5A83FC:  ADDS            R1, #2
5A83FE:  STRH.W          R12, [R3],#2
5A8402:  LDRH.W          R12, [R1],#2
5A8406:  CMP.W           R12, #0
5A840A:  BNE             loc_5A83FE
5A840C:  MOVS            R1, #0
5A840E:  STRH            R1, [R3]
5A8410:  BX              LR
