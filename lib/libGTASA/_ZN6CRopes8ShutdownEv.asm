; =========================================================
; Game Engine Function: _ZN6CRopes8ShutdownEv
; Address            : 0x413FF0 - 0x4140AC
; =========================================================

413FF0:  PUSH            {R4-R7,LR}
413FF2:  ADD             R7, SP, #0xC
413FF4:  PUSH.W          {R8-R11}
413FF8:  SUB             SP, SP, #4
413FFA:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41400A)
413FFC:  MOVS            R4, #0
413FFE:  MOV.W           R8, #0
414002:  MOV.W           R11, #0
414006:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
414008:  LDR             R5, [R0]; CRopes::aRopes ...
41400A:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x414010)
41400C:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41400E:  LDR             R6, [R0]; CRopes::aRopes ...
414010:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x414016)
414012:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
414014:  LDR             R0, [R0]; CRopes::aRopes ...
414016:  STR             R0, [SP,#0x20+var_20]
414018:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x41401E)
41401A:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
41401C:  LDR.W           R10, [R0]; CRopes::aRopes ...
414020:  ADD.W           R0, R5, R8
414024:  LDRB.W          R1, [R0,#0x325]
414028:  CBZ             R1, loc_414096
41402A:  STRB.W          R4, [R0,#0x325]
41402E:  ADD.W           R0, R6, R8
414032:  LDR.W           R1, [R0,#0x318]
414036:  CBZ             R1, loc_41406C
414038:  LDR             R2, [R1,#0x44]
41403A:  BIC.W           R2, R2, #0x2000000
41403E:  STR             R2, [R1,#0x44]
414040:  LDR.W           R1, [R0,#0x318]
414044:  LDR             R2, [R1,#0x44]
414046:  BIC.W           R2, R2, #0x80000000
41404A:  STR             R2, [R1,#0x44]
41404C:  STR.W           R4, [R0,#0x318]
414050:  ADD.W           R0, R10, R8
414054:  LDR.W           R1, [R0,#0x314]
414058:  LDRD.W          R2, R3, [R1,#0x1C]
41405C:  ORR.W           R2, R2, #1
414060:  STRD.W          R2, R3, [R1,#0x1C]
414064:  MOVS            R1, #0x3C ; '<'
414066:  STRB.W          R1, [R0,#0x326]
41406A:  B               loc_414076
41406C:  MOV.W           R0, #0x328
414070:  LDR             R1, [SP,#0x20+var_20]; CEntity *
414072:  MLA.W           R0, R11, R0, R1
414076:  ADD.W           R9, R0, #0x314
41407A:  LDR.W           R0, [R9]; this
41407E:  CBZ             R0, loc_414096
414080:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
414084:  LDR.W           R0, [R9]
414088:  CMP             R0, #0
41408A:  ITTT NE
41408C:  LDRNE           R1, [R0]
41408E:  LDRNE           R1, [R1,#4]
414090:  BLXNE           R1
414092:  STR.W           R4, [R9]
414096:  ADD.W           R8, R8, #0x328
41409A:  ADD.W           R11, R11, #1
41409E:  CMP.W           R8, #0x1940
4140A2:  BNE             loc_414020
4140A4:  ADD             SP, SP, #4
4140A6:  POP.W           {R8-R11}
4140AA:  POP             {R4-R7,PC}
