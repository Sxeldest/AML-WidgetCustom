; =========================================================
; Game Engine Function: _ZN15CEventAttractor14IsEffectActiveEPK7CEntityPK9C2dEffect
; Address            : 0x374C70 - 0x374CC8
; =========================================================

374C70:  PUSH            {R4-R7,LR}
374C72:  ADD             R7, SP, #0xC
374C74:  PUSH.W          {R8}
374C78:  MOV             R8, R1
374C7A:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x374C86)
374C7C:  LDRSH.W         R0, [R0,#0x26]
374C80:  MOVS            R4, #0
374C82:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
374C84:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
374C86:  LDR.W           R5, [R1,R0,LSL#2]
374C8A:  LDRB.W          R0, [R5,#0x23]
374C8E:  CBZ             R0, loc_374CBE
374C90:  MOVS            R6, #0
374C92:  MOV             R0, R5; this
374C94:  MOV             R1, R6; int
374C96:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
374C9A:  LDRB.W          R1, [R8,#0xC]
374C9E:  EOR.W           R0, R0, R8
374CA2:  EOR.W           R1, R1, #3
374CA6:  ORRS            R0, R1
374CA8:  MOV.W           R0, #0
374CAC:  IT EQ
374CAE:  MOVEQ           R0, #1
374CB0:  ORRS            R4, R0
374CB2:  CBNZ            R0, loc_374CBE
374CB4:  LDRB.W          R0, [R5,#0x23]
374CB8:  ADDS            R6, #1
374CBA:  CMP             R6, R0
374CBC:  BLT             loc_374C92
374CBE:  AND.W           R0, R4, #1
374CC2:  POP.W           {R8}
374CC6:  POP             {R4-R7,PC}
