; =========================================================
; Game Engine Function: _ZNK27CPlayerRelationshipRecorder25GetRelationshipWithPlayerEPK4CPed
; Address            : 0x4D6740 - 0x4D67EA
; =========================================================

4D6740:  LDR             R2, [R0]
4D6742:  CMP             R2, R1
4D6744:  BEQ             loc_4D67A8
4D6746:  LDR             R2, [R0,#8]
4D6748:  CMP             R2, R1
4D674A:  BEQ             loc_4D67AC
4D674C:  LDR             R2, [R0,#0x10]
4D674E:  CMP             R2, R1
4D6750:  BEQ             loc_4D67B0
4D6752:  LDR             R2, [R0,#0x18]
4D6754:  CMP             R2, R1
4D6756:  BEQ             loc_4D67B4
4D6758:  LDR             R2, [R0,#0x20]
4D675A:  CMP             R2, R1
4D675C:  BEQ             loc_4D67B8
4D675E:  LDR             R2, [R0,#0x28]
4D6760:  CMP             R2, R1
4D6762:  BEQ             loc_4D67BC
4D6764:  LDR             R2, [R0,#0x30]
4D6766:  CMP             R2, R1
4D6768:  BEQ             loc_4D67C0
4D676A:  LDR             R2, [R0,#0x38]
4D676C:  CMP             R2, R1
4D676E:  BEQ             loc_4D67C4
4D6770:  LDR             R2, [R0,#0x40]
4D6772:  CMP             R2, R1
4D6774:  BEQ             loc_4D67C8
4D6776:  LDR             R2, [R0,#0x48]
4D6778:  CMP             R2, R1
4D677A:  BEQ             loc_4D67CC
4D677C:  LDR             R2, [R0,#0x50]
4D677E:  CMP             R2, R1
4D6780:  BEQ             loc_4D67D0
4D6782:  LDR             R2, [R0,#0x58]
4D6784:  CMP             R2, R1
4D6786:  BEQ             loc_4D67D4
4D6788:  LDR             R2, [R0,#0x60]
4D678A:  CMP             R2, R1
4D678C:  BEQ             loc_4D67D8
4D678E:  LDR             R2, [R0,#0x68]
4D6790:  CMP             R2, R1
4D6792:  BEQ             loc_4D67DC
4D6794:  LDR             R2, [R0,#0x70]
4D6796:  CMP             R2, R1
4D6798:  BEQ             loc_4D67E0
4D679A:  LDR             R2, [R0,#0x78]
4D679C:  CMP             R2, R1
4D679E:  ITT NE
4D67A0:  MOVNE           R0, #0
4D67A2:  BXNE            LR
4D67A4:  MOVS            R1, #0xF
4D67A6:  B               loc_4D67E2
4D67A8:  MOVS            R1, #0
4D67AA:  B               loc_4D67E2
4D67AC:  MOVS            R1, #1
4D67AE:  B               loc_4D67E2
4D67B0:  MOVS            R1, #2
4D67B2:  B               loc_4D67E2
4D67B4:  MOVS            R1, #3
4D67B6:  B               loc_4D67E2
4D67B8:  MOVS            R1, #4
4D67BA:  B               loc_4D67E2
4D67BC:  MOVS            R1, #5
4D67BE:  B               loc_4D67E2
4D67C0:  MOVS            R1, #6
4D67C2:  B               loc_4D67E2
4D67C4:  MOVS            R1, #7
4D67C6:  B               loc_4D67E2
4D67C8:  MOVS            R1, #8
4D67CA:  B               loc_4D67E2
4D67CC:  MOVS            R1, #9
4D67CE:  B               loc_4D67E2
4D67D0:  MOVS            R1, #0xA
4D67D2:  B               loc_4D67E2
4D67D4:  MOVS            R1, #0xB
4D67D6:  B               loc_4D67E2
4D67D8:  MOVS            R1, #0xC
4D67DA:  B               loc_4D67E2
4D67DC:  MOVS            R1, #0xD
4D67DE:  B               loc_4D67E2
4D67E0:  MOVS            R1, #0xE
4D67E2:  ADD.W           R0, R0, R1,LSL#3
4D67E6:  LDRB            R0, [R0,#4]
4D67E8:  BX              LR
