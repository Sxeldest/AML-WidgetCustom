; =========================================================
; Game Engine Function: sub_E5214
; Address            : 0xE5214 - 0xE52C6
; =========================================================

E5214:  PUSH            {R4-R7,LR}
E5216:  ADD             R7, SP, #0xC
E5218:  PUSH.W          {R8}
E521C:  VMOV.I32        Q8, #0
E5220:  MOV             R4, R0
E5222:  MOV             R6, R2
E5224:  ADD.W           R2, R4, #8
E5228:  MOV             R8, R1
E522A:  LDRB.W          R1, [R4,#0x58]
E522E:  VST1.32         {D16-D17}, [R2]!
E5232:  MOVS            R0, #0
E5234:  STR             R0, [R4,#0x1C]
E5236:  STR             R0, [R2]
E5238:  CBZ             R1, loc_E5242
E523A:  LDR             R0, [R4,#0x20]; void *
E523C:  CBZ             R0, loc_E5242
E523E:  BLX             j__ZdaPv; operator delete[](void *)
E5242:  LDRB.W          R0, [R4,#0x59]
E5246:  CBZ             R0, loc_E5250
E5248:  LDR             R0, [R4,#0x38]; void *
E524A:  CBZ             R0, loc_E5250
E524C:  BLX             j__ZdaPv; operator delete[](void *)
E5250:  CMP             R6, #9
E5252:  STR             R6, [R4,#0x34]
E5254:  BCC             loc_E5272
E5256:  LDRB.W          R5, [R4,#0x5A]
E525A:  CMP.W           R8, #0
E525E:  IT NE
E5260:  CMPNE           R5, #0
E5262:  BNE             loc_E52A2
E5264:  MOV             R0, R6; unsigned int
E5266:  BLX             j__Znaj; operator new[](uint)
E526A:  MOVS            R1, #1
E526C:  STRB.W          R1, [R4,#0x58]
E5270:  B               loc_E5284
E5272:  MOVS            R0, #0
E5274:  LDRB.W          R5, [R4,#0x5A]
E5278:  STRB.W          R0, [R4,#0x58]
E527C:  MOVS            R0, #8
E527E:  STR             R0, [R4,#0x34]
E5280:  ADD.W           R0, R4, #0x2C ; ','
E5284:  STR             R0, [R4,#0x20]
E5286:  CBNZ            R5, loc_E52AC
E5288:  CMP             R6, #8
E528A:  IT LE
E528C:  MOVLE           R6, #8
E528E:  CMP.W           R8, #0
E5292:  STR             R6, [R4,#0x3C]
E5294:  BNE             loc_E52B4
E5296:  MOV             R0, R6; unsigned int
E5298:  BLX             j__Znaj; operator new[](uint)
E529C:  MOV             R8, R0
E529E:  MOVS            R0, #1
E52A0:  B               loc_E52B6
E52A2:  MOVS            R0, #0
E52A4:  STR.W           R8, [R4,#0x20]
E52A8:  STRB.W          R0, [R4,#0x58]
E52AC:  MOV.W           R8, #0
E52B0:  STR.W           R8, [R4,#0x3C]
E52B4:  MOVS            R0, #0
E52B6:  STRB.W          R0, [R4,#0x59]
E52BA:  MOV             R0, R4
E52BC:  STR.W           R8, [R4,#0x38]
E52C0:  POP.W           {R8}
E52C4:  POP             {R4-R7,PC}
