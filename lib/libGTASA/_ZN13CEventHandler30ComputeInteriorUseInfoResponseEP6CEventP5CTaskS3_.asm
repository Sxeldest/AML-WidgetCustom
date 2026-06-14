; =========================================================
; Game Engine Function: _ZN13CEventHandler30ComputeInteriorUseInfoResponseEP6CEventP5CTaskS3_
; Address            : 0x382B1C - 0x382B40
; =========================================================

382B1C:  PUSH            {R4,R5,R7,LR}
382B1E:  ADD             R7, SP, #8
382B20:  SUB             SP, SP, #8
382B22:  MOV             R5, R0
382B24:  MOVS            R0, #dword_1C; this
382B26:  MOV             R4, R1
382B28:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382B2C:  ADD.W           R3, R4, #0xC
382B30:  LDM             R3, {R1-R3}
382B32:  LDRB            R4, [R4,#0x18]
382B34:  STR             R4, [SP,#0x10+var_10]
382B36:  BLX             j__ZN20CTaskInteriorUseInfoC2EP14InteriorInfo_tP10Interior_cih; CTaskInteriorUseInfo::CTaskInteriorUseInfo(InteriorInfo_t *,Interior_c *,int,uchar)
382B3A:  STR             R0, [R5,#0x24]
382B3C:  ADD             SP, SP, #8
382B3E:  POP             {R4,R5,R7,PC}
