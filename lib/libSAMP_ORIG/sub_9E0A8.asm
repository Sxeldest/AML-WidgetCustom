; =========================================================
; Game Engine Function: sub_9E0A8
; Address            : 0x9E0A8 - 0x9E2EA
; =========================================================

9E0A8:  PUSH            {R4-R7,LR}
9E0AA:  ADD             R7, SP, #0xC
9E0AC:  PUSH.W          {R8-R11}
9E0B0:  SUB             SP, SP, #4
9E0B2:  VPUSH           {D8-D9}
9E0B6:  SUB             SP, SP, #0x48
9E0B8:  STR             R1, [SP,#0x78+var_70]
9E0BA:  MOV             R3, R0
9E0BC:  LDR             R0, =(__stack_chk_guard_ptr - 0x9E0C4)
9E0BE:  MOV             R10, R2
9E0C0:  ADD             R0, PC; __stack_chk_guard_ptr
9E0C2:  LDR             R0, [R0]; __stack_chk_guard
9E0C4:  LDR             R0, [R0]
9E0C6:  STR             R0, [SP,#0x78+var_34]
9E0C8:  LDR.W           R12, [R3,#8]
9E0CC:  STRD.W          R12, R3, [SP,#0x78+var_6C]
9E0D0:  CMP             R12, R2
9E0D2:  BGE             loc_9E128
9E0D4:  LDR             R0, [R3,#0xC]
9E0D6:  CMP             R0, R10
9E0D8:  BGE             loc_9E124
9E0DA:  CMP             R0, #0
9E0DC:  ITTE NE
9E0DE:  ADDNE.W         R1, R0, R0,LSR#31
9E0E2:  ADDNE.W         R5, R0, R1,ASR#1
9E0E6:  MOVEQ           R5, #8
9E0E8:  CMP             R5, R10
9E0EA:  IT LE
9E0EC:  MOVLE           R5, R10
9E0EE:  CMP             R0, R5
9E0F0:  BGE             loc_9E124
9E0F2:  ADD.W           R0, R5, R5,LSL#1
9E0F6:  LSLS            R0, R0, #3
9E0F8:  BL              sub_885E4
9E0FC:  LDR             R3, [SP,#0x78+var_68]
9E0FE:  MOV             R4, R0
9E100:  LDR             R1, [R3,#0x10]; src
9E102:  CBZ             R1, loc_9E11C
9E104:  LDR             R0, [R3,#8]
9E106:  ADD.W           R0, R0, R0,LSL#1
9E10A:  LSLS            R2, R0, #3; n
9E10C:  MOV             R0, R4; dest
9E10E:  BLX             j_memcpy
9E112:  LDR             R0, [SP,#0x78+var_68]
9E114:  LDR             R0, [R0,#0x10]
9E116:  BL              sub_88614
9E11A:  LDR             R3, [SP,#0x78+var_68]
9E11C:  LDR.W           R12, [SP,#0x78+var_6C]
9E120:  STRD.W          R5, R4, [R3,#0xC]
9E124:  STR.W           R10, [R3,#8]
9E128:  LDR             R0, [R3,#0x10]
9E12A:  VMOV.I32        Q4, #0
9E12E:  MOVS            R1, #0
9E130:  STR.W           R10, [R3,#4]
9E134:  CMP.W           R10, #2
9E138:  STR             R1, [R0,#0x14]
9E13A:  VST1.8          {D8-D9}, [R0]!
9E13E:  STR             R1, [R0]
9E140:  BLT.W           loc_9E2C8
9E144:  ADD.W           LR, SP, #0x78+var_60
9E148:  MOV.W           R11, #1
9E14C:  MOV.W           R9, #0x18
9E150:  ADD.W           R0, LR, #4
9E154:  STR             R0, [SP,#0x78+var_78]
9E156:  STR.W           R10, [SP,#0x78+var_74]
9E15A:  B               loc_9E1B2
9E15C:  LDR.W           R0, [R8,R9]
9E160:  ADD.W           LR, SP, #0x78+var_60
9E164:  LDRD.W          R12, R3, [SP,#0x78+var_6C]
9E168:  MOVS            R1, #8
9E16A:  STRD.W          R1, R4, [R10,#4]
9E16E:  MOV             R1, LR
9E170:  LDR.W           R2, [R10,#8]
9E174:  ADD.W           R0, R0, R0,LSL#2
9E178:  VLD1.8          {D16-D17}, [R1]!
9E17C:  ADD.W           R0, R2, R0,LSL#3
9E180:  VLD1.8          {D18-D19}, [R1]!
9E184:  VST1.8          {D16-D17}, [R0]!
9E188:  VLDR            D20, [R1]
9E18C:  MOVS            R1, #0
9E18E:  VST1.8          {D18-D19}, [R0]!
9E192:  VST1.8          {D20}, [R0]
9E196:  LDR.W           R0, [R8,R9]
9E19A:  LDR.W           R10, [SP,#0x78+var_74]
9E19E:  ADDS            R0, #1
9E1A0:  STR.W           R0, [R8,R9]
9E1A4:  ADD.W           R11, R11, #1
9E1A8:  ADD.W           R9, R9, #0x18
9E1AC:  CMP             R10, R11
9E1AE:  BEQ.W           loc_9E2C8
9E1B2:  LDR             R5, [R3,#0x10]
9E1B4:  CMP             R11, R12
9E1B6:  BGE             loc_9E238
9E1B8:  ADD.W           R6, R5, R9
9E1BC:  LDR             R0, [R6,#4]
9E1BE:  CMP.W           R0, #0xFFFFFFFF
9E1C2:  MOV             R0, R5
9E1C4:  BGT             loc_9E1FA
9E1C6:  MOVS            R0, #0
9E1C8:  BL              sub_885E4
9E1CC:  LDR             R1, [R6,#8]; src
9E1CE:  MOV             R4, R0
9E1D0:  CBZ             R1, loc_9E1E8
9E1D2:  LDR.W           R0, [R5,R9]
9E1D6:  ADD.W           R0, R0, R0,LSL#2
9E1DA:  LSLS            R2, R0, #3; n
9E1DC:  MOV             R0, R4; dest
9E1DE:  BLX             j_memcpy
9E1E2:  LDR             R0, [R6,#8]
9E1E4:  BL              sub_88614
9E1E8:  LDR             R3, [SP,#0x78+var_68]
9E1EA:  MOVS            R1, #0
9E1EC:  STR             R1, [R6,#4]
9E1EE:  ADD.W           LR, SP, #0x78+var_60
9E1F2:  LDR.W           R12, [SP,#0x78+var_6C]
9E1F6:  LDR             R0, [R3,#0x10]
9E1F8:  STR             R4, [R6,#8]
9E1FA:  ADD.W           R6, R0, R9
9E1FE:  LDR             R0, [R6,#0x10]
9E200:  STR.W           R1, [R5,R9]
9E204:  CMP.W           R0, #0xFFFFFFFF
9E208:  BGT             loc_9E234
9E20A:  MOVS            R0, #0
9E20C:  BL              sub_885E4
9E210:  LDR             R1, [R6,#0x14]; src
9E212:  MOV             R4, R0
9E214:  CBZ             R1, loc_9E226
9E216:  LDR             R0, [R6,#0xC]
9E218:  LSLS            R2, R0, #1; n
9E21A:  MOV             R0, R4; dest
9E21C:  BLX             j_memcpy
9E220:  LDR             R0, [R6,#0x14]
9E222:  BL              sub_88614
9E226:  LDRD.W          R12, R3, [SP,#0x78+var_6C]
9E22A:  ADD.W           LR, SP, #0x78+var_60
9E22E:  MOVS            R1, #0
9E230:  STRD.W          R1, R4, [R6,#0x10]
9E234:  STR             R1, [R6,#0xC]
9E236:  B               loc_9E244
9E238:  ADD.W           R0, R5, R9
9E23C:  STR             R1, [R0,#0x14]
9E23E:  VST1.32         {D8-D9}, [R0]!
9E242:  STR             R1, [R0]
9E244:  LDR.W           R8, [R3,#0x10]
9E248:  LDR.W           R0, [R8,R9]
9E24C:  CMP             R0, #0
9E24E:  BNE             loc_9E1A4
9E250:  LDR             R0, [SP,#0x78+var_70]
9E252:  MOV             R5, R3
9E254:  MOV             R4, LR
9E256:  ADD.W           R10, R8, R9
9E25A:  VST1.64         {D8-D9}, [R4]!
9E25E:  LDR             R1, [R0,#0x40]
9E260:  LDR             R2, [R0,#0x48]
9E262:  LDR             R3, [R0,#0x4C]
9E264:  ADD.W           R1, R2, R1,LSL#4
9E268:  LDR             R6, [R0,#0x54]
9E26A:  SUBS            R1, #0x10
9E26C:  LDR.W           R0, [R10,#4]
9E270:  VLD1.32         {D16-D17}, [R1]
9E274:  ADD.W           R1, R6, R3,LSL#2
9E278:  MOV             R3, R5
9E27A:  VST1.64         {D8-D9}, [R4]!
9E27E:  STR             R0, [SP,#0x78+var_64]
9E280:  MOVS            R0, #0
9E282:  LDR.W           R1, [R1,#-4]
9E286:  STR             R0, [R4]
9E288:  STR             R0, [SP,#0x78+var_3C]
9E28A:  LDR             R2, [SP,#0x78+var_78]
9E28C:  STR             R1, [SP,#0x78+var_4C]
9E28E:  LDR             R1, [SP,#0x78+var_64]
9E290:  VST1.32         {D16-D17}, [R2]
9E294:  CMP             R1, #0
9E296:  BNE.W           loc_9E16E
9E29A:  MOV.W           R0, #0x140
9E29E:  BL              sub_885E4
9E2A2:  LDR.W           R1, [R10,#8]; src
9E2A6:  MOV             R4, R0
9E2A8:  CMP             R1, #0
9E2AA:  BEQ.W           loc_9E15C
9E2AE:  LDR.W           R0, [R8,R9]
9E2B2:  ADD.W           R0, R0, R0,LSL#2
9E2B6:  LSLS            R2, R0, #3; n
9E2B8:  MOV             R0, R4; dest
9E2BA:  BLX             j_memcpy
9E2BE:  LDR.W           R0, [R10,#8]
9E2C2:  BL              sub_88614
9E2C6:  B               loc_9E15C
9E2C8:  LDR             R0, [SP,#0x78+var_34]
9E2CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x9E2D0)
9E2CC:  ADD             R1, PC; __stack_chk_guard_ptr
9E2CE:  LDR             R1, [R1]; __stack_chk_guard
9E2D0:  LDR             R1, [R1]
9E2D2:  CMP             R1, R0
9E2D4:  ITTTT EQ
9E2D6:  ADDEQ           SP, SP, #0x48 ; 'H'
9E2D8:  VPOPEQ          {D8-D9}
9E2DC:  ADDEQ           SP, SP, #4
9E2DE:  POPEQ.W         {R8-R11}
9E2E2:  IT EQ
9E2E4:  POPEQ           {R4-R7,PC}
9E2E6:  BLX             __stack_chk_fail
