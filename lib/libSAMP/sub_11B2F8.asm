; =========================================================
; Game Engine Function: sub_11B2F8
; Address            : 0x11B2F8 - 0x11B338
; =========================================================

11B2F8:  PUSH            {R7,LR}
11B2FA:  MOV             R7, SP
11B2FC:  LDR             R0, =(byte_263648 - 0x11B302)
11B2FE:  ADD             R0, PC; byte_263648
11B300:  LDRB            R0, [R0]
11B302:  DMB.W           ISH
11B306:  LSLS            R0, R0, #0x1F
11B308:  IT NE
11B30A:  POPNE           {R7,PC}
11B30C:  LDR             R0, =(byte_263648 - 0x11B312)
11B30E:  ADD             R0, PC; byte_263648 ; __guard *
11B310:  BLX             j___cxa_guard_acquire
11B314:  CBZ             R0, locret_11B336
11B316:  LDR             R1, =(unk_263630 - 0x11B322)
11B318:  MOVS            R3, #0
11B31A:  LDR             R0, =(sub_11A7E8+1 - 0x11B324)
11B31C:  LDR             R2, =(off_22A540 - 0x11B326)
11B31E:  ADD             R1, PC; unk_263630 ; obj
11B320:  ADD             R0, PC; sub_11A7E8 ; lpfunc
11B322:  ADD             R2, PC; off_22A540 ; lpdso_handle
11B324:  STR             R3, [R1,#(dword_263640 - 0x263630)]
11B326:  BLX             __cxa_atexit
11B32A:  LDR             R0, =(byte_263648 - 0x11B330)
11B32C:  ADD             R0, PC; byte_263648
11B32E:  POP.W           {R7,LR}
11B332:  B.W             sub_2242B0
11B336:  POP             {R7,PC}
