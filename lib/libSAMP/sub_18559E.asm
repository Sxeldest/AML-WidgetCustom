; =========================================================
; Game Engine Function: sub_18559E
; Address            : 0x18559E - 0x185604
; =========================================================

18559E:  PUSH            {R4,R5,R7,LR}
1855A0:  ADD             R7, SP, #8
1855A2:  SUB             SP, SP, #0x40
1855A4:  MOV             R4, R1
1855A6:  MOV             R5, R0
1855A8:  BL              sub_186722
1855AC:  ADD             R0, SP, #0x48+var_28
1855AE:  VMOV.I32        Q8, #0
1855B2:  VLD1.32         {D18-D19}, [R4]
1855B6:  MOV             R1, R0
1855B8:  VST1.64         {D16-D17}, [R1]!
1855BC:  VST1.32         {D18-D19}, [R1]
1855C0:  MOVS            R1, #0
1855C2:  LDR.W           R2, [R0,R1,LSL#2]
1855C6:  SUBS            R3, R2, #1
1855C8:  STR.W           R3, [R0,R1,LSL#2]
1855CC:  CMP             R3, R2
1855CE:  BCC             loc_1855D8
1855D0:  ADDS            R2, R1, #1
1855D2:  CMP             R1, #7
1855D4:  MOV             R1, R2
1855D6:  BNE             loc_1855C2
1855D8:  VLD1.32         {D16-D17}, [R5]
1855DC:  MOV             R5, SP
1855DE:  MOV             R0, R5
1855E0:  VMOV.I32        Q9, #0
1855E4:  VST1.64         {D16-D17}, [R0]!
1855E8:  MOV             R1, R5; int
1855EA:  MOV             R2, R5; int
1855EC:  VST1.64         {D18-D19}, [R0]
1855F0:  ADD             R0, SP, #0x48+var_28; int
1855F2:  MOV             R3, R0
1855F4:  BL              sub_185988
1855F8:  VLD1.64         {D16-D17}, [R5,#0x48+var_48]
1855FC:  VST1.32         {D16-D17}, [R4]
185600:  ADD             SP, SP, #0x40 ; '@'
185602:  POP             {R4,R5,R7,PC}
