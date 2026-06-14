; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleIKPointArm5CloneEv
; Address            : 0x4F0598 - 0x4F064C
; =========================================================

4F0598:  PUSH            {R4-R7,LR}
4F059A:  ADD             R7, SP, #0xC
4F059C:  PUSH.W          {R8-R10}
4F05A0:  VPUSH           {D8-D9}
4F05A4:  MOV             R4, R0
4F05A6:  MOVS            R0, #dword_5C; this
4F05A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F05AC:  MOV             R5, R0
4F05AE:  ADD.W           R0, R4, #0x2C ; ','
4F05B2:  VLD1.32         {D8-D9}, [R0]
4F05B6:  MOV             R0, R5; this
4F05B8:  LDR.W           R8, [R4,#0xC]
4F05BC:  LDR.W           R10, [R4,#0x28]
4F05C0:  LDR.W           R9, [R4,#0x3C]
4F05C4:  LDR             R6, [R4,#0x58]
4F05C6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F05CA:  LDR             R0, =(_ZTV21CTaskSimpleIKPointArm_ptr - 0x4F05D6)
4F05CC:  MOVS            R1, #0x22 ; '"'
4F05CE:  LDR             R2, =(unk_61E5F8 - 0x4F05DC)
4F05D0:  CMP             R6, #0
4F05D2:  ADD             R0, PC; _ZTV21CTaskSimpleIKPointArm_ptr
4F05D4:  IT EQ
4F05D6:  MOVEQ           R1, #0x18
4F05D8:  ADD             R2, PC; unk_61E5F8
4F05DA:  STR             R6, [R5,#0x58]
4F05DC:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKPointArm ...
4F05DE:  CMP.W           R10, #0
4F05E2:  STRH            R1, [R5,#0x18]
4F05E4:  ADD.W           R1, R0, #8
4F05E8:  MOV.W           R0, #0
4F05EC:  STRD.W          R8, R0, [R5,#0xC]
4F05F0:  STR             R1, [R5]
4F05F2:  VLDR            D16, [R2]
4F05F6:  LDR             R1, [R2,#(dword_61E600 - 0x61E5F8)]
4F05F8:  ADD.W           R2, R5, #0x2C ; ','
4F05FC:  VST1.32         {D8-D9}, [R2]
4F0600:  STR             R1, [R5,#0x24]
4F0602:  MOV             R1, #0xF423F
4F060A:  STR.W           R9, [R5,#0x3C]
4F060E:  STR             R0, [R5,#0x44]
4F0610:  STR             R1, [R5,#8]
4F0612:  MOV             R1, R5
4F0614:  STR             R0, [R5,#0x54]
4F0616:  VSTR            D16, [R5,#0x1C]
4F061A:  STR.W           R10, [R1,#0x28]!; CEntity **
4F061E:  BEQ             loc_4F0628
4F0620:  MOV             R0, R10; this
4F0622:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F0626:  MOVS            R0, #1
4F0628:  STRB.W          R0, [R5,#0x40]
4F062C:  LDR             R0, [R4,#0x10]
4F062E:  CBZ             R0, loc_4F0640
4F0630:  LDR             R0, [R4,#0x44]
4F0632:  STR             R0, [R5,#0x44]
4F0634:  LDR             R0, [R4,#0x48]
4F0636:  STR             R0, [R5,#0x48]
4F0638:  LDR             R0, [R4,#0x4C]
4F063A:  STR             R0, [R5,#0x4C]
4F063C:  LDR             R0, [R4,#0x50]
4F063E:  STR             R0, [R5,#0x50]
4F0640:  MOV             R0, R5
4F0642:  VPOP            {D8-D9}
4F0646:  POP.W           {R8-R10}
4F064A:  POP             {R4-R7,PC}
