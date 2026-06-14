; =========================================================
; Game Engine Function: _ZN6CStats20RegisterBestPositionEii
; Address            : 0x416398 - 0x416456
; =========================================================

416398:  UXTH            R0, R0
41639A:  CMP             R0, #0x51 ; 'Q'
41639C:  BHI             loc_4163AE
41639E:  LDR             R2, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4163A4)
4163A0:  ADD             R2, PC; _ZN6CStats14StatTypesFloatE_ptr
4163A2:  LDR             R2, [R2]; CStats::StatTypesFloat ...
4163A4:  ADD.W           R2, R2, R0,LSL#2
4163A8:  VLDR            S0, [R2]
4163AC:  B               loc_4163C0
4163AE:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x4163B4)
4163B0:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
4163B2:  LDR             R2, [R2]; CStats::StatTypesInt ...
4163B4:  ADD.W           R2, R2, R0,LSL#2
4163B8:  VLDR            S0, [R2,#-0x1E0]
4163BC:  VCVT.F32.S32    S0, S0
4163C0:  VCMP.F32        S0, #0.0
4163C4:  VMRS            APSR_nzcv, FPSCR
4163C8:  BEQ             loc_4163F2
4163CA:  CMP             R0, #0x51 ; 'Q'
4163CC:  BHI             loc_416412
4163CE:  LDR             R2, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4163D8)
4163D0:  VMOV            S0, R1; bool
4163D4:  ADD             R2, PC; _ZN6CStats14StatTypesFloatE_ptr
4163D6:  VCVT.F32.S32    S0, S0
4163DA:  LDR             R2, [R2]; CStats::StatTypesFloat ...
4163DC:  ADD.W           R0, R2, R0,LSL#2
4163E0:  VLDR            S2, [R0]
4163E4:  VMIN.F32        D0, D1, D0
4163E8:  VSTR            S0, [R0]
4163EC:  MOVS            R0, #0; this
4163EE:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
4163F2:  CMP             R0, #0x51 ; 'Q'
4163F4:  BHI             loc_41643A
4163F6:  VMOV            S0, R1
4163FA:  LDR             R2, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416404)
4163FC:  VCVT.F32.S32    S0, S0
416400:  ADD             R2, PC; _ZN6CStats14StatTypesFloatE_ptr
416402:  LDR             R1, [R2]; bool
416404:  ADD.W           R0, R1, R0,LSL#2
416408:  VSTR            S0, [R0]
41640C:  MOVS            R0, #0; this
41640E:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
416412:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x41641C)
416414:  VMOV            S2, R1
416418:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
41641A:  LDR             R2, [R2]; CStats::StatTypesInt ...
41641C:  ADD.W           R0, R2, R0,LSL#2
416420:  VLDR            S0, [R0,#-0x1E0]
416424:  VCVT.F32.S32    S2, S2
416428:  VCVT.F32.S32    S0, S0
41642C:  VMIN.F32        D0, D0, D1
416430:  VCVT.S32.F32    S0, S0
416434:  VMOV            R1, S0
416438:  B               loc_416446
41643A:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x416442)
41643C:  SXTH            R1, R1; bool
41643E:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
416440:  LDR             R2, [R2]; CStats::StatTypesInt ...
416442:  ADD.W           R0, R2, R0,LSL#2
416446:  MOV             R2, #0xFFFFFE20
41644E:  STR             R1, [R0,R2]
416450:  MOVS            R0, #0; this
416452:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
