; =========================================================
; Game Engine Function: alGetBufferf
; Address            : 0x1D6214 - 0x1D62DC
; =========================================================

1D6214:  PUSH            {R4-R7,R11,LR}
1D6218:  ADD             R11, SP, #0x10
1D621C:  MOV             R5, R2
1D6220:  MOV             R6, R1
1D6224:  MOV             R7, R0
1D6228:  BL              j_GetContextRef
1D622C:  MOV             R4, R0
1D6230:  CMP             R4, #0
1D6234:  POPEQ           {R4-R7,R11,PC}
1D6238:  CMP             R5, #0
1D623C:  BEQ             loc_1D6298
1D6240:  LDR             R0, [R4,#0xFC]
1D6244:  MOV             R1, R7
1D6248:  ADD             R0, R0, #0x3C ; '<'
1D624C:  BL              j_LookupUIntMapKey
1D6250:  MOV             R7, R0
1D6254:  CMP             R7, #0
1D6258:  BEQ             loc_1D62A4
1D625C:  MOVW            R0, #0x200B
1D6260:  CMP             R6, R0
1D6264:  BNE             loc_1D62B0
1D6268:  ADD             R6, R7, #0x30 ; '0'
1D626C:  MOV             R0, R6
1D6270:  BL              j_ReadLock
1D6274:  LDR             R0, [R7,#0xC]
1D6278:  CMP             R0, #0
1D627C:  BEQ             loc_1D62C8
1D6280:  VLDR            S0, [R7,#4]
1D6284:  VMOV            S2, R0
1D6288:  VCVT.F32.S32    S2, S2
1D628C:  VCVT.F32.S32    S0, S0
1D6290:  VDIV.F32        S0, S2, S0
1D6294:  B               loc_1D62CC
1D6298:  MOV             R0, R4
1D629C:  MOVW            R1, #0xA003
1D62A0:  B               loc_1D62B8
1D62A4:  MOV             R0, R4
1D62A8:  MOVW            R1, #0xA001
1D62AC:  B               loc_1D62B8
1D62B0:  MOV             R0, R4
1D62B4:  MOVW            R1, #0xA002
1D62B8:  BL              j_alSetError
1D62BC:  MOV             R0, R4
1D62C0:  POP             {R4-R7,R11,LR}
1D62C4:  B               j_ALCcontext_DecRef
1D62C8:  VLDR            S0, =0.0
1D62CC:  MOV             R0, R6
1D62D0:  VSTR            S0, [R5]
1D62D4:  BL              j_ReadUnlock
1D62D8:  B               loc_1D62BC
