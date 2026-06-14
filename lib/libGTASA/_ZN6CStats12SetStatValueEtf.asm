; =========================================================
; Game Engine Function: _ZN6CStats12SetStatValueEtf
; Address            : 0x41552C - 0x415566
; =========================================================

41552C:  VMOV            S0, R1
415530:  CMP             R0, #0x51 ; 'Q'
415532:  BHI             loc_415546
415534:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41553A)
415536:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
415538:  LDR             R1, [R1]; bool
41553A:  ADD.W           R0, R1, R0,LSL#2
41553E:  VSTR            S0, [R0]
415542:  MOVS            R0, #0; this
415544:  B               _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
415546:  VCVT.S32.F32    S0, S0
41554A:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x415554)
41554C:  MOVW            R2, #0xFE20
415550:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
415552:  MOVT            R2, #0xFFFF
415556:  LDR             R1, [R1]; CStats::StatTypesInt ...
415558:  ADD.W           R0, R1, R0,LSL#2
41555C:  VMOV            R1, S0; bool
415560:  STR             R1, [R0,R2]
415562:  MOVS            R0, #0; this
415564:  B               _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
