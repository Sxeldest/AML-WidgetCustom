; =========================================================
; Game Engine Function: _ZN27CPlayerRelationshipRecorder28RecordRelationshipWithPlayerEPK4CPed
; Address            : 0x4D67EA - 0x4D6966
; =========================================================

4D67EA:  PUSH            {R4-R7,LR}
4D67EC:  ADD             R7, SP, #0xC
4D67EE:  PUSH.W          {R8}
4D67F2:  SUB             SP, SP, #8
4D67F4:  MOV             R5, R0
4D67F6:  MOV             R8, R1
4D67F8:  LDR             R1, [R5]
4D67FA:  MOVS            R0, #0
4D67FC:  CMP             R1, R8
4D67FE:  BEQ             loc_4D689A
4D6800:  MOV             R1, R5
4D6802:  LDR.W           R2, [R1,#8]!
4D6806:  CMP             R2, R8
4D6808:  BEQ             loc_4D68A0
4D680A:  MOV             R1, R5
4D680C:  LDR.W           R2, [R1,#0x10]!
4D6810:  CMP             R2, R8
4D6812:  BEQ             loc_4D68A4
4D6814:  MOV             R1, R5
4D6816:  LDR.W           R2, [R1,#0x18]!
4D681A:  CMP             R2, R8
4D681C:  BEQ             loc_4D68A8
4D681E:  MOV             R1, R5
4D6820:  LDR.W           R2, [R1,#0x20]!
4D6824:  CMP             R2, R8
4D6826:  BEQ             loc_4D68AC
4D6828:  MOV             R1, R5
4D682A:  LDR.W           R2, [R1,#0x28]!
4D682E:  CMP             R2, R8
4D6830:  BEQ             loc_4D68B0
4D6832:  MOV             R1, R5
4D6834:  LDR.W           R2, [R1,#0x30]!
4D6838:  CMP             R2, R8
4D683A:  BEQ             loc_4D68B4
4D683C:  MOV             R1, R5
4D683E:  LDR.W           R2, [R1,#0x38]!
4D6842:  CMP             R2, R8
4D6844:  BEQ             loc_4D68B8
4D6846:  MOV             R1, R5
4D6848:  LDR.W           R2, [R1,#0x40]!
4D684C:  CMP             R2, R8
4D684E:  BEQ             loc_4D68BC
4D6850:  MOV             R1, R5
4D6852:  LDR.W           R2, [R1,#0x48]!
4D6856:  CMP             R2, R8
4D6858:  BEQ             loc_4D68C0
4D685A:  MOV             R1, R5
4D685C:  LDR.W           R2, [R1,#0x50]!
4D6860:  CMP             R2, R8
4D6862:  BEQ             loc_4D68C4
4D6864:  MOV             R1, R5
4D6866:  LDR.W           R2, [R1,#0x58]!
4D686A:  CMP             R2, R8
4D686C:  BEQ             loc_4D68C8
4D686E:  MOV             R1, R5
4D6870:  LDR.W           R2, [R1,#0x60]!
4D6874:  CMP             R2, R8
4D6876:  BEQ             loc_4D68CC
4D6878:  MOV             R1, R5
4D687A:  LDR.W           R2, [R1,#0x68]!
4D687E:  CMP             R2, R8
4D6880:  BEQ             loc_4D68D0
4D6882:  MOV             R1, R5
4D6884:  LDR.W           R2, [R1,#0x70]!
4D6888:  CMP             R2, R8
4D688A:  BEQ             loc_4D68D4
4D688C:  MOV             R1, R5
4D688E:  LDR.W           R2, [R1,#0x78]!
4D6892:  CMP             R2, R8
4D6894:  BNE             loc_4D68DE
4D6896:  MOVS            R2, #0xF
4D6898:  B               loc_4D68D6
4D689A:  MOVS            R2, #0
4D689C:  MOV             R1, R5
4D689E:  B               loc_4D68D6
4D68A0:  MOVS            R2, #1
4D68A2:  B               loc_4D68D6
4D68A4:  MOVS            R2, #2
4D68A6:  B               loc_4D68D6
4D68A8:  MOVS            R2, #3
4D68AA:  B               loc_4D68D6
4D68AC:  MOVS            R2, #4
4D68AE:  B               loc_4D68D6
4D68B0:  MOVS            R2, #5
4D68B2:  B               loc_4D68D6
4D68B4:  MOVS            R2, #6
4D68B6:  B               loc_4D68D6
4D68B8:  MOVS            R2, #7
4D68BA:  B               loc_4D68D6
4D68BC:  MOVS            R2, #8
4D68BE:  B               loc_4D68D6
4D68C0:  MOVS            R2, #9
4D68C2:  B               loc_4D68D6
4D68C4:  MOVS            R2, #0xA
4D68C6:  B               loc_4D68D6
4D68C8:  MOVS            R2, #0xB
4D68CA:  B               loc_4D68D6
4D68CC:  MOVS            R2, #0xC
4D68CE:  B               loc_4D68D6
4D68D0:  MOVS            R2, #0xD
4D68D2:  B               loc_4D68D6
4D68D4:  MOVS            R2, #0xE
4D68D6:  STR             R0, [R1]
4D68D8:  ADD.W           R1, R5, R2,LSL#3
4D68DC:  STRB            R0, [R1,#4]
4D68DE:  LDR.W           R0, [R8,#0x440]
4D68E2:  ADDS            R0, #4; this
4D68E4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
4D68E8:  MOV             R6, R0
4D68EA:  CBZ             R6, loc_4D6934
4D68EC:  SUB.W           R1, R7, #-var_11; CTask *
4D68F0:  SUB.W           R2, R7, #-var_12; bool *
4D68F4:  MOVS            R4, #0
4D68F6:  MOV             R0, R6; this
4D68F8:  STRB.W          R4, [R7,#var_11]
4D68FC:  STRB.W          R4, [R7,#var_12]
4D6900:  BLX             j__ZN15CTaskCategories13IsKillPedTaskEPK5CTaskRbS3_; CTaskCategories::IsKillPedTask(CTask const*,bool &,bool &)
4D6904:  LDRB.W          R0, [R7,#var_12]
4D6908:  CMP             R0, #0
4D690A:  BNE             loc_4D6928
4D690C:  SUB.W           R1, R7, #-var_13; CTask *
4D6910:  ADD             R2, SP, #0x18+var_14; bool *
4D6912:  MOV             R0, R6; this
4D6914:  STRB.W          R4, [R7,#var_13]
4D6918:  STRB.W          R4, [SP,#0x18+var_14]
4D691C:  BLX             j__ZN15CTaskCategories15IsFollowPedTaskEPK5CTaskRbS3_; CTaskCategories::IsFollowPedTask(CTask const*,bool &,bool &)
4D6920:  LDRB.W          R0, [SP,#0x18+var_14]
4D6924:  CMP             R0, #0
4D6926:  BEQ             loc_4D693C
4D6928:  LDR             R0, [R5]
4D692A:  CBZ             R0, loc_4D6934
4D692C:  MOVS            R0, #3
4D692E:  STRB            R0, [R5,#4]
4D6930:  STR.W           R8, [R5]
4D6934:  ADD             SP, SP, #8
4D6936:  POP.W           {R8}
4D693A:  POP             {R4-R7,PC}
4D693C:  MOVS            R0, #0
4D693E:  SUB.W           R1, R7, #-var_15; CTask *
4D6942:  SUB.W           R2, R7, #-var_16; bool *
4D6946:  STRB.W          R0, [R7,#var_15]
4D694A:  STRB.W          R0, [R7,#var_16]
4D694E:  MOV             R0, R6; this
4D6950:  BLX             j__ZN15CTaskCategories13IsKillPedTaskEPK5CTaskRbS3_; CTaskCategories::IsKillPedTask(CTask const*,bool &,bool &)
4D6954:  LDRB.W          R0, [R7,#var_16]
4D6958:  CMP             R0, #0
4D695A:  ITT NE
4D695C:  LDRNE           R0, [R5]
4D695E:  CMPNE           R0, #0
4D6960:  BEQ             loc_4D6934
4D6962:  MOVS            R0, #7
4D6964:  B               loc_4D692E
