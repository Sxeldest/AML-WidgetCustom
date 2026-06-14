; =========================================================
; Game Engine Function: _ZN14COnscreenTimer7ProcessEv
; Address            : 0x314FD4 - 0x315088
; =========================================================

314FD4:  LDRB.W          R1, [R0,#0x151]
314FD8:  CBZ             R1, loc_314FDC
314FDA:  BX              LR
314FDC:  LDR             R1, [R0]
314FDE:  CMP             R1, #0
314FE0:  BEQ             locret_314FDA
314FE2:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x314FEC)
314FE4:  VLDR            S0, =50.0
314FE8:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
314FEA:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
314FEC:  VLDR            S2, [R2]
314FF0:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314FFA)
314FF2:  VDIV.F32        S0, S2, S0
314FF6:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314FF8:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
314FFA:  LDR.W           R12, [R2,R1]
314FFE:  LDRB.W          R2, [R0,#0x39]
315002:  CMP             R2, #0
315004:  VLDR            S2, =1000.0
315008:  VMUL.F32        S0, S0, S2
31500C:  VCVT.U32.F32    S0, S0
315010:  VMOV            R3, S0
315014:  BEQ             loc_315066
315016:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x315020)
315018:  SUB.W           R3, R12, R3
31501C:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
31501E:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
315020:  STR             R3, [R2,R1]
315022:  LDR             R1, [R0]
315024:  LDR             R2, [R2,R1]
315026:  CMP.W           R2, #0xFFFFFFFF
31502A:  BLE             loc_315074
31502C:  MOVW            R1, #0x4DD3
315030:  LDR             R0, [R0,#0x3C]
315032:  MOVT            R1, #0x1062
315036:  SMMUL.W         R1, R12, R1
31503A:  ASRS            R2, R1, #6
31503C:  ADD.W           R1, R2, R1,LSR#31
315040:  CMP             R1, R0
315042:  BCS             locret_314FDA
315044:  LDR             R0, =(TheCamera_ptr - 0x31504A)
315046:  ADD             R0, PC; TheCamera_ptr
315048:  LDR             R0, [R0]; TheCamera
31504A:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
31504E:  CMP             R0, #0
315050:  IT NE
315052:  BXNE            LR
315054:  LDR             R0, =(AudioEngine_ptr - 0x315062)
315056:  MOVS            R1, #0x21 ; '!'; int
315058:  MOVS            R2, #0; float
31505A:  MOV.W           R3, #0x3F800000; float
31505E:  ADD             R0, PC; AudioEngine_ptr
315060:  LDR             R0, [R0]; AudioEngine ; this
315062:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
315066:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x315070)
315068:  ADD.W           R2, R12, R3
31506C:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
31506E:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
315070:  STR             R2, [R0,R1]
315072:  BX              LR
315074:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x31507C)
315076:  MOVS            R3, #0
315078:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
31507A:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
31507C:  STR             R3, [R2,R1]
31507E:  STRB            R3, [R0,#4]
315080:  STR             R3, [R0]
315082:  STRB.W          R3, [R0,#0x38]
315086:  BX              LR
