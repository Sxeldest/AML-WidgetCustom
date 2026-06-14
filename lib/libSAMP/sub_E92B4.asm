; =========================================================
; Game Engine Function: sub_E92B4
; Address            : 0xE92B4 - 0xE92E2
; =========================================================

E92B4:  PUSH            {R4,R6,R7,LR}
E92B6:  ADD             R7, SP, #8
E92B8:  LDRB.W          R1, [R0,#0x48]
E92BC:  MOVS            R2, #1
E92BE:  STRB.W          R2, [R0,#0x2C]
E92C2:  CBNZ            R1, loc_E92C8
E92C4:  MOVS            R0, #0
E92C6:  POP             {R4,R6,R7,PC}
E92C8:  MOVS            R0, #0x10; thrown_size
E92CA:  MOV             R4, R3
E92CC:  BLX             j___cxa_allocate_exception
E92D0:  MOV             R1, R4
E92D2:  BL              sub_EA428
E92D6:  LDR             R1, =(_ZTIN8nlohmann6detail12out_of_rangeE - 0xE92DE); `typeinfo for'nlohmann::detail::out_of_range ...
E92D8:  LDR             R2, =(sub_E9438+1 - 0xE92E0)
E92DA:  ADD             R1, PC; lptinfo
E92DC:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E92DE:  BLX             j___cxa_throw
