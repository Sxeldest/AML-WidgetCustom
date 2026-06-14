; =========================================================
; Game Engine Function: sub_10420C
; Address            : 0x10420C - 0x104232
; =========================================================

10420C:  PUSH            {R4,R6,R7,LR}
10420E:  ADD             R7, SP, #8
104210:  ADD.W           R0, R0, #0x198
104214:  MOV             R4, R1
104216:  MOVS            R1, #0x10
104218:  BL              sub_FFA98
10421C:  LDRD.W          R1, R2, [R4]
104220:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104228); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104222:  LDR             R3, =0x1010107
104224:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104226:  STRD.W          R1, R2, [R0,#8]
10422A:  ADDS            R4, #8
10422C:  STRD.W          R4, R3, [R0]
104230:  POP             {R4,R6,R7,PC}
