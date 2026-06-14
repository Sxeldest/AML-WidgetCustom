; =========================================================
; Game Engine Function: _ZN6CStats29FindLeastFavoriteRadioStationEv
; Address            : 0x416514 - 0x416594
; =========================================================

416514:  PUSH            {R4-R7,LR}
416516:  ADD             R7, SP, #0xC
416518:  PUSH.W          {R8-R10}
41651C:  LDR             R0, =(_ZN6CStats24FavoriteRadioStationListE_ptr - 0x416522)
41651E:  ADD             R0, PC; _ZN6CStats24FavoriteRadioStationListE_ptr
416520:  LDR             R3, [R0]; CStats::FavoriteRadioStationList ...
416522:  MOVS            R0, #1
416524:  LDRD.W          R1, R6, [R3,#(dword_964E1C - 0x964E18)]
416528:  ADD.W           R10, R3, #0xC
41652C:  LDM.W           R10, {R2,R4,R5,R10}
416530:  CMP             R6, R1
416532:  LDRD.W          R9, R8, [R3,#(dword_964E34 - 0x964E18)]
416536:  LDR.W           R12, [R3,#(dword_964E40 - 0x964E18)]
41653A:  LDR.W           LR, [R3,#(dword_964E3C - 0x964E18)]
41653E:  ITT LT
416540:  MOVLT           R0, #2
416542:  MOVLT           R1, R6
416544:  CMP             R2, R1
416546:  ITT LT
416548:  MOVLT           R0, #3
41654A:  MOVLT           R1, R2
41654C:  CMP             R4, R1
41654E:  ITT LT
416550:  MOVLT           R0, #4
416552:  MOVLT           R1, R4
416554:  CMP             R5, R1
416556:  ITT LT
416558:  MOVLT           R0, #5
41655A:  MOVLT           R1, R5
41655C:  CMP             R10, R1
41655E:  IT LT
416560:  MOVLT           R0, #6
416562:  LDR             R2, [R3,#(dword_964E44 - 0x964E18)]
416564:  IT LT
416566:  MOVLT           R1, R10
416568:  CMP             R9, R1
41656A:  ITT LT
41656C:  MOVLT           R0, #7
41656E:  MOVLT           R1, R9
416570:  CMP             R8, R1
416572:  ITT LT
416574:  MOVLT           R0, #8
416576:  MOVLT           R1, R8
416578:  CMP             LR, R1
41657A:  ITT LT
41657C:  MOVLT           R0, #9
41657E:  MOVLT           R1, LR
416580:  CMP             R12, R1
416582:  ITT LT
416584:  MOVLT           R0, #0xA
416586:  MOVLT           R1, R12
416588:  CMP             R2, R1
41658A:  IT LT
41658C:  MOVLT           R0, #0xB
41658E:  POP.W           {R8-R10}
416592:  POP             {R4-R7,PC}
