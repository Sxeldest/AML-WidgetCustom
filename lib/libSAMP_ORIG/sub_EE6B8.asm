; =========================================================
; Game Engine Function: sub_EE6B8
; Address            : 0xEE6B8 - 0xEE6D2
; =========================================================

EE6B8:  PUSH            {R7,LR}
EE6BA:  MOV             R7, SP
EE6BC:  LDR             R0, =(unk_1AF320 - 0xEE6C4)
EE6BE:  MOVS            R1, #1
EE6C0:  ADD             R0, PC; unk_1AF320
EE6C2:  BL              sub_EC8CC
EE6C6:  LDR             R1, =(dword_1AF3C0 - 0xEE6CC)
EE6C8:  ADD             R1, PC; dword_1AF3C0
EE6CA:  STR.W           R0, [R1,#(dword_1AF3C8 - 0x1AF3C0)]!
EE6CE:  MOV             R0, R1
EE6D0:  POP             {R7,PC}
