; =========================================================
; Game Engine Function: _Z25emu_TexturingSetTrilinearh
; Address            : 0x1BCB80 - 0x1BCB90
; =========================================================

1BCB80:  LDR             R1, =(emu_TrilinearEnabled_ptr - 0x1BCB8C)
1BCB82:  CMP             R0, #0
1BCB84:  IT NE
1BCB86:  MOVNE           R0, #1
1BCB88:  ADD             R1, PC; emu_TrilinearEnabled_ptr
1BCB8A:  LDR             R1, [R1]; emu_TrilinearEnabled
1BCB8C:  STRB            R0, [R1]
1BCB8E:  BX              LR
