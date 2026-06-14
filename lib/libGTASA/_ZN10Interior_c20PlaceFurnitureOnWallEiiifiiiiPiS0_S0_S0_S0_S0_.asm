; =========================================================
; Game Engine Function: _ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_
; Address            : 0x447088 - 0x44723E
; =========================================================

447088:  PUSH            {R4-R7,LR}
44708A:  ADD             R7, SP, #0xC
44708C:  PUSH.W          {R8-R11}
447090:  SUB             SP, SP, #4
447092:  VPUSH           {D8-D10}
447096:  SUB             SP, SP, #0x30
447098:  MOV             R8, R0
44709A:  LDR             R0, =(g_furnitureMan_ptr - 0x4470A6)
44709C:  LDR.W           R6, [R8,#0x14]
4470A0:  SXTH            R3, R3; __int16
4470A2:  ADD             R0, PC; g_furnitureMan_ptr
4470A4:  LDR             R0, [R0]; g_furnitureMan ; this
4470A6:  LDRB            R6, [R6,#0x1F]
4470A8:  STR             R6, [SP,#0x68+var_68]; float
4470AA:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
4470AE:  LDRD.W          R10, R9, [R7,#arg_8]
4470B2:  MOV             R5, R0
4470B4:  ADDS.W          R0, R9, #1
4470B8:  MOV.W           R1, #0x64 ; 'd'
4470BC:  STR             R0, [SP,#0x68+var_48]
4470BE:  IT NE
4470C0:  MOVNE           R1, #1
4470C2:  ADDS.W          R2, R10, #1
4470C6:  MOV.W           R0, #0x64 ; 'd'
4470CA:  STR             R2, [SP,#0x68+var_44]
4470CC:  IT EQ
4470CE:  MOVEQ           R1, R0
4470D0:  CMP             R5, #0
4470D2:  STR             R1, [SP,#0x68+var_4C]
4470D4:  BEQ.W           loc_4471F0
4470D8:  VMOV.F32        S20, #4.0
4470DC:  VLDR            S16, [R7,#arg_0]
4470E0:  VLDR            S18, =0.000015259
4470E4:  MOV.W           R11, #0
4470E8:  LDR             R0, [SP,#0x68+var_44]
4470EA:  CBNZ            R0, loc_44710A
4470EC:  BLX             rand
4470F0:  UXTH            R0, R0
4470F2:  VMOV            S0, R0
4470F6:  VCVT.F32.S32    S0, S0
4470FA:  VMUL.F32        S0, S0, S18
4470FE:  VMUL.F32        S0, S0, S20
447102:  VCVT.S32.F32    S0, S0
447106:  VMOV            R10, S0
44710A:  ORR.W           R0, R10, #2
44710E:  CMP             R0, #3
447110:  BNE             loc_447122
447112:  LDR             R0, [SP,#0x68+var_48]
447114:  CBZ             R0, loc_447132
447116:  CMP.W           R10, #1
44711A:  BNE             loc_447168
44711C:  LDR             R4, [R7,#arg_10]
44711E:  MOV             R6, R9
447120:  B               loc_4471C0
447122:  LDR             R0, [SP,#0x68+var_48]
447124:  CBZ             R0, loc_44717A
447126:  CMP.W           R10, #2
44712A:  BNE             loc_4471B0
44712C:  MOV             R4, R9
44712E:  LDR             R6, [R7,#arg_10]
447130:  B               loc_4471C0
447132:  LDR.W           R0, [R8,#0x14]
447136:  LDRB            R4, [R5,#0xC]
447138:  LDRB            R6, [R0,#3]
44713A:  BLX             rand
44713E:  UXTH            R0, R0
447140:  VMOV            S0, R0
447144:  SUBS            R0, R6, R4
447146:  VCVT.F32.S32    S0, S0
44714A:  VMOV            S2, R0
44714E:  VCVT.F32.S32    S2, S2
447152:  VMUL.F32        S0, S0, S18
447156:  VMUL.F32        S0, S0, S2
44715A:  VCVT.S32.F32    S0, S0
44715E:  VMOV            R9, S0
447162:  CMP.W           R10, #1
447166:  BEQ             loc_44711C
447168:  LDR.W           R0, [R8,#0x14]
44716C:  MOV             R6, R9
44716E:  LDR             R2, [R7,#arg_10]
447170:  LDRB            R1, [R5,#0xD]
447172:  LDRB            R0, [R0,#2]
447174:  SUBS            R0, R0, R2
447176:  SUBS            R4, R0, R1
447178:  B               loc_4471C0
44717A:  LDR.W           R0, [R8,#0x14]
44717E:  LDRB            R4, [R5,#0xC]
447180:  LDRB            R6, [R0,#2]
447182:  BLX             rand
447186:  UXTH            R0, R0
447188:  VMOV            S0, R0
44718C:  SUBS            R0, R6, R4
44718E:  VCVT.F32.S32    S0, S0
447192:  VMOV            S2, R0
447196:  VCVT.F32.S32    S2, S2
44719A:  VMUL.F32        S0, S0, S18
44719E:  VMUL.F32        S0, S0, S2
4471A2:  VCVT.S32.F32    S0, S0
4471A6:  VMOV            R9, S0
4471AA:  CMP.W           R10, #2
4471AE:  BEQ             loc_44712C
4471B0:  LDR.W           R0, [R8,#0x14]
4471B4:  MOV             R4, R9
4471B6:  LDR             R2, [R7,#arg_10]
4471B8:  LDRB            R1, [R5,#0xD]
4471BA:  LDRB            R0, [R0,#3]
4471BC:  SUBS            R0, R0, R2
4471BE:  SUBS            R6, R0, R1
4471C0:  LDR             R0, [R7,#arg_4]
4471C2:  MOV             R1, R5; int
4471C4:  STRD.W          R0, R10, [SP,#0x68+var_64]; int
4471C8:  ADD             R0, SP, #0x68+var_3C
4471CA:  STR             R0, [SP,#0x68+var_5C]; int
4471CC:  ADD             R0, SP, #0x68+var_40
4471CE:  STR             R0, [SP,#0x68+var_58]; int
4471D0:  MOVS            R0, #0
4471D2:  STR             R0, [SP,#0x68+var_54]; int
4471D4:  MOV             R0, R8; int
4471D6:  MOV             R2, R4; int
4471D8:  MOV             R3, R6; int
4471DA:  VSTR            S16, [SP,#0x68+var_68]
4471DE:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
4471E2:  CBNZ            R0, loc_4471F4
4471E4:  LDR             R0, [SP,#0x68+var_4C]
4471E6:  ADD.W           R11, R11, #1
4471EA:  CMP             R11, R0
4471EC:  BLT.W           loc_4470E8
4471F0:  MOVS            R0, #0
4471F2:  B               loc_447230
4471F4:  LDR             R1, [R7,#arg_14]
4471F6:  LDR.W           R12, [R7,#arg_18]
4471FA:  CMP             R1, #0
4471FC:  IT NE
4471FE:  STRNE.W         R10, [R1]
447202:  CMP.W           R12, #0
447206:  LDRD.W          R3, R2, [R7,#arg_24]
44720A:  LDRD.W          R5, R1, [R7,#arg_1C]
44720E:  IT NE
447210:  STRNE.W         R9, [R12]
447214:  CMP             R5, #0
447216:  IT NE
447218:  STRNE           R4, [R5]
44721A:  CMP             R1, #0
44721C:  IT NE
44721E:  STRNE           R6, [R1]
447220:  CMP             R3, #0
447222:  ITT NE
447224:  LDRNE           R1, [SP,#0x68+var_3C]
447226:  STRNE           R1, [R3]
447228:  CMP             R2, #0
44722A:  ITT NE
44722C:  LDRNE           R1, [SP,#0x68+var_40]
44722E:  STRNE           R1, [R2]
447230:  ADD             SP, SP, #0x30 ; '0'
447232:  VPOP            {D8-D10}
447236:  ADD             SP, SP, #4
447238:  POP.W           {R8-R11}
44723C:  POP             {R4-R7,PC}
