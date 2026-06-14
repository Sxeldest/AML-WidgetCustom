; =========================================================
; Game Engine Function: sub_115668
; Address            : 0x115668 - 0x11567A
; =========================================================

115668:  LDR             R2, =(_ZTSZN10radar_rectC1EvE3$_1 - 0x115672); type descriptor name
11566A:  LDR             R3, [R1,#4]
11566C:  MOVS            R1, #0
11566E:  ADD             R2, PC; type descriptor name
115670:  CMP             R3, R2
115672:  IT EQ
115674:  ADDEQ           R1, R0, #4
115676:  MOV             R0, R1
115678:  BX              LR
