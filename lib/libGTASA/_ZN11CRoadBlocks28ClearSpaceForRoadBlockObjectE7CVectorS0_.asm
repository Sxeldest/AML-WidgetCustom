; =========================================================
; Game Engine Function: _ZN11CRoadBlocks28ClearSpaceForRoadBlockObjectE7CVectorS0_
; Address            : 0x326E90 - 0x326F56
; =========================================================

326E90:  PUSH            {R4-R7,LR}
326E92:  ADD             R7, SP, #0xC
326E94:  PUSH.W          {R11}
326E98:  SUB             SP, SP, #0x40
326E9A:  LDRD.W          R5, R6, [R7,#arg_0]
326E9E:  ADD.W           R12, SP, #0x50+var_1C
326EA2:  STM.W           R12, {R0-R2}
326EA6:  ADD             R0, SP, #0x50+var_28
326EA8:  MOVS            R4, #0
326EAA:  STM             R0!, {R3,R5,R6}
326EAC:  MOVS            R0, #1
326EAE:  ADD             R5, SP, #0x50+var_34
326EB0:  STRD.W          R5, R4, [SP,#0x50+var_50]; __int16
326EB4:  ADD             R1, SP, #0x50+var_28; CVector *
326EB6:  STRD.W          R0, R0, [SP,#0x50+var_48]; bool
326EBA:  SUB.W           R2, R7, #-var_2A; CVector *
326EBE:  STRD.W          R0, R4, [SP,#0x50+var_40]; bool
326EC2:  ADD             R0, SP, #0x50+var_1C; this
326EC4:  MOVS            R3, #(stderr+2); __int16 *
326EC6:  BLX             j__ZN6CWorld27FindObjectsIntersectingCubeERK7CVectorS2_PssPP7CEntitybbbbb; CWorld::FindObjectsIntersectingCube(CVector const&,CVector const&,short *,short,CEntity **,bool,bool,bool,bool,bool)
326ECA:  LDRSH.W         R0, [R7,#var_2A]
326ECE:  CMP             R0, #2
326ED0:  BGT             loc_326F4C
326ED2:  CMP             R0, #1
326ED4:  BLT             loc_326F46
326ED6:  MOVS            R6, #0
326ED8:  SXTH            R0, R6
326EDA:  LDR.W           R4, [R5,R0,LSL#2]
326EDE:  LDRB.W          R0, [R4,#0x3A]
326EE2:  AND.W           R1, R0, #7
326EE6:  CMP             R1, #2
326EE8:  BNE             loc_326F00
326EEA:  MOV             R0, R4; this
326EEC:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
326EF0:  CBZ             R0, loc_326EFC
326EF2:  LDRB.W          R0, [R4,#0x42E]
326EF6:  LSLS            R0, R0, #0x1B
326EF8:  BPL             loc_326F2C
326EFA:  B               loc_326F3A
326EFC:  LDRB.W          R0, [R4,#0x3A]
326F00:  AND.W           R1, R0, #7
326F04:  CMP             R1, #3
326F06:  BNE             loc_326F14
326F08:  MOV             R0, R4; this
326F0A:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
326F0E:  CBNZ            R0, loc_326F2C
326F10:  LDRB.W          R0, [R4,#0x3A]
326F14:  AND.W           R0, R0, #7
326F18:  CMP             R0, #4
326F1A:  BNE             loc_326F4A
326F1C:  LDRB.W          R0, [R4,#0x140]
326F20:  CMP             R0, #1
326F22:  BEQ             loc_326F4A
326F24:  MOV             R0, R4; this
326F26:  BLX             j__ZN7CObject12CanBeDeletedEv; CObject::CanBeDeleted(void)
326F2A:  CBZ             R0, loc_326F4A
326F2C:  MOV             R0, R4; this
326F2E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
326F32:  LDR             R0, [R4]
326F34:  LDR             R1, [R0,#4]
326F36:  MOV             R0, R4
326F38:  BLX             R1
326F3A:  ADDS            R1, R6, #1
326F3C:  LDRSH.W         R0, [R7,#var_2A]
326F40:  SXTH            R6, R1
326F42:  CMP             R6, R0
326F44:  BLT             loc_326ED8
326F46:  MOVS            R4, #1
326F48:  B               loc_326F4C
326F4A:  MOVS            R4, #0
326F4C:  MOV             R0, R4
326F4E:  ADD             SP, SP, #0x40 ; '@'
326F50:  POP.W           {R11}
326F54:  POP             {R4-R7,PC}
