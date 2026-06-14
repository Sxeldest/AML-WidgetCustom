; =========================================================
; Game Engine Function: _ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_ffi
; Address            : 0x459BFC - 0x459CF8
; =========================================================

459BFC:  PUSH            {R4-R7,LR}
459BFE:  ADD             R7, SP, #0xC
459C00:  PUSH.W          {R8-R11}
459C04:  SUB             SP, SP, #4
459C06:  MOV             R9, R3
459C08:  MOV             R4, R2
459C0A:  LDR.W           R8, [R0]
459C0E:  LDR.W           R10, [R1]
459C12:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
459C16:  MOV             R0, R10
459C18:  MOVS            R1, #0
459C1A:  MOVS            R2, #2
459C1C:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
459C20:  MOV             R11, R0
459C22:  MOV             R0, R8
459C24:  MOVS            R1, #0
459C26:  MOVS            R2, #3
459C28:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
459C2C:  LDRD.W          R1, R2, [R10,#0xC]
459C30:  MULS            R1, R2
459C32:  CMP             R1, #1
459C34:  BLT             loc_459CDE
459C36:  VMOV            S0, R9
459C3A:  MOVS            R1, #0
459C3C:  VMOV            S2, R4
459C40:  LDRB.W          R3, [R11,R1,LSL#2]
459C44:  ADD.W           R5, R11, R1,LSL#2
459C48:  LDRB.W          R4, [R0,R1,LSL#2]
459C4C:  ADD.W           R2, R0, R1,LSL#2
459C50:  VMOV            S4, R3
459C54:  LDRB            R6, [R5,#1]
459C56:  VMOV            S6, R4
459C5A:  LDRB.W          R12, [R5,#2]
459C5E:  VCVT.F32.U32    S4, S4
459C62:  LDRB            R3, [R2,#1]
459C64:  LDRB            R5, [R2,#2]
459C66:  VCVT.F32.U32    S6, S6
459C6A:  VMOV            S8, R6
459C6E:  VMOV            S10, R3
459C72:  VMOV            S12, R12
459C76:  VMOV            S14, R5
459C7A:  VCVT.F32.U32    S8, S8
459C7E:  VMUL.F32        S4, S4, S0
459C82:  VMUL.F32        S6, S6, S2
459C86:  VCVT.F32.U32    S10, S10
459C8A:  VCVT.F32.U32    S12, S12
459C8E:  VCVT.F32.U32    S14, S14
459C92:  LDRB            R3, [R0,#3]
459C94:  VMUL.F32        S8, S8, S0
459C98:  VADD.F32        S4, S6, S4
459C9C:  VMUL.F32        S10, S10, S2
459CA0:  VMUL.F32        S12, S12, S0
459CA4:  VMUL.F32        S14, S14, S2
459CA8:  VCVT.U32.F32    S4, S4
459CAC:  VADD.F32        S6, S10, S8
459CB0:  VADD.F32        S8, S14, S12
459CB4:  VMOV            R6, S4
459CB8:  STRB.W          R6, [R0,R1,LSL#2]
459CBC:  ADDS            R1, #1
459CBE:  STRB            R3, [R2,#3]
459CC0:  VCVT.U32.F32    S4, S6
459CC4:  VCVT.U32.F32    S6, S8
459CC8:  VMOV            R3, S4
459CCC:  STRB            R3, [R2,#1]
459CCE:  VMOV            R3, S6
459CD2:  STRB            R3, [R2,#2]
459CD4:  LDRD.W          R2, R3, [R10,#0xC]
459CD8:  MULS            R2, R3
459CDA:  CMP             R1, R2
459CDC:  BLT             loc_459C40
459CDE:  MOV             R0, R10
459CE0:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459CE4:  MOV             R0, R8
459CE6:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459CEA:  ADD             SP, SP, #4
459CEC:  POP.W           {R8-R11}
459CF0:  POP.W           {R4-R7,LR}
459CF4:  B.W             sub_19F7CC
