; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleIKLookAt5CloneEv
; Address            : 0x4F0284 - 0x4F0332
; =========================================================

4F0284:  PUSH            {R4-R7,LR}
4F0286:  ADD             R7, SP, #0xC
4F0288:  PUSH.W          {R8-R11}
4F028C:  SUB             SP, SP, #4
4F028E:  VPUSH           {D8-D9}
4F0292:  MOV             R4, R0
4F0294:  MOVS            R0, #dword_5C; this
4F0296:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F029A:  MOV             R5, R0
4F029C:  ADD.W           R0, R4, #0x2C ; ','
4F02A0:  LDRD.W          R8, R9, [R4,#8]
4F02A4:  VLD1.32         {D8-D9}, [R0]
4F02A8:  MOV             R0, R5; this
4F02AA:  LDR             R6, [R4,#0x28]
4F02AC:  LDR.W           R10, [R4,#0x3C]
4F02B0:  LDRH.W          R11, [R4,#0x58]
4F02B4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F02B8:  LDR             R0, =(_ZTV19CTaskSimpleIKLookAt_ptr - 0x4F02C6)
4F02BA:  MOVS            R1, #5
4F02BC:  STRH            R1, [R5,#0x18]
4F02BE:  ADD.W           R2, R5, #0x2C ; ','
4F02C2:  ADD             R0, PC; _ZTV19CTaskSimpleIKLookAt_ptr
4F02C4:  LDR             R1, =(unk_61E5E8 - 0x4F02CE)
4F02C6:  CMP             R6, #0
4F02C8:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKLookAt ...
4F02CA:  ADD             R1, PC; unk_61E5E8
4F02CC:  ADD.W           R0, R0, #8
4F02D0:  STR             R0, [R5]
4F02D2:  VLDR            D16, [R1]
4F02D6:  MOV.W           R0, #0
4F02DA:  LDR             R1, [R1,#(dword_61E5F0 - 0x61E5E8)]
4F02DC:  STRD.W          R8, R9, [R5,#8]
4F02E0:  STR             R0, [R5,#0x10]
4F02E2:  VST1.32         {D8-D9}, [R2]
4F02E6:  STR             R1, [R5,#0x24]
4F02E8:  MOV             R1, R5
4F02EA:  STR.W           R10, [R5,#0x3C]
4F02EE:  STR             R0, [R5,#0x44]
4F02F0:  STR             R0, [R5,#0x54]
4F02F2:  STRH.W          R11, [R5,#0x58]
4F02F6:  VSTR            D16, [R5,#0x1C]
4F02FA:  STR.W           R6, [R1,#0x28]!; CEntity **
4F02FE:  BEQ             loc_4F0308
4F0300:  MOV             R0, R6; this
4F0302:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F0306:  MOVS            R0, #1
4F0308:  STRB.W          R0, [R5,#0x40]
4F030C:  LDR             R0, [R4,#0x10]
4F030E:  CBZ             R0, loc_4F0324
4F0310:  LDR             R0, [R4,#0x44]
4F0312:  STR             R0, [R5,#0x44]
4F0314:  LDR             R0, [R4,#0x48]
4F0316:  STR             R0, [R5,#0x48]
4F0318:  LDR             R0, [R4,#0x4C]
4F031A:  STR             R0, [R5,#0x4C]
4F031C:  LDR             R0, [R4,#0x50]
4F031E:  STR             R0, [R5,#0x50]
4F0320:  LDRH            R0, [R4,#0x16]
4F0322:  STRH            R0, [R5,#0x16]
4F0324:  MOV             R0, R5
4F0326:  VPOP            {D8-D9}
4F032A:  ADD             SP, SP, #4
4F032C:  POP.W           {R8-R11}
4F0330:  POP             {R4-R7,PC}
