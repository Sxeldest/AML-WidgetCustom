; =========================================================
; Game Engine Function: sub_1514AC
; Address            : 0x1514AC - 0x1514BE
; =========================================================

1514AC:  LDR             R2, =(_ZTSZN12AudioChannel9AddEffectENSt6__ndk110unique_ptrI11AudioEffectNS0_14default_deleteIS2_EEEEE3$_0 - 0x1514B6); type descriptor name
1514AE:  LDR             R3, [R1,#4]
1514B0:  MOVS            R1, #0
1514B2:  ADD             R2, PC; type descriptor name
1514B4:  CMP             R3, R2
1514B6:  IT EQ
1514B8:  ADDEQ           R1, R0, #4
1514BA:  MOV             R0, R1
1514BC:  BX              LR
