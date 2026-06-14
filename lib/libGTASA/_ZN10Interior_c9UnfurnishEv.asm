; =========================================================
; Game Engine Function: _ZN10Interior_c9UnfurnishEv
; Address            : 0x446180 - 0x44623C
; =========================================================

446180:  PUSH            {R4-R7,LR}
446182:  ADD             R7, SP, #0xC
446184:  PUSH.W          {R8-R11}
446188:  SUB             SP, SP, #4
44618A:  MOV             R4, R0
44618C:  LDR.W           R5, [R4,#0x5C]!
446190:  CMP             R5, #0
446192:  BEQ             loc_446234
446194:  LDR             R0, =(g_furnitureMan_ptr - 0x4461A2)
446196:  MOVW            R1, #0x206C
44619A:  MOV.W           R9, #0
44619E:  ADD             R0, PC; g_furnitureMan_ptr
4461A0:  LDR             R0, [R0]; g_furnitureMan
4461A2:  ADD.W           R8, R0, R1
4461A6:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x4461AC)
4461A8:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
4461AA:  LDR.W           R10, [R0]; CObject::nNoTempObjects ...
4461AE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4461B4)
4461B0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4461B2:  LDR.W           R11, [R0]; CTimer::m_snTimeInMilliseconds ...
4461B6:  B               loc_4461DC
4461B8:  LDRH.W          R1, [R10]; CObject::nNoTempObjects
4461BC:  MOV             R2, #0x5F5E0FF
4461C4:  ADDS            R1, #1
4461C6:  STRH.W          R1, [R10]; CObject::nNoTempObjects
4461CA:  MOVS            R1, #3
4461CC:  STRB.W          R1, [R0,#0x140]
4461D0:  LDR.W           R1, [R11]; CTimer::m_snTimeInMilliseconds
4461D4:  ADD             R1, R2
4461D6:  STR.W           R1, [R0,#0x154]
4461DA:  B               loc_44621C
4461DC:  MOV             R6, R5
4461DE:  MOV.W           R0, #0xFFFFFFFF; int
4461E2:  LDR             R5, [R6,#4]
4461E4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4461E8:  CBZ             R0, loc_44620A
4461EA:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
4461EE:  CBZ             R0, loc_44620A
4461F0:  LDR             R1, [R6,#8]
4461F2:  CMP             R0, R1
4461F4:  BNE             loc_44620A
4461F6:  LDRB.W          R1, [R0,#0x3A]
4461FA:  AND.W           R1, R1, #7
4461FE:  CMP             R1, #4
446200:  BNE             loc_44620A
446202:  LDRB.W          R1, [R0,#0x145]
446206:  LSLS            R1, R1, #0x1A; CEntity *
446208:  BMI             loc_4461B8
44620A:  LDR             R0, [R6,#8]; this
44620C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
446210:  LDR             R0, [R6,#8]
446212:  CMP             R0, #0
446214:  ITTT NE
446216:  LDRNE           R1, [R0]
446218:  LDRNE           R1, [R1,#4]
44621A:  BLXNE           R1
44621C:  MOV             R0, R4; this
44621E:  MOV             R1, R6; ListItem_c *
446220:  STR.W           R9, [R6,#8]
446224:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
446228:  MOV             R0, R8; this
44622A:  MOV             R1, R6; ListItem_c *
44622C:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
446230:  CMP             R5, #0
446232:  BNE             loc_4461DC
446234:  ADD             SP, SP, #4
446236:  POP.W           {R8-R11}
44623A:  POP             {R4-R7,PC}
