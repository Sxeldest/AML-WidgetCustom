; =========================================================
; Game Engine Function: _ZN9CIplStore10AddIplSlotEPKc
; Address            : 0x280360 - 0x280408
; =========================================================

280360:  PUSH            {R4,R6,R7,LR}
280362:  ADD             R7, SP, #8
280364:  MOV             R12, R0
280366:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28036E)
280368:  MOVS            R3, #0
28036A:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28036C:  LDR             R0, [R0]; CIplStore::ms_pPool ...
28036E:  LDR             R0, [R0]; CIplStore::ms_pPool
280370:  LDRD.W          LR, R4, [R0,#8]
280374:  ADDS            R4, #1
280376:  STR             R4, [R0,#0xC]
280378:  CMP             R4, LR
28037A:  BNE             loc_280386
28037C:  MOVS            R4, #0
28037E:  LSLS            R1, R3, #0x1F
280380:  STR             R4, [R0,#0xC]
280382:  BNE             loc_2803B4
280384:  MOVS            R3, #1
280386:  LDR             R1, [R0,#4]
280388:  LDRSB           R2, [R1,R4]
28038A:  CMP.W           R2, #0xFFFFFFFF
28038E:  BGT             loc_280374
280390:  AND.W           R2, R2, #0x7F
280394:  STRB            R2, [R1,R4]
280396:  LDR             R1, [R0,#4]
280398:  LDR             R2, [R0,#0xC]
28039A:  LDRB            R3, [R1,R2]
28039C:  AND.W           R4, R3, #0x80
2803A0:  ADDS            R3, #1
2803A2:  AND.W           R3, R3, #0x7F
2803A6:  ORRS            R3, R4
2803A8:  STRB            R3, [R1,R2]
2803AA:  MOVS            R2, #0x34 ; '4'
2803AC:  LDR             R1, [R0]
2803AE:  LDR             R0, [R0,#0xC]
2803B0:  MLA.W           R4, R0, R2, R1
2803B4:  MOVW            R1, #0x7FFF
2803B8:  ADR             R0, dword_280410
2803BA:  VLD1.64         {D16-D17}, [R0@128]
2803BE:  MOVS            R0, #0
2803C0:  MOVT            R1, #0x8000
2803C4:  STRB.W          R0, [R4,#0x2E]
2803C8:  STR.W           R1, [R4,#0x22]
2803CC:  STR.W           R1, [R4,#0x26]
2803D0:  MOVW            R1, #0xFFFF
2803D4:  STR.W           R1, [R4,#0x2A]
2803D8:  MOV             R1, R12; char *
2803DA:  STRB.W          R0, [R4,#0x31]
2803DE:  MOV             R0, R4
2803E0:  VST1.32         {D16-D17}, [R0]!; char *
2803E4:  BLX             strcpy
2803E8:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2803F8)
2803EA:  MOVS            R1, #1
2803EC:  STRH.W          R1, [R4,#0x2F]
2803F0:  MOVW            R1, #0x4EC5
2803F4:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
2803F6:  MOVT            R1, #0xC4EC
2803FA:  LDR             R0, [R0]; CIplStore::ms_pPool ...
2803FC:  LDR             R0, [R0]; CIplStore::ms_pPool
2803FE:  LDR             R0, [R0]
280400:  SUBS            R0, R4, R0
280402:  ASRS            R0, R0, #2
280404:  MULS            R0, R1
280406:  POP             {R4,R6,R7,PC}
