; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputeCopCarBeingStolenResponseEP6CEventP5CTaskS3_
; Address            : 0x382F00 - 0x382F72
; =========================================================

382F00:  PUSH            {R4-R7,LR}
382F02:  ADD             R7, SP, #0xC
382F04:  PUSH.W          {R11}
382F08:  SUB             SP, SP, #8
382F0A:  LDR             R4, [R1,#0xC]
382F0C:  MOV             R5, R0
382F0E:  CMP             R4, #0
382F10:  ITT NE
382F12:  LDRNE           R6, [R1,#0x10]
382F14:  CMPNE           R6, #0
382F16:  BEQ             loc_382F6A
382F18:  LDR             R0, [R5]
382F1A:  LDR.W           R1, [R0,#0x590]; unsigned int
382F1E:  CMP             R1, R6
382F20:  BNE             loc_382F6A
382F22:  LDRB.W          R0, [R0,#0x485]
382F26:  LSLS            R0, R0, #0x1F
382F28:  BEQ             loc_382F6A
382F2A:  MOVS            R0, #dword_34; this
382F2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382F30:  MOVS            R1, #0
382F32:  MOVS            R2, #1
382F34:  STRD.W          R2, R1, [SP,#0x18+var_18]; bool
382F38:  MOV             R1, R6; CVehicle *
382F3A:  MOVS            R2, #0; int
382F3C:  MOVS            R3, #0; int
382F3E:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
382F42:  STR             R0, [R5,#0x24]
382F44:  MOV             R0, R4; this
382F46:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
382F4A:  CMP             R0, #1
382F4C:  BNE             loc_382F6A
382F4E:  LDR.W           R0, [R4,#0x444]
382F52:  MOVS            R1, #1; int
382F54:  CMP             R0, #0
382F56:  ITE NE
382F58:  LDRNE           R0, [R0]
382F5A:  MOVEQ           R0, #0; this
382F5C:  ADD             SP, SP, #8
382F5E:  POP.W           {R11}
382F62:  POP.W           {R4-R7,LR}
382F66:  B.W             sub_18AA34
382F6A:  ADD             SP, SP, #8
382F6C:  POP.W           {R11}
382F70:  POP             {R4-R7,PC}
