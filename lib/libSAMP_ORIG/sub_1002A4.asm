; =========================================================
; Game Engine Function: sub_1002A4
; Address            : 0x1002A4 - 0x100328
; =========================================================

1002A4:  PUSH            {R4-R7,LR}
1002A6:  ADD             R7, SP, #0xC
1002A8:  PUSH.W          {R5-R11}
1002AC:  MOV             R5, R0
1002AE:  LDR             R0, =(__stack_chk_guard_ptr - 0x1002BA)
1002B0:  ADD.W           R10, R5, #0x198
1002B4:  MOV             R4, R1
1002B6:  ADD             R0, PC; __stack_chk_guard_ptr
1002B8:  MOV             R8, SP
1002BA:  LDR             R0, [R0]; __stack_chk_guard
1002BC:  LDR             R0, [R0]
1002BE:  STR             R0, [SP,#0x28+var_20]
1002C0:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle10AbiTagAttrE - 0x1002C6); `vtable for'`anonymous namespace'::itanium_demangle::AbiTagAttr ...
1002C2:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::AbiTagAttr
1002C4:  ADD.W           R11, R0, #8
1002C8:  LDRD.W          R0, R1, [R5]
1002CC:  CMP             R0, R1
1002CE:  BEQ             loc_10030E
1002D0:  LDRB            R1, [R0]
1002D2:  CMP             R1, #0x42 ; 'B'
1002D4:  BNE             loc_10030E
1002D6:  ADDS            R0, #1
1002D8:  STR             R0, [R5]
1002DA:  MOV             R0, R8
1002DC:  MOV             R1, R5
1002DE:  BL              sub_10538C
1002E2:  LDRD.W          R6, R9, [SP,#0x28+var_28]
1002E6:  CMP             R6, R9
1002E8:  BEQ             loc_10030C
1002EA:  MOV             R0, R10
1002EC:  MOVS            R1, #0x14
1002EE:  BL              sub_FFA98
1002F2:  MOVS            R1, #8
1002F4:  STR             R4, [R0,#8]
1002F6:  STRB            R1, [R0,#4]
1002F8:  STR.W           R11, [R0]
1002FC:  LDRH            R1, [R4,#6]
1002FE:  LDRB            R2, [R4,#5]
100300:  MOV             R4, R0
100302:  STRD.W          R6, R9, [R0,#0xC]
100306:  STRB            R2, [R0,#5]
100308:  STRH            R1, [R0,#6]
10030A:  B               loc_1002C8
10030C:  MOVS            R4, #0
10030E:  LDR             R0, [SP,#0x28+var_20]
100310:  LDR             R1, =(__stack_chk_guard_ptr - 0x100316)
100312:  ADD             R1, PC; __stack_chk_guard_ptr
100314:  LDR             R1, [R1]; __stack_chk_guard
100316:  LDR             R1, [R1]
100318:  CMP             R1, R0
10031A:  ITTT EQ
10031C:  MOVEQ           R0, R4
10031E:  POPEQ.W         {R1-R3,R8-R11}
100322:  POPEQ           {R4-R7,PC}
100324:  BLX             __stack_chk_fail
