; =========================================================
; Game Engine Function: _ZN11CWaterLevel13GetWaterDepthERK7CVectorPfS3_S3_
; Address            : 0x59BE58 - 0x59BF0A
; =========================================================

59BE58:  PUSH            {R4-R7,LR}
59BE5A:  ADD             R7, SP, #0xC
59BE5C:  PUSH.W          {R8,R9,R11}
59BE60:  SUB             SP, SP, #0x60
59BE62:  MOV             R5, R0
59BE64:  MOV             R9, R2
59BE66:  MOV             R6, R1
59BE68:  LDM.W           R5, {R0-R2}; float
59BE6C:  MOV             R8, R3
59BE6E:  ADD             R3, SP, #0x78+var_58; float
59BE70:  MOVS            R4, #0
59BE72:  STRD.W          R4, R4, [SP,#0x78+var_78]; float *
59BE76:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
59BE7A:  CMP             R0, #1
59BE7C:  BNE             loc_59BF00
59BE7E:  VMOV.F32        S0, #30.0
59BE82:  VLDR            S8, [R5,#8]
59BE86:  VLDR            S2, =0.0
59BE8A:  MOVS            R0, #1
59BE8C:  VLDR            S6, [R5,#4]
59BE90:  MOVS            R1, #0
59BE92:  VLDR            S4, [R5]
59BE96:  ADD             R2, SP, #0x78+var_44; int
59BE98:  VADD.F32        S6, S6, S2
59BE9C:  ADD             R3, SP, #0x78+var_48; int
59BE9E:  VADD.F32        S2, S4, S2
59BEA2:  MOVT            R1, #0xC1F0; int
59BEA6:  VADD.F32        S0, S8, S0
59BEAA:  VSTR            S6, [SP,#0x78+var_50]
59BEAE:  VSTR            S2, [SP,#0x78+var_54]
59BEB2:  VSTR            S0, [SP,#0x78+var_4C]
59BEB6:  STRD.W          R0, R4, [SP,#0x78+var_78]; int
59BEBA:  STRD.W          R4, R4, [SP,#0x78+var_70]; int
59BEBE:  STRD.W          R0, R4, [SP,#0x78+var_68]; int
59BEC2:  ADD             R0, SP, #0x78+var_54; CVector *
59BEC4:  STR             R4, [SP,#0x78+var_60]; int
59BEC6:  BLX.W           j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
59BECA:  CMP             R0, #1
59BECC:  MOV.W           R4, #1
59BED0:  ITE NE
59BED2:  VLDRNE          S0, =-100.0
59BED6:  VLDREQ          S0, [SP,#0x78+var_3C]
59BEDA:  CMP             R6, #0
59BEDC:  ITTT NE
59BEDE:  VLDRNE          S2, [SP,#0x78+var_58]
59BEE2:  VSUBNE.F32      S2, S2, S0
59BEE6:  VSTRNE          S2, [R6]
59BEEA:  CMP.W           R9, #0
59BEEE:  ITT NE
59BEF0:  LDRNE           R0, [SP,#0x78+var_58]
59BEF2:  STRNE.W         R0, [R9]
59BEF6:  CMP.W           R8, #0
59BEFA:  IT NE
59BEFC:  VSTRNE          S0, [R8]
59BF00:  MOV             R0, R4
59BF02:  ADD             SP, SP, #0x60 ; '`'
59BF04:  POP.W           {R8,R9,R11}
59BF08:  POP             {R4-R7,PC}
