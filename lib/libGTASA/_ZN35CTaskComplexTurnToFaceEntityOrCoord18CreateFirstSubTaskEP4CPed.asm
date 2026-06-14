; =========================================================
; Game Engine Function: _ZN35CTaskComplexTurnToFaceEntityOrCoord18CreateFirstSubTaskEP4CPed
; Address            : 0x524D98 - 0x524E50
; =========================================================

524D98:  PUSH            {R4-R7,LR}
524D9A:  ADD             R7, SP, #0xC
524D9C:  PUSH.W          {R11}
524DA0:  SUB             SP, SP, #0x10; float
524DA2:  MOV             R4, R0
524DA4:  LDRB            R0, [R4,#0x10]
524DA6:  CBZ             R0, loc_524DC2
524DA8:  LDR             R2, [R4,#0xC]
524DAA:  CMP             R2, #0
524DAC:  BEQ             loc_524E46
524DAE:  LDR             R3, [R2,#0x14]
524DB0:  ADD.W           R0, R3, #0x30 ; '0'
524DB4:  CMP             R3, #0
524DB6:  IT EQ
524DB8:  ADDEQ           R0, R2, #4
524DBA:  ADD.W           R2, R0, #8
524DBE:  ADDS            R3, R0, #4
524DC0:  B               loc_524DCE
524DC2:  ADD.W           R2, R4, #0x1C
524DC6:  ADD.W           R3, R4, #0x18
524DCA:  ADD.W           R0, R4, #0x14
524DCE:  VLDR            S4, [R0]
524DD2:  LDR             R0, [R1,#0x14]
524DD4:  VLDR            S0, [R2]
524DD8:  ADD.W           R2, R0, #0x30 ; '0'
524DDC:  CMP             R0, #0
524DDE:  VLDR            S2, [R3]
524DE2:  IT EQ
524DE4:  ADDEQ           R2, R1, #4
524DE6:  VLDR            S6, [R2]
524DEA:  ADD             R0, SP, #0x20+var_1C; this
524DEC:  VLDR            S8, [R2,#4]
524DF0:  VLDR            S10, [R2,#8]
524DF4:  VSUB.F32        S4, S4, S6
524DF8:  VSUB.F32        S2, S2, S8
524DFC:  VSUB.F32        S0, S0, S10
524E00:  VSTR            S4, [SP,#0x20+var_1C]
524E04:  VSTR            S2, [SP,#0x20+var_18]
524E08:  VSTR            S0, [SP,#0x20+var_14]
524E0C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
524E10:  LDRD.W          R0, R1, [SP,#0x20+var_1C]; float
524E14:  MOVS            R2, #0; float
524E16:  MOVS            R3, #0; float
524E18:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
524E1C:  MOV             R5, R0
524E1E:  MOVS            R0, #off_18; this
524E20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524E24:  LDRD.W          R6, R4, [R4,#0x20]
524E28:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
524E2C:  LDR             R1, =(_ZTV25CTaskSimpleAchieveHeading_ptr - 0x524E34)
524E2E:  LDRB            R2, [R0,#0x14]
524E30:  ADD             R1, PC; _ZTV25CTaskSimpleAchieveHeading_ptr
524E32:  LDR             R1, [R1]; `vtable for'CTaskSimpleAchieveHeading ...
524E34:  ADDS            R1, #8
524E36:  STR             R1, [R0]
524E38:  STRD.W          R5, R6, [R0,#8]
524E3C:  AND.W           R1, R2, #0xFE
524E40:  STR             R4, [R0,#0x10]
524E42:  STRB            R1, [R0,#0x14]
524E44:  B               loc_524E48
524E46:  MOVS            R0, #0
524E48:  ADD             SP, SP, #0x10
524E4A:  POP.W           {R11}
524E4E:  POP             {R4-R7,PC}
