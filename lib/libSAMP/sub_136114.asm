; =========================================================
; Game Engine Function: sub_136114
; Address            : 0x136114 - 0x136126
; =========================================================

136114:  LDR             R2, =(_ZTSZN13ControlLayout11ValueEditorC1ERKNSt6__ndk112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERK7ImColorE3$_6 - 0x13611E); type descriptor name
136116:  LDR             R3, [R1,#4]
136118:  MOVS            R1, #0
13611A:  ADD             R2, PC; type descriptor name
13611C:  CMP             R3, R2
13611E:  IT EQ
136120:  ADDEQ           R1, R0, #4
136122:  MOV             R0, R1
136124:  BX              LR
