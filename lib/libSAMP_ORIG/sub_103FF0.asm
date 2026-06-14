; =========================================================
; Game Engine Function: sub_103FF0
; Address            : 0x103FF0 - 0x104018
; =========================================================

103FF0:  PUSH            {R4,R5,R7,LR}
103FF2:  ADD             R7, SP, #8
103FF4:  ADD.W           R0, R0, #0x198
103FF8:  MOV             R5, R1
103FFA:  MOVS            R1, #0x10
103FFC:  MOV             R4, R2
103FFE:  BL              sub_FFA98
104002:  LDR             R1, =0x1010116
104004:  STR             R1, [R0,#4]
104006:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13QualifiedNameE - 0x10400E); `vtable for'`anonymous namespace'::itanium_demangle::QualifiedName ...
104008:  LDR             R2, [R5]
10400A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::QualifiedName
10400C:  ADDS            R1, #8
10400E:  STR             R1, [R0]
104010:  LDR             R1, [R4]
104012:  STRD.W          R2, R1, [R0,#8]
104016:  POP             {R4,R5,R7,PC}
