; =========================================================
; Game Engine Function: _ZNK18CTaskComplexWander16ComputeTargetPosEPK4CPedR7CVectorRK12CNodeAddress
; Address            : 0x521334 - 0x521370
; =========================================================

521334:  PUSH            {R4,R6,R7,LR}
521336:  ADD             R7, SP, #8
521338:  SUB             SP, SP, #0x10
52133A:  LDR             R0, =(ThePaths_ptr - 0x521346)
52133C:  MOV             R4, R2
52133E:  LDRH.W          R12, [R1,#0x24]
521342:  ADD             R0, PC; ThePaths_ptr
521344:  LDR             R2, [R3]
521346:  LDR             R1, [R0]; ThePaths
521348:  MOV             R0, SP
52134A:  MOV             R3, R12
52134C:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
521350:  VMOV.F32        S0, #1.0
521354:  VLDR            D16, [SP,#0x18+var_18]
521358:  LDR             R0, [SP,#0x18+var_10]
52135A:  STR             R0, [R4,#8]
52135C:  VSTR            D16, [R4]
521360:  VLDR            S2, [R4,#8]
521364:  VADD.F32        S0, S2, S0
521368:  VSTR            S0, [R4,#8]
52136C:  ADD             SP, SP, #0x10
52136E:  POP             {R4,R6,R7,PC}
