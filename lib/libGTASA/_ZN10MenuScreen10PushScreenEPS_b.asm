; =========================================================
; Game Engine Function: _ZN10MenuScreen10PushScreenEPS_b
; Address            : 0x298354 - 0x298432
; =========================================================

298354:  PUSH            {R4-R7,LR}
298356:  ADD             R7, SP, #0xC
298358:  PUSH.W          {R8,R9,R11}
29835C:  MOV             R4, R0
29835E:  LDR             R0, =(gMobileMenu_ptr - 0x298366)
298360:  MOV             R5, R1
298362:  ADD             R0, PC; gMobileMenu_ptr
298364:  LDR             R0, [R0]; gMobileMenu
298366:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
298368:  CBZ             R0, loc_298382
29836A:  LDR             R1, =(gMobileMenu_ptr - 0x298372)
29836C:  LDR             R2, [R4]
29836E:  ADD             R1, PC; gMobileMenu_ptr
298370:  LDR             R1, [R1]; gMobileMenu
298372:  LDR             R2, [R2,#0x14]
298374:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
298376:  ADD.W           R0, R1, R0,LSL#2
29837A:  LDR.W           R1, [R0,#-4]
29837E:  MOV             R0, R4
298380:  BLX             R2
298382:  LDR             R0, =(gMobileMenu_ptr - 0x298388)
298384:  ADD             R0, PC; gMobileMenu_ptr
298386:  LDR             R0, [R0]; gMobileMenu
298388:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
29838A:  CBZ             R0, loc_298396
29838C:  LDR             R0, =(gMobileMenu_ptr - 0x298392)
29838E:  ADD             R0, PC; gMobileMenu_ptr
298390:  LDR             R0, [R0]; gMobileMenu ; this
298392:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
298396:  CMP             R5, #1
298398:  BNE             loc_2983FA
29839A:  LDR             R0, =(gMobileMenu_ptr - 0x2983A0)
29839C:  ADD             R0, PC; gMobileMenu_ptr
29839E:  LDR             R0, [R0]; gMobileMenu
2983A0:  LDRD.W          R1, R5, [R0,#(dword_6E008C - 0x6E006C)]
2983A4:  ADDS            R0, R5, #1
2983A6:  CMP             R1, R0
2983A8:  BCS             loc_298408
2983AA:  MOVW            R1, #0xAAAB
2983AE:  LSLS            R0, R0, #2
2983B0:  MOVT            R1, #0xAAAA
2983B4:  UMULL.W         R0, R1, R0, R1
2983B8:  MOVS            R0, #3
2983BA:  ADD.W           R9, R0, R1,LSR#1
2983BE:  MOV.W           R0, R9,LSL#2; byte_count
2983C2:  BLX             malloc
2983C6:  MOV             R8, R0
2983C8:  LDR             R0, =(gMobileMenu_ptr - 0x2983CE)
2983CA:  ADD             R0, PC; gMobileMenu_ptr
2983CC:  LDR             R0, [R0]; gMobileMenu
2983CE:  LDR             R6, [R0,#(dword_6E0094 - 0x6E006C)]
2983D0:  CBZ             R6, loc_2983EA
2983D2:  LSLS            R2, R5, #2; size_t
2983D4:  MOV             R0, R8; void *
2983D6:  MOV             R1, R6; void *
2983D8:  BLX             memcpy_0
2983DC:  MOV             R0, R6; p
2983DE:  BLX             free
2983E2:  LDR             R0, =(gMobileMenu_ptr - 0x2983E8)
2983E4:  ADD             R0, PC; gMobileMenu_ptr
2983E6:  LDR             R0, [R0]; gMobileMenu
2983E8:  LDR             R5, [R0,#(dword_6E0090 - 0x6E006C)]
2983EA:  LDR             R0, =(gMobileMenu_ptr - 0x2983F0)
2983EC:  ADD             R0, PC; gMobileMenu_ptr
2983EE:  LDR             R0, [R0]; gMobileMenu
2983F0:  STR.W           R8, [R0,#(dword_6E0094 - 0x6E006C)]
2983F4:  STR.W           R9, [R0,#(dword_6E008C - 0x6E006C)]
2983F8:  B               loc_298412
2983FA:  LDR             R0, =(gMobileMenu_ptr - 0x298400)
2983FC:  ADD             R0, PC; gMobileMenu_ptr
2983FE:  LDR             R0, [R0]; gMobileMenu
298400:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
298402:  POP.W           {R8,R9,R11}
298406:  POP             {R4-R7,PC}
298408:  LDR             R0, =(gMobileMenu_ptr - 0x29840E)
29840A:  ADD             R0, PC; gMobileMenu_ptr
29840C:  LDR             R0, [R0]; gMobileMenu
29840E:  LDR.W           R8, [R0,#(dword_6E0094 - 0x6E006C)]
298412:  LDR             R0, =(gMobileMenu_ptr - 0x29841C)
298414:  STR.W           R4, [R8,R5,LSL#2]
298418:  ADD             R0, PC; gMobileMenu_ptr
29841A:  LDR             R0, [R0]; gMobileMenu
29841C:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
29841E:  ADDS            R1, #1
298420:  STR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
298422:  LDR             R0, [R4]
298424:  LDR             R1, [R0,#0x10]
298426:  MOV             R0, R4
298428:  POP.W           {R8,R9,R11}
29842C:  POP.W           {R4-R7,LR}
298430:  BX              R1
