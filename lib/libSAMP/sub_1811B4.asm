; =========================================================
; Game Engine Function: sub_1811B4
; Address            : 0x1811B4 - 0x18123C
; =========================================================

1811B4:  PUSH            {R4-R7,LR}
1811B6:  ADD             R7, SP, #0xC
1811B8:  PUSH.W          {R8}
1811BC:  SUB             SP, SP, #0x10
1811BE:  MOV             R5, R3
1811C0:  LDR             R3, =(unk_BE944 - 0x1811CA)
1811C2:  MOV             R4, R0
1811C4:  ADD             R0, SP, #0x20+var_18
1811C6:  ADD             R3, PC; unk_BE944
1811C8:  STRD.W          R1, R2, [SP,#0x20+var_18]
1811CC:  MOV             R1, R3
1811CE:  BL              sub_17E580
1811D2:  CBZ             R0, loc_1811E2
1811D4:  MOV.W           R5, #0xFFFFFFFF
1811D8:  MOV             R0, R5
1811DA:  ADD             SP, SP, #0x10
1811DC:  POP.W           {R8}
1811E0:  POP             {R4-R7,PC}
1811E2:  CBZ             R5, loc_18120A
1811E4:  ADD.W           R4, R4, #0x344
1811E8:  ADD             R1, SP, #0x20+var_18
1811EA:  SUB.W           R2, R7, #-var_19
1811EE:  MOV             R0, R4
1811F0:  BL              sub_182454
1811F4:  LDRB.W          R1, [R7,#var_19]
1811F8:  CMP             R1, #0
1811FA:  BEQ             loc_1811D4
1811FC:  LDR             R1, [R4]
1811FE:  ADD.W           R0, R0, R0,LSL#1
181202:  ADD.W           R0, R1, R0,LSL#2
181206:  LDR             R5, [R0,#8]
181208:  B               loc_1811D8
18120A:  LDRH            R0, [R4,#8]
18120C:  CMP             R0, #0
18120E:  BEQ             loc_1811D4
181210:  ADD.W           R8, SP, #0x20+var_18
181214:  MOVS            R6, #0
181216:  MOVS            R5, #0
181218:  LDR.W           R1, [R4,#0x340]
18121C:  LDRB            R2, [R1,R6]
18121E:  CBZ             R2, loc_181230
181220:  ADDS            R0, R1, R6
181222:  MOV             R1, R8
181224:  ADDS            R0, #4
181226:  BL              sub_17E580
18122A:  CMP             R0, #0
18122C:  BNE             loc_1811D8
18122E:  LDRH            R0, [R4,#8]
181230:  ADDS            R5, #1
181232:  ADD.W           R6, R6, #0x840
181236:  CMP             R5, R0
181238:  BCC             loc_181218
18123A:  B               loc_1811D4
