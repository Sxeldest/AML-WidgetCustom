; =========================================================
; Game Engine Function: _ZN32CTaskComplexObserveTrafficLights17CreateNextSubTaskEP4CPed
; Address            : 0x4ECAB8 - 0x4ECB56
; =========================================================

4ECAB8:  PUSH            {R4,R5,R7,LR}
4ECABA:  ADD             R7, SP, #8
4ECABC:  SUB             SP, SP, #8
4ECABE:  MOV             R4, R0
4ECAC0:  MOV             R5, R1
4ECAC2:  LDR             R0, [R4,#8]
4ECAC4:  CBZ             R0, loc_4ECAD0
4ECAC6:  LDR             R1, [R0]
4ECAC8:  LDR             R1, [R1,#0x14]
4ECACA:  BLX             R1
4ECACC:  CMP             R0, #0xCB
4ECACE:  BNE             loc_4ECAF2
4ECAD0:  MOVS            R0, #dword_20; this
4ECAD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECAD6:  LDR.W           R1, [R5,#0x4E0]
4ECADA:  MOV             R4, R0
4ECADC:  MOVS            R0, #0
4ECADE:  MOVS            R2, #4
4ECAE0:  STR             R0, [SP,#0x10+var_10]
4ECAE2:  MOV             R0, R4
4ECAE4:  MOV.W           R3, #0x40800000
4ECAE8:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
4ECAEC:  MOV             R0, R4
4ECAEE:  ADD             SP, SP, #8
4ECAF0:  POP             {R4,R5,R7,PC}
4ECAF2:  LDR             R0, [R4,#8]
4ECAF4:  LDR             R1, [R0]
4ECAF6:  LDR             R1, [R1,#0x14]
4ECAF8:  BLX             R1
4ECAFA:  MOVS            R4, #0
4ECAFC:  CMP.W           R0, #0x190
4ECB00:  BNE             loc_4ECAEC
4ECB02:  BLX             rand
4ECB06:  MOV             R5, R0
4ECB08:  MOVS            R0, #dword_20; this
4ECB0A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECB0E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4ECB12:  UXTH            R1, R5
4ECB14:  VLDR            S2, =0.000015259
4ECB18:  VMOV            S0, R1
4ECB1C:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4ECB26)
4ECB1E:  VCVT.F32.S32    S0, S0
4ECB22:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4ECB24:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4ECB26:  ADDS            R1, #8
4ECB28:  STR             R1, [R0]
4ECB2A:  MOV.W           R1, #0x41000000
4ECB2E:  STRH            R4, [R0,#0x14]
4ECB30:  STR             R1, [R0,#0x1C]
4ECB32:  VMUL.F32        S0, S0, S2
4ECB36:  VLDR            S2, =2000.0
4ECB3A:  STRH            R4, [R0,#0x18]
4ECB3C:  VMUL.F32        S0, S0, S2
4ECB40:  VCVT.S32.F32    S0, S0
4ECB44:  VMOV            R1, S0
4ECB48:  ADDW            R1, R1, #0xBB8
4ECB4C:  STRD.W          R1, R4, [R0,#8]
4ECB50:  STR             R4, [R0,#0x10]
4ECB52:  MOV             R4, R0
4ECB54:  B               loc_4ECAEC
