; =========================================================
; Game Engine Function: sub_12D258
; Address            : 0x12D258 - 0x12D306
; =========================================================

12D258:  B.W             loc_12D25C
12D25C:  PUSH            {R4-R7,LR}
12D25E:  ADD             R7, SP, #0xC
12D260:  PUSH.W          {R8-R10}
12D264:  SUB             SP, SP, #0x58
12D266:  ADD.W           R10, SP, #0x70+var_60
12D26A:  MOV             R6, R1
12D26C:  ADD.W           R4, R10, #4
12D270:  MOV             R8, R0
12D272:  MOVS            R1, #0x44 ; 'D'; n
12D274:  MOV             R9, R3
12D276:  MOV             R0, R4; int
12D278:  MOV             R5, R2
12D27A:  BLX             sub_22178C
12D27E:  MOVS            R0, #2
12D280:  STR             R0, [SP,#0x70+var_60]
12D282:  MOV             R0, R4
12D284:  MOV             R1, R6
12D286:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12D28A:  ADD.W           R0, R10, #0x10
12D28E:  MOV             R1, R5
12D290:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
12D294:  ADD.W           R0, R10, #0x38 ; '8'
12D298:  VLD1.32         {D16-D17}, [R9]
12D29C:  VST1.64         {D16-D17}, [R0]
12D2A0:  MOV             R0, SP
12D2A2:  BL              sub_12D67C
12D2A6:  LDRB.W          R0, [SP,#0x70+var_44]
12D2AA:  ADD.W           R5, R10, #0x1C
12D2AE:  LSLS            R0, R0, #0x1F
12D2B0:  ITT NE
12D2B2:  LDRNE           R0, [SP,#0x70+var_3C]; void *
12D2B4:  BLXNE           j__ZdlPv; operator delete(void *)
12D2B8:  LDR             R0, [SP,#0x70+var_68]
12D2BA:  VLDR            D16, [SP,#0x70+var_70]
12D2BE:  STR             R0, [R5,#8]
12D2C0:  VSTR            D16, [R5]
12D2C4:  ADD.W           R0, R8, #0x60 ; '`'
12D2C8:  ADD             R1, SP, #0x70+var_60
12D2CA:  BL              sub_12D6B4
12D2CE:  MOV             R1, R4
12D2D0:  BL              sub_12D75C
12D2D4:  LDRB.W          R0, [SP,#0x70+var_44]
12D2D8:  LSLS            R0, R0, #0x1F
12D2DA:  ITT NE
12D2DC:  LDRNE           R0, [SP,#0x70+var_3C]; void *
12D2DE:  BLXNE           j__ZdlPv; operator delete(void *)
12D2E2:  LDRB.W          R0, [SP,#0x70+var_50]
12D2E6:  LSLS            R0, R0, #0x1F
12D2E8:  ITT NE
12D2EA:  LDRNE           R0, [SP,#0x70+var_48]; void *
12D2EC:  BLXNE           j__ZdlPv; operator delete(void *)
12D2F0:  LDRB.W          R0, [SP,#0x70+var_5C]
12D2F4:  LSLS            R0, R0, #0x1F
12D2F6:  ITT NE
12D2F8:  LDRNE           R0, [SP,#0x70+var_54]; void *
12D2FA:  BLXNE           j__ZdlPv; operator delete(void *)
12D2FE:  ADD             SP, SP, #0x58 ; 'X'
12D300:  POP.W           {R8-R10}
12D304:  POP             {R4-R7,PC}
