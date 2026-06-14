; =========================================================
; Game Engine Function: _Z21LOSBlockedBetweenPedsP7CEntityS0_
; Address            : 0x4C6A14 - 0x4C6AD8
; =========================================================

4C6A14:  PUSH            {R4,R5,R7,LR}
4C6A16:  ADD             R7, SP, #8
4C6A18:  SUB             SP, SP, #0x70
4C6A1A:  MOV             R5, R0
4C6A1C:  MOVS            R0, #0
4C6A1E:  STRD.W          R0, R0, [SP,#0x78+var_18]
4C6A22:  MOV             R4, R1
4C6A24:  STR             R0, [SP,#0x78+var_10]
4C6A26:  STRD.W          R0, R0, [SP,#0x78+var_28]
4C6A2A:  STR             R0, [SP,#0x78+var_20]
4C6A2C:  LDRB.W          R0, [R5,#0x3A]
4C6A30:  AND.W           R0, R0, #7
4C6A34:  CMP             R0, #3
4C6A36:  BNE             loc_4C6A5E
4C6A38:  ADD             R1, SP, #0x78+var_18
4C6A3A:  MOV             R0, R5; this
4C6A3C:  MOVS            R2, #4
4C6A3E:  MOVS            R3, #0
4C6A40:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4C6A44:  LDRB.W          R0, [R5,#0x487]
4C6A48:  LSLS            R0, R0, #0x1D
4C6A4A:  BPL             loc_4C6A76
4C6A4C:  VLDR            S0, =0.35
4C6A50:  VLDR            S2, [SP,#0x78+var_10]
4C6A54:  VADD.F32        S0, S2, S0
4C6A58:  VSTR            S0, [SP,#0x78+var_10]
4C6A5C:  B               loc_4C6A76
4C6A5E:  LDR             R0, [R5,#0x14]
4C6A60:  ADD.W           R1, R0, #0x30 ; '0'
4C6A64:  CMP             R0, #0
4C6A66:  IT EQ
4C6A68:  ADDEQ           R1, R5, #4
4C6A6A:  VLDR            D16, [R1]
4C6A6E:  LDR             R0, [R1,#8]
4C6A70:  STR             R0, [SP,#0x78+var_10]
4C6A72:  VSTR            D16, [SP,#0x78+var_18]
4C6A76:  LDRB.W          R0, [R4,#0x3A]
4C6A7A:  AND.W           R0, R0, #7
4C6A7E:  CMP             R0, #3
4C6A80:  BNE             loc_4C6A90
4C6A82:  ADD             R1, SP, #0x78+var_28
4C6A84:  MOV             R0, R4; this
4C6A86:  MOVS            R2, #4
4C6A88:  MOVS            R3, #0
4C6A8A:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4C6A8E:  B               loc_4C6AA8
4C6A90:  LDR             R0, [R4,#0x14]
4C6A92:  ADD.W           R1, R0, #0x30 ; '0'
4C6A96:  CMP             R0, #0
4C6A98:  IT EQ
4C6A9A:  ADDEQ           R1, R4, #4
4C6A9C:  VLDR            D16, [R1]
4C6AA0:  LDR             R0, [R1,#8]
4C6AA2:  STR             R0, [SP,#0x78+var_20]
4C6AA4:  VSTR            D16, [SP,#0x78+var_28]
4C6AA8:  MOVS            R5, #0
4C6AAA:  MOVS            R0, #1
4C6AAC:  STR             R5, [SP,#0x78+var_58]
4C6AAE:  ADD             R1, SP, #0x78+var_28
4C6AB0:  STRD.W          R0, R5, [SP,#0x78+var_78]
4C6AB4:  ADD             R2, SP, #0x78+var_54
4C6AB6:  STRD.W          R5, R0, [SP,#0x78+var_70]
4C6ABA:  ADD             R3, SP, #0x78+var_58
4C6ABC:  STRD.W          R5, R5, [SP,#0x78+var_68]
4C6AC0:  STRD.W          R5, R0, [SP,#0x78+var_60]
4C6AC4:  ADD             R0, SP, #0x78+var_18
4C6AC6:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4C6ACA:  LDR             R1, [SP,#0x78+var_58]
4C6ACC:  CMP             R1, R4
4C6ACE:  IT NE
4C6AD0:  MOVNE           R5, #1
4C6AD2:  ANDS            R0, R5
4C6AD4:  ADD             SP, SP, #0x70 ; 'p'
4C6AD6:  POP             {R4,R5,R7,PC}
