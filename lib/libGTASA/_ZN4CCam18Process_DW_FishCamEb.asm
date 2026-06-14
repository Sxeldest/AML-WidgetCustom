; =========================================================
; Game Engine Function: _ZN4CCam18Process_DW_FishCamEb
; Address            : 0x3CFB9C - 0x3CFBAC
; =========================================================

3CFB9C:  LDR             R0, =(TheCamera_ptr - 0x3CFBA4)
3CFB9E:  MOVS            R1, #0
3CFBA0:  ADD             R0, PC; TheCamera_ptr
3CFBA2:  LDR             R0, [R0]; TheCamera
3CFBA4:  STRB.W          R1, [R0,#(byte_951FD7 - 0x951FA8)]
3CFBA8:  MOVS            R0, #0
3CFBAA:  BX              LR
