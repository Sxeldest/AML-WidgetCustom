; =========================================================
; Game Engine Function: sub_EB3E8
; Address            : 0xEB3E8 - 0xEB412
; =========================================================

EB3E8:  PUSH            {R4,R6,R7,LR}
EB3EA:  ADD             R7, SP, #8
EB3EC:  LDRB            R1, [R0,#0x15]
EB3EE:  MOVS            R2, #1
EB3F0:  STRB            R2, [R0,#0x14]
EB3F2:  CBNZ            R1, loc_EB3F8
EB3F4:  MOVS            R0, #0
EB3F6:  POP             {R4,R6,R7,PC}
EB3F8:  MOVS            R0, #0x10; thrown_size
EB3FA:  MOV             R4, R3
EB3FC:  BLX             j___cxa_allocate_exception
EB400:  MOV             R1, R4
EB402:  BL              sub_EA428
EB406:  LDR             R1, =(_ZTIN8nlohmann6detail12out_of_rangeE - 0xEB40E); `typeinfo for'nlohmann::detail::out_of_range ...
EB408:  LDR             R2, =(sub_E9438+1 - 0xEB410)
EB40A:  ADD             R1, PC; lptinfo
EB40C:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EB40E:  BLX             j___cxa_throw
