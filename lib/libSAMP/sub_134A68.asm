; =========================================================
; Game Engine Function: sub_134A68
; Address            : 0x134A68 - 0x134A7A
; =========================================================

134A68:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_9 - 0x134A72); type descriptor name
134A6A:  LDR             R3, [R1,#4]
134A6C:  MOVS            R1, #0
134A6E:  ADD             R2, PC; type descriptor name
134A70:  CMP             R3, R2
134A72:  IT EQ
134A74:  ADDEQ           R1, R0, #4
134A76:  MOV             R0, R1
134A78:  BX              LR
