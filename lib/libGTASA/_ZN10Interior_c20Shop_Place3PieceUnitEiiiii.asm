; =========================================================
; Game Engine Function: _ZN10Interior_c20Shop_Place3PieceUnitEiiiii
; Address            : 0x44E1E8 - 0x44E37C
; =========================================================

44E1E8:  PUSH            {R4-R7,LR}
44E1EA:  ADD             R7, SP, #0xC
44E1EC:  PUSH.W          {R8-R11}
44E1F0:  SUB             SP, SP, #0x24
44E1F2:  MOV             R9, R0
44E1F4:  LDR.W           R8, [R7,#arg_0]
44E1F8:  MOV             R10, R1
44E1FA:  LDRSB.W         R1, [R9,#0x790]; int
44E1FE:  MOV             R4, R2
44E200:  ORR.W           R2, R8, #1
44E204:  MOV             R11, R3
44E206:  MOVW            R0, #0xFFFF
44E20A:  CMP             R2, #3
44E20C:  BNE             loc_44E236
44E20E:  LDR             R6, =(g_furnitureMan_ptr - 0x44E21E)
44E210:  SXTH            R3, R0; __int16
44E212:  LDR.W           R5, [R9,#0x14]
44E216:  ADD.W           R2, R10, #1; int
44E21A:  ADD             R6, PC; g_furnitureMan_ptr
44E21C:  LDRB            R0, [R5,#0x1F]
44E21E:  LDR             R5, [R6]; g_furnitureMan
44E220:  STR             R0, [SP,#0x40+var_40]; unsigned __int8
44E222:  MOV             R0, R5; this
44E224:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44E228:  MOV             R6, R0
44E22A:  LDR.W           R0, [R9,#0x14]
44E22E:  LDRSH.W         R3, [R6,#0xA]
44E232:  MOV             R2, R10
44E234:  B               loc_44E25C
44E236:  LDR             R2, =(g_furnitureMan_ptr - 0x44E242)
44E238:  SXTH            R3, R0; __int16
44E23A:  LDR.W           R6, [R9,#0x14]
44E23E:  ADD             R2, PC; g_furnitureMan_ptr
44E240:  LDR             R5, [R2]; g_furnitureMan
44E242:  MOV             R2, R10; int
44E244:  LDRB            R0, [R6,#0x1F]
44E246:  STR             R0, [SP,#0x40+var_40]; unsigned __int8
44E248:  MOV             R0, R5; this
44E24A:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44E24E:  MOV             R6, R0
44E250:  LDR.W           R0, [R9,#0x14]
44E254:  LDRSH.W         R3, [R6,#0xA]; __int16
44E258:  ADD.W           R2, R10, #1; int
44E25C:  LDRSB.W         R1, [R9,#0x790]; int
44E260:  LDRB            R0, [R0,#0x1F]
44E262:  STR             R0, [SP,#0x40+var_40]; unsigned __int8
44E264:  MOV             R0, R5; this
44E266:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44E26A:  STR             R0, [SP,#0x40+var_28]
44E26C:  LDR             R0, =(g_furnitureMan_ptr - 0x44E276)
44E26E:  LDR.W           R2, [R9,#0x14]
44E272:  ADD             R0, PC; g_furnitureMan_ptr
44E274:  LDRSH.W         R3, [R6,#0xA]; __int16
44E278:  LDRSB.W         R1, [R9,#0x790]; int
44E27C:  LDRB            R2, [R2,#0x1F]
44E27E:  LDR             R0, [R0]; g_furnitureMan ; this
44E280:  STR             R2, [SP,#0x40+var_40]; float
44E282:  ADD.W           R2, R10, #2; int
44E286:  LDR             R5, [R7,#arg_4]
44E288:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44E28C:  ADD             R2, SP, #0x40+var_24
44E28E:  MOV             R10, R0
44E290:  MOVS            R0, #0
44E292:  MOVS            R1, #1
44E294:  ADD             R3, SP, #0x40+var_20
44E296:  STMEA.W         SP, {R0,R1,R8}
44E29A:  MOV             R1, R6; int
44E29C:  STRD.W          R3, R2, [SP,#0x40+var_34]; int
44E2A0:  MOV             R2, R4; int
44E2A2:  STR             R0, [SP,#0x40+var_2C]; int
44E2A4:  MOV             R0, R9; int
44E2A6:  MOV             R3, R11; int
44E2A8:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44E2AC:  ORR.W           R0, R8, #2
44E2B0:  CMP             R0, #2
44E2B2:  BNE             loc_44E2EE
44E2B4:  LDR             R0, [SP,#0x40+var_20]
44E2B6:  CMP             R5, #3
44E2B8:  ADD.W           R6, R0, R4
44E2BC:  BLT             loc_44E334
44E2BE:  SUBS            R4, R5, #2
44E2C0:  ADD             R2, SP, #0x40+var_24
44E2C2:  ADD             R3, SP, #0x40+var_20
44E2C4:  MOVS            R5, #0
44E2C6:  MOVS            R0, #1
44E2C8:  STR             R5, [SP,#0x40+var_40]; float
44E2CA:  STRD.W          R0, R8, [SP,#0x40+var_3C]; int
44E2CE:  MOV             R0, R9; int
44E2D0:  STRD.W          R3, R2, [SP,#0x40+var_34]; int
44E2D4:  MOV             R1, R10; int
44E2D6:  MOV             R2, R6; int
44E2D8:  MOV             R3, R11; int
44E2DA:  STR             R5, [SP,#0x40+var_2C]; int
44E2DC:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44E2E0:  LDR             R0, [SP,#0x40+var_20]
44E2E2:  ADD             R3, SP, #0x40+var_20
44E2E4:  ADD             R2, SP, #0x40+var_24
44E2E6:  SUBS            R4, #1
44E2E8:  ADD             R6, R0
44E2EA:  BNE             loc_44E2C6
44E2EC:  B               loc_44E338
44E2EE:  LDR             R0, [SP,#0x40+var_24]
44E2F0:  MOV             R2, R4
44E2F2:  CMP             R5, #3
44E2F4:  ADD.W           R6, R0, R11
44E2F8:  BLT             loc_44E350
44E2FA:  SUBS            R4, R5, #2
44E2FC:  MOV             R5, R8
44E2FE:  MOV             R8, R2
44E300:  ADD             R2, SP, #0x40+var_24
44E302:  ADD             R3, SP, #0x40+var_20
44E304:  MOV.W           R11, #0
44E308:  MOVS            R0, #1
44E30A:  STR.W           R11, [SP,#0x40+var_40]; float
44E30E:  STRD.W          R0, R5, [SP,#0x40+var_3C]; int
44E312:  MOV             R0, R9; int
44E314:  STRD.W          R3, R2, [SP,#0x40+var_34]; int
44E318:  MOV             R1, R10; int
44E31A:  MOV             R2, R8; int
44E31C:  MOV             R3, R6; int
44E31E:  STR.W           R11, [SP,#0x40+var_2C]; int
44E322:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44E326:  LDR             R0, [SP,#0x40+var_24]
44E328:  ADD             R3, SP, #0x40+var_20
44E32A:  ADD             R2, SP, #0x40+var_24
44E32C:  SUBS            R4, #1
44E32E:  ADD             R6, R0
44E330:  BNE             loc_44E308
44E332:  B               loc_44E358
44E334:  ADD             R2, SP, #0x40+var_24
44E336:  ADD             R3, SP, #0x40+var_20
44E338:  MOVS            R0, #0
44E33A:  MOVS            R1, #1
44E33C:  STMEA.W         SP, {R0,R1,R8}
44E340:  STRD.W          R3, R2, [SP,#0x40+var_34]
44E344:  MOV             R2, R6
44E346:  STR             R0, [SP,#0x40+var_2C]
44E348:  MOV             R0, R9
44E34A:  LDR             R1, [SP,#0x40+var_28]
44E34C:  MOV             R3, R11
44E34E:  B               loc_44E36E
44E350:  MOV             R5, R8
44E352:  MOV             R8, R2
44E354:  ADD             R2, SP, #0x40+var_24
44E356:  ADD             R3, SP, #0x40+var_20
44E358:  MOVS            R0, #0
44E35A:  MOVS            R1, #1
44E35C:  STMEA.W         SP, {R0,R1,R5}
44E360:  STRD.W          R3, R2, [SP,#0x40+var_34]; int
44E364:  MOV             R2, R8; int
44E366:  LDR             R1, [SP,#0x40+var_28]; int
44E368:  MOV             R3, R6; int
44E36A:  STR             R0, [SP,#0x40+var_2C]; int
44E36C:  MOV             R0, R9; int
44E36E:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44E372:  MOVS            R0, #1
44E374:  ADD             SP, SP, #0x24 ; '$'
44E376:  POP.W           {R8-R11}
44E37A:  POP             {R4-R7,PC}
