; =========================================================
; Game Engine Function: sub_48011C
; Address            : 0x48011C - 0x4801D0
; =========================================================

48011C:  PUSH            {R4-R7,LR}
48011E:  ADD             R7, SP, #0xC
480120:  PUSH.W          {R8-R11}
480124:  LDR.W           R1, [R0,#0x114]
480128:  CMP             R1, #1
48012A:  BLT             loc_4801CA
48012C:  LDR.W           LR, [R3]
480130:  MOV.W           R8, #0
480134:  MOV.W           R12, #1
480138:  LDR             R4, [R0,#0x5C]
48013A:  CMP             R4, #1
48013C:  BLT             loc_4801C2
48013E:  LDR.W           R3, [LR,R8,LSL#2]
480142:  LDR.W           R5, [R2,R8,LSL#2]
480146:  ADD.W           R11, R3, R4
48014A:  ADDS            R4, R3, #2
48014C:  CMP             R11, R4
48014E:  MOV             R1, R4
480150:  IT HI
480152:  MOVHI           R1, R11
480154:  SUBS            R1, R1, R3
480156:  SUBS            R1, #1
480158:  ADD.W           R9, R12, R1,LSR#1
48015C:  CMP.W           R9, #0x10
480160:  BCC             loc_4801AC
480162:  BIC.W           R10, R9, #0xF
480166:  CMP.W           R10, #0
48016A:  BEQ             loc_4801AC
48016C:  CMP             R11, R4
48016E:  MOV             R1, R4
480170:  IT HI
480172:  MOVHI           R1, R11
480174:  SUBS            R1, R1, R3
480176:  SUBS            R1, #1
480178:  ADD.W           R6, R5, R1,LSR#1
48017C:  ADDS            R6, #1
48017E:  CMP             R3, R6
480180:  ITTT CC
480182:  BICCC.W         R1, R1, #1
480186:  ADDCC           R1, R4
480188:  CMPCC           R5, R1
48018A:  BCC             loc_4801AC
48018C:  ADD.W           R4, R3, R10,LSL#1
480190:  ADD.W           R6, R5, R10
480194:  MOV             R1, R10
480196:  VLD1.8          {D16-D17}, [R5]!
48019A:  SUBS            R1, #0x10
48019C:  VMOV            Q9, Q8
4801A0:  VST2.8          {D16-D19}, [R3]!
4801A4:  BNE             loc_480196
4801A6:  CMP             R9, R10
4801A8:  BNE             loc_4801B0
4801AA:  B               loc_4801BE
4801AC:  MOV             R6, R5
4801AE:  MOV             R4, R3
4801B0:  LDRB.W          R1, [R6],#1
4801B4:  STRB            R1, [R4,#1]
4801B6:  STRB            R1, [R4]
4801B8:  ADDS            R4, #2
4801BA:  CMP             R4, R11
4801BC:  BCC             loc_4801B0
4801BE:  LDR.W           R1, [R0,#0x114]
4801C2:  ADD.W           R8, R8, #1
4801C6:  CMP             R8, R1
4801C8:  BLT             loc_480138
4801CA:  POP.W           {R8-R11}
4801CE:  POP             {R4-R7,PC}
