; =========================================================
; Game Engine Function: _ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_
; Address            : 0x597FC8 - 0x59826E
; =========================================================

597FC8:  PUSH            {R4-R7,LR}
597FCA:  ADD             R7, SP, #0xC
597FCC:  PUSH.W          {R8-R11}
597FD0:  SUB             SP, SP, #0x7C
597FD2:  MOV             R6, R0
597FD4:  LDR             R0, =(CameraRangeMaxX_ptr - 0x597FDE)
597FD6:  MOV             R4, R1
597FD8:  LDR             R1, [R7,#arg_3C]
597FDA:  ADD             R0, PC; CameraRangeMaxX_ptr
597FDC:  STR             R1, [SP,#0x98+var_20]
597FDE:  LDR             R1, [R7,#arg_38]
597FE0:  MOV             R12, R2
597FE2:  STR             R1, [SP,#0x98+var_44]
597FE4:  CMP             R12, R3
597FE6:  LDR             R0, [R0]; CameraRangeMaxX
597FE8:  MOV             R5, R3
597FEA:  LDR             R1, [R7,#arg_34]
597FEC:  MOV             R9, R12
597FEE:  STR             R1, [SP,#0x98+var_34]
597FF0:  ADD.W           R11, R7, #0x20 ; ' '
597FF4:  LDR             R0, [R0]
597FF6:  ITT LT
597FF8:  MOVLT           R5, R12
597FFA:  MOVLT           R9, R3
597FFC:  LDR             R1, [R7,#arg_30]
597FFE:  STR             R1, [SP,#0x98+var_38]
598000:  CMP             R0, R6
598002:  LDR             R1, [R7,#arg_2C]
598004:  STR             R1, [SP,#0x98+var_24]
598006:  LDR             R1, [R7,#arg_28]
598008:  STR             R1, [SP,#0x98+var_28]
59800A:  LDR.W           R8, [R7,#arg_24]
59800E:  LDM.W           R11, {R1,R10,R11}
598012:  STR             R1, [SP,#0x98+var_40]
598014:  LDR             R1, [R7,#arg_14]
598016:  STR             R1, [SP,#0x98+var_4C]
598018:  LDR             R1, [R7,#arg_10]
59801A:  STR             R1, [SP,#0x98+var_30]
59801C:  LDRD.W          R2, R1, [R7,#arg_8]
598020:  STR             R2, [SP,#0x98+var_3C]
598022:  LDR             R2, [R7,#arg_4]
598024:  STR             R2, [SP,#0x98+var_48]
598026:  LDR             R2, [R7,#arg_0]
598028:  STR             R2, [SP,#0x98+var_2C]
59802A:  BLE             loc_5980A4
59802C:  LDR             R2, =(CameraRangeMinX_ptr - 0x598032)
59802E:  ADD             R2, PC; CameraRangeMinX_ptr
598030:  LDR             R2, [R2]; CameraRangeMinX
598032:  LDR.W           LR, [R2]
598036:  CMP             LR, R4
598038:  BGE             loc_5980A4
59803A:  STRD.W          R10, R1, [SP,#0x98+var_54]
59803E:  MOV             R1, R6
598040:  LDR.W           R10, =(CameraRangeMaxY_ptr - 0x598048)
598044:  ADD             R10, PC; CameraRangeMaxY_ptr
598046:  LDR.W           R2, [R10]; CameraRangeMaxY
59804A:  LDR.W           R10, [R2]
59804E:  CMP             R5, R10
598050:  BGE             loc_5980E0
598052:  LDR             R2, =(CameraRangeMinY_ptr - 0x598058)
598054:  ADD             R2, PC; CameraRangeMinY_ptr
598056:  LDR             R2, [R2]; CameraRangeMinY
598058:  LDR             R6, [R2]
59805A:  CMP             R9, R6
59805C:  BLE             loc_5980E0
59805E:  MOV             R2, R4
598060:  CMP             R0, R2
598062:  BGE             loc_59813E
598064:  LDR             R6, [SP,#0x98+var_34]
598066:  STR             R6, [SP,#0x98+var_60]
598068:  LDR             R6, [SP,#0x98+var_38]
59806A:  STR             R6, [SP,#0x98+var_64]
59806C:  STRD.W          R11, R8, [SP,#0x98+var_74]
598070:  LDR             R6, [SP,#0x98+var_4C]
598072:  STR             R6, [SP,#0x98+var_80]
598074:  LDR             R6, [SP,#0x98+var_30]
598076:  STR             R6, [SP,#0x98+var_84]
598078:  LDR             R6, [SP,#0x98+var_48]
59807A:  STR             R6, [SP,#0x98+var_90]
59807C:  LDR             R6, [SP,#0x98+var_2C]
59807E:  STRD.W          R3, R6, [SP,#0x98+var_98]
598082:  LDR             R3, [SP,#0x98+var_44]
598084:  STR             R3, [SP,#0x98+var_5C]
598086:  LDR             R3, [SP,#0x98+var_28]
598088:  STR             R3, [SP,#0x98+var_6C]
59808A:  LDR             R3, [SP,#0x98+var_40]
59808C:  STR             R3, [SP,#0x98+var_7C]
59808E:  LDR             R3, [SP,#0x98+var_3C]
598090:  STR             R3, [SP,#0x98+var_8C]
598092:  LDR             R3, [SP,#0x98+var_20]
598094:  STR             R3, [SP,#0x98+var_58]
598096:  LDR             R3, [SP,#0x98+var_24]
598098:  STR             R3, [SP,#0x98+var_68]
59809A:  LDR             R3, [SP,#0x98+var_54]
59809C:  STR             R3, [SP,#0x98+var_78]
59809E:  LDR             R3, [SP,#0x98+var_50]
5980A0:  STR             R3, [SP,#0x98+var_88]
5980A2:  B               loc_598182
5980A4:  LDR             R0, [SP,#0x98+var_34]
5980A6:  STR             R0, [SP,#0x98+var_64]
5980A8:  LDR             R0, [SP,#0x98+var_38]
5980AA:  STR             R0, [SP,#0x98+var_68]
5980AC:  STRD.W          R11, R8, [SP,#0x98+var_78]
5980B0:  LDR             R0, [SP,#0x98+var_4C]
5980B2:  STR             R0, [SP,#0x98+var_84]
5980B4:  LDR             R0, [SP,#0x98+var_30]
5980B6:  STR             R0, [SP,#0x98+var_88]
5980B8:  LDR             R0, [SP,#0x98+var_48]
5980BA:  STR             R0, [SP,#0x98+var_94]
5980BC:  LDR             R0, [SP,#0x98+var_2C]
5980BE:  STR             R0, [SP,#0x98+var_98]
5980C0:  LDR             R0, [SP,#0x98+var_44]
5980C2:  STR             R0, [SP,#0x98+var_60]
5980C4:  LDR             R0, [SP,#0x98+var_28]
5980C6:  STR             R0, [SP,#0x98+var_70]
5980C8:  LDR             R0, [SP,#0x98+var_40]
5980CA:  STR             R0, [SP,#0x98+var_80]
5980CC:  LDR             R0, [SP,#0x98+var_3C]
5980CE:  STR             R0, [SP,#0x98+var_90]
5980D0:  LDR             R0, [SP,#0x98+var_20]
5980D2:  STR             R0, [SP,#0x98+var_5C]
5980D4:  LDR             R0, [SP,#0x98+var_24]
5980D6:  STR             R0, [SP,#0x98+var_6C]
5980D8:  STR.W           R10, [SP,#0x98+var_7C]
5980DC:  STR             R1, [SP,#0x98+var_8C]
5980DE:  B               loc_59811E
5980E0:  LDR             R0, [SP,#0x98+var_34]
5980E2:  MOV             R6, R1
5980E4:  STR             R0, [SP,#0x98+var_64]
5980E6:  LDR             R0, [SP,#0x98+var_38]
5980E8:  STR             R0, [SP,#0x98+var_68]
5980EA:  STRD.W          R11, R8, [SP,#0x98+var_78]
5980EE:  LDR             R0, [SP,#0x98+var_4C]
5980F0:  STR             R0, [SP,#0x98+var_84]
5980F2:  LDR             R0, [SP,#0x98+var_30]
5980F4:  STR             R0, [SP,#0x98+var_88]
5980F6:  LDR             R0, [SP,#0x98+var_48]
5980F8:  STR             R0, [SP,#0x98+var_94]
5980FA:  LDR             R0, [SP,#0x98+var_2C]
5980FC:  STR             R0, [SP,#0x98+var_98]
5980FE:  LDR             R0, [SP,#0x98+var_44]
598100:  STR             R0, [SP,#0x98+var_60]
598102:  LDR             R0, [SP,#0x98+var_28]
598104:  STR             R0, [SP,#0x98+var_70]
598106:  LDR             R0, [SP,#0x98+var_40]
598108:  STR             R0, [SP,#0x98+var_80]
59810A:  LDR             R0, [SP,#0x98+var_3C]
59810C:  STR             R0, [SP,#0x98+var_90]
59810E:  LDR             R0, [SP,#0x98+var_20]
598110:  STR             R0, [SP,#0x98+var_5C]
598112:  LDR             R0, [SP,#0x98+var_24]
598114:  STR             R0, [SP,#0x98+var_6C]
598116:  LDR             R0, [SP,#0x98+var_54]
598118:  STR             R0, [SP,#0x98+var_7C]
59811A:  LDR             R0, [SP,#0x98+var_50]
59811C:  STR             R0, [SP,#0x98+var_8C]
59811E:  MOV             R0, R6
598120:  MOV             R1, R4
598122:  MOV             R2, R12
598124:  BLX.W           j__ZN11CWaterLevel24RenderFlatWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderFlatWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
598128:  MOV             R0, R6; this
59812A:  MOV             R1, R5; int
59812C:  MOV             R2, R4; int
59812E:  MOV             R3, R9; int
598130:  ADD             SP, SP, #0x7C ; '|'
598132:  POP.W           {R8-R11}
598136:  POP.W           {R4-R7,LR}
59813A:  B.W             _ZN11CWaterLevel13SetUpWaterFogEiiii; CWaterLevel::SetUpWaterFog(int,int,int,int)
59813E:  CMP             LR, R1
598140:  BLE             loc_598190
598142:  LDR             R0, [SP,#0x98+var_34]
598144:  STR             R0, [SP,#0x98+var_60]
598146:  LDR             R0, [SP,#0x98+var_38]
598148:  STR             R0, [SP,#0x98+var_64]
59814A:  STRD.W          R11, R8, [SP,#0x98+var_74]
59814E:  LDR             R0, [SP,#0x98+var_4C]
598150:  STR             R0, [SP,#0x98+var_80]
598152:  LDR             R0, [SP,#0x98+var_30]
598154:  STR             R0, [SP,#0x98+var_84]
598156:  LDR             R0, [SP,#0x98+var_48]
598158:  STR             R0, [SP,#0x98+var_90]
59815A:  LDR             R0, [SP,#0x98+var_2C]
59815C:  STRD.W          R3, R0, [SP,#0x98+var_98]
598160:  LDR             R0, [SP,#0x98+var_44]
598162:  STR             R0, [SP,#0x98+var_5C]
598164:  LDR             R0, [SP,#0x98+var_28]
598166:  STR             R0, [SP,#0x98+var_6C]
598168:  LDR             R0, [SP,#0x98+var_40]
59816A:  STR             R0, [SP,#0x98+var_7C]
59816C:  LDR             R0, [SP,#0x98+var_3C]
59816E:  STR             R0, [SP,#0x98+var_8C]
598170:  LDR             R0, [SP,#0x98+var_20]
598172:  STR             R0, [SP,#0x98+var_58]
598174:  LDR             R0, [SP,#0x98+var_24]
598176:  STR             R0, [SP,#0x98+var_68]
598178:  LDR             R0, [SP,#0x98+var_54]
59817A:  STR             R0, [SP,#0x98+var_78]
59817C:  LDR             R0, [SP,#0x98+var_50]
59817E:  STR             R0, [SP,#0x98+var_88]
598180:  MOV             R0, LR
598182:  MOV             R3, R12
598184:  BLX.W           j__ZN11CWaterLevel29SplitWaterRectangleAlongXLineEiiiii7CRenParS0_S0_S0_; CWaterLevel::SplitWaterRectangleAlongXLine(int,int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
598188:  ADD             SP, SP, #0x7C ; '|'
59818A:  POP.W           {R8-R11}
59818E:  POP             {R4-R7,PC}
598190:  CMP             R5, R6
598192:  BGE             loc_5981D6
598194:  LDR             R0, [SP,#0x98+var_34]
598196:  STR             R0, [SP,#0x98+var_60]
598198:  LDR             R0, [SP,#0x98+var_38]
59819A:  STR             R0, [SP,#0x98+var_64]
59819C:  STRD.W          R11, R8, [SP,#0x98+var_74]
5981A0:  LDR             R0, [SP,#0x98+var_4C]
5981A2:  STR             R0, [SP,#0x98+var_80]
5981A4:  LDR             R0, [SP,#0x98+var_30]
5981A6:  STR             R0, [SP,#0x98+var_84]
5981A8:  LDR             R0, [SP,#0x98+var_48]
5981AA:  STR             R0, [SP,#0x98+var_90]
5981AC:  LDR             R0, [SP,#0x98+var_2C]
5981AE:  STRD.W          R3, R0, [SP,#0x98+var_98]
5981B2:  LDR             R0, [SP,#0x98+var_44]
5981B4:  STR             R0, [SP,#0x98+var_5C]
5981B6:  LDR             R0, [SP,#0x98+var_28]
5981B8:  STR             R0, [SP,#0x98+var_6C]
5981BA:  LDR             R0, [SP,#0x98+var_40]
5981BC:  STR             R0, [SP,#0x98+var_7C]
5981BE:  LDR             R0, [SP,#0x98+var_3C]
5981C0:  STR             R0, [SP,#0x98+var_8C]
5981C2:  LDR             R0, [SP,#0x98+var_20]
5981C4:  STR             R0, [SP,#0x98+var_58]
5981C6:  LDR             R0, [SP,#0x98+var_24]
5981C8:  STR             R0, [SP,#0x98+var_68]
5981CA:  LDR             R0, [SP,#0x98+var_54]
5981CC:  STR             R0, [SP,#0x98+var_78]
5981CE:  LDR             R0, [SP,#0x98+var_50]
5981D0:  STR             R0, [SP,#0x98+var_88]
5981D2:  MOV             R0, R6
5981D4:  B               loc_598220
5981D6:  CMP             R9, R10
5981D8:  LDR.W           R9, [SP,#0x98+var_3C]
5981DC:  LDRD.W          R4, LR, [SP,#0x98+var_44]
5981E0:  LDRD.W          R0, R5, [SP,#0x98+var_4C]
5981E4:  BLE             loc_598228
5981E6:  LDR             R6, [SP,#0x98+var_34]
5981E8:  STR             R6, [SP,#0x98+var_60]
5981EA:  LDR             R6, [SP,#0x98+var_38]
5981EC:  STR             R6, [SP,#0x98+var_64]
5981EE:  STRD.W          R11, R8, [SP,#0x98+var_74]
5981F2:  STR             R0, [SP,#0x98+var_80]
5981F4:  LDR             R0, [SP,#0x98+var_30]
5981F6:  STR             R0, [SP,#0x98+var_84]
5981F8:  STR             R5, [SP,#0x98+var_90]
5981FA:  LDR             R5, [SP,#0x98+var_2C]
5981FC:  STRD.W          R3, R5, [SP,#0x98+var_98]
598200:  STR             R4, [SP,#0x98+var_5C]
598202:  LDR             R3, [SP,#0x98+var_28]
598204:  STR             R3, [SP,#0x98+var_6C]
598206:  STR.W           LR, [SP,#0x98+var_7C]
59820A:  STR.W           R9, [SP,#0x98+var_8C]
59820E:  LDR             R0, [SP,#0x98+var_20]
598210:  STR             R0, [SP,#0x98+var_58]
598212:  LDR             R0, [SP,#0x98+var_24]
598214:  STR             R0, [SP,#0x98+var_68]
598216:  LDR             R0, [SP,#0x98+var_54]
598218:  STR             R0, [SP,#0x98+var_78]
59821A:  LDR             R0, [SP,#0x98+var_50]
59821C:  STR             R0, [SP,#0x98+var_88]
59821E:  MOV             R0, R10
598220:  MOV             R3, R12
598222:  BLX.W           j__ZN11CWaterLevel29SplitWaterRectangleAlongYLineEiiiii7CRenParS0_S0_S0_; CWaterLevel::SplitWaterRectangleAlongYLine(int,int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
598226:  B               loc_598188
598228:  LDR.W           R10, [SP,#0x98+var_34]
59822C:  STR.W           R10, [SP,#0x98+var_64]
598230:  LDR             R6, [SP,#0x98+var_38]
598232:  STR             R6, [SP,#0x98+var_68]
598234:  STRD.W          R11, R8, [SP,#0x98+var_78]
598238:  STR             R0, [SP,#0x98+var_84]
59823A:  LDR             R0, [SP,#0x98+var_30]
59823C:  STR             R0, [SP,#0x98+var_88]
59823E:  STR             R5, [SP,#0x98+var_94]
598240:  LDR             R5, [SP,#0x98+var_2C]
598242:  STR             R5, [SP,#0x98+var_98]
598244:  STR             R4, [SP,#0x98+var_60]
598246:  LDR             R4, [SP,#0x98+var_28]
598248:  STR             R4, [SP,#0x98+var_70]
59824A:  STR.W           LR, [SP,#0x98+var_80]
59824E:  STR.W           R9, [SP,#0x98+var_90]
598252:  LDR             R0, [SP,#0x98+var_20]
598254:  STR             R0, [SP,#0x98+var_5C]
598256:  LDR             R0, [SP,#0x98+var_24]
598258:  STR             R0, [SP,#0x98+var_6C]
59825A:  LDR             R0, [SP,#0x98+var_54]
59825C:  STR             R0, [SP,#0x98+var_7C]
59825E:  LDR             R0, [SP,#0x98+var_50]
598260:  STR             R0, [SP,#0x98+var_8C]
598262:  MOV             R0, R1
598264:  MOV             R1, R2
598266:  MOV             R2, R12
598268:  BLX             j__ZN11CWaterLevel30RenderHighDetailWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderHighDetailWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59826C:  B               loc_598188
