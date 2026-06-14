; =========================================================
; Game Engine Function: sub_73938
; Address            : 0x73938 - 0x7394A
; =========================================================

73938:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_0 - 0x73942); type descriptor name
7393A:  LDR             R3, [R1,#4]
7393C:  MOVS            R1, #0
7393E:  ADD             R2, PC; type descriptor name
73940:  CMP             R3, R2
73942:  IT EQ
73944:  ADDEQ           R1, R0, #4
73946:  MOV             R0, R1
73948:  BX              LR
