; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeaderC2EP9CPedGroup
; Address            : 0x515280 - 0x5152B0
; =========================================================

515280:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGangLeader::CTaskComplexGangLeader(CPedGroup *)'
515282:  ADD             R7, SP, #8
515284:  MOV             R4, R1
515286:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51528A:  LDR             R1, =(_ZTV22CTaskComplexGangLeader_ptr - 0x515294)
51528C:  MOVS            R2, #0
51528E:  STRH            R2, [R0,#0x18]
515290:  ADD             R1, PC; _ZTV22CTaskComplexGangLeader_ptr
515292:  STRH            R2, [R0,#0x24]
515294:  STRD.W          R2, R2, [R0,#0x10]
515298:  LDR             R1, [R1]; `vtable for'CTaskComplexGangLeader ...
51529A:  STRD.W          R2, R2, [R0,#0x1C]
51529E:  STRH            R2, [R0,#0x30]
5152A0:  ADDS            R1, #8
5152A2:  STRD.W          R2, R2, [R0,#0x28]
5152A6:  STR             R4, [R0,#0xC]
5152A8:  STRB.W          R2, [R0,#0x34]
5152AC:  STR             R1, [R0]
5152AE:  POP             {R4,R6,R7,PC}
