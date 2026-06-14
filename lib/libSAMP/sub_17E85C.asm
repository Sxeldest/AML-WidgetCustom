; =========================================================
; Game Engine Function: sub_17E85C
; Address            : 0x17E85C - 0x17E8BE
; =========================================================

17E85C:  PUSH            {R4-R7,LR}
17E85E:  ADD             R7, SP, #0xC
17E860:  PUSH.W          {R8}
17E864:  MOV             R4, R0
17E866:  BL              sub_17F6B8
17E86A:  LDR             R0, =(_ZTV9RakClient - 0x17E874); `vtable for'RakClient ...
17E86C:  ADDW            R8, R4, #0x9D4
17E870:  ADD             R0, PC; `vtable for'RakClient
17E872:  ADD.W           R1, R0, #0x198
17E876:  ADDS            R0, #8
17E878:  STR.W           R1, [R4,#0x9D0]
17E87C:  STR             R0, [R4]
17E87E:  MOV             R0, R8
17E880:  BL              sub_17D4A8
17E884:  ADDW            R5, R4, #0xAF4
17E888:  MOVS            R6, #0
17E88A:  ADDS            R0, R5, R6
17E88C:  BL              sub_17D4A8
17E890:  ADD.W           R6, R6, #0x124
17E894:  CMP.W           R6, #0x2480
17E898:  BNE             loc_17E88A
17E89A:  MOVS            R0, #0
17E89C:  MOVS            R1, #0
17E89E:  ADDS            R2, R4, R1
17E8A0:  ADD.W           R1, R1, #0x124
17E8A4:  CMP.W           R1, #0x2480
17E8A8:  STRB.W          R0, [R2,#0xC08]
17E8AC:  BNE             loc_17E89E
17E8AE:  MOVW            R0, #0x2F70
17E8B2:  MOVS            R1, #0
17E8B4:  STR             R1, [R4,R0]
17E8B6:  MOV             R0, R4
17E8B8:  POP.W           {R8}
17E8BC:  POP             {R4-R7,PC}
