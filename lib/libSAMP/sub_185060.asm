; =========================================================
; Game Engine Function: sub_185060
; Address            : 0x185060 - 0x1850D2
; =========================================================

185060:  PUSH            {R4-R7,LR}
185062:  ADD             R7, SP, #0xC
185064:  PUSH.W          {R8-R10}
185068:  SUB             SP, SP, #0x20
18506A:  VLD1.32         {D16-D17}, [R0]!
18506E:  MOV             R9, SP
185070:  VMOV.I32        Q10, #0
185074:  MOV             R8, R1
185076:  VLD1.32         {D18-D19}, [R0]
18507A:  MOV             R0, R9
18507C:  MOV             R4, R2
18507E:  MOV.W           R10, #0
185082:  VST1.64         {D16-D17}, [R0]!
185086:  MOVS            R1, #0
185088:  VST1.64         {D18-D19}, [R0]
18508C:  MOV             R0, R2
18508E:  VST1.32         {D20-D21}, [R0]!
185092:  VST1.32         {D20-D21}, [R0]
185096:  LDR.W           R5, [R8,R10,LSL#2]
18509A:  MOVS            R6, #0x20 ; ' '
18509C:  CBZ             R5, loc_1850BC
18509E:  LSLS            R0, R5, #0x1F
1850A0:  BEQ             loc_1850B4
1850A2:  CBZ             R1, loc_1850AA
1850A4:  MOV             R0, R9; int
1850A6:  BL              sub_1850D2
1850AA:  MOV             R0, R4
1850AC:  MOV             R1, R9
1850AE:  BL              sub_185136
1850B2:  MOVS            R1, #0
1850B4:  SUBS            R6, #1
1850B6:  ADDS            R1, #1
1850B8:  LSRS            R5, R5, #1
1850BA:  BNE             loc_18509E
1850BC:  ADD.W           R10, R10, #1
1850C0:  UXTAH.W         R1, R1, R6
1850C4:  CMP.W           R10, #8
1850C8:  BNE             loc_185096
1850CA:  ADD             SP, SP, #0x20 ; ' '
1850CC:  POP.W           {R8-R10}
1850D0:  POP             {R4-R7,PC}
