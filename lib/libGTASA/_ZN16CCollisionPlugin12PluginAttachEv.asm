; =========================================================
; Game Engine Function: _ZN16CCollisionPlugin12PluginAttachEv
; Address            : 0x2E0FC4 - 0x2E100A
; =========================================================

2E0FC4:  PUSH            {R4,R6,R7,LR}
2E0FC6:  ADD             R7, SP, #8
2E0FC8:  SUB             SP, SP, #8
2E0FCA:  LDR             R0, =(_Z25ClumpCollisionConstructorPvii_ptr - 0x2E0FDE)
2E0FCC:  MOVW            R4, #0xF2FA
2E0FD0:  LDR             R1, =(_Z24ClumpCollisionDestructorPvii_ptr - 0x2E0FE0)
2E0FD2:  MOVT            R4, #0x253
2E0FD6:  LDR.W           R12, =(_Z29ClumpCollisionCopyConstructorPvPKvii_ptr - 0x2E0FE2)
2E0FDA:  ADD             R0, PC; _Z25ClumpCollisionConstructorPvii_ptr
2E0FDC:  ADD             R1, PC; _Z24ClumpCollisionDestructorPvii_ptr
2E0FDE:  ADD             R12, PC; _Z29ClumpCollisionCopyConstructorPvPKvii_ptr
2E0FE0:  LDR             R2, [R0]; ClumpCollisionConstructor(void *,int,int) ; void *(*)(void *, int, int)
2E0FE2:  LDR             R3, [R1]; ClumpCollisionDestructor(void *,int,int) ; void *(*)(void *, int, int)
2E0FE4:  MOV             R1, R4; unsigned int
2E0FE6:  LDR.W           R0, [R12]; ClumpCollisionCopyConstructor(void *,void const*,int,int)
2E0FEA:  STR             R0, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
2E0FEC:  MOVS            R0, #0; int
2E0FEE:  BLX             j__Z21RpClumpRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpClumpRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
2E0FF2:  LDR             R1, =(sub_2E1024+1 - 0x2E0FFE)
2E0FF4:  MOV             R0, R4
2E0FF6:  LDR             R2, =(nullsub_18+1 - 0x2E1000)
2E0FF8:  LDR             R3, =(sub_2E10FE+1 - 0x2E1002)
2E0FFA:  ADD             R1, PC; sub_2E1024
2E0FFC:  ADD             R2, PC; nullsub_18
2E0FFE:  ADD             R3, PC; sub_2E10FE
2E1000:  BLX             j__Z27RpClumpRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpClumpRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
2E1004:  MOVS            R0, #1
2E1006:  ADD             SP, SP, #8
2E1008:  POP             {R4,R6,R7,PC}
