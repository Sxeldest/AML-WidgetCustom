; =========================================================
; Game Engine Function: _ZN6CStats16SetNewRecordStatEtf
; Address            : 0x41621C - 0x41626E
; =========================================================

41621C:  VMOV            S0, R1
416220:  CMP             R0, #0x51 ; 'Q'
416222:  BHI             loc_416240
416224:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41622A)
416226:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
416228:  LDR             R1, [R1]; bool
41622A:  ADD.W           R0, R1, R0,LSL#2
41622E:  VLDR            S2, [R0]
416232:  VMAX.F32        D0, D1, D0
416236:  VSTR            S0, [R0]
41623A:  MOVS            R0, #0; this
41623C:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
416240:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x41624E)
416242:  MOV             R2, #0xFFFFFE20
41624A:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
41624C:  LDR             R1, [R1]; CStats::StatTypesInt ...
41624E:  ADD.W           R0, R1, R0,LSL#2
416252:  VLDR            S2, [R0,#-0x1E0]
416256:  VCVT.F32.S32    S2, S2
41625A:  VMAX.F32        D0, D1, D0
41625E:  VCVT.S32.F32    S0, S0
416262:  VMOV            R1, S0; bool
416266:  STR             R1, [R0,R2]
416268:  MOVS            R0, #0; this
41626A:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
