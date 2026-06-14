; =========================================================
; Game Engine Function: _ZN10Interior_c14FurnishBedroomEv
; Address            : 0x447F34 - 0x448848
; =========================================================

447F34:  PUSH            {R4-R7,LR}
447F36:  ADD             R7, SP, #0xC
447F38:  PUSH.W          {R8-R11}
447F3C:  SUB             SP, SP, #4
447F3E:  VPUSH           {D8-D11}
447F42:  SUB             SP, SP, #0x48
447F44:  MOV             R4, R0
447F46:  LDR.W           R0, =(g_furnitureMan_ptr - 0x447F52)
447F4A:  LDR             R1, [R4,#0x14]
447F4C:  MOVS            R2, #1; int
447F4E:  ADD             R0, PC; g_furnitureMan_ptr
447F50:  MOVS            R6, #1
447F52:  LDRB            R3, [R1,#0x1F]; unsigned __int8
447F54:  MOVS            R1, #3; int
447F56:  LDR             R0, [R0]; g_furnitureMan ; this
447F58:  BLX             j__ZN18FurnitureManager_c11GetRandomIdEiih; FurnitureManager_c::GetRandomId(int,int,uchar)
447F5C:  LDR             R1, [R4,#0x14]
447F5E:  MOVS            R2, #2
447F60:  STRB.W          R0, [R4,#0x791]
447F64:  MOVS            R5, #0
447F66:  MOVS            R3, #2; int
447F68:  LDRSB.W         R0, [R1,#5]
447F6C:  MOVS            R1, #7
447F6E:  STRD.W          R2, R1, [SP,#0x88+var_88]; int
447F72:  MOVS            R2, #0; int
447F74:  SUBS            R1, R0, #1; int
447F76:  MOV             R0, R4; this
447F78:  STR             R5, [SP,#0x88+var_80]; unsigned __int8
447F7A:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
447F7E:  ADD.W           R9, SP, #0x88+var_44
447F82:  ADD             R0, SP, #0x88+var_48
447F84:  MOV.W           R1, #0xFFFFFFFF
447F88:  STRD.W          R5, R5, [SP,#0x88+var_68]; int *
447F8C:  STR             R5, [SP,#0x88+var_60]; int *
447F8E:  MOVS            R2, #0; int
447F90:  STRD.W          R5, R6, [SP,#0x88+var_88]; float
447F94:  MOV.W           R3, #0xFFFFFFFF; int
447F98:  STRD.W          R1, R1, [SP,#0x88+var_80]; int
447F9C:  MOVS            R1, #3; int
447F9E:  STRD.W          R5, R9, [SP,#0x88+var_78]; int
447FA2:  STRD.W          R0, R5, [SP,#0x88+var_70]; int *
447FA6:  MOV             R0, R4; this
447FA8:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
447FAC:  MOV             R8, R0
447FAE:  LDR             R0, [SP,#0x88+var_48]
447FB0:  CMP             R0, #1
447FB2:  BLT             loc_448078
447FB4:  LDRSB.W         R3, [R4,#0x791]; int
447FB8:  SUBS            R0, #1
447FBA:  LDR             R1, [SP,#0x88+var_44]
447FBC:  MOVS            R2, #1; int
447FBE:  STRD.W          R5, R5, [SP,#0x88+var_68]; int *
447FC2:  STR             R5, [SP,#0x88+var_60]; int *
447FC4:  STRD.W          R5, R6, [SP,#0x88+var_88]; float
447FC8:  STRD.W          R1, R0, [SP,#0x88+var_80]; int
447FCC:  MOV             R0, R4; this
447FCE:  MOVS            R1, #3; int
447FD0:  STRD.W          R5, R5, [SP,#0x88+var_78]; int
447FD4:  STRD.W          R5, R5, [SP,#0x88+var_70]; int *
447FD8:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
447FDC:  CMP             R0, #0
447FDE:  BEQ             loc_448078
447FE0:  LDR             R0, [SP,#0x88+var_44]
447FE2:  CMP             R0, #3; switch 4 cases
447FE4:  BHI             def_447FE6; jumptable 00447FE6 default case
447FE6:  TBB.W           [PC,R0]; switch jump
447FEA:  DCB 2; jump table for switch statement
447FEB:  DCB 0xC
447FEC:  DCB 0x14
447FED:  DCB 0x1E
447FEE:  LDR             R0, [R4,#0x14]; jumptable 00447FE6 case 0
447FF0:  LDR             R1, [SP,#0x88+var_48]
447FF2:  LDRB            R0, [R0,#3]
447FF4:  SUB.W           R11, R1, #1
447FF8:  MOVS            R1, #3
447FFA:  SUB.W           R10, R0, #3
447FFE:  SUBS            R3, R0, #2
448000:  B               loc_448020
448002:  LDR             R0, [SP,#0x88+var_48]; jumptable 00447FE6 case 1
448004:  MOVS            R1, #3
448006:  MOVS            R2, #1
448008:  MOV.W           R11, #2
44800C:  SUB.W           R10, R0, #1
448010:  B               loc_448038
448012:  LDR             R0, [SP,#0x88+var_48]; jumptable 00447FE6 case 2
448014:  MOVS            R1, #4
448016:  MOV.W           R10, #2
44801A:  MOVS            R3, #1
44801C:  SUB.W           R11, R0, #1
448020:  MOVS            R0, #1
448022:  MOV             R2, R11
448024:  B               def_447FE6; jumptable 00447FE6 default case
448026:  LDR             R0, [R4,#0x14]; jumptable 00447FE6 case 3
448028:  LDR             R1, [SP,#0x88+var_48]
44802A:  LDRB            R0, [R0,#2]
44802C:  SUB.W           R10, R1, #1
448030:  MOVS            R1, #4
448032:  SUB.W           R11, R0, #3
448036:  SUBS            R2, R0, #2
448038:  MOVS            R0, #2
44803A:  MOV             R3, R10
44803C:  B               def_447FE6; jumptable 00447FE6 default case
44803E:  VMOV            S0, R2; jumptable 00447FE6 default case
448042:  VMOV            S2, R3
448046:  VCVT.F32.S32    S0, S0
44804A:  VCVT.F32.S32    S2, S2
44804E:  STRD.W          R0, R8, [SP,#0x88+var_88]; int
448052:  MOV             R0, R4; this
448054:  VMOV            R2, S0; float
448058:  VMOV            R3, S2; float
44805C:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
448060:  MOVS            R0, #0
448062:  MOVS            R1, #2
448064:  MOVS            R2, #1
448066:  MOVS            R3, #1; int
448068:  STRD.W          R2, R1, [SP,#0x88+var_88]; int
44806C:  MOV             R1, R11; int
44806E:  STR             R0, [SP,#0x88+var_80]; int
448070:  MOV             R0, R4; this
448072:  MOV             R2, R10; int
448074:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
448078:  LDRD.W          R1, R0, [SP,#0x88+var_48]
44807C:  ADD             R2, SP, #0x88+var_80
44807E:  LDRSB.W         R3, [R4,#0x791]; int
448082:  ADDS            R1, #2
448084:  STRD.W          R5, R5, [SP,#0x88+var_68]; int *
448088:  STR             R5, [SP,#0x88+var_60]; int *
44808A:  STRD.W          R5, R6, [SP,#0x88+var_88]; float
44808E:  STM             R2!, {R0,R1,R5}
448090:  MOV             R0, R4; this
448092:  MOVS            R1, #3; int
448094:  MOVS            R2, #1; int
448096:  STRD.W          R5, R5, [SP,#0x88+var_74]; int *
44809A:  STR             R5, [SP,#0x88+var_6C]; int *
44809C:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
4480A0:  CMP             R0, #0
4480A2:  BEQ             loc_44812C
4480A4:  LDR             R0, [SP,#0x88+var_44]
4480A6:  CMP             R0, #3; switch 4 cases
4480A8:  BHI             def_4480AA; jumptable 004480AA default case
4480AA:  TBB.W           [PC,R0]; switch jump
4480AE:  DCB 2; jump table for switch statement
4480AF:  DCB 0xB
4480B0:  DCB 0x11
4480B1:  DCB 0x19
4480B2:  LDR             R0, [R4,#0x14]; jumptable 004480AA case 0
4480B4:  LDR             R1, [SP,#0x88+var_48]
4480B6:  LDRB            R0, [R0,#3]
4480B8:  ADDS            R5, R1, #2
4480BA:  MOVS            R1, #4
4480BC:  SUBS            R6, R0, #3
4480BE:  SUBS            R2, R0, #2
4480C0:  B               loc_4480DA
4480C2:  B               loc_4480F2; jumptable 004480AA default case
4480C4:  LDR             R0, [SP,#0x88+var_48]; jumptable 004480AA case 1
4480C6:  MOVS            R1, #4
4480C8:  MOVS            R3, #1
4480CA:  MOVS            R5, #2
4480CC:  ADDS            R6, R0, #2
4480CE:  B               loc_4480EE
4480D0:  LDR             R0, [SP,#0x88+var_48]; jumptable 004480AA case 2
4480D2:  MOVS            R2, #1
4480D4:  MOVS            R6, #2
4480D6:  MOVS            R1, #3
4480D8:  ADDS            R5, R0, #2
4480DA:  MOVS            R0, #3
4480DC:  MOV             R3, R5
4480DE:  B               loc_4480F2
4480E0:  LDR             R0, [R4,#0x14]; jumptable 004480AA case 3
4480E2:  LDR             R1, [SP,#0x88+var_48]
4480E4:  LDRB            R0, [R0,#2]
4480E6:  ADDS            R6, R1, #2
4480E8:  MOVS            R1, #3; int
4480EA:  SUBS            R5, R0, #3
4480EC:  SUBS            R3, R0, #2
4480EE:  MOVS            R0, #0
4480F0:  MOV             R2, R6
4480F2:  VMOV            S0, R3
4480F6:  VMOV            S2, R2
4480FA:  VCVT.F32.S32    S0, S0
4480FE:  VCVT.F32.S32    S2, S2
448102:  STRD.W          R0, R8, [SP,#0x88+var_88]; int
448106:  MOV             R0, R4; this
448108:  VMOV            R2, S0; float
44810C:  VMOV            R3, S2; float
448110:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
448114:  MOVS            R0, #0
448116:  MOVS            R1, #2
448118:  MOVS            R2, #1
44811A:  MOVS            R3, #1; int
44811C:  STRD.W          R2, R1, [SP,#0x88+var_88]; int
448120:  MOV             R1, R5; int
448122:  STR             R0, [SP,#0x88+var_80]; unsigned __int8
448124:  MOV             R0, R4; this
448126:  MOV             R2, R6; int
448128:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44812C:  LDRSB.W         R3, [R4,#0x791]; int
448130:  MOVS            R5, #0
448132:  MOV.W           R6, #0xFFFFFFFF
448136:  MOV.W           R8, #1
44813A:  MOV             R0, R4; this
44813C:  MOVS            R1, #3; int
44813E:  MOVS            R2, #3; int
448140:  STRD.W          R5, R5, [SP,#0x88+var_68]; int *
448144:  STR             R5, [SP,#0x88+var_60]; int *
448146:  STRD.W          R5, R8, [SP,#0x88+var_88]; float
44814A:  STRD.W          R6, R6, [SP,#0x88+var_80]; int
44814E:  STRD.W          R5, R5, [SP,#0x88+var_78]; int
448152:  STRD.W          R5, R5, [SP,#0x88+var_70]; int *
448156:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44815A:  LDRSB.W         R3, [R4,#0x791]; int
44815E:  MOV             R0, R4; this
448160:  MOVS            R1, #3; int
448162:  MOVS            R2, #2; int
448164:  STRD.W          R5, R5, [SP,#0x88+var_68]; int *
448168:  STR             R5, [SP,#0x88+var_60]; int *
44816A:  STRD.W          R5, R8, [SP,#0x88+var_88]; float
44816E:  STRD.W          R6, R6, [SP,#0x88+var_80]; int
448172:  STRD.W          R5, R5, [SP,#0x88+var_78]; int
448176:  STRD.W          R5, R5, [SP,#0x88+var_70]; int *
44817A:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44817E:  BLX             rand
448182:  UXTH            R0, R0
448184:  VLDR            S16, =0.000015259
448188:  VMOV            S0, R0
44818C:  VLDR            S18, =100.0
448190:  MOVW            R11, #0xFFFF
448194:  VCVT.F32.S32    S0, S0
448198:  VMUL.F32        S0, S0, S16
44819C:  VMUL.F32        S0, S0, S18
4481A0:  VCVT.S32.F32    S0, S0
4481A4:  VMOV            R0, S0
4481A8:  CMP             R0, #0x18
4481AA:  BGT             loc_4481FE
4481AC:  ADD             R0, SP, #0x88+var_58
4481AE:  STRD.W          R0, R5, [SP,#0x88+var_68]; int *
4481B2:  ADD             R0, SP, #0x88+var_54
4481B4:  STR             R5, [SP,#0x88+var_60]; int *
4481B6:  STRD.W          R5, R8, [SP,#0x88+var_88]; float
4481BA:  MOVS            R1, #2; int
4481BC:  STRD.W          R6, R6, [SP,#0x88+var_80]; int
4481C0:  MOVS            R2, #6; int
4481C2:  STRD.W          R5, R9, [SP,#0x88+var_78]; int
4481C6:  MOV.W           R3, #0xFFFFFFFF; int
4481CA:  STRD.W          R5, R0, [SP,#0x88+var_70]; int *
4481CE:  MOV             R0, R4; this
4481D0:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
4481D4:  CMP             R0, #0
4481D6:  BEQ.W           loc_448416
4481DA:  VLDR            S0, [SP,#0x88+var_58]
4481DE:  VLDR            S2, [SP,#0x88+var_54]
4481E2:  VCVT.F32.S32    S20, S0
4481E6:  VCVT.F32.S32    S22, S2
4481EA:  LDR             R5, [SP,#0x88+var_44]
4481EC:  VMOV.F32        S0, #0.5
4481F0:  ORR.W           R0, R5, #2
4481F4:  CMP             R0, #2
4481F6:  BNE             loc_4482C6
4481F8:  VADD.F32        S22, S22, S0
4481FC:  B               loc_4482D2
4481FE:  CMP             R0, #0x31 ; '1'
448200:  BGT             loc_448262
448202:  MOVS            R0, #0
448204:  ADD             R1, SP, #0x88+var_58
448206:  STRD.W          R1, R0, [SP,#0x88+var_68]; int *
44820A:  ADD             R1, SP, #0x88+var_54
44820C:  MOV.W           R2, #0xFFFFFFFF
448210:  MOVS            R3, #1
448212:  STR             R0, [SP,#0x88+var_60]; int *
448214:  STRD.W          R0, R3, [SP,#0x88+var_88]; float
448218:  MOV.W           R3, #0xFFFFFFFF; int
44821C:  STRD.W          R2, R2, [SP,#0x88+var_80]; int
448220:  MOVS            R2, #6; int
448222:  STRD.W          R0, R9, [SP,#0x88+var_78]; int
448226:  STRD.W          R0, R1, [SP,#0x88+var_70]; int *
44822A:  MOV             R0, R4; this
44822C:  MOVS            R1, #2; int
44822E:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
448232:  CMP             R0, #0
448234:  BEQ.W           loc_448416
448238:  VLDR            S0, [SP,#0x88+var_58]
44823C:  VLDR            S2, [SP,#0x88+var_54]
448240:  VCVT.F32.S32    S20, S0
448244:  VCVT.F32.S32    S22, S2
448248:  LDR             R5, [SP,#0x88+var_44]
44824A:  VMOV.F32        S0, #0.5
44824E:  ORR.W           R0, R5, #2
448252:  CMP             R0, #2
448254:  BNE             loc_4482EA
448256:  LDR.W           R0, =(g_furnitureMan_ptr - 0x448262)
44825A:  VADD.F32        S22, S22, S0
44825E:  ADD             R0, PC; g_furnitureMan_ptr
448260:  B               loc_4483CA
448262:  CMP             R0, #0x4A ; 'J'
448264:  BGT.W           loc_448416
448268:  MOV.W           R10, #0
44826C:  ADD             R5, SP, #0x88+var_54
44826E:  MOVS            R0, #1
448270:  ADD             R6, SP, #0x88+var_58
448272:  STRD.W          R6, R10, [SP,#0x88+var_68]; int *
448276:  MOV.W           R8, #0xFFFFFFFF
44827A:  STR.W           R10, [SP,#0x88+var_60]; int *
44827E:  MOVS            R1, #2; int
448280:  STRD.W          R10, R0, [SP,#0x88+var_88]; float
448284:  MOV             R0, R4; this
448286:  MOVS            R2, #6; int
448288:  MOV.W           R3, #0xFFFFFFFF; int
44828C:  STRD.W          R8, R8, [SP,#0x88+var_80]; float
448290:  STRD.W          R10, R9, [SP,#0x88+var_78]; int
448294:  STRD.W          R10, R5, [SP,#0x88+var_70]; int *
448298:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
44829C:  CMP             R0, #0
44829E:  BEQ             loc_448366
4482A0:  VLDR            S0, [SP,#0x88+var_58]
4482A4:  VLDR            S2, [SP,#0x88+var_54]
4482A8:  VCVT.F32.S32    S20, S0
4482AC:  VCVT.F32.S32    S22, S2
4482B0:  LDR.W           R11, [SP,#0x88+var_44]
4482B4:  VMOV.F32        S0, #0.5
4482B8:  ORR.W           R0, R11, #2
4482BC:  CMP             R0, #2
4482BE:  BNE             loc_4482FE
4482C0:  VADD.F32        S22, S22, S0
4482C4:  B               loc_44830A
4482C6:  VADD.F32        S0, S20, S0
4482CA:  CMP             R0, #3
4482CC:  IT EQ
4482CE:  VMOVEQ.F32      S20, S0
4482D2:  LDR.W           R0, =(g_furnitureMan_ptr - 0x4482E2)
4482D6:  SXTH.W          R3, R11
4482DA:  LDR             R1, [R4,#0x14]
4482DC:  MOVS            R2, #8
4482DE:  ADD             R0, PC; g_furnitureMan_ptr
4482E0:  LDRB            R1, [R1,#0x1F]
4482E2:  STR             R1, [SP,#0x88+var_88]
4482E4:  MOVS            R1, #2
4482E6:  LDR             R0, [R0]; g_furnitureMan
4482E8:  B               loc_4483DA
4482EA:  VADD.F32        S0, S20, S0
4482EE:  CMP             R0, #3
4482F0:  LDR.W           R0, =(g_furnitureMan_ptr - 0x4482F8)
4482F4:  ADD             R0, PC; g_furnitureMan_ptr
4482F6:  IT EQ
4482F8:  VMOVEQ.F32      S20, S0
4482FC:  B               loc_4483CA
4482FE:  VADD.F32        S0, S20, S0
448302:  CMP             R0, #3
448304:  IT EQ
448306:  VMOVEQ.F32      S20, S0
44830A:  LDR.W           R0, =(g_furnitureMan_ptr - 0x44831A)
44830E:  MOVW            R2, #0xFFFF
448312:  LDR             R1, [R4,#0x14]
448314:  SXTH            R3, R2; __int16
448316:  ADD             R0, PC; g_furnitureMan_ptr
448318:  MOVS            R2, #8; int
44831A:  LDR             R0, [R0]; g_furnitureMan ; this
44831C:  LDRB            R1, [R1,#0x1F]
44831E:  STR             R1, [SP,#0x88+var_88]; float
448320:  MOVS            R1, #2; int
448322:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
448326:  VMOV.F32        S0, #0.5
44832A:  VLDR            S4, =90.0
44832E:  MOV             R2, R0; int
448330:  MOV.W           R0, #0x3F000000
448334:  MOVS            R1, #1; int
448336:  VADD.F32        S2, S22, S0
44833A:  VADD.F32        S0, S20, S0
44833E:  VMOV            R3, S2; int
448342:  VMOV            S2, R11
448346:  MOVW            R11, #0xFFFF
44834A:  VCVT.F32.S32    S2, S2
44834E:  STR             R0, [SP,#0x88+var_84]; float
448350:  MOV             R0, R4; int
448352:  VSTR            S0, [SP,#0x88+var_88]
448356:  VMUL.F32        S2, S2, S4
44835A:  VSTR            S2, [SP,#0x88+var_80]
44835E:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
448362:  ADD             R5, SP, #0x88+var_54
448364:  ADD             R6, SP, #0x88+var_58
448366:  MOVS            R0, #1
448368:  STRD.W          R6, R10, [SP,#0x88+var_68]; int *
44836C:  STR.W           R10, [SP,#0x88+var_60]; int *
448370:  MOVS            R1, #2; int
448372:  STR.W           R10, [SP,#0x88+var_88]; float
448376:  MOVS            R2, #6; int
448378:  STRD.W          R0, R8, [SP,#0x88+var_84]; int
44837C:  MOV             R0, R4; this
44837E:  MOV.W           R3, #0xFFFFFFFF; int
448382:  STRD.W          R8, R10, [SP,#0x88+var_7C]; int
448386:  STRD.W          R9, R10, [SP,#0x88+var_74]; int *
44838A:  STR             R5, [SP,#0x88+var_6C]; int *
44838C:  BLX             j__ZN10Interior_c20PlaceFurnitureOnWallEiiifiiiiPiS0_S0_S0_S0_S0_; Interior_c::PlaceFurnitureOnWall(int,int,int,float,int,int,int,int,int *,int *,int *,int *,int *,int *)
448390:  CMP             R0, #0
448392:  BEQ             loc_448416
448394:  VLDR            S0, [SP,#0x88+var_58]
448398:  VLDR            S2, [SP,#0x88+var_54]
44839C:  VCVT.F32.S32    S20, S0
4483A0:  VCVT.F32.S32    S22, S2
4483A4:  LDR             R5, [SP,#0x88+var_44]
4483A6:  VMOV.F32        S0, #0.5
4483AA:  ORR.W           R0, R5, #2
4483AE:  CMP             R0, #2
4483B0:  BNE             loc_4483B8
4483B2:  VADD.F32        S22, S22, S0
4483B6:  B               loc_4483C4
4483B8:  VADD.F32        S0, S20, S0
4483BC:  CMP             R0, #3
4483BE:  IT EQ
4483C0:  VMOVEQ.F32      S20, S0
4483C4:  LDR.W           R0, =(g_furnitureMan_ptr - 0x4483CC)
4483C8:  ADD             R0, PC; g_furnitureMan_ptr
4483CA:  LDR             R1, [R4,#0x14]
4483CC:  SXTH.W          R3, R11; __int16
4483D0:  LDR             R0, [R0]; g_furnitureMan ; this
4483D2:  MOVS            R2, #3; int
4483D4:  LDRB            R1, [R1,#0x1F]
4483D6:  STR             R1, [SP,#0x88+var_88]; float
4483D8:  MOVS            R1, #2; int
4483DA:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
4483DE:  VMOV.F32        S0, #0.5
4483E2:  VLDR            S4, =90.0
4483E6:  MOV             R2, R0; int
4483E8:  MOV.W           R0, #0x3F000000
4483EC:  MOVS            R1, #1; int
4483EE:  VADD.F32        S2, S22, S0
4483F2:  VADD.F32        S0, S20, S0
4483F6:  VMOV            R3, S2; int
4483FA:  VMOV            S2, R5
4483FE:  VCVT.F32.S32    S2, S2
448402:  STR             R0, [SP,#0x88+var_84]; float
448404:  MOV             R0, R4; int
448406:  VSTR            S0, [SP,#0x88+var_88]
44840A:  VMUL.F32        S2, S2, S4
44840E:  VSTR            S2, [SP,#0x88+var_80]
448412:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
448416:  LDR             R0, [R4,#0x14]
448418:  LDRB            R5, [R0,#0x1F]
44841A:  CMP             R5, #0x4B ; 'K'
44841C:  BCC             loc_448442
44841E:  BLX             rand
448422:  UXTH            R0, R0
448424:  VMOV.F32        S2, #20.0
448428:  VMOV            S0, R0
44842C:  VCVT.F32.S32    S0, S0
448430:  VMUL.F32        S0, S0, S16
448434:  VMUL.F32        S0, S0, S2
448438:  VCVT.S32.F32    S0, S0
44843C:  VMOV            R6, S0
448440:  B               loc_448494
448442:  BLX             rand
448446:  UXTH            R0, R0
448448:  CMP             R5, #0x32 ; '2'
44844A:  VMOV            S0, R0
44844E:  VCVT.F32.S32    S0, S0
448452:  VMUL.F32        S0, S0, S16
448456:  BCC             loc_448480
448458:  VMOV.F32        S2, #30.0
44845C:  VMUL.F32        S0, S0, S2
448460:  VCVT.S32.F32    S0, S0
448464:  VMOV            R0, S0
448468:  ADD.W           R6, R0, #0x14
44846C:  B               loc_448494
44846E:  ALIGN 0x10
448470:  DCFS 0.000015259
448474:  DCFS 100.0
448478:  DCFS 90.0
44847C:  DCFS 50.0
448480:  VLDR            S2, =50.0
448484:  VMUL.F32        S0, S0, S2
448488:  VCVT.S32.F32    S0, S0
44848C:  VMOV            R0, S0
448490:  ADD.W           R6, R0, #0x32 ; '2'
448494:  BLX             rand
448498:  UXTH            R0, R0
44849A:  VLDR            S2, =60.0
44849E:  VMOV            S0, R0
4484A2:  VCVT.F32.S32    S0, S0
4484A6:  VMUL.F32        S0, S0, S16
4484AA:  VMUL.F32        S0, S0, S2
4484AE:  VCVT.S32.F32    S0, S0
4484B2:  VMOV            R0, S0
4484B6:  CMP             R6, R0
4484B8:  BLE             loc_448536
4484BA:  ADD             R0, SP, #0x88+var_50
4484BC:  ADD             R3, SP, #0x88+var_4C; int *
4484BE:  STR             R0, [SP,#0x88+var_88]; int *
4484C0:  MOV             R0, R4; this
4484C2:  MOVS            R1, #2; int
4484C4:  MOVS            R2, #2; int
4484C6:  MOV.W           R8, #2
4484CA:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
4484CE:  CBZ             R0, loc_448536
4484D0:  LDR             R0, =(g_furnitureMan_ptr - 0x4484DE)
4484D2:  SXTH.W          R3, R11; __int16
4484D6:  LDR             R1, [R4,#0x14]
4484D8:  MOVS            R2, #2; int
4484DA:  ADD             R0, PC; g_furnitureMan_ptr
4484DC:  LDR             R0, [R0]; g_furnitureMan ; this
4484DE:  LDRB            R1, [R1,#0x1F]
4484E0:  STR             R1, [SP,#0x88+var_88]; float
4484E2:  MOVS            R1, #8; int
4484E4:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
4484E8:  VLDR            S0, [SP,#0x88+var_4C]
4484EC:  VMOV.F32        S2, #0.5
4484F0:  MOV             R2, R0; int
4484F2:  MOVW            R0, #0xCCCD
4484F6:  VCVT.F32.S32    S0, S0
4484FA:  MOVS            R5, #0
4484FC:  MOVT            R0, #0x3D4C
448500:  MOVS            R1, #0; int
448502:  VADD.F32        S0, S0, S2
448506:  VMOV            R3, S0; int
44850A:  VLDR            S0, [SP,#0x88+var_50]
44850E:  VCVT.F32.S32    S0, S0
448512:  STRD.W          R0, R5, [SP,#0x88+var_84]; int
448516:  MOV             R0, R4; int
448518:  VADD.F32        S0, S0, S2
44851C:  VSTR            S0, [SP,#0x88+var_88]
448520:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
448524:  LDRD.W          R2, R1, [SP,#0x88+var_50]; int
448528:  MOV             R0, R4; this
44852A:  MOVS            R3, #2; int
44852C:  STRD.W          R8, R8, [SP,#0x88+var_88]; int
448530:  STR             R5, [SP,#0x88+var_80]; float
448532:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
448536:  BLX             rand
44853A:  UXTH            R0, R0
44853C:  VMOV            S0, R0
448540:  VCVT.F32.S32    S0, S0
448544:  VMUL.F32        S0, S0, S16
448548:  VMUL.F32        S0, S0, S18
44854C:  VCVT.S32.F32    S0, S0
448550:  VMOV            R0, S0
448554:  CMP             R6, R0
448556:  BLE             loc_4485D6
448558:  ADD             R0, SP, #0x88+var_50
44855A:  ADD             R3, SP, #0x88+var_4C; int *
44855C:  STR             R0, [SP,#0x88+var_88]; int *
44855E:  MOV             R0, R4; this
448560:  MOVS            R1, #1; int
448562:  MOVS            R2, #1; int
448564:  MOV.W           R8, #1
448568:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
44856C:  CBZ             R0, loc_4485D6
44856E:  LDR             R0, =(g_furnitureMan_ptr - 0x44857C)
448570:  SXTH.W          R3, R11; __int16
448574:  LDR             R1, [R4,#0x14]
448576:  MOVS            R2, #5; int
448578:  ADD             R0, PC; g_furnitureMan_ptr
44857A:  LDR             R0, [R0]; g_furnitureMan ; this
44857C:  LDRB            R1, [R1,#0x1F]
44857E:  STR             R1, [SP,#0x88+var_88]; float
448580:  MOVS            R1, #8; int
448582:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
448586:  VLDR            S0, [SP,#0x88+var_4C]
44858A:  VMOV.F32        S2, #0.5
44858E:  MOV             R2, R0; int
448590:  MOVW            R0, #0xCCCD
448594:  VCVT.F32.S32    S0, S0
448598:  MOVS            R5, #0
44859A:  MOVT            R0, #0x3D4C
44859E:  MOVS            R1, #0; int
4485A0:  VADD.F32        S0, S0, S2
4485A4:  VMOV            R3, S0; int
4485A8:  VLDR            S0, [SP,#0x88+var_50]
4485AC:  VCVT.F32.S32    S0, S0
4485B0:  STRD.W          R0, R5, [SP,#0x88+var_84]; int
4485B4:  MOV             R0, R4; int
4485B6:  VADD.F32        S0, S0, S2
4485BA:  VSTR            S0, [SP,#0x88+var_88]
4485BE:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
4485C2:  LDRD.W          R2, R1, [SP,#0x88+var_50]; int
4485C6:  MOVS            R0, #2
4485C8:  STRD.W          R8, R0, [SP,#0x88+var_88]; int
4485CC:  MOV             R0, R4; this
4485CE:  MOVS            R3, #1; int
4485D0:  STR             R5, [SP,#0x88+var_80]; float
4485D2:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
4485D6:  BLX             rand
4485DA:  UXTH            R0, R0
4485DC:  VMOV            S0, R0
4485E0:  VCVT.F32.S32    S0, S0
4485E4:  VMUL.F32        S0, S0, S16
4485E8:  VMUL.F32        S0, S0, S18
4485EC:  VCVT.S32.F32    S0, S0
4485F0:  VMOV            R0, S0
4485F4:  CMP             R6, R0
4485F6:  BLE             loc_448676
4485F8:  ADD             R0, SP, #0x88+var_50
4485FA:  ADD             R3, SP, #0x88+var_4C; int *
4485FC:  STR             R0, [SP,#0x88+var_88]; int *
4485FE:  MOV             R0, R4; this
448600:  MOVS            R1, #1; int
448602:  MOVS            R2, #1; int
448604:  MOV.W           R8, #1
448608:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
44860C:  CBZ             R0, loc_448676
44860E:  LDR             R0, =(g_furnitureMan_ptr - 0x44861C)
448610:  SXTH.W          R3, R11; __int16
448614:  LDR             R1, [R4,#0x14]
448616:  MOVS            R2, #4; int
448618:  ADD             R0, PC; g_furnitureMan_ptr
44861A:  LDR             R0, [R0]; g_furnitureMan ; this
44861C:  LDRB            R1, [R1,#0x1F]
44861E:  STR             R1, [SP,#0x88+var_88]; float
448620:  MOVS            R1, #8; int
448622:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
448626:  VLDR            S0, [SP,#0x88+var_4C]
44862A:  VMOV.F32        S2, #0.5
44862E:  MOV             R2, R0; int
448630:  MOVW            R0, #0xCCCD
448634:  VCVT.F32.S32    S0, S0
448638:  MOVS            R5, #0
44863A:  MOVT            R0, #0x3D4C
44863E:  MOVS            R1, #0; int
448640:  VADD.F32        S0, S0, S2
448644:  VMOV            R3, S0; int
448648:  VLDR            S0, [SP,#0x88+var_50]
44864C:  VCVT.F32.S32    S0, S0
448650:  STRD.W          R0, R5, [SP,#0x88+var_84]; int
448654:  MOV             R0, R4; int
448656:  VADD.F32        S0, S0, S2
44865A:  VSTR            S0, [SP,#0x88+var_88]
44865E:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
448662:  LDRD.W          R2, R1, [SP,#0x88+var_50]; int
448666:  MOVS            R0, #2
448668:  STRD.W          R8, R0, [SP,#0x88+var_88]; int
44866C:  MOV             R0, R4; this
44866E:  MOVS            R3, #1; int
448670:  STR             R5, [SP,#0x88+var_80]; float
448672:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
448676:  BLX             rand
44867A:  UXTH            R0, R0
44867C:  VMOV            S0, R0
448680:  VCVT.F32.S32    S0, S0
448684:  VMUL.F32        S0, S0, S16
448688:  VMUL.F32        S0, S0, S18
44868C:  VCVT.S32.F32    S0, S0
448690:  VMOV            R0, S0
448694:  CMP             R6, R0
448696:  BLE             loc_448716
448698:  ADD             R0, SP, #0x88+var_50
44869A:  ADD             R3, SP, #0x88+var_4C; int *
44869C:  STR             R0, [SP,#0x88+var_88]; int *
44869E:  MOV             R0, R4; this
4486A0:  MOVS            R1, #1; int
4486A2:  MOVS            R2, #1; int
4486A4:  MOV.W           R8, #1
4486A8:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
4486AC:  CBZ             R0, loc_448716
4486AE:  LDR             R0, =(g_furnitureMan_ptr - 0x4486BC)
4486B0:  SXTH.W          R3, R11; __int16
4486B4:  LDR             R1, [R4,#0x14]
4486B6:  MOVS            R2, #3; int
4486B8:  ADD             R0, PC; g_furnitureMan_ptr
4486BA:  LDR             R0, [R0]; g_furnitureMan ; this
4486BC:  LDRB            R1, [R1,#0x1F]
4486BE:  STR             R1, [SP,#0x88+var_88]; float
4486C0:  MOVS            R1, #8; int
4486C2:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
4486C6:  VLDR            S0, [SP,#0x88+var_4C]
4486CA:  VMOV.F32        S2, #0.5
4486CE:  MOV             R2, R0; int
4486D0:  MOVW            R0, #0xCCCD
4486D4:  VCVT.F32.S32    S0, S0
4486D8:  MOVS            R5, #0
4486DA:  MOVT            R0, #0x3D4C
4486DE:  MOVS            R1, #0; int
4486E0:  VADD.F32        S0, S0, S2
4486E4:  VMOV            R3, S0; int
4486E8:  VLDR            S0, [SP,#0x88+var_50]
4486EC:  VCVT.F32.S32    S0, S0
4486F0:  STRD.W          R0, R5, [SP,#0x88+var_84]; int
4486F4:  MOV             R0, R4; int
4486F6:  VADD.F32        S0, S0, S2
4486FA:  VSTR            S0, [SP,#0x88+var_88]
4486FE:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
448702:  LDRD.W          R2, R1, [SP,#0x88+var_50]; int
448706:  MOVS            R0, #2
448708:  STRD.W          R8, R0, [SP,#0x88+var_88]; int
44870C:  MOV             R0, R4; this
44870E:  MOVS            R3, #1; int
448710:  STR             R5, [SP,#0x88+var_80]; int
448712:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
448716:  BLX             rand
44871A:  UXTH            R0, R0
44871C:  VMOV            S0, R0
448720:  VCVT.F32.S32    S0, S0
448724:  VMUL.F32        S0, S0, S16
448728:  VMUL.F32        S0, S0, S18
44872C:  VCVT.S32.F32    S0, S0
448730:  VMOV            R0, S0
448734:  CMP             R6, R0
448736:  BLE             loc_4487B2
448738:  ADD             R0, SP, #0x88+var_50
44873A:  ADD             R3, SP, #0x88+var_4C; int *
44873C:  STR             R0, [SP,#0x88+var_88]; int *
44873E:  MOV             R0, R4; this
448740:  MOVS            R1, #2; int
448742:  MOVS            R2, #2; int
448744:  MOVS            R5, #2
448746:  BLX             j__ZN10Interior_c14FindEmptyTilesEiiPiS0_; Interior_c::FindEmptyTiles(int,int,int *,int *)
44874A:  CBZ             R0, loc_4487B2
44874C:  LDR             R0, =(g_furnitureMan_ptr - 0x44875A)
44874E:  SXTH.W          R3, R11; __int16
448752:  LDR             R1, [R4,#0x14]
448754:  MOVS            R2, #6; int
448756:  ADD             R0, PC; g_furnitureMan_ptr
448758:  LDR             R0, [R0]; g_furnitureMan ; this
44875A:  LDRB            R1, [R1,#0x1F]
44875C:  STR             R1, [SP,#0x88+var_88]; int
44875E:  MOVS            R1, #8; int
448760:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
448764:  VLDR            S0, [SP,#0x88+var_4C]
448768:  VMOV.F32        S2, #0.5
44876C:  MOV             R2, R0; int
44876E:  MOVW            R0, #0xCCCD
448772:  VCVT.F32.S32    S0, S0
448776:  MOVS            R6, #0
448778:  MOVT            R0, #0x3D4C
44877C:  MOVS            R1, #0; int
44877E:  VADD.F32        S0, S0, S2
448782:  VMOV            R3, S0; int
448786:  VLDR            S0, [SP,#0x88+var_50]
44878A:  VCVT.F32.S32    S0, S0
44878E:  STRD.W          R0, R6, [SP,#0x88+var_84]; int
448792:  MOV             R0, R4; int
448794:  VADD.F32        S0, S0, S2
448798:  VSTR            S0, [SP,#0x88+var_88]
44879C:  BLX             j__ZN10Interior_c11PlaceObjectEhP11Furniture_cffff; Interior_c::PlaceObject(uchar,Furniture_c *,float,float,float,float)
4487A0:  LDRD.W          R2, R1, [SP,#0x88+var_50]; int
4487A4:  MOVS            R0, #1
4487A6:  STMEA.W         SP, {R0,R5,R6}
4487AA:  MOV             R0, R4; this
4487AC:  MOVS            R3, #1; int
4487AE:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
4487B2:  LDR             R0, =(g_furnitureMan_ptr - 0x4487C0)
4487B4:  SXTH.W          R3, R11; __int16
4487B8:  LDR             R1, [R4,#0x14]
4487BA:  MOVS            R2, #1; int
4487BC:  ADD             R0, PC; g_furnitureMan_ptr
4487BE:  LDR             R0, [R0]; g_furnitureMan ; this
4487C0:  LDRB            R1, [R1,#0x1F]
4487C2:  STR             R1, [SP,#0x88+var_88]; unsigned __int8
4487C4:  MOVS            R1, #8; int
4487C6:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
4487CA:  MOV             R1, R0; int
4487CC:  LDR             R0, [R4,#0x14]
4487CE:  LDRB            R2, [R1,#0xC]
4487D0:  VMOV.F32        S0, #0.5
4487D4:  LDRB            R3, [R1,#0xD]
4487D6:  LDRB            R6, [R0,#2]
4487D8:  LDRB            R0, [R0,#3]
4487DA:  VMOV            S2, R2
4487DE:  VMOV            S6, R3
4487E2:  ADD             R2, SP, #0x88+var_50
4487E4:  VMOV            S4, R6
4487E8:  VMOV            S8, R0
4487EC:  MOVS            R0, #0
4487EE:  VCVT.F32.U32    S2, S2
4487F2:  VCVT.F32.U32    S4, S4
4487F6:  VCVT.F32.U32    S6, S6
4487FA:  VCVT.F32.U32    S8, S8
4487FE:  STR             R0, [SP,#0x88+var_74]; int
448800:  STR             R2, [SP,#0x88+var_78]; int
448802:  ADD             R2, SP, #0x88+var_4C
448804:  STR             R2, [SP,#0x88+var_7C]; int
448806:  STRD.W          R0, R0, [SP,#0x88+var_84]; int
44880A:  VMUL.F32        S2, S2, S0
44880E:  VMUL.F32        S4, S4, S0
448812:  VMUL.F32        S6, S6, S0
448816:  VMUL.F32        S0, S8, S0
44881A:  VSUB.F32        S2, S4, S2
44881E:  VSUB.F32        S0, S0, S6
448822:  VCVT.S32.F32    S2, S2
448826:  VCVT.S32.F32    S0, S0
44882A:  STR             R0, [SP,#0x88+var_88]; float
44882C:  MOV             R0, R4; int
44882E:  VMOV            R2, S2; int
448832:  VMOV            R3, S0; int
448836:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44883A:  ADD             SP, SP, #0x48 ; 'H'
44883C:  VPOP            {D8-D11}
448840:  ADD             SP, SP, #4
448842:  POP.W           {R8-R11}
448846:  POP             {R4-R7,PC}
