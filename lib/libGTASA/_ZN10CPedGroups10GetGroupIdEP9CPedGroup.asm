; =========================================================
; Game Engine Function: _ZN10CPedGroups10GetGroupIdEP9CPedGroup
; Address            : 0x4B68D8 - 0x4B696E
; =========================================================

4B68D8:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B68DE)
4B68DA:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B68DC:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B68DE:  CMP             R0, R1
4B68E0:  ITT EQ
4B68E2:  MOVEQ           R0, #0
4B68E4:  BXEQ            LR
4B68E6:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B68EC)
4B68E8:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B68EA:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B68EC:  ADD.W           R1, R1, #0x2D4
4B68F0:  CMP             R0, R1
4B68F2:  BEQ             loc_4B6962
4B68F4:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B68FA)
4B68F6:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B68F8:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B68FA:  ADD.W           R1, R1, #0x5A8
4B68FE:  CMP             R0, R1
4B6900:  ITT EQ
4B6902:  MOVEQ           R0, #2
4B6904:  BXEQ            LR
4B6906:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B690C)
4B6908:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B690A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B690C:  ADDW            R1, R1, #0x87C
4B6910:  CMP             R0, R1
4B6912:  BEQ             loc_4B6966
4B6914:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B691A)
4B6916:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B6918:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B691A:  ADD.W           R1, R1, #0xB50
4B691E:  CMP             R0, R1
4B6920:  ITT EQ
4B6922:  MOVEQ           R0, #4
4B6924:  BXEQ            LR
4B6926:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B692C)
4B6928:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B692A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B692C:  ADDW            R1, R1, #0xE24
4B6930:  CMP             R0, R1
4B6932:  BEQ             loc_4B696A
4B6934:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B693E)
4B6936:  MOVW            R2, #0x10F8
4B693A:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B693C:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B693E:  ADD             R1, R2
4B6940:  CMP             R0, R1
4B6942:  ITT EQ
4B6944:  MOVEQ           R0, #6
4B6946:  BXEQ            LR
4B6948:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B6952)
4B694A:  MOVW            R2, #0x13CC
4B694E:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B6950:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B6952:  ADD             R2, R1
4B6954:  MOV.W           R1, #0xFFFFFFFF
4B6958:  CMP             R0, R2
4B695A:  IT EQ
4B695C:  MOVEQ           R1, #7
4B695E:  MOV             R0, R1
4B6960:  BX              LR
4B6962:  MOVS            R0, #1
4B6964:  BX              LR
4B6966:  MOVS            R0, #3
4B6968:  BX              LR
4B696A:  MOVS            R0, #5
4B696C:  BX              LR
