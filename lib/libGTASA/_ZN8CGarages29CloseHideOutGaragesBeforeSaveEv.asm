; =========================================================
; Game Engine Function: _ZN8CGarages29CloseHideOutGaragesBeforeSaveEv
; Address            : 0x314404 - 0x314488
; =========================================================

314404:  PUSH            {R4-R7,LR}
314406:  ADD             R7, SP, #0xC
314408:  PUSH.W          {R8-R11}
31440C:  SUB             SP, SP, #4
31440E:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x31441E)
314410:  MOVW            R10, #0xFF07
314414:  LDR.W           R9, =(unk_60FE70 - 0x314424)
314418:  MOVS            R5, #0x32 ; '2'
31441A:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
31441C:  MOV.W           R8, #1
314420:  ADD             R9, PC; unk_60FE70
314422:  MOVT            R10, #0x2781
314426:  LDR             R4, [R0]; CGarages::aGarages ...
314428:  MOV.W           R11, #0
31442C:  LDR             R0, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x314432)
31442E:  ADD             R0, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
314430:  LDR             R6, [R0]; CGarages::aCarsInSafeHouse ...
314432:  LDRB.W          R0, [R4,#0x4C]
314436:  SUB.W           R1, R0, #0x10
31443A:  CMP             R1, #0x1D
31443C:  BHI             loc_31447A
31443E:  LSL.W           R1, R8, R1
314442:  TST.W           R1, R10
314446:  ITT NE
314448:  LDRBNE.W        R1, [R4,#0x4D]
31444C:  CMPNE           R1, #0
31444E:  BEQ             loc_31447A
314450:  SUBS            R0, #0x11
314452:  MOVS            R1, #0
314454:  STRB.W          R1, [R4,#0x4D]
314458:  UXTB            R2, R0
31445A:  CMP             R2, #0x1C
31445C:  ITT LS
31445E:  SXTBLS          R0, R0
314460:  LDRLS.W         R1, [R9,R0,LSL#2]
314464:  MOVS            R2, #4; int
314466:  MOV             R0, R4; this
314468:  ADD.W           R1, R6, R1,LSL#8; CStoredCar *
31446C:  BLX             j__ZN7CGarage32StoreAndRemoveCarsForThisHideOutEP10CStoredCari; CGarage::StoreAndRemoveCarsForThisHideOut(CStoredCar *,int)
314470:  MOV             R0, R4; this
314472:  BLX             j__ZN7CGarage31RemoveCarsBlockingDoorNotInsideEv; CGarage::RemoveCarsBlockingDoorNotInside(void)
314476:  STR.W           R11, [R4,#0x38]
31447A:  ADDS            R4, #0xD8
31447C:  SUBS            R5, #1
31447E:  BNE             loc_314432
314480:  ADD             SP, SP, #4
314482:  POP.W           {R8-R11}
314486:  POP             {R4-R7,PC}
