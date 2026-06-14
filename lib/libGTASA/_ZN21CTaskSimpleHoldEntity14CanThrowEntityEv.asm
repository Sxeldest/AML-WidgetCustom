; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity14CanThrowEntityEv
; Address            : 0x542158 - 0x542170
; =========================================================

542158:  LDR             R1, [R0,#8]
54215A:  CBZ             R1, loc_542168
54215C:  LDRB            R1, [R0,#0x19]
54215E:  CMP             R1, #0x10
542160:  ITT EQ
542162:  LDRBEQ          R0, [R0,#0x18]
542164:  CMPEQ           R0, #6
542166:  BEQ             loc_54216C
542168:  MOVS            R0, #0
54216A:  BX              LR
54216C:  MOVS            R0, #1
54216E:  BX              LR
