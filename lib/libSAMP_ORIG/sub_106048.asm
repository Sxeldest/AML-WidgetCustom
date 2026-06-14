; =========================================================
; Game Engine Function: sub_106048
; Address            : 0x106048 - 0x10606E
; =========================================================

106048:  PUSH            {R4,R6,R7,LR}
10604A:  ADD             R7, SP, #8
10604C:  ADD.W           R0, R0, #0x198
106050:  MOV             R4, R1
106052:  MOVS            R1, #0x10
106054:  BL              sub_FFA98
106058:  LDRD.W          R1, R2, [R4]
10605C:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x106064); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
10605E:  LDR             R3, =0x1010107
106060:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
106062:  STRD.W          R1, R2, [R0,#8]
106066:  ADDS            R4, #8
106068:  STRD.W          R4, R3, [R0]
10606C:  POP             {R4,R6,R7,PC}
