; =========================================================
; Game Engine Function: sub_EC238
; Address            : 0xEC238 - 0xEC296
; =========================================================

EC238:  PUSH            {R4-R7,LR}
EC23A:  ADD             R7, SP, #0xC
EC23C:  PUSH.W          {R11}
EC240:  SUB             SP, SP, #0x10
EC242:  MOV             R5, R0
EC244:  LDR             R0, [R0]
EC246:  LDRB            R1, [R0]
EC248:  CMP             R1, #2
EC24A:  BEQ             loc_EC256
EC24C:  CMP             R1, #1
EC24E:  BNE             loc_EC25A
EC250:  LDR             R0, [R5,#4]
EC252:  ADDS            R0, #0x20 ; ' '
EC254:  B               loc_EC25E
EC256:  LDR             R0, [R5,#8]
EC258:  B               loc_EC25E
EC25A:  LDR             R1, [R5,#0xC]
EC25C:  CBNZ            R1, loc_EC266
EC25E:  ADD             SP, SP, #0x10
EC260:  POP.W           {R11}
EC264:  POP             {R4-R7,PC}
EC266:  MOVS            R0, #0x10; thrown_size
EC268:  BLX             j___cxa_allocate_exception
EC26C:  LDR             R1, =(aCannotGetValue - 0xEC274); "cannot get value" ...
EC26E:  MOV             R4, R0
EC270:  ADD             R1, PC; "cannot get value"
EC272:  ADD             R0, SP, #0x20+var_1C; int
EC274:  BL              sub_DC6DC
EC278:  MOVS            R6, #1
EC27A:  LDR             R3, [R5]
EC27C:  ADD             R2, SP, #0x20+var_1C
EC27E:  MOV             R0, R4
EC280:  MOVS            R1, #0xD6
EC282:  BL              sub_E9B38
EC286:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0xEC290); `typeinfo for'nlohmann::detail::invalid_iterator ...
EC288:  MOVS            R6, #0
EC28A:  LDR             R2, =(sub_E9438+1 - 0xEC292)
EC28C:  ADD             R1, PC; lptinfo
EC28E:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EC290:  MOV             R0, R4; void *
EC292:  BLX             j___cxa_throw
