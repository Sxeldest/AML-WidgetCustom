; =========================================================
; Game Engine Function: sub_115A4C
; Address            : 0x115A4C - 0x115A5E
; =========================================================

115A4C:  LDR             R2, =(_ZTSZN10radar_rectC1EvE3$_4 - 0x115A56); type descriptor name
115A4E:  LDR             R3, [R1,#4]
115A50:  MOVS            R1, #0
115A52:  ADD             R2, PC; type descriptor name
115A54:  CMP             R3, R2
115A56:  IT EQ
115A58:  ADDEQ           R1, R0, #4
115A5A:  MOV             R0, R1
115A5C:  BX              LR
