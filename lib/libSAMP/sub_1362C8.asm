; =========================================================
; Game Engine Function: sub_1362C8
; Address            : 0x1362C8 - 0x1362DA
; =========================================================

1362C8:  LDR             R2, =(_ZTSZN13ControlLayout11ValueEditorC1ERKNSt6__ndk112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERK7ImColorE3$_7 - 0x1362D2); type descriptor name
1362CA:  LDR             R3, [R1,#4]
1362CC:  MOVS            R1, #0
1362CE:  ADD             R2, PC; type descriptor name
1362D0:  CMP             R3, R2
1362D2:  IT EQ
1362D4:  ADDEQ           R1, R0, #4
1362D6:  MOV             R0, R1
1362D8:  BX              LR
