; =========================================================
; Game Engine Function: _ZNK14TextureListing11GetRQFormatEv
; Address            : 0x1E7830 - 0x1E78E0
; =========================================================

1E7830:  LDRH            R0, [R0,#2]
1E7832:  MOVW            R1, #0x83EF
1E7836:  CMP             R0, R1
1E7838:  BLE             loc_1E7858
1E783A:  MOVW            R1, #0x83F0
1E783E:  SUBS            R1, R0, R1
1E7840:  CMP             R1, #3; switch 4 cases
1E7842:  BLS             loc_1E7884
1E7844:  SUB.W           R1, R0, #0x8C00; jumptable 001E7884 default case
1E7848:  CMP             R1, #3
1E784A:  BHI             def_1E784C; jumptable 001E784C default case
1E784C:  TBB.W           [PC,R1]; switch jump
1E7850:  DCB 2; jump table for switch statement
1E7851:  DCB 0x3A
1E7852:  DCB 0x3C
1E7853:  DCB 0x3E
1E7854:  MOVS            R0, #0x10; jumptable 001E784C case 35840
1E7856:  BX              LR
1E7858:  MOVW            R1, #0x8032
1E785C:  CMP             R0, R1
1E785E:  BGT             loc_1E7890
1E7860:  MOVW            R1, #0x1401
1E7864:  CMP             R0, R1
1E7866:  BEQ             loc_1E7880
1E7868:  MOVW            R1, #0x1909
1E786C:  CMP             R0, R1
1E786E:  ITT EQ
1E7870:  MOVEQ           R0, #5
1E7872:  BXEQ            LR
1E7874:  MOVW            R1, #0x190A
1E7878:  CMP             R0, R1
1E787A:  ITT EQ
1E787C:  MOVEQ           R0, #6
1E787E:  BXEQ            LR
1E7880:  MOVS            R0, #0
1E7882:  BX              LR
1E7884:  TBB.W           [PC,R1]; switch jump
1E7888:  DCB 2; jump table for switch statement
1E7889:  DCB 0x24
1E788A:  DCB 0x26
1E788B:  DCB 0x28
1E788C:  MOVS            R0, #7; jumptable 001E7884 case 0
1E788E:  BX              LR
1E7890:  MOVW            R1, #0x8033
1E7894:  CMP             R0, R1
1E7896:  BEQ             loc_1E78DC
1E7898:  MOVW            R1, #0x8034
1E789C:  CMP             R0, R1
1E789E:  ITT EQ
1E78A0:  MOVEQ           R0, #3
1E78A2:  BXEQ            LR
1E78A4:  MOVW            R1, #0x8363
1E78A8:  CMP             R0, R1
1E78AA:  ITT EQ
1E78AC:  MOVEQ           R0, #2
1E78AE:  BXEQ            LR
1E78B0:  MOVS            R0, #0
1E78B2:  BX              LR
1E78B4:  MOVW            R1, #0x8D64; jumptable 001E784C default case
1E78B8:  CMP             R0, R1
1E78BA:  ITT EQ
1E78BC:  MOVEQ           R0, #0x12
1E78BE:  BXEQ            LR
1E78C0:  MOVS            R0, #0
1E78C2:  BX              LR
1E78C4:  MOVS            R0, #0xE; jumptable 001E784C case 35841
1E78C6:  BX              LR
1E78C8:  MOVS            R0, #0x11; jumptable 001E784C case 35842
1E78CA:  BX              LR
1E78CC:  MOVS            R0, #0xF; jumptable 001E784C case 35843
1E78CE:  BX              LR
1E78D0:  MOVS            R0, #8; jumptable 001E7884 case 1
1E78D2:  BX              LR
1E78D4:  MOVS            R0, #9; jumptable 001E7884 case 2
1E78D6:  BX              LR
1E78D8:  MOVS            R0, #0xA; jumptable 001E7884 case 3
1E78DA:  BX              LR
1E78DC:  MOVS            R0, #4
1E78DE:  BX              LR
