; =========================================================
; Game Engine Function: sub_F499C
; Address            : 0xF499C - 0xF4A16
; =========================================================

F499C:  PUSH            {R4-R7,LR}
F499E:  ADD             R7, SP, #0xC
F49A0:  PUSH.W          {R8}
F49A4:  MOV             R8, R0
F49A6:  MOVS            R6, #0
F49A8:  MOVW            R4, #0x5F9
F49AC:  ADD.W           R0, R6, R6,LSL#1
F49B0:  ADD             R0, R8
F49B2:  LDRB.W          R1, [R0,#0x5F8]
F49B6:  LDR.W           R0, [R0,#0x600]
F49BA:  LSLS            R1, R1, #0x1F
F49BC:  IT EQ
F49BE:  ADDEQ.W         R0, R8, R4
F49C2:  BL              sub_163A6C
F49C6:  MOV             R5, R0
F49C8:  BL              sub_16398C
F49CC:  LDR.W           R1, [R8,R6,LSL#1]
F49D0:  ADD.W           R0, R8, R6
F49D4:  ADD.W           R0, R0, #0x3F8
F49D8:  BL              sub_1630D8
F49DC:  MOV             R0, R5
F49DE:  BL              sub_1639BC
F49E2:  ADDS            R6, #4
F49E4:  ADDS            R4, #0xC
F49E6:  CMP.W           R6, #0x1FC
F49EA:  BNE             loc_F49AC
F49EC:  LDR             R0, =(off_23494C - 0xF49FC)
F49EE:  MOVW            R3, #0x8839
F49F2:  LDR             R1, =(aTarget256 - 0xF49FE); "target256" ...
F49F4:  MOVT            R3, #0x5C ; '\'
F49F8:  ADD             R0, PC; off_23494C
F49FA:  ADD             R1, PC; "target256"
F49FC:  LDR             R0, [R0]; dword_23DF24
F49FE:  LDR             R2, [R0]
F4A00:  MOV             R0, #0x6794D0
F4A08:  ADD             R0, R2
F4A0A:  ADD             R2, R3
F4A0C:  POP.W           {R8}
F4A10:  POP.W           {R4-R7,LR}
F4A14:  BX              R2
