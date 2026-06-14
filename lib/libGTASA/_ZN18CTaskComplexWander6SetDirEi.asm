; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander6SetDirEi
; Address            : 0x520C62 - 0x520C78
; =========================================================

520C62:  LDRB            R2, [R0,#0x10]
520C64:  CMP             R2, R1
520C66:  ITTTT NE
520C68:  LDRBNE.W        R2, [R0,#0x24]
520C6C:  STRBNE          R1, [R0,#0x10]
520C6E:  ORRNE.W         R1, R2, #2
520C72:  STRBNE.W        R1, [R0,#0x24]
520C76:  BX              LR
