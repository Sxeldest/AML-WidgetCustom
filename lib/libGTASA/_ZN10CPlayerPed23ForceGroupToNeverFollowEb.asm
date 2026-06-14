; =========================================================
; Game Engine Function: _ZN10CPlayerPed23ForceGroupToNeverFollowEb
; Address            : 0x4CA0C4 - 0x4CA110
; =========================================================

4CA0C4:  LDR.W           R2, [R0,#0x444]
4CA0C8:  CMP             R1, #1
4CA0CA:  LDRH            R3, [R2,#0x34]
4CA0CC:  BNE             loc_4CA108
4CA0CE:  ORR.W           R1, R3, #0x400
4CA0D2:  STRH            R1, [R2,#0x34]
4CA0D4:  LDR.W           R1, [R0,#0x444]
4CA0D8:  LDRB.W          R2, [R1,#0x35]
4CA0DC:  LSLS            R2, R2, #0x1E
4CA0DE:  IT MI
4CA0E0:  BXMI            LR
4CA0E2:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4CA0F0)
4CA0E4:  MOV.W           R12, #0x2D4
4CA0E8:  LDR             R1, [R1,#0x38]
4CA0EA:  MOVS            R3, #0
4CA0EC:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4CA0EE:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4CA0F0:  MLA.W           R1, R1, R12, R2
4CA0F4:  STRB            R3, [R1,#4]
4CA0F6:  MOVS            R1, #5; int
4CA0F8:  LDR.W           R0, [R0,#0x444]
4CA0FC:  LDR             R0, [R0,#0x38]
4CA0FE:  MLA.W           R0, R0, R12, R2
4CA102:  ADDS            R0, #0x30 ; '0'; this
4CA104:  B.W             sub_1901C8
4CA108:  BIC.W           R0, R3, #0x400
4CA10C:  STRH            R0, [R2,#0x34]
4CA10E:  BX              LR
