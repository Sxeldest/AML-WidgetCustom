; =========================================================
; Game Engine Function: _ZN17CEventGlobalGroup13GetSoundLevelEP7CEntityR7CVector
; Address            : 0x36FA74 - 0x36FAEE
; =========================================================

36FA74:  PUSH            {R4-R7,LR}
36FA76:  ADD             R7, SP, #0xC
36FA78:  PUSH.W          {R8,R9,R11}
36FA7C:  VPUSH           {D8}
36FA80:  MOV             R9, R0
36FA82:  VLDR            S16, =0.0
36FA86:  LDR.W           R0, [R9,#8]
36FA8A:  MOV             R8, R2
36FA8C:  MOV             R5, R1
36FA8E:  CMP             R0, #1
36FA90:  BLT             loc_36FAE0
36FA92:  ADD.W           R4, R9, #0xC
36FA96:  MOVS            R6, #0
36FA98:  LDR.W           R0, [R4,R6,LSL#2]
36FA9C:  LDR             R1, [R0]
36FA9E:  LDR             R1, [R1,#0x2C]
36FAA0:  BLX             R1
36FAA2:  CMP             R5, #0
36FAA4:  IT NE
36FAA6:  CMPNE           R0, R5
36FAA8:  BNE             loc_36FAD6
36FAAA:  LDR.W           R0, [R4,R6,LSL#2]; this
36FAAE:  MOV             R1, R5; CEntity *
36FAB0:  MOV             R2, R8; CVector *
36FAB2:  BLX             j__ZNK6CEvent13GetSoundLevelEPK7CEntityRK7CVector; CEvent::GetSoundLevel(CEntity const*,CVector const&)
36FAB6:  MOV             R1, R0
36FAB8:  VMOV            S0, R1; float
36FABC:  VCMPE.F32       S0, #0.0
36FAC0:  VMRS            APSR_nzcv, FPSCR
36FAC4:  BLE             loc_36FAD6
36FAC6:  VMOV            R0, S16; this
36FACA:  BLX             j__ZN6CEvent23CalcSoundLevelIncrementEff; CEvent::CalcSoundLevelIncrement(float,float)
36FACE:  VMOV            S0, R0
36FAD2:  VADD.F32        S16, S16, S0
36FAD6:  LDR.W           R0, [R9,#8]
36FADA:  ADDS            R6, #1
36FADC:  CMP             R6, R0
36FADE:  BLT             loc_36FA98
36FAE0:  VMOV            R0, S16
36FAE4:  VPOP            {D8}
36FAE8:  POP.W           {R8,R9,R11}
36FAEC:  POP             {R4-R7,PC}
