; =========================================================
; Game Engine Function: sub_6937C
; Address            : 0x6937C - 0x6950E
; =========================================================

6937C:  PUSH            {R4-R7,LR}
6937E:  ADD             R7, SP, #0xC
69380:  PUSH.W          {R8-R10}
69384:  MOV             R4, R1
69386:  MOV             R8, R0
69388:  BL              sub_68E3C
6938C:  CBZ             R0, loc_69400
6938E:  MOV             R10, R0
69390:  LDR             R0, =(off_114BA4 - 0x69396)
69392:  ADD             R0, PC; off_114BA4
69394:  LDR             R6, [R0]; dword_1A459C
69396:  LDR             R5, [R6]
69398:  CBNZ            R5, loc_693A8
6939A:  MOVS            R0, #0x14; unsigned int
6939C:  BLX             j__Znwj; operator new(uint)
693A0:  MOV             R5, R0
693A2:  BL              sub_7ACAC
693A6:  STR             R5, [R6]
693A8:  MOV             R0, R5
693AA:  CMP             R4, #0
693AC:  BEQ             loc_69462
693AE:  BL              sub_7ACB8
693B2:  BL              sub_6C844
693B6:  LDR             R5, [R0,#8]
693B8:  CBNZ            R5, loc_693E8
693BA:  MOV             R9, R0
693BC:  MOV.W           R0, #0x2F0; unsigned int
693C0:  BLX             j__Znwj; operator new(uint)
693C4:  MOV             R5, R0
693C6:  LDR             R0, =(off_114AB0 - 0x693CE)
693C8:  LDR             R1, =(_ZTV10CPlayerPed - 0x693D0); `vtable for'CPlayerPed ...
693CA:  ADD             R0, PC; off_114AB0
693CC:  ADD             R1, PC; `vtable for'CPlayerPed
693CE:  LDR             R0, [R0]; dword_1A4408
693D0:  ADDS            R1, #8
693D2:  STR             R1, [R5]
693D4:  MOV             R1, #0x103B89
693DC:  LDR             R0, [R0]
693DE:  ADD             R1, R0
693E0:  MOV             R0, R5
693E2:  BLX             R1
693E4:  STR.W           R5, [R9,#8]
693E8:  LDR             R0, =(off_114AB0 - 0x693F6)
693EA:  MOV             R1, #0x10421D
693F2:  ADD             R0, PC; off_114AB0
693F4:  LDR             R0, [R0]; dword_1A4408
693F6:  LDR             R0, [R0]
693F8:  ADDS            R2, R0, R1
693FA:  MOV             R0, R5
693FC:  MOVS            R1, #0
693FE:  B               loc_694AE
69400:  LDR             R0, =(byte_1A427C - 0x69406)
69402:  ADD             R0, PC; byte_1A427C
69404:  LDRB            R0, [R0]
69406:  DMB.W           ISH
6940A:  LDR             R4, =(dword_1A4274 - 0x69410)
6940C:  ADD             R4, PC; dword_1A4274
6940E:  LSLS            R0, R0, #0x1F
69410:  BEQ             loc_694D6
69412:  LDRB            R0, [R4,#(byte_1A427A - 0x1A4274)]
69414:  CBZ             R0, loc_6944C
69416:  LDRB            R1, [R4]
69418:  EOR.W           R0, R0, #0x5A ; 'Z'
6941C:  LDRB            R2, [R4,#(dword_1A4274+1 - 0x1A4274)]
6941E:  STRB            R0, [R4,#(byte_1A427A - 0x1A4274)]
69420:  EOR.W           R1, R1, #0x5A ; 'Z'
69424:  LDRB            R0, [R4,#(word_1A4278 - 0x1A4274)]
69426:  LDRB            R3, [R4,#(dword_1A4274+2 - 0x1A4274)]
69428:  STRB            R1, [R4]
6942A:  EOR.W           R1, R2, #0x5A ; 'Z'
6942E:  LDRB            R6, [R4,#(dword_1A4274+3 - 0x1A4274)]
69430:  EOR.W           R0, R0, #0x5A ; 'Z'
69434:  LDRB            R5, [R4,#(word_1A4278+1 - 0x1A4274)]
69436:  STRB            R1, [R4,#(dword_1A4274+1 - 0x1A4274)]
69438:  EOR.W           R1, R3, #0x5A ; 'Z'
6943C:  STRB            R1, [R4,#(dword_1A4274+2 - 0x1A4274)]
6943E:  EOR.W           R1, R6, #0x5A ; 'Z'
69442:  STRB            R0, [R4,#(word_1A4278 - 0x1A4274)]
69444:  EOR.W           R0, R5, #0x5A ; 'Z'
69448:  STRB            R1, [R4,#(dword_1A4274+3 - 0x1A4274)]
6944A:  STRB            R0, [R4,#(word_1A4278+1 - 0x1A4274)]
6944C:  LDR             R1, =(aSampOrig - 0x69456); "SAMP_ORIG" ...
6944E:  MOVS            R0, #4
69450:  LDR             R2, =(dword_1A4274 - 0x69458)
69452:  ADD             R1, PC; "SAMP_ORIG"
69454:  ADD             R2, PC; dword_1A4274
69456:  POP.W           {R8-R10}
6945A:  POP.W           {R4-R7,LR}
6945E:  B.W             sub_10C158
69462:  BL              sub_7B240
69466:  BL              sub_6C844
6946A:  LDR             R5, [R0,#8]
6946C:  LDR             R6, =(off_114AB0 - 0x69472)
6946E:  ADD             R6, PC; off_114AB0
69470:  CBNZ            R5, loc_6949C
69472:  MOV             R9, R0
69474:  MOV.W           R0, #0x2F0; unsigned int
69478:  BLX             j__Znwj; operator new(uint)
6947C:  MOV             R5, R0
6947E:  LDR             R0, =(_ZTV10CPlayerPed - 0x69486); `vtable for'CPlayerPed ...
69480:  LDR             R1, [R6]; dword_1A4408
69482:  ADD             R0, PC; `vtable for'CPlayerPed
69484:  ADDS            R0, #8
69486:  STR             R0, [R5]
69488:  LDR             R1, [R1]
6948A:  MOV             R0, #0x103B89
69492:  ADD             R1, R0
69494:  MOV             R0, R5
69496:  BLX             R1
69498:  STR.W           R5, [R9,#8]
6949C:  LDR             R0, [R6]; dword_1A4408
6949E:  MOV             R1, #0x10421D
694A6:  LDR             R0, [R0]
694A8:  ADDS            R2, R0, R1
694AA:  MOV             R0, R5
694AC:  MOVS            R1, #1
694AE:  BLX             R2
694B0:  BL              sub_6C808
694B4:  LDR             R0, [R0,#0x60]
694B6:  EOR.W           R1, R4, #1
694BA:  BL              sub_6C90C
694BE:  LDR.W           R1, [R8,#4]
694C2:  MOV             R0, R10
694C4:  LDR.W           R2, [R8,#0x2C]
694C8:  MOV             R3, R4
694CA:  POP.W           {R8-R10}
694CE:  POP.W           {R4-R7,LR}
694D2:  B.W             sub_69070
694D6:  LDR             R0, =(byte_1A427C - 0x694DC)
694D8:  ADD             R0, PC; byte_1A427C ; __guard *
694DA:  BLX             j___cxa_guard_acquire
694DE:  CMP             R0, #0
694E0:  BEQ             loc_69412
694E2:  MOVS            R1, #0x5A ; 'Z'
694E4:  LDR             R0, =(sub_66E8E+1 - 0x694FC)
694E6:  LDR             R2, =(off_110560 - 0x694FE)
694E8:  STRB            R1, [R4,#(byte_1A427A - 0x1A4274)]
694EA:  MOVW            R1, #0x2C34
694EE:  STRH            R1, [R4,#(word_1A4278 - 0x1A4274)]
694F0:  MOV             R1, #0x3F7A3514
694F8:  ADD             R0, PC; sub_66E8E ; lpfunc
694FA:  ADD             R2, PC; off_110560 ; lpdso_handle
694FC:  STR             R1, [R4]
694FE:  MOV             R1, R4; obj
69500:  BLX             __cxa_atexit
69504:  LDR             R0, =(byte_1A427C - 0x6950A)
69506:  ADD             R0, PC; byte_1A427C ; __guard *
69508:  BLX             j___cxa_guard_release
6950C:  B               loc_69412
