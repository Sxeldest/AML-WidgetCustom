; =========================================================
; Game Engine Function: _ZN4CCam22Process_DW_DogFightCamEb
; Address            : 0x3CFB88 - 0x3CFB98
; =========================================================

3CFB88:  LDR             R0, =(TheCamera_ptr - 0x3CFB90)
3CFB8A:  MOVS            R1, #0
3CFB8C:  ADD             R0, PC; TheCamera_ptr
3CFB8E:  LDR             R0, [R0]; TheCamera
3CFB90:  STRB.W          R1, [R0,#(byte_951FD7 - 0x951FA8)]
3CFB94:  MOVS            R0, #0
3CFB96:  BX              LR
