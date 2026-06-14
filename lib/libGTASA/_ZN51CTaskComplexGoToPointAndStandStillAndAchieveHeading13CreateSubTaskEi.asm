; =========================================================
; Game Engine Function: _ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeading13CreateSubTaskEi
; Address            : 0x51E174 - 0x51E224
; =========================================================

51E174:  PUSH            {R4-R7,LR}
51E176:  ADD             R7, SP, #0xC
51E178:  PUSH.W          {R11}
51E17C:  SUB             SP, SP, #8
51E17E:  MOV             R4, R0
51E180:  CMP             R1, #0xCB
51E182:  BEQ             loc_51E1D8
51E184:  MOVW            R0, #0x386
51E188:  CMP             R1, R0
51E18A:  BEQ             loc_51E1F0
51E18C:  CMP.W           R1, #0x384
51E190:  BNE             loc_51E21A
51E192:  MOVS            R0, #word_2C; this
51E194:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E198:  LDR             R5, [R4,#0xC]
51E19A:  LDR             R6, [R4,#0x1C]
51E19C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51E1A0:  LDR             R1, =(_ZTV15CTaskSimpleGoTo_ptr - 0x51E1A8)
51E1A2:  LDR             R2, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x51E1AC)
51E1A4:  ADD             R1, PC; _ZTV15CTaskSimpleGoTo_ptr
51E1A6:  STR             R5, [R0,#8]
51E1A8:  ADD             R2, PC; _ZTV20CTaskSimpleGoToPoint_ptr
51E1AA:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoTo ...
51E1AC:  LDR             R2, [R2]; `vtable for'CTaskSimpleGoToPoint ...
51E1AE:  ADDS            R1, #8
51E1B0:  STR             R1, [R0]
51E1B2:  LDR             R1, [R4,#0x18]
51E1B4:  LDRB            R5, [R0,#0x1D]
51E1B6:  VLDR            D16, [R4,#0x10]
51E1BA:  LDRB            R3, [R0,#0x1C]
51E1BC:  STR             R1, [R0,#0x14]
51E1BE:  ADD.W           R1, R2, #8
51E1C2:  STR             R1, [R0]
51E1C4:  AND.W           R1, R5, #0xE0
51E1C8:  STR             R6, [R0,#0x18]
51E1CA:  STRB            R1, [R0,#0x1D]
51E1CC:  AND.W           R1, R3, #0xC0; unsigned int
51E1D0:  STRB            R1, [R0,#0x1C]
51E1D2:  VSTR            D16, [R0,#0xC]
51E1D6:  B               loc_51E21C
51E1D8:  MOVS            R0, #dword_20; this
51E1DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E1DE:  MOV.W           R1, #0x41000000
51E1E2:  MOVS            R2, #0; bool
51E1E4:  STR             R1, [SP,#0x18+var_18]; float
51E1E6:  MOVS            R1, #0; int
51E1E8:  MOVS            R3, #0; bool
51E1EA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
51E1EE:  B               loc_51E21C
51E1F0:  MOVS            R0, #off_18; this
51E1F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51E1F6:  LDRD.W          R5, R6, [R4,#0x20]
51E1FA:  LDR             R4, [R4,#0x28]
51E1FC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
51E200:  LDR             R1, =(_ZTV25CTaskSimpleAchieveHeading_ptr - 0x51E20A)
51E202:  STRD.W          R5, R6, [R0,#8]
51E206:  ADD             R1, PC; _ZTV25CTaskSimpleAchieveHeading_ptr
51E208:  STR             R4, [R0,#0x10]
51E20A:  LDRB            R2, [R0,#0x14]
51E20C:  LDR             R1, [R1]; `vtable for'CTaskSimpleAchieveHeading ...
51E20E:  ADDS            R1, #8
51E210:  STR             R1, [R0]
51E212:  AND.W           R1, R2, #0xFE
51E216:  STRB            R1, [R0,#0x14]
51E218:  B               loc_51E21C
51E21A:  MOVS            R0, #0
51E21C:  ADD             SP, SP, #8
51E21E:  POP.W           {R11}
51E222:  POP             {R4-R7,PC}
