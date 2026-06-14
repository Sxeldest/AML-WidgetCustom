; =========================================================
; Game Engine Function: sub_E9AA0
; Address            : 0xE9AA0 - 0xE9B0E
; =========================================================

E9AA0:  PUSH            {R4-R7,LR}
E9AA2:  ADD             R7, SP, #0xC
E9AA4:  PUSH.W          {R11}
E9AA8:  SUB             SP, SP, #0x10
E9AAA:  MOV             R5, R0
E9AAC:  LDR             R0, [R0]
E9AAE:  LDR             R2, [R1]
E9AB0:  CMP             R0, R2
E9AB2:  BNE             loc_E9ADE
E9AB4:  LDRB            R0, [R0]
E9AB6:  CMP             R0, #2
E9AB8:  BEQ             loc_E9AC4
E9ABA:  CMP             R0, #1
E9ABC:  BNE             loc_E9ACA
E9ABE:  LDR             R0, [R1,#4]
E9AC0:  LDR             R1, [R5,#4]
E9AC2:  B               loc_E9ACE
E9AC4:  LDR             R0, [R1,#8]
E9AC6:  LDR             R1, [R5,#8]
E9AC8:  B               loc_E9ACE
E9ACA:  LDR             R0, [R1,#0xC]
E9ACC:  LDR             R1, [R5,#0xC]
E9ACE:  SUBS            R0, R1, R0
E9AD0:  CLZ.W           R0, R0
E9AD4:  LSRS            R0, R0, #5
E9AD6:  ADD             SP, SP, #0x10
E9AD8:  POP.W           {R11}
E9ADC:  POP             {R4-R7,PC}
E9ADE:  MOVS            R0, #0x10; thrown_size
E9AE0:  BLX             j___cxa_allocate_exception
E9AE4:  LDR             R1, =(aCannotCompareI - 0xE9AEC); "cannot compare iterators of different c"... ...
E9AE6:  MOV             R4, R0
E9AE8:  ADD             R1, PC; "cannot compare iterators of different c"...
E9AEA:  ADD             R0, SP, #0x20+var_1C; int
E9AEC:  BL              sub_DC6DC
E9AF0:  MOVS            R6, #1
E9AF2:  LDR             R3, [R5]
E9AF4:  ADD             R2, SP, #0x20+var_1C
E9AF6:  MOV             R0, R4
E9AF8:  MOVS            R1, #0xD4
E9AFA:  BL              sub_E9B38
E9AFE:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0xE9B08); `typeinfo for'nlohmann::detail::invalid_iterator ...
E9B00:  MOVS            R6, #0
E9B02:  LDR             R2, =(sub_E9438+1 - 0xE9B0A)
E9B04:  ADD             R1, PC; lptinfo
E9B06:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E9B08:  MOV             R0, R4; void *
E9B0A:  BLX             j___cxa_throw
