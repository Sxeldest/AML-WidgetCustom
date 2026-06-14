; =========================================================
; Game Engine Function: sub_603B4
; Address            : 0x603B4 - 0x60490
; =========================================================

603B4:  PUSH            {R4-R7,LR}
603B6:  ADD             R7, SP, #0xC
603B8:  PUSH.W          {R8}
603BC:  VPUSH           {D8-D9}
603C0:  BL              sub_6C844
603C4:  LDR             R4, [R0,#8]
603C6:  MOVW            R8, #:lower16:(loc_103B86+3)
603CA:  LDR             R6, =(off_114AB0 - 0x603D4)
603CC:  MOVT            R8, #:upper16:(loc_103B86+3)
603D0:  ADD             R6, PC; off_114AB0
603D2:  CBNZ            R4, loc_603F6
603D4:  MOV             R5, R0
603D6:  MOV.W           R0, #0x2F0; unsigned int
603DA:  BLX             j__Znwj; operator new(uint)
603DE:  MOV             R4, R0
603E0:  LDR             R0, [R6]; dword_1A4408
603E2:  LDR             R1, =(_ZTV10CPlayerPed - 0x603E8); `vtable for'CPlayerPed ...
603E4:  ADD             R1, PC; `vtable for'CPlayerPed
603E6:  LDR             R0, [R0]
603E8:  ADDS            R1, #8
603EA:  STR             R1, [R4]
603EC:  ADD.W           R1, R0, R8
603F0:  MOV             R0, R4
603F2:  BLX             R1
603F4:  STR             R4, [R5,#8]
603F6:  LDR             R0, [R6]; dword_1A4408
603F8:  LDR             R0, [R0]
603FA:  ADD             R0, R8
603FC:  ADD.W           R1, R0, #0xAC0
60400:  MOV             R0, R4
60402:  BLX             R1
60404:  LDR             R4, =(dword_1174B4 - 0x6040C)
60406:  CMP             R0, #0x21 ; '!'
60408:  ADD             R4, PC; dword_1174B4
6040A:  LDR             R1, [R4]
6040C:  VLDR            S16, [R1]
60410:  LDR             R5, =(dword_1174B8 - 0x60416)
60412:  ADD             R5, PC; dword_1174B8
60414:  BNE             loc_60432
60416:  MOVW            R2, #0x7BAA
6041A:  LDR             R0, [R5]
6041C:  MOVT            R2, #0x3F04
60420:  STR             R2, [R1]
60422:  MOV             R1, #0x3EE2973A
6042A:  VLDR            S18, [R0]
6042E:  STR             R1, [R0]
60430:  B               loc_60472
60432:  LDR             R0, =(dword_1174BC - 0x6043C)
60434:  VLDR            S0, =-1.3333
60438:  ADD             R0, PC; dword_1174BC
6043A:  VLDR            S4, =-0.01115
6043E:  VLDR            S6, =0.53
60442:  LDR             R0, [R0]
60444:  VLDR            S2, [R0]
60448:  VADD.F32        S2, S2, S0
6044C:  VMLA.F32        S6, S2, S4
60450:  VLDR            S4, =0.4
60454:  VSTR            S6, [R1]
60458:  VLDR            S2, [R0]
6045C:  LDR             R0, [R5]
6045E:  VLDR            S18, [R0]
60462:  VADD.F32        S0, S2, S0
60466:  VLDR            S2, =0.038
6046A:  VMLA.F32        S4, S0, S2
6046E:  VSTR            S4, [R0]
60472:  LDR             R0, =(off_1174C4 - 0x60478)
60474:  ADD             R0, PC; off_1174C4
60476:  LDR             R0, [R0]
60478:  BLX             R0
6047A:  LDR             R0, [R4]
6047C:  LDR             R1, [R5]
6047E:  VSTR            S16, [R0]
60482:  VSTR            S18, [R1]
60486:  VPOP            {D8-D9}
6048A:  POP.W           {R8}
6048E:  POP             {R4-R7,PC}
