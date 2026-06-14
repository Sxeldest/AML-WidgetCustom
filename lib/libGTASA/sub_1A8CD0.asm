; =========================================================
; Game Engine Function: sub_1A8CD0
; Address            : 0x1A8CD0 - 0x1A8D88
; =========================================================

1A8CD0:  LDR             R3, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x1A8CDE)
1A8CD2:  MOV.W           R1, #0xFFFFFFFF
1A8CD6:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x1A8CE0)
1A8CD8:  MOVS            R2, #0
1A8CDA:  ADD             R3, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
1A8CDC:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
1A8CDE:  LDR             R3, [R3]; CScripted2dEffects::ms_userLists ...
1A8CE0:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
1A8CE2:  ADD.W           R3, R3, #0x900
1A8CE6:  STRD.W          R1, R1, [R0]; CScripted2dEffects::ms_userLists
1A8CEA:  STRD.W          R1, R1, [R0,#8]
1A8CEE:  STRD.W          R1, R1, [R0,#0x10]
1A8CF2:  STRD.W          R1, R1, [R0,#0x18]
1A8CF6:  STRB.W          R2, [R0,#0x20]
1A8CFA:  ADDS            R0, #0x24 ; '$'
1A8CFC:  CMP             R0, R3
1A8CFE:  BNE             loc_1A8CE6
1A8D00:  PUSH            {R4,R6,R7,LR}
1A8D02:  ADD             R7, SP, #0x10+var_8
1A8D04:  LDR             R0, =(nullsub_40+1 - 0x1A8D10)
1A8D06:  MOVS            R1, #0; obj
1A8D08:  LDR             R2, =(unk_67A000 - 0x1A8D12)
1A8D0A:  MOVS            R4, #0
1A8D0C:  ADD             R0, PC; nullsub_40 ; lpfunc
1A8D0E:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A8D10:  BLX             __cxa_atexit
1A8D14:  LDR             R0, =(_ZN18CScripted2dEffects14ms_effectPairsE_ptr - 0x1A8D20)
1A8D16:  MOV.W           R1, #0xFFFFFFFF
1A8D1A:  MOVS            R2, #0
1A8D1C:  ADD             R0, PC; _ZN18CScripted2dEffects14ms_effectPairsE_ptr
1A8D1E:  LDR             R0, [R0]; CScripted2dEffects::ms_effectPairs ...
1A8D20:  ADDS            R3, R0, R2
1A8D22:  STR             R1, [R3,#0x20]
1A8D24:  STR             R1, [R3,#0x44]
1A8D26:  STRD.W          R1, R1, [R3,#4]
1A8D2A:  STRD.W          R1, R1, [R3,#0xC]
1A8D2E:  STRD.W          R1, R1, [R3,#0x14]
1A8D32:  STRB.W          R4, [R3,#0x24]
1A8D36:  STRB.W          R4, [R3,#0x48]
1A8D3A:  STR             R1, [R3,#0x68]
1A8D3C:  STRD.W          R1, R1, [R3,#0x28]
1A8D40:  STRD.W          R1, R1, [R3,#0x30]
1A8D44:  STRD.W          R1, R1, [R3,#0x38]
1A8D48:  STR             R4, [R0,R2]
1A8D4A:  ADDS            R2, #0x94
1A8D4C:  CMP.W           R2, #0x2500
1A8D50:  STRD.W          R1, R1, [R3,#0x4C]
1A8D54:  STRD.W          R1, R1, [R3,#0x54]
1A8D58:  STRD.W          R1, R1, [R3,#0x5C]
1A8D5C:  STRB.W          R4, [R3,#0x6C]
1A8D60:  STR.W           R1, [R3,#0x8C]
1A8D64:  STRB.W          R4, [R3,#0x90]
1A8D68:  STRD.W          R1, R1, [R3,#0x70]
1A8D6C:  STRD.W          R1, R1, [R3,#0x78]
1A8D70:  STRD.W          R1, R1, [R3,#0x80]
1A8D74:  BNE             loc_1A8D20
1A8D76:  LDR             R0, =(nullsub_41+1 - 0x1A8D80)
1A8D78:  MOVS            R1, #0; obj
1A8D7A:  LDR             R2, =(unk_67A000 - 0x1A8D82)
1A8D7C:  ADD             R0, PC; nullsub_41 ; lpfunc
1A8D7E:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A8D80:  POP.W           {R4,R6,R7,LR}
1A8D84:  B.W             j___cxa_atexit
