; =========================================================
; Game Engine Function: _ZNSt13exception_ptraSERKS_
; Address            : 0xE3044 - 0xE3066
; =========================================================

E3044:  PUSH            {R4,R5,R7,LR}
E3046:  ADD             R7, SP, #8
E3048:  MOV             R4, R0
E304A:  MOV             R5, R1
E304C:  LDR             R0, [R1]
E304E:  LDR             R1, [R4]
E3050:  CMP             R1, R0
E3052:  BEQ             loc_E3062
E3054:  BLX             j___cxa_increment_exception_refcount
E3058:  LDR             R0, [R4]
E305A:  BLX             j___cxa_decrement_exception_refcount
E305E:  LDR             R0, [R5]
E3060:  STR             R0, [R4]
E3062:  MOV             R0, R4
E3064:  POP             {R4,R5,R7,PC}
