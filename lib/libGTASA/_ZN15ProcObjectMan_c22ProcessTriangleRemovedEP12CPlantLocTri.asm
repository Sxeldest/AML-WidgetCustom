; =========================================================
; Game Engine Function: _ZN15ProcObjectMan_c22ProcessTriangleRemovedEP12CPlantLocTri
; Address            : 0x45718C - 0x457260
; =========================================================

45718C:  PUSH            {R4-R7,LR}
45718E:  ADD             R7, SP, #0xC
457190:  PUSH.W          {R8-R11}
457194:  SUB             SP, SP, #4
457196:  MOV             R9, R0
457198:  MOV             R4, R1
45719A:  LDR.W           R0, [R9,#4]
45719E:  CMP             R0, #1
4571A0:  BLT             loc_457258
4571A2:  LDR             R1, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4571B0)
4571A4:  MOVW            R2, #0x4C08
4571A8:  MOV.W           R10, #0
4571AC:  ADD             R1, PC; _ZN7CObject14nNoTempObjectsE_ptr
4571AE:  LDR             R1, [R1]; CObject::nNoTempObjects ...
4571B0:  STR             R1, [SP,#0x20+var_20]
4571B2:  LDR             R1, =(g_procObjMan_ptr - 0x4571B8)
4571B4:  ADD             R1, PC; g_procObjMan_ptr
4571B6:  LDR             R1, [R1]; g_procObjMan
4571B8:  ADD.W           R8, R1, R2
4571BC:  ADD.W           R2, R10, R10,LSL#3
4571C0:  LDRB.W          R1, [R4,#0x46]
4571C4:  ADD.W           R6, R9, R2,LSL#3
4571C8:  LDRB            R2, [R6,#8]
4571CA:  CMP             R2, R1
4571CC:  BNE             loc_457250
4571CE:  LDR.W           R11, [R6,#0x44]!
4571D2:  CMP.W           R11, #0
4571D6:  BEQ             loc_457250
4571D8:  MOV             R5, R11
4571DA:  LDR             R0, [R5,#0xC]
4571DC:  LDR.W           R11, [R5,#4]
4571E0:  CMP             R0, R4
4571E2:  BEQ             loc_4571EC
4571E4:  CMP.W           R11, #0
4571E8:  BNE             loc_4571D8
4571EA:  B               loc_45724C
4571EC:  LDR             R0, [R5,#8]
4571EE:  LDRB.W          R0, [R0,#0x3A]
4571F2:  AND.W           R0, R0, #7
4571F6:  CMP             R0, #4
4571F8:  ITTTT EQ
4571FA:  LDREQ           R1, [SP,#0x20+var_20]
4571FC:  LDRHEQ          R0, [R1]
4571FE:  SUBEQ           R0, #1
457200:  STRHEQ          R0, [R1]
457202:  MOV             R0, R6; this
457204:  MOV             R1, R5; ListItem_c *
457206:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
45720A:  MOV             R0, R8; this
45720C:  MOV             R1, R5; ListItem_c *
45720E:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
457212:  LDR             R0, [R5,#8]
457214:  LDR             R1, [R0]
457216:  LDR             R1, [R1,#0x24]
457218:  BLX             R1
45721A:  LDR             R0, [R5,#8]; this
45721C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
457220:  LDR             R0, [R5,#8]
457222:  CMP             R0, #0
457224:  ITTT NE
457226:  LDRNE           R1, [R0]
457228:  LDRNE           R1, [R1,#4]
45722A:  BLXNE           R1
45722C:  LDRB            R0, [R5,#0x10]
45722E:  MOVS            R1, #0
457230:  STR             R1, [R5,#8]
457232:  CMP             R0, #0
457234:  ITTTT NE
457236:  LDRNE.W         R0, [R9]
45723A:  SUBNE           R0, #1
45723C:  STRNE.W         R0, [R9]
457240:  MOVNE           R0, #0
457242:  IT NE
457244:  STRBNE          R0, [R5,#0x10]
457246:  CMP.W           R11, #0
45724A:  BNE             loc_4571D8
45724C:  LDR.W           R0, [R9,#4]
457250:  ADD.W           R10, R10, #1
457254:  CMP             R10, R0
457256:  BLT             loc_4571BC
457258:  ADD             SP, SP, #4
45725A:  POP.W           {R8-R11}
45725E:  POP             {R4-R7,PC}
