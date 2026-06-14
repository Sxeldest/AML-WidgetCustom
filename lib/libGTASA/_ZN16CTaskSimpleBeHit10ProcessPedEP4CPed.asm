; =========================================================
; Game Engine Function: _ZN16CTaskSimpleBeHit10ProcessPedEP4CPed
; Address            : 0x4DFD28 - 0x4DFE10
; =========================================================

4DFD28:  PUSH            {R4-R7,LR}
4DFD2A:  ADD             R7, SP, #0xC
4DFD2C:  PUSH.W          {R11}
4DFD30:  SUB             SP, SP, #0x10
4DFD32:  MOV             R5, R0
4DFD34:  MOV             R4, R1
4DFD36:  LDRB            R0, [R5,#0xC]
4DFD38:  CBZ             R0, loc_4DFD3E
4DFD3A:  MOVS            R0, #1
4DFD3C:  B               loc_4DFD7C
4DFD3E:  LDR             R0, [R5,#0x20]
4DFD40:  CBZ             R0, loc_4DFD84
4DFD42:  LDR             R0, [R5,#0x24]
4DFD44:  CBNZ            R0, loc_4DFD7A
4DFD46:  LDR             R0, [R5,#8]; this
4DFD48:  CBZ             R0, loc_4DFD5A
4DFD4A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DFD4E:  CMP             R0, #1
4DFD50:  ITT EQ
4DFD52:  LDREQ.W         R0, [R4,#0x59C]
4DFD56:  CMPEQ           R0, #8
4DFD58:  BEQ             loc_4DFDDC
4DFD5A:  MOVS            R0, #0
4DFD5C:  STRD.W          R0, R0, [SP,#0x20+var_20]; unsigned __int8
4DFD60:  STR             R0, [SP,#0x20+var_18]; unsigned __int8
4DFD62:  MOV             R0, R4; this
4DFD64:  MOVW            R1, #0x159; unsigned __int16
4DFD68:  MOVS            R2, #0; unsigned int
4DFD6A:  MOV.W           R3, #0x3F800000; float
4DFD6E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4DFD72:  MOV             R0, R5; this
4DFD74:  MOV             R1, R4; CPed *
4DFD76:  BLX             j__ZN16CTaskSimpleBeHit9StartAnimEP4CPed; CTaskSimpleBeHit::StartAnim(CPed *)
4DFD7A:  MOVS            R0, #0
4DFD7C:  ADD             SP, SP, #0x10
4DFD7E:  POP.W           {R11}
4DFD82:  POP             {R4-R7,PC}
4DFD84:  LDR             R0, [R5,#8]
4DFD86:  CMP             R0, #0
4DFD88:  BEQ             loc_4DFD42
4DFD8A:  MOV             R0, R4; this
4DFD8C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DFD90:  CMP             R0, #0
4DFD92:  BNE             loc_4DFD42
4DFD94:  LDR             R0, [R5,#8]
4DFD96:  LDR             R1, [R4,#0x14]
4DFD98:  LDR             R2, [R0,#0x14]
4DFD9A:  ADD.W           R3, R1, #0x30 ; '0'
4DFD9E:  CMP             R1, #0
4DFDA0:  IT EQ
4DFDA2:  ADDEQ           R3, R4, #4
4DFDA4:  ADD.W           R1, R2, #0x30 ; '0'
4DFDA8:  CMP             R2, #0
4DFDAA:  VLDR            S0, [R3]
4DFDAE:  VLDR            S2, [R3,#4]
4DFDB2:  IT EQ
4DFDB4:  ADDEQ           R1, R0, #4
4DFDB6:  VLDR            S4, [R1]
4DFDBA:  VLDR            S6, [R1,#4]
4DFDBE:  VSUB.F32        S0, S4, S0
4DFDC2:  VSUB.F32        S2, S6, S2
4DFDC6:  VMOV            R0, S0
4DFDCA:  VMOV            R1, S2; x
4DFDCE:  EOR.W           R0, R0, #0x80000000; y
4DFDD2:  BLX             atan2f
4DFDD6:  STR.W           R0, [R4,#0x560]
4DFDDA:  B               loc_4DFD42
4DFDDC:  MOV             R0, R4; this
4DFDDE:  MOVS            R1, #1; __int16
4DFDE0:  BLX             j__ZN4CPed16DisablePedSpeechEs; CPed::DisablePedSpeech(short)
4DFDE4:  MOV             R0, R4; this
4DFDE6:  BLX             j__ZN4CPed15EnablePedSpeechEv; CPed::EnablePedSpeech(void)
4DFDEA:  MOVS            R6, #0
4DFDEC:  MOV             R0, R4; this
4DFDEE:  MOVS            R1, #0x10; unsigned __int16
4DFDF0:  MOV.W           R2, #0x3E8; unsigned int
4DFDF4:  MOV.W           R3, #0x3F800000; float
4DFDF8:  STRD.W          R6, R6, [SP,#0x20+var_20]; unsigned __int8
4DFDFC:  STR             R6, [SP,#0x20+var_18]; unsigned __int8
4DFDFE:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4DFE02:  CMP.W           R0, #0xFFFFFFFF
4DFE06:  BGT             loc_4DFD72
4DFE08:  STRD.W          R6, R6, [SP,#0x20+var_20]
4DFE0C:  STR             R6, [SP,#0x20+var_18]
4DFE0E:  B               loc_4DFD62
