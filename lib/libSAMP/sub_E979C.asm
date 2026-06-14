; =========================================================
; Game Engine Function: sub_E979C
; Address            : 0xE979C - 0xE97FA
; =========================================================

E979C:  PUSH            {R4-R7,LR}
E979E:  ADD             R7, SP, #0xC
E97A0:  PUSH.W          {R11}
E97A4:  SUB             SP, SP, #0x10
E97A6:  MOV             R5, R0
E97A8:  LDR             R0, [R0]
E97AA:  LDRB            R1, [R0]
E97AC:  CMP             R1, #2
E97AE:  BEQ             loc_E97BA
E97B0:  CMP             R1, #1
E97B2:  BNE             loc_E97BE
E97B4:  LDR             R0, [R5,#4]
E97B6:  ADDS            R0, #0x20 ; ' '
E97B8:  B               loc_E97C2
E97BA:  LDR             R0, [R5,#8]
E97BC:  B               loc_E97C2
E97BE:  LDR             R1, [R5,#0xC]
E97C0:  CBNZ            R1, loc_E97CA
E97C2:  ADD             SP, SP, #0x10
E97C4:  POP.W           {R11}
E97C8:  POP             {R4-R7,PC}
E97CA:  MOVS            R0, #0x10; thrown_size
E97CC:  BLX             j___cxa_allocate_exception
E97D0:  LDR             R1, =(aCannotGetValue - 0xE97D8); "cannot get value" ...
E97D2:  MOV             R4, R0
E97D4:  ADD             R1, PC; "cannot get value"
E97D6:  ADD             R0, SP, #0x20+var_1C; int
E97D8:  BL              sub_DC6DC
E97DC:  MOVS            R6, #1
E97DE:  LDR             R3, [R5]
E97E0:  ADD             R2, SP, #0x20+var_1C
E97E2:  MOV             R0, R4
E97E4:  MOVS            R1, #0xD6
E97E6:  BL              sub_E9B38
E97EA:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0xE97F4); `typeinfo for'nlohmann::detail::invalid_iterator ...
E97EC:  MOVS            R6, #0
E97EE:  LDR             R2, =(sub_E9438+1 - 0xE97F6)
E97F0:  ADD             R1, PC; lptinfo
E97F2:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E97F4:  MOV             R0, R4; void *
E97F6:  BLX             j___cxa_throw
