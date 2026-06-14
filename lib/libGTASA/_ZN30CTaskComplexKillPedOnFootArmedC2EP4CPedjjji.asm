; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedOnFootArmedC2EP4CPedjjji
; Address            : 0x4E2520 - 0x4E2598
; =========================================================

4E2520:  PUSH            {R4-R7,LR}
4E2522:  ADD             R7, SP, #0xC
4E2524:  PUSH.W          {R8}
4E2528:  MOV             R8, R3
4E252A:  MOV             R6, R2
4E252C:  MOV             R5, R1
4E252E:  MOV             R4, R0
4E2530:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4E2534:  ADR             R0, dword_4E25A0
4E2536:  LDRD.W          R2, R1, [R7,#arg_0]
4E253A:  VLD1.64         {D16-D17}, [R0@128]
4E253E:  MOVS            R3, #0
4E2540:  ADD.W           R12, R4, #0x18
4E2544:  CMP             R5, #0
4E2546:  LDR             R0, =(_ZTV30CTaskComplexKillPedOnFootArmed_ptr - 0x4E2554)
4E2548:  STRD.W          R3, R3, [R4,#0x10]
4E254C:  STM.W           R12, {R3,R6,R8}
4E2550:  ADD             R0, PC; _ZTV30CTaskComplexKillPedOnFootArmed_ptr
4E2552:  STRD.W          R2, R3, [R4,#0x24]
4E2556:  STR             R3, [R4,#0x2C]
4E2558:  STRB.W          R1, [R4,#0x30]
4E255C:  ADD.W           R1, R4, #0x38 ; '8'
4E2560:  STR.W           R3, [R4,#0x32]
4E2564:  STR             R3, [R4,#0x48]
4E2566:  STRD.W          R3, R3, [R4,#0x50]
4E256A:  VST1.32         {D16-D17}, [R1]
4E256E:  MOV             R1, #0xC61C3C00
4E2576:  LDR             R0, [R0]; `vtable for'CTaskComplexKillPedOnFootArmed ...
4E2578:  STR             R3, [R4,#0x58]
4E257A:  STR             R1, [R4,#0x4C]
4E257C:  MOV             R1, R4
4E257E:  ADD.W           R0, R0, #8
4E2582:  STR             R0, [R4]
4E2584:  STR.W           R5, [R1,#0xC]!; CEntity **
4E2588:  ITT NE
4E258A:  MOVNE           R0, R5; this
4E258C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E2590:  MOV             R0, R4
4E2592:  POP.W           {R8}
4E2596:  POP             {R4-R7,PC}
