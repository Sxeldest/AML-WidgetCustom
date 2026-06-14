; =========================================================
; Game Engine Function: sub_151590
; Address            : 0x151590 - 0x1515A2
; =========================================================

151590:  LDR             R2, =(_ZTSZN12AudioChannel12ClearEffectsEvE3$_1 - 0x15159A); type descriptor name
151592:  LDR             R3, [R1,#4]
151594:  MOVS            R1, #0
151596:  ADD             R2, PC; type descriptor name
151598:  CMP             R3, R2
15159A:  IT EQ
15159C:  ADDEQ           R1, R0, #4
15159E:  MOV             R0, R1
1515A0:  BX              LR
