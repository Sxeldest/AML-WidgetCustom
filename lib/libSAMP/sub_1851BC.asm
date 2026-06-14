; =========================================================
; Game Engine Function: sub_1851BC
; Address            : 0x1851BC - 0x18525C
; =========================================================

1851BC:  PUSH            {R4-R7,LR}
1851BE:  ADD             R7, SP, #0xC
1851C0:  PUSH.W          {R8,R9,R11}
1851C4:  SUB             SP, SP, #0x60
1851C6:  MOV             R5, R0
1851C8:  ADD             R0, SP, #0x78+var_58
1851CA:  MOV             R4, R1
1851CC:  VMOV.I32        Q8, #0
1851D0:  ADDS            R0, #4
1851D2:  MOVS            R1, #0xC
1851D4:  VST1.32         {D16-D17}, [R0],R1
1851D8:  MOVW            R2, #0xFFFF
1851DC:  VST1.32         {D16-D17}, [R0]
1851E0:  MOV             R0, SP
1851E2:  ADDS            R0, #4
1851E4:  VST1.32         {D16-D17}, [R0],R1
1851E8:  VST1.32         {D16-D17}, [R0]
1851EC:  MOV             R0, R4
1851EE:  STR.W           R2, [R0],#4
1851F2:  MOV             R2, R0
1851F4:  VST1.32         {D16-D17}, [R2],R1
1851F8:  MOVS            R1, #1
1851FA:  STR             R1, [SP,#0x78+var_58]
1851FC:  MOVS            R1, #2
1851FE:  STR             R1, [SP,#0x78+var_78]
185200:  MOVS            R1, #0x1C
185202:  VST1.32         {D16-D17}, [R2]
185206:  LDR             R2, [R5,R1]
185208:  LDR             R3, [R4,R1]
18520A:  CMP             R3, R2
18520C:  BHI             loc_18521A
18520E:  BCC             loc_18522C
185210:  SUBS            R2, R1, #4
185212:  CMP             R1, #0
185214:  MOV             R1, R2
185216:  BNE             loc_185206
185218:  B               loc_18522C
18521A:  MOVS            R1, #3
18521C:  VMOV.I32        Q8, #0
185220:  STR             R1, [R4]
185222:  MOVS            R1, #0xC
185224:  VST1.32         {D16-D17}, [R0],R1
185228:  VST1.32         {D16-D17}, [R0]
18522C:  ADD             R6, SP, #0x78+var_38
18522E:  ADD.W           R9, SP, #0x78+var_58
185232:  MOV             R8, SP
185234:  MOV             R0, R4
185236:  MOV             R1, R8
185238:  BL              sub_185136
18523C:  MOV             R0, R5
18523E:  MOV             R1, R4
185240:  MOV             R2, R6
185242:  BL              sub_185648
185246:  MOV             R0, R6; s1
185248:  MOV             R1, R9; s2
18524A:  MOVS            R2, #0x20 ; ' '; n
18524C:  BLX             memcmp
185250:  CMP             R0, #0
185252:  BNE             loc_185234
185254:  ADD             SP, SP, #0x60 ; '`'
185256:  POP.W           {R8,R9,R11}
18525A:  POP             {R4-R7,PC}
