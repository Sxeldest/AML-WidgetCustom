; =========================================================
; Game Engine Function: sub_13887C
; Address            : 0x13887C - 0x1388D4
; =========================================================

13887C:  PUSH            {R4,R5,R7,LR}
13887E:  ADD             R7, SP, #8
138880:  MOV             R4, R0
138882:  LDR.W           R0, [R0,#0xAC]
138886:  ADDS            R1, R0, #1
138888:  BCS             loc_138896
13888A:  LDR             R0, =(off_2349A8 - 0x138890)
13888C:  ADD             R0, PC; off_2349A8
13888E:  LDR             R0, [R0]; dword_381BF4
138890:  LDR             R0, [R0]
138892:  BL              sub_17CC50
138896:  LDRB.W          R0, [R4,#0x7C]
13889A:  LSLS            R0, R0, #0x1F
13889C:  ITT NE
13889E:  LDRNE.W         R0, [R4,#0x84]; void *
1388A2:  BLXNE           j__ZdlPv; operator delete(void *)
1388A6:  LDR             R0, =(off_234C0C - 0x1388AC)
1388A8:  ADD             R0, PC; off_234C0C
1388AA:  LDR             R1, [R0]; `vtable for'Button ...
1388AC:  LDR             R0, [R4,#0x68]
1388AE:  ADDS            R1, #8
1388B0:  STR             R1, [R4]
1388B2:  ADD.W           R1, R4, #0x58 ; 'X'
1388B6:  CMP             R1, R0
1388B8:  BEQ             loc_1388C0
1388BA:  CBZ             R0, loc_1388CA
1388BC:  MOVS            R1, #5
1388BE:  B               loc_1388C2
1388C0:  MOVS            R1, #4
1388C2:  LDR             R2, [R0]
1388C4:  LDR.W           R1, [R2,R1,LSL#2]
1388C8:  BLX             R1
1388CA:  MOV             R0, R4
1388CC:  POP.W           {R4,R5,R7,LR}
1388D0:  B.W             sub_12BCE4
