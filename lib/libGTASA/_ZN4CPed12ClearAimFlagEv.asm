; =========================================================
; Game Engine Function: _ZN4CPed12ClearAimFlagEv
; Address            : 0x4A0FC0 - 0x4A1010
; =========================================================

4A0FC0:  LDR.W           R1, [R0,#0x484]
4A0FC4:  TST.W           R1, #0x10
4A0FC8:  BEQ             loc_4A1002
4A0FCA:  PUSH            {R4,R6,R7,LR}
4A0FCC:  ADD             R7, SP, #0x10+var_8
4A0FCE:  LDR.W           LR, [R0,#0x488]
4A0FD2:  ADDW            R2, R0, #0x484
4A0FD6:  LDR.W           R12, [R0,#0x490]
4A0FDA:  MOVS            R4, #2
4A0FDC:  LDR.W           R3, [R0,#0x48C]
4A0FE0:  BFI.W           R1, R4, #4, #2
4A0FE4:  STRD.W          R1, LR, [R2]
4A0FE8:  STRD.W          R3, R12, [R2,#8]
4A0FEC:  MOVS            R2, #0
4A0FEE:  LDR.W           R1, [R0,#0x534]
4A0FF2:  STR.W           R2, [R0,#0x750]
4A0FF6:  BIC.W           R1, R1, #4
4A0FFA:  STR.W           R1, [R0,#0x534]
4A0FFE:  POP.W           {R4,R6,R7,LR}
4A1002:  LDR.W           R0, [R0,#0x444]
4A1006:  CMP             R0, #0
4A1008:  ITT NE
4A100A:  MOVNE           R1, #0
4A100C:  STRNE           R1, [R0,#0x54]
4A100E:  BX              LR
