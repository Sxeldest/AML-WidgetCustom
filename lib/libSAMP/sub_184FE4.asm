; =========================================================
; Game Engine Function: sub_184FE4
; Address            : 0x184FE4 - 0x185060
; =========================================================

184FE4:  PUSH            {R4-R7,LR}
184FE6:  ADD             R7, SP, #0xC
184FE8:  PUSH.W          {R8-R10}
184FEC:  SUB             SP, SP, #0x40
184FEE:  VMOV.I32        Q8, #0
184FF2:  MOV             R4, R0
184FF4:  VLD1.32         {D18-D19}, [R0]
184FF8:  ADD.W           R8, SP, #0x58+var_38
184FFC:  MOV             R9, SP
184FFE:  MOV.W           R10, #0
185002:  VST1.32         {D16-D17}, [R0]!
185006:  MOVS            R1, #0
185008:  VLD1.32         {D20-D21}, [R0]
18500C:  VST1.32         {D16-D17}, [R0]
185010:  MOV             R0, R8
185012:  VST1.64         {D18-D19}, [R0]!
185016:  VST1.64         {D20-D21}, [R0]
18501A:  MOV             R0, R9
18501C:  VST1.64         {D18-D19}, [R0]!
185020:  VST1.64         {D20-D21}, [R0]
185024:  LDR.W           R6, [R8,R10,LSL#2]
185028:  MOVS            R5, #0x20 ; ' '
18502A:  CBZ             R6, loc_18504A
18502C:  LSLS            R0, R6, #0x1F
18502E:  BEQ             loc_185042
185030:  CBZ             R1, loc_185038
185032:  MOV             R0, R9; int
185034:  BL              sub_1850D2
185038:  MOV             R0, R4
18503A:  MOV             R1, R9
18503C:  BL              sub_185136
185040:  MOVS            R1, #0
185042:  SUBS            R5, #1
185044:  ADDS            R1, #1
185046:  LSRS            R6, R6, #1
185048:  BNE             loc_18502C
18504A:  ADD.W           R10, R10, #1
18504E:  UXTAH.W         R1, R1, R5
185052:  CMP.W           R10, #8
185056:  BNE             loc_185024
185058:  ADD             SP, SP, #0x40 ; '@'
18505A:  POP.W           {R8-R10}
18505E:  POP             {R4-R7,PC}
