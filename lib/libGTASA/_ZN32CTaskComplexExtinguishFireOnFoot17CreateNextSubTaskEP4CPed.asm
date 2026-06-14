; =========================================================
; Game Engine Function: _ZN32CTaskComplexExtinguishFireOnFoot17CreateNextSubTaskEP4CPed
; Address            : 0x5120B0 - 0x51210A
; =========================================================

5120B0:  PUSH            {R4,R5,R7,LR}
5120B2:  ADD             R7, SP, #8
5120B4:  SUB             SP, SP, #0x10
5120B6:  MOV             R4, R0
5120B8:  MOV             R5, R1
5120BA:  LDR             R0, [R4,#8]
5120BC:  LDR             R1, [R0]
5120BE:  LDR             R1, [R1,#0x14]
5120C0:  BLX             R1
5120C2:  CMP.W           R0, #0x3FC
5120C6:  BEQ             loc_5120F4
5120C8:  MOVW            R1, #0x387; unsigned int
5120CC:  CMP             R0, R1
5120CE:  BNE             loc_512104
5120D0:  MOVS            R0, #off_3C; this
5120D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5120D6:  MOVS            R2, #1
5120D8:  MOVS            R3, #4
5120DA:  STRD.W          R3, R2, [SP,#0x18+var_18]; signed __int8
5120DE:  MOV.W           R1, #0xFFFFFFFF
5120E2:  ADD.W           R2, R4, #0xC; CVector *
5120E6:  STR             R1, [SP,#0x18+var_10]; int
5120E8:  MOVS            R1, #0; CEntity *
5120EA:  MOVS            R3, #0; CVector *
5120EC:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
5120F0:  ADD             SP, SP, #0x10
5120F2:  POP             {R4,R5,R7,PC}
5120F4:  LDR             R0, [R4]
5120F6:  MOV             R1, R5
5120F8:  LDR             R2, [R0,#0x2C]
5120FA:  MOV             R0, R4
5120FC:  ADD             SP, SP, #0x10
5120FE:  POP.W           {R4,R5,R7,LR}
512102:  BX              R2
512104:  MOVS            R0, #0
512106:  ADD             SP, SP, #0x10
512108:  POP             {R4,R5,R7,PC}
