; =========================================================
; Game Engine Function: _ZN16CTaskComplexJump17CreateNextSubTaskEP4CPed
; Address            : 0x52E02C - 0x52E0C8
; =========================================================

52E02C:  PUSH            {R4,R5,R7,LR}
52E02E:  ADD             R7, SP, #8
52E030:  MOV             R5, R0
52E032:  MOV             R4, R1
52E034:  LDR             R0, [R5,#8]
52E036:  LDR             R1, [R0]
52E038:  LDR             R1, [R1,#0x14]
52E03A:  BLX             R1
52E03C:  CMP             R0, #0xFD
52E03E:  BGT             loc_52E04C
52E040:  CMP             R0, #0xD2
52E042:  BEQ             loc_52E058
52E044:  CMP             R0, #0xF0
52E046:  BEQ             loc_52E078
52E048:  MOVS            R0, #0
52E04A:  POP             {R4,R5,R7,PC}
52E04C:  CMP             R0, #0xFE
52E04E:  BEQ             loc_52E08A
52E050:  CMP.W           R0, #0x1F4
52E054:  BEQ             loc_52E078
52E056:  B               loc_52E048
52E058:  LDR             R0, [R5,#8]
52E05A:  LDRB.W          R1, [R0,#0x23]
52E05E:  CBZ             R1, loc_52E078
52E060:  LDRB.W          R1, [R0,#0x21]
52E064:  CBZ             R1, loc_52E0A2
52E066:  LDR.W           R0, [R4,#0x484]
52E06A:  MOV.W           R1, #0x1F4
52E06E:  ORR.W           R0, R0, #0x400
52E072:  STR.W           R0, [R4,#0x484]
52E076:  B               loc_52E098
52E078:  LDR.W           R0, [R4,#0x484]
52E07C:  MOVW            R1, #0x516
52E080:  BIC.W           R0, R0, #0x400
52E084:  STR.W           R0, [R4,#0x484]
52E088:  B               loc_52E098
52E08A:  LDRB.W          R0, [R4,#0x485]
52E08E:  MOVS            R1, #0xF0
52E090:  LSLS            R0, R0, #0x1E
52E092:  IT PL
52E094:  MOVWPL          R1, #0x516; int
52E098:  MOV             R0, R5; this
52E09A:  MOV             R2, R4; CPed *
52E09C:  POP.W           {R4,R5,R7,LR}
52E0A0:  B               _ZN16CTaskComplexJump13CreateSubTaskEiP4CPed; CTaskComplexJump::CreateSubTask(int,CPed *)
52E0A2:  LDR             R0, [R0,#0x1C]
52E0A4:  CMP             R0, #0
52E0A6:  ITT NE
52E0A8:  LDRNE           R0, [R5,#0xC]
52E0AA:  ADDSNE.W        R0, R0, #1
52E0AE:  BEQ             loc_52E0B8
52E0B0:  LDR.W           R0, [R4,#0x484]
52E0B4:  MOVS            R1, #0xFE
52E0B6:  B               loc_52E0BE
52E0B8:  LDR.W           R0, [R4,#0x484]
52E0BC:  MOVS            R1, #0xF0
52E0BE:  ORR.W           R0, R0, #0x200
52E0C2:  STR.W           R0, [R4,#0x484]
52E0C6:  B               loc_52E098
