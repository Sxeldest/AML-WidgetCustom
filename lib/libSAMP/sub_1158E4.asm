; =========================================================
; Game Engine Function: sub_1158E4
; Address            : 0x1158E4 - 0x1158F6
; =========================================================

1158E4:  LDR             R2, =(_ZTSZN10radar_rectC1EvE3$_3 - 0x1158EE); type descriptor name
1158E6:  LDR             R3, [R1,#4]
1158E8:  MOVS            R1, #0
1158EA:  ADD             R2, PC; type descriptor name
1158EC:  CMP             R3, R2
1158EE:  IT EQ
1158F0:  ADDEQ           R1, R0, #4
1158F2:  MOV             R0, R1
1158F4:  BX              LR
