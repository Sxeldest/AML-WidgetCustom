; =========================================================
; Game Engine Function: sub_106078
; Address            : 0x106078 - 0x1060A0
; =========================================================

106078:  PUSH            {R4,R5,R7,LR}
10607A:  ADD             R7, SP, #8
10607C:  ADD.W           R0, R0, #0x198
106080:  MOV             R5, R1
106082:  MOVS            R1, #0x10
106084:  MOV             R4, R2
106086:  BL              sub_FFA98
10608A:  LDR             R1, =0x1010119
10608C:  STR             R1, [R0,#4]
10608E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10VectorTypeE - 0x106096); `vtable for'`anonymous namespace'::itanium_demangle::VectorType ...
106090:  LDR             R2, [R5]
106092:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::VectorType
106094:  ADDS            R1, #8
106096:  STR             R1, [R0]
106098:  LDR             R1, [R4]
10609A:  STRD.W          R2, R1, [R0,#8]
10609E:  POP             {R4,R5,R7,PC}
