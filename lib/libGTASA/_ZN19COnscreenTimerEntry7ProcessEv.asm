; =========================================================
; Game Engine Function: _ZN19COnscreenTimerEntry7ProcessEv
; Address            : 0x314C6C - 0x314D18
; =========================================================

314C6C:  LDR             R1, [R0]
314C6E:  CMP             R1, #0
314C70:  BEQ             locret_314D02
314C72:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x314C7C)
314C74:  VLDR            S0, =50.0
314C78:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
314C7A:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
314C7C:  VLDR            S2, [R2]
314C80:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314C8A)
314C82:  VDIV.F32        S0, S2, S0
314C86:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314C88:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
314C8A:  LDR.W           R12, [R2,R1]
314C8E:  LDRB.W          R2, [R0,#0x39]
314C92:  CMP             R2, #0
314C94:  VLDR            S2, =1000.0
314C98:  VMUL.F32        S0, S0, S2
314C9C:  VCVT.U32.F32    S0, S0
314CA0:  VMOV            R3, S0
314CA4:  BEQ             loc_314CF6
314CA6:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314CB0)
314CA8:  SUB.W           R3, R12, R3
314CAC:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314CAE:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
314CB0:  STR             R3, [R2,R1]
314CB2:  LDR             R1, [R0]
314CB4:  LDR             R2, [R2,R1]
314CB6:  CMP.W           R2, #0xFFFFFFFF
314CBA:  BLE             loc_314D04
314CBC:  MOVW            R1, #0x4DD3
314CC0:  LDR             R0, [R0,#0x3C]
314CC2:  MOVT            R1, #0x1062
314CC6:  SMMUL.W         R1, R12, R1
314CCA:  ASRS            R2, R1, #6
314CCC:  ADD.W           R1, R2, R1,LSR#31
314CD0:  CMP             R1, R0
314CD2:  BCS             locret_314D02
314CD4:  LDR             R0, =(TheCamera_ptr - 0x314CDA)
314CD6:  ADD             R0, PC; TheCamera_ptr
314CD8:  LDR             R0, [R0]; TheCamera
314CDA:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
314CDE:  CMP             R0, #0
314CE0:  IT NE
314CE2:  BXNE            LR
314CE4:  LDR             R0, =(AudioEngine_ptr - 0x314CF2)
314CE6:  MOVS            R1, #0x21 ; '!'; int
314CE8:  MOVS            R2, #0; float
314CEA:  MOV.W           R3, #0x3F800000; float
314CEE:  ADD             R0, PC; AudioEngine_ptr
314CF0:  LDR             R0, [R0]; AudioEngine ; this
314CF2:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
314CF6:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314D00)
314CF8:  ADD.W           R2, R12, R3
314CFC:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314CFE:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
314D00:  STR             R2, [R0,R1]
314D02:  BX              LR
314D04:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314D0C)
314D06:  MOVS            R3, #0
314D08:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314D0A:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
314D0C:  STR             R3, [R2,R1]
314D0E:  STRB            R3, [R0,#4]
314D10:  STR             R3, [R0]
314D12:  STRB.W          R3, [R0,#0x38]
314D16:  BX              LR
