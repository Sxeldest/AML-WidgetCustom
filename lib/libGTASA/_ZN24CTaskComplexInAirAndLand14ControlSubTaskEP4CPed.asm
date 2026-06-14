; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLand14ControlSubTaskEP4CPed
; Address            : 0x52C1CC - 0x52C2D4
; =========================================================

52C1CC:  PUSH            {R4-R7,LR}
52C1CE:  ADD             R7, SP, #0xC
52C1D0:  PUSH.W          {R8-R11}
52C1D4:  SUB             SP, SP, #4
52C1D6:  VPUSH           {D8-D10}
52C1DA:  SUB             SP, SP, #8
52C1DC:  MOV             R6, R0
52C1DE:  MOV             R5, R1
52C1E0:  LDR             R4, [R6,#8]
52C1E2:  CMP             R4, #0
52C1E4:  BEQ             loc_52C2C4
52C1E6:  LDRB            R0, [R6,#0xD]
52C1E8:  CMP             R0, #0
52C1EA:  BNE             loc_52C2C4
52C1EC:  LDR             R0, [R4]
52C1EE:  LDR             R1, [R0,#0x14]
52C1F0:  MOV             R0, R4
52C1F2:  BLX             R1
52C1F4:  CMP             R0, #0xF1
52C1F6:  ITT EQ
52C1F8:  LDRBEQ          R0, [R6,#0xE]
52C1FA:  CMPEQ           R0, #0
52C1FC:  BNE             loc_52C2C4
52C1FE:  LDR             R6, [R6,#8]
52C200:  LDR             R0, [R6,#0x38]
52C202:  CMP             R0, #0
52C204:  BEQ             loc_52C2C4
52C206:  LDR             R0, =(_ZN16CTaskSimpleClimb21ms_fMinForStretchGrabE_ptr - 0x52C20E)
52C208:  LDR             R1, [R5,#0x14]; unsigned int
52C20A:  ADD             R0, PC; _ZN16CTaskSimpleClimb21ms_fMinForStretchGrabE_ptr
52C20C:  VLDR            S16, [R6,#0x10]
52C210:  ADD.W           R2, R1, #0x30 ; '0'
52C214:  CMP             R1, #0
52C216:  LDR             R0, [R0]; CTaskSimpleClimb::ms_fMinForStretchGrab ...
52C218:  IT EQ
52C21A:  ADDEQ           R2, R5, #4
52C21C:  VLDR            S18, [R2,#8]
52C220:  VLDR            S20, [R0]
52C224:  MOVS            R0, #word_30; this
52C226:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52C22A:  MOV             R4, R0
52C22C:  LDR             R0, [R6,#0x14]
52C22E:  LDRB.W          R9, [R6,#0x18]
52C232:  STR             R0, [SP,#0x40+var_3C]
52C234:  MOV             R0, R4; this
52C236:  LDR.W           R8, [R6,#0x38]
52C23A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52C23E:  LDR             R0, =(_ZTV16CTaskSimpleClimb_ptr - 0x52C24A)
52C240:  MOV.W           R10, #0
52C244:  MOV             R5, R4
52C246:  ADD             R0, PC; _ZTV16CTaskSimpleClimb_ptr
52C248:  LDR             R0, [R0]; `vtable for'CTaskSimpleClimb ...
52C24A:  ADDS            R0, #8
52C24C:  STR             R0, [R4]
52C24E:  MOV.W           R0, #(elf_hash_bucket+0x304); this
52C252:  STRH.W          R10, [R4,#8]
52C256:  STRB.W          R10, [R4,#0xA]
52C25A:  STRB.W          R10, [R4,#0xC]
52C25E:  STR.W           R10, [R4,#0x2C]
52C262:  STR.W           R8, [R5,#0x24]!
52C266:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
52C26A:  VLDR            S0, =-0.3
52C26E:  VSUB.F32        S2, S16, S18
52C272:  MOV.W           R11, #1
52C276:  ADDS            R6, #8
52C278:  VADD.F32        S0, S20, S0
52C27C:  ADD.W           R8, R4, #0x18
52C280:  VCMPE.F32       S2, S0
52C284:  VMRS            APSR_nzcv, FPSCR
52C288:  IT LT
52C28A:  MOVLT.W         R11, #2
52C28E:  LDR             R0, [R5]; this
52C290:  CMP             R0, #0
52C292:  ITT NE
52C294:  MOVNE           R1, R5; CEntity **
52C296:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52C29A:  VLDR            D16, [R6]
52C29E:  LDR             R0, [R6,#8]
52C2A0:  STR.W           R0, [R8,#8]
52C2A4:  VSTR            D16, [R8]
52C2A8:  STRB.W          R9, [R4,#0xF]
52C2AC:  LDR             R0, [SP,#0x40+var_3C]
52C2AE:  STR             R0, [R4,#0x14]
52C2B0:  MOVS            R0, #0xFF
52C2B2:  STRB.W          R11, [R4,#0xD]
52C2B6:  STRB.W          R10, [R4,#0xB]
52C2BA:  STRB.W          R10, [R4,#0xE]
52C2BE:  STRB            R0, [R4,#0x10]
52C2C0:  STRH.W          R10, [R4,#0x28]
52C2C4:  MOV             R0, R4
52C2C6:  ADD             SP, SP, #8
52C2C8:  VPOP            {D8-D10}
52C2CC:  ADD             SP, SP, #4
52C2CE:  POP.W           {R8-R11}
52C2D2:  POP             {R4-R7,PC}
