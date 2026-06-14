; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpen17CreateNextSubTaskEP4CPed
; Address            : 0x525D7C - 0x525E5E
; =========================================================

525D7C:  PUSH            {R4-R7,LR}
525D7E:  ADD             R7, SP, #0xC
525D80:  PUSH.W          {R8}
525D84:  SUB             SP, SP, #8
525D86:  MOV             R4, R0
525D88:  MOV             R5, R1
525D8A:  LDR             R0, [R4,#8]
525D8C:  LDR             R1, [R0]
525D8E:  LDR             R1, [R1,#0x14]
525D90:  BLX             R1
525D92:  CMP.W           R0, #0x384
525D96:  BNE             loc_525E32
525D98:  LDRB.W          R0, [R4,#0x34]
525D9C:  LSLS            R0, R0, #0x1E
525D9E:  BMI             loc_525E3E
525DA0:  LDR.W           R0, [R5,#0x440]
525DA4:  MOVS            R1, #4; int
525DA6:  MOV.W           R8, #4
525DAA:  ADDS            R0, #4; this
525DAC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
525DB0:  CBNZ            R0, loc_525DDA
525DB2:  MOVS            R0, #dword_20; this
525DB4:  LDR.W           R6, [R5,#0x440]
525DB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525DBC:  MOV             R5, R0
525DBE:  MOVS            R0, #0
525DC0:  STR             R0, [SP,#0x18+var_18]
525DC2:  MOV             R0, R5
525DC4:  MOVS            R1, #0
525DC6:  MOVS            R2, #0x99
525DC8:  MOV.W           R3, #0x41000000
525DCC:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
525DD0:  ADDS            R0, R6, #4; this
525DD2:  MOV             R1, R5; CTask *
525DD4:  MOVS            R2, #4; int
525DD6:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
525DDA:  MOVS            R0, #word_2C; this
525DDC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525DE0:  MOV             R5, R0
525DE2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
525DE6:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x525DEE)
525DE8:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x525DF4)
525DEA:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
525DEC:  STR.W           R8, [R5,#8]
525DF0:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
525DF2:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
525DF4:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPoint ...
525DF6:  ADDS            R0, #8
525DF8:  STR             R0, [R5]
525DFA:  LDRB            R0, [R5,#0x1C]
525DFC:  ADDS            R1, #8
525DFE:  LDR             R3, [R4,#0x24]
525E00:  VLDR            D16, [R4,#0x1C]
525E04:  AND.W           R0, R0, #0xC0
525E08:  LDRB            R2, [R5,#0x1D]
525E0A:  STR             R3, [R5,#0x14]
525E0C:  STR             R1, [R5]
525E0E:  MOV             R1, #0x3E4CCCCD
525E16:  STR             R1, [R5,#0x18]
525E18:  STRB            R0, [R5,#0x1C]
525E1A:  AND.W           R0, R2, #0xE0
525E1E:  STRB            R0, [R5,#0x1D]
525E20:  VSTR            D16, [R5,#0xC]
525E24:  LDRB.W          R0, [R4,#0x34]
525E28:  ORR.W           R0, R0, #2
525E2C:  STRB.W          R0, [R4,#0x34]
525E30:  B               loc_525E34
525E32:  MOVS            R5, #0
525E34:  MOV             R0, R5
525E36:  ADD             SP, SP, #8
525E38:  POP.W           {R8}
525E3C:  POP             {R4-R7,PC}
525E3E:  MOV             R0, R5; this
525E40:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
525E44:  MOVS            R5, #0
525E46:  CMP             R0, #1
525E48:  BNE             loc_525E34
525E4A:  MOVS            R0, #0; this
525E4C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
525E50:  LDRH.W          R1, [R0,#0x110]
525E54:  ORR.W           R1, R1, #8
525E58:  STRH.W          R1, [R0,#0x110]
525E5C:  B               loc_525E34
