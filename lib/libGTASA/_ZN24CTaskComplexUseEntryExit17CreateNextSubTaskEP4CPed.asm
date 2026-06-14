; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseEntryExit17CreateNextSubTaskEP4CPed
; Address            : 0x525F70 - 0x52604E
; =========================================================

525F70:  PUSH            {R4-R7,LR}
525F72:  ADD             R7, SP, #0xC
525F74:  PUSH.W          {R8}
525F78:  SUB             SP, SP, #8
525F7A:  MOV             R6, R0
525F7C:  MOV             R4, R1
525F7E:  LDRB            R1, [R6,#0x14]
525F80:  TST.W           R1, #1
525F84:  BNE             loc_525FE6
525F86:  LDR             R0, [R6,#0xC]; this
525F88:  ORR.W           R1, R1, #1
525F8C:  STRB            R1, [R6,#0x14]
525F8E:  LDR             R1, [R0,#0x38]
525F90:  CMP             R1, #0
525F92:  IT EQ
525F94:  MOVEQ           R1, R0
525F96:  STR             R1, [R6,#0x10]
525F98:  MOVS            R1, #0x41200000; CEntryExit *
525F9E:  BLX             j__ZN17CEntryExitManager15FindNearestDoorERK10CEntryExitf; CEntryExitManager::FindNearestDoor(CEntryExit const&,float)
525FA2:  MOV             R8, R0
525FA4:  CMP.W           R8, #0
525FA8:  BEQ             loc_525FE6
525FAA:  MOVS            R0, #dword_38; this
525FAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525FB0:  MOV             R5, R0
525FB2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
525FB6:  LDR             R0, =(_ZTV27CTaskComplexGotoDoorAndOpen_ptr - 0x525FC0)
525FB8:  MOVS            R1, #0
525FBA:  STRH            R1, [R5,#0x30]
525FBC:  ADD             R0, PC; _ZTV27CTaskComplexGotoDoorAndOpen_ptr
525FBE:  LDRB.W          R2, [R5,#0x34]
525FC2:  STRD.W          R1, R1, [R5,#0x28]
525FC6:  MOV             R1, R5
525FC8:  LDR             R0, [R0]; `vtable for'CTaskComplexGotoDoorAndOpen ...
525FCA:  ADDS            R0, #8
525FCC:  STR             R0, [R5]
525FCE:  AND.W           R0, R2, #0xF0
525FD2:  ORR.W           R0, R0, #1
525FD6:  STRB.W          R0, [R5,#0x34]
525FDA:  STR.W           R8, [R1,#0xC]!; CEntity **
525FDE:  MOV             R0, R8; this
525FE0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
525FE4:  B               loc_526044
525FE6:  LDR             R0, [R6,#0x10]
525FE8:  LDR             R5, [R4]
525FEA:  LDR             R1, [R0,#0x20]
525FEC:  LDR             R2, [R0,#0x24]
525FEE:  LDR             R3, [R0,#0x28]
525FF0:  LDRB.W          R0, [R0,#0x32]
525FF4:  STRB.W          R0, [R4,#0x33]
525FF8:  LDR             R0, [R6,#0xC]
525FFA:  STR.W           R0, [R4,#0x794]
525FFE:  MOV             R0, R4
526000:  LDR.W           R12, [R5,#0x3C]
526004:  MOVS            R5, #0
526006:  STR             R5, [SP,#0x18+var_18]
526008:  BLX             R12
52600A:  LDR             R0, [R6,#0x10]
52600C:  VLDR            S0, =3.1416
526010:  VLDR            S2, [R0,#0x2C]
526014:  ADD.W           R0, R4, #0x560
526018:  VMUL.F32        S0, S2, S0
52601C:  VLDR            S2, =180.0
526020:  VDIV.F32        S0, S0, S2
526024:  VSTR            S0, [R0]
526028:  ADDW            R0, R4, #0x55C
52602C:  VSTR            S0, [R0]
526030:  MOV             R0, R4; this
526032:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
526036:  LDR             R0, [R4,#0x1C]
526038:  ORR.W           R0, R0, #0x40000
52603C:  STR             R0, [R4,#0x1C]
52603E:  MOV             R0, R4; this
526040:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
526044:  MOV             R0, R5
526046:  ADD             SP, SP, #8
526048:  POP.W           {R8}
52604C:  POP             {R4-R7,PC}
