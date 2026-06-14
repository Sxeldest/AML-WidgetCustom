; =========================================================
; Game Engine Function: sub_AE7B0
; Address            : 0xAE7B0 - 0xAE802
; =========================================================

AE7B0:  PUSH            {R4-R7,LR}
AE7B2:  ADD             R7, SP, #0xC
AE7B4:  PUSH.W          {R8}
AE7B8:  MOV             R5, R0
AE7BA:  LDR             R0, [R0,#4]
AE7BC:  MOV             R4, R1
AE7BE:  CMP             R0, R1
AE7C0:  BGE             loc_AE7FA
AE7C2:  CMP             R0, #0
AE7C4:  ITTE NE
AE7C6:  ADDNE.W         R1, R0, R0,LSR#31
AE7CA:  ADDNE.W         R6, R0, R1,ASR#1
AE7CE:  MOVEQ           R6, #8
AE7D0:  CMP             R6, R4
AE7D2:  IT LE
AE7D4:  MOVLE           R6, R4
AE7D6:  CMP             R0, R6
AE7D8:  BGE             loc_AE7FA
AE7DA:  LSLS            R0, R6, #1
AE7DC:  BL              sub_885E4
AE7E0:  LDR             R1, [R5,#8]; src
AE7E2:  MOV             R8, R0
AE7E4:  CBZ             R1, loc_AE7F6
AE7E6:  LDR             R0, [R5]
AE7E8:  LSLS            R2, R0, #1; n
AE7EA:  MOV             R0, R8; dest
AE7EC:  BLX             j_memcpy
AE7F0:  LDR             R0, [R5,#8]
AE7F2:  BL              sub_88614
AE7F6:  STRD.W          R6, R8, [R5,#4]
AE7FA:  STR             R4, [R5]
AE7FC:  POP.W           {R8}
AE800:  POP             {R4-R7,PC}
