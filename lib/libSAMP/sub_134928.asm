; =========================================================
; Game Engine Function: sub_134928
; Address            : 0x134928 - 0x13493A
; =========================================================

134928:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_7 - 0x134932); type descriptor name
13492A:  LDR             R3, [R1,#4]
13492C:  MOVS            R1, #0
13492E:  ADD             R2, PC; type descriptor name
134930:  CMP             R3, R2
134932:  IT EQ
134934:  ADDEQ           R1, R0, #4
134936:  MOV             R0, R1
134938:  BX              LR
