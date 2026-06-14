; =========================================================
; Game Engine Function: sub_186116
; Address            : 0x186116 - 0x1861AA
; =========================================================

186116:  PUSH            {R4-R7,LR}
186118:  ADD             R7, SP, #0xC
18611A:  PUSH.W          {R8}
18611E:  VPUSH           {D8-D9}
186122:  SUB             SP, SP, #0x50
186124:  ADD             R6, SP, #0x70+var_40
186126:  VLD1.32         {D16-D17}, [R0]
18612A:  VMOV.I32        Q4, #0
18612E:  MOV             R4, R3
186130:  MOV             R0, R6
186132:  MOV             R5, R2
186134:  VST1.64         {D16-D17}, [R0]!
186138:  VST1.64         {D8-D9}, [R0]
18613C:  MOV             R0, R6
18613E:  BL              sub_1861AA
186142:  ADD             R1, SP, #0x70+var_60
186144:  VLD1.32         {D16-D17}, [R4]
186148:  MOV             R2, R6
18614A:  MOV             R0, R1
18614C:  VST1.64         {D16-D17}, [R0]!
186150:  VST1.64         {D8-D9}, [R0]
186154:  MOV             R0, R6
186156:  BL              sub_184D9C
18615A:  LDR.W           R8, [R7,#arg_0]
18615E:  MOV             R0, SP
186160:  VLD1.32         {D16-D17}, [R5]
186164:  MOVS            R1, #0xC
186166:  VLD1.64         {D18-D19}, [R6]
18616A:  VST1.64         {D18-D19}, [R0,#0x70+var_70]
18616E:  VST1.32         {D16-D17}, [R8]
186172:  LDR             R2, [R5,R1]
186174:  LDR             R3, [R0,R1]
186176:  CMP             R2, R3
186178:  BHI             loc_186196
18617A:  BCC             loc_186184
18617C:  SUBS            R2, R1, #4
18617E:  CMP             R1, #0
186180:  MOV             R1, R2
186182:  BNE             loc_186172
186184:  MOV             R1, SP
186186:  MOV             R0, R8
186188:  BL              sub_184F9C
18618C:  MOV             R0, R8
18618E:  MOV             R1, R4
186190:  BL              sub_18621A
186194:  B               loc_18619E
186196:  MOV             R1, SP
186198:  MOV             R0, R8
18619A:  BL              sub_184F9C
18619E:  ADD             SP, SP, #0x50 ; 'P'
1861A0:  VPOP            {D8-D9}
1861A4:  POP.W           {R8}
1861A8:  POP             {R4-R7,PC}
