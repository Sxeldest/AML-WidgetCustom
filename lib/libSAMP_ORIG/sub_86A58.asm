; =========================================================
; Game Engine Function: sub_86A58
; Address            : 0x86A58 - 0x86A96
; =========================================================

86A58:  PUSH            {R4-R7,LR}
86A5A:  ADD             R7, SP, #0xC
86A5C:  PUSH.W          {R11}
86A60:  LDR             R1, =(dword_1ABE8C - 0x86A6C)
86A62:  MOVS            R6, #0
86A64:  LDR             R5, =(sub_7F514+1 - 0x86A6E)
86A66:  LDR             R4, =(off_110560 - 0x86A70)
86A68:  ADD             R1, PC; dword_1ABE8C ; obj
86A6A:  ADD             R5, PC; sub_7F514
86A6C:  ADD             R4, PC; off_110560
86A6E:  STRD.W          R6, R6, [R1]
86A72:  MOV             R0, R5; lpfunc
86A74:  STR             R6, [R1,#(dword_1ABE94 - 0x1ABE8C)]
86A76:  MOV             R2, R4; lpdso_handle
86A78:  BLX             __cxa_atexit
86A7C:  LDR             R1, =(dword_1ABE98 - 0x86A86)
86A7E:  MOV             R0, R5
86A80:  MOV             R2, R4
86A82:  ADD             R1, PC; dword_1ABE98
86A84:  STRD.W          R6, R6, [R1]
86A88:  STR             R6, [R1,#(dword_1ABEA0 - 0x1ABE98)]
86A8A:  POP.W           {R11}
86A8E:  POP.W           {R4-R7,LR}
86A92:  B.W             sub_10C188
