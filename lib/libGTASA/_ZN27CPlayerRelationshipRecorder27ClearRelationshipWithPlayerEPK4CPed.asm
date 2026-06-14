; =========================================================
; Game Engine Function: _ZN27CPlayerRelationshipRecorder27ClearRelationshipWithPlayerEPK4CPed
; Address            : 0x4D6644 - 0x4D6734
; =========================================================

4D6644:  LDR             R3, [R0]
4D6646:  MOV.W           R12, #0
4D664A:  CMP             R3, R1
4D664C:  BEQ             loc_4D66EA
4D664E:  MOV             R3, R0
4D6650:  LDR.W           R2, [R3,#8]!
4D6654:  CMP             R2, R1
4D6656:  BEQ             loc_4D66F0
4D6658:  MOV             R3, R0
4D665A:  LDR.W           R2, [R3,#0x10]!
4D665E:  CMP             R2, R1
4D6660:  BEQ             loc_4D66F4
4D6662:  MOV             R3, R0
4D6664:  LDR.W           R2, [R3,#0x18]!
4D6668:  CMP             R2, R1
4D666A:  BEQ             loc_4D66F8
4D666C:  MOV             R3, R0
4D666E:  LDR.W           R2, [R3,#0x20]!
4D6672:  CMP             R2, R1
4D6674:  BEQ             loc_4D66FC
4D6676:  MOV             R3, R0
4D6678:  LDR.W           R2, [R3,#0x28]!
4D667C:  CMP             R2, R1
4D667E:  BEQ             loc_4D6700
4D6680:  MOV             R3, R0
4D6682:  LDR.W           R2, [R3,#0x30]!
4D6686:  CMP             R2, R1
4D6688:  BEQ             loc_4D6704
4D668A:  MOV             R3, R0
4D668C:  LDR.W           R2, [R3,#0x38]!
4D6690:  CMP             R2, R1
4D6692:  BEQ             loc_4D6708
4D6694:  MOV             R3, R0
4D6696:  LDR.W           R2, [R3,#0x40]!
4D669A:  CMP             R2, R1
4D669C:  BEQ             loc_4D670C
4D669E:  MOV             R3, R0
4D66A0:  LDR.W           R2, [R3,#0x48]!
4D66A4:  CMP             R2, R1
4D66A6:  BEQ             loc_4D6710
4D66A8:  MOV             R3, R0
4D66AA:  LDR.W           R2, [R3,#0x50]!
4D66AE:  CMP             R2, R1
4D66B0:  BEQ             loc_4D6714
4D66B2:  MOV             R3, R0
4D66B4:  LDR.W           R2, [R3,#0x58]!
4D66B8:  CMP             R2, R1
4D66BA:  BEQ             loc_4D6718
4D66BC:  MOV             R3, R0
4D66BE:  LDR.W           R2, [R3,#0x60]!
4D66C2:  CMP             R2, R1
4D66C4:  BEQ             loc_4D671C
4D66C6:  MOV             R3, R0
4D66C8:  LDR.W           R2, [R3,#0x68]!
4D66CC:  CMP             R2, R1
4D66CE:  BEQ             loc_4D6720
4D66D0:  MOV             R3, R0
4D66D2:  LDR.W           R2, [R3,#0x70]!
4D66D6:  CMP             R2, R1
4D66D8:  BEQ             loc_4D6724
4D66DA:  MOV             R3, R0
4D66DC:  LDR.W           R2, [R3,#0x78]!
4D66E0:  CMP             R2, R1
4D66E2:  IT NE
4D66E4:  BXNE            LR
4D66E6:  MOVS            R1, #0xF
4D66E8:  B               loc_4D6726
4D66EA:  MOVS            R1, #0
4D66EC:  MOV             R3, R0
4D66EE:  B               loc_4D6726
4D66F0:  MOVS            R1, #1
4D66F2:  B               loc_4D6726
4D66F4:  MOVS            R1, #2
4D66F6:  B               loc_4D6726
4D66F8:  MOVS            R1, #3
4D66FA:  B               loc_4D6726
4D66FC:  MOVS            R1, #4
4D66FE:  B               loc_4D6726
4D6700:  MOVS            R1, #5
4D6702:  B               loc_4D6726
4D6704:  MOVS            R1, #6
4D6706:  B               loc_4D6726
4D6708:  MOVS            R1, #7
4D670A:  B               loc_4D6726
4D670C:  MOVS            R1, #8
4D670E:  B               loc_4D6726
4D6710:  MOVS            R1, #9
4D6712:  B               loc_4D6726
4D6714:  MOVS            R1, #0xA
4D6716:  B               loc_4D6726
4D6718:  MOVS            R1, #0xB
4D671A:  B               loc_4D6726
4D671C:  MOVS            R1, #0xC
4D671E:  B               loc_4D6726
4D6720:  MOVS            R1, #0xD
4D6722:  B               loc_4D6726
4D6724:  MOVS            R1, #0xE
4D6726:  ADD.W           R0, R0, R1,LSL#3
4D672A:  STR.W           R12, [R3]
4D672E:  STRB.W          R12, [R0,#4]
4D6732:  BX              LR
