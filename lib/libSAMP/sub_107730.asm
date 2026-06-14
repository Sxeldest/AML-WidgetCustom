; =========================================================
; Game Engine Function: sub_107730
; Address            : 0x107730 - 0x10797C
; =========================================================

107730:  PUSH            {R4-R7,LR}
107732:  ADD             R7, SP, #0xC
107734:  PUSH.W          {R8-R11}
107738:  SUB             SP, SP, #0x9C
10773A:  MOV             R11, R1
10773C:  LDR             R1, =(aAxl - 0x107746); "AXL" ...
10773E:  MOV             R8, R3
107740:  LDR             R3, =(aPedSnapshotD - 0x10774A); "Ped snapshot: %d" ...
107742:  ADD             R1, PC; "AXL"
107744:  MOV             R5, R0
107746:  ADD             R3, PC; "Ped snapshot: %d"
107748:  STR             R2, [SP,#0xB8+var_20]
10774A:  MOVS            R0, #4; prio
10774C:  MOV             R2, R3; fmt
10774E:  MOV             R3, R11
107750:  BLX             __android_log_print
107754:  LDR             R0, =(off_234AE8 - 0x107764)
107756:  MOV.W           R1, #0x100
10775A:  MOVS            R2, #0x20 ; ' '
10775C:  MOVW            R3, #0x505
107760:  ADD             R0, PC; off_234AE8
107762:  LDR             R0, [R0]; off_2636C4
107764:  LDR             R6, [R0]
107766:  MOV.W           R0, #0x100
10776A:  BLX             R6
10776C:  MOV             R4, R0
10776E:  LDR             R0, =(off_23494C - 0x107778)
107770:  MOVW            R1, #:lower16:(loc_1DB83C+1)
107774:  ADD             R0, PC; off_23494C
107776:  MOVT            R1, #:upper16:(loc_1DB83C+1)
10777A:  LDR.W           R10, [R0]; dword_23DF24
10777E:  LDR.W           R0, [R10]
107782:  ADD             R1, R0
107784:  MOV             R0, R4
107786:  BLX             R1
107788:  MOV             R9, R0
10778A:  MOV.W           R0, #0x2F0; unsigned int
10778E:  BLX             j__Znwj; operator new(uint)
107792:  MOV             R6, R0
107794:  MOVS            R0, #0
107796:  MOVS            R1, #0xD0; int
107798:  STRD.W          R0, R0, [SP,#0xB8+var_B8]; float
10779C:  MOVS            R2, #0; int
10779E:  STR             R0, [SP,#0xB8+var_B0]; float
1077A0:  MOV             R0, R6; int
1077A2:  MOVS            R3, #0; int
1077A4:  BL              sub_103C40
1077A8:  MOVS            R0, #0
1077AA:  CMP             R4, #0
1077AC:  BEQ.W           loc_107974
1077B0:  CMP.W           R9, #0
1077B4:  BEQ.W           loc_107974
1077B8:  VMOV.F32        S2, #-2.25
1077BC:  VLDR            S0, [R7,#arg_0]
1077C0:  LDR             R0, [R6]
1077C2:  ADR             R1, dword_107988
1077C4:  STR             R5, [SP,#0xB8+var_68]
1077C6:  CMP.W           R11, #0xA2
1077CA:  LDR             R5, [R0,#0x10]
1077CC:  IT EQ
1077CE:  ADDEQ           R1, #4
1077D0:  LDR             R3, [R1]
1077D2:  MOV             R0, R6
1077D4:  MOVS            R1, #0
1077D6:  VMUL.F32        S0, S0, S2
1077DA:  VMOV            R2, S0
1077DE:  BLX             R5
1077E0:  MOV             R0, R6
1077E2:  MOV             R1, R11
1077E4:  BL              sub_103E90
1077E8:  MOV             R0, R6
1077EA:  MOVS            R1, #0
1077EC:  BL              sub_F8F1C
1077F0:  MOV             R0, R6
1077F2:  MOVS            R1, #0
1077F4:  BL              sub_F8EC0
1077F8:  ADD             R1, SP, #0xB8+var_60
1077FA:  MOV             R0, R6
1077FC:  BL              sub_F8910
107800:  VLDR            S0, [R8]
107804:  VCMP.F32        S0, #0.0
107808:  VMRS            APSR_nzcv, FPSCR
10780C:  BEQ             loc_10781A
10780E:  VMOV            R2, S0
107812:  ADD             R0, SP, #0xB8+var_60
107814:  MOVS            R1, #0
107816:  BL              sub_109038
10781A:  VLDR            S0, [R8,#4]
10781E:  VCMP.F32        S0, #0.0
107822:  VMRS            APSR_nzcv, FPSCR
107826:  BEQ             loc_107834
107828:  VMOV            R2, S0
10782C:  ADD             R0, SP, #0xB8+var_60
10782E:  MOVS            R1, #1
107830:  BL              sub_109038
107834:  VLDR            S0, [R8,#8]
107838:  STRD.W          R4, R10, [SP,#0xB8+var_74]
10783C:  VCMP.F32        S0, #0.0
107840:  STR.W           R9, [SP,#0xB8+var_6C]
107844:  VMRS            APSR_nzcv, FPSCR
107848:  STR.W           R11, [SP,#0xB8+var_64]
10784C:  BEQ             loc_10785A
10784E:  VMOV            R2, S0
107852:  ADD             R0, SP, #0xB8+var_60
107854:  MOVS            R1, #2
107856:  BL              sub_109038
10785A:  LDR             R0, [SP,#0xB8+var_60]
10785C:  ADD             R3, SP, #0xB8+var_30
10785E:  STR             R0, [SP,#0xB8+var_78]
107860:  LDR             R0, [SP,#0xB8+var_5C]
107862:  STR             R0, [SP,#0xB8+var_7C]
107864:  LDR             R0, [SP,#0xB8+var_58]
107866:  STR             R0, [SP,#0xB8+var_80]
107868:  LDR             R0, [SP,#0xB8+var_54]
10786A:  STR             R0, [SP,#0xB8+var_84]
10786C:  LDM             R3, {R0-R3}
10786E:  LDRD.W          R10, R9, [SP,#0xB8+var_38]
107872:  LDRD.W          R5, R4, [SP,#0xB8+var_50]
107876:  STRD.W          R9, R0, [SP,#0xB8+var_98]
10787A:  ADD             R0, SP, #0xB8+var_90
10787C:  STM             R0!, {R1-R3}
10787E:  LDR             R0, [SP,#0xB8+var_84]
107880:  LDR             R1, [SP,#0xB8+var_78]
107882:  LDRD.W          R3, R2, [SP,#0xB8+var_80]
107886:  STRD.W          R0, R5, [SP,#0xB8+var_B8]
10788A:  ADD             R0, SP, #0xB8+var_B0
10788C:  LDRD.W          R12, LR, [SP,#0xB8+var_48]
107890:  LDRD.W          R8, R11, [SP,#0xB8+var_40]
107894:  STM.W           R0, {R4,R12,LR}
107898:  MOV             R0, R6
10789A:  STRD.W          R8, R11, [SP,#0xB8+var_A4]
10789E:  STR.W           R10, [SP,#0xB8+var_9C]
1078A2:  BL              sub_F8F58
1078A6:  LDR             R5, [SP,#0xB8+var_68]
1078A8:  MOVW            R2, #0x61F9
1078AC:  LDR.W           R8, [SP,#0xB8+var_70]
1078B0:  MOVT            R2, #0x5D ; ']'
1078B4:  LDR             R1, [SP,#0xB8+var_74]
1078B6:  LDR             R0, [R5]
1078B8:  STR             R1, [R0,#0x60]
1078BA:  LDR.W           R1, [R8]
1078BE:  LDR             R0, [R5]
1078C0:  ADD             R1, R2
1078C2:  BLX             R1
1078C4:  LDR.W           R1, [R8]
1078C8:  MOVW            R2, #:lower16:(off_1D5D70+1)
1078CC:  LDR             R0, [R5]
1078CE:  MOVT            R2, #:upper16:(off_1D5D70+1)
1078D2:  ADDS            R3, R1, R2
1078D4:  ADD             R1, SP, #0xB8+var_20
1078D6:  MOVS            R2, #3
1078D8:  BLX             R3
1078DA:  LDR             R0, =(off_234A88 - 0x1078E0)
1078DC:  ADD             R0, PC; off_234A88
1078DE:  LDR             R1, [R0]; off_2636B8
1078E0:  LDR             R0, [R5]
1078E2:  LDR             R1, [R1]
1078E4:  BLX             R1
1078E6:  LDR             R0, [R5,#4]
1078E8:  BL              sub_10914C
1078EC:  LDR             R0, =(off_234A8C - 0x1078F4)
1078EE:  MOVS            R1, #1
1078F0:  ADD             R0, PC; off_234A8C
1078F2:  LDR             R4, [R0]; off_263758
1078F4:  MOVS            R0, #6
1078F6:  LDR             R2, [R4]
1078F8:  BLX             R2
1078FA:  LDR             R2, [R4]
1078FC:  MOVS            R0, #8
1078FE:  MOVS            R1, #1
107900:  BLX             R2
107902:  LDR             R2, [R4]
107904:  MOVS            R0, #7
107906:  MOVS            R1, #2
107908:  BLX             R2
10790A:  LDR             R2, [R4]
10790C:  MOVS            R0, #0xE
10790E:  MOVS            R1, #0
107910:  BLX             R2
107912:  LDR.W           R0, [R8]
107916:  MOV             R1, #0x5D0BC1
10791E:  ADD             R0, R1
107920:  BLX             R0
107922:  LDR             R0, [R6]
107924:  LDR             R1, [R0,#8]
107926:  MOV             R0, R6
107928:  BLX             R1
10792A:  MOVS            R1, #0
10792C:  MOV             R0, R6
10792E:  MOVT            R1, #0x42C8
107932:  MOVS            R2, #1
107934:  BL              sub_105A24
107938:  MOV             R0, R6
10793A:  BL              sub_F9000
10793E:  LDR             R0, =(off_234A90 - 0x107944)
107940:  ADD             R0, PC; off_234A90
107942:  LDR             R1, [R0]; off_2636BC
107944:  LDR             R0, [R5]
107946:  LDR             R1, [R1]
107948:  BLX             R1
10794A:  LDR             R0, [R5,#4]
10794C:  BL              sub_109174
107950:  LDR             R0, [R6]
107952:  LDR             R1, [R0,#0xC]
107954:  MOV             R0, R6
107956:  BLX             R1
107958:  LDR             R0, [R6]
10795A:  LDR             R1, [R0,#4]
10795C:  MOV             R0, R6
10795E:  BLX             R1
107960:  LDR             R4, [SP,#0xB8+var_64]
107962:  MOV             R0, R4
107964:  BL              sub_108454
107968:  CBNZ            R0, loc_107972
10796A:  MOV             R0, R4
10796C:  MOVS            R1, #0
10796E:  BL              sub_F9D44
107972:  LDR             R0, [SP,#0xB8+var_6C]
107974:  ADD             SP, SP, #0x9C
107976:  POP.W           {R8-R11}
10797A:  POP             {R4-R7,PC}
