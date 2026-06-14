; =========================================================
; Game Engine Function: _ZN6CStats19RegisterFastestTimeEii
; Address            : 0x4162C0 - 0x41637E
; =========================================================

4162C0:  UXTH            R0, R0
4162C2:  CMP             R0, #0x51 ; 'Q'
4162C4:  BHI             loc_4162D6
4162C6:  LDR             R2, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4162CC)
4162C8:  ADD             R2, PC; _ZN6CStats14StatTypesFloatE_ptr
4162CA:  LDR             R2, [R2]; CStats::StatTypesFloat ...
4162CC:  ADD.W           R2, R2, R0,LSL#2
4162D0:  VLDR            S0, [R2]
4162D4:  B               loc_4162E8
4162D6:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x4162DC)
4162D8:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
4162DA:  LDR             R2, [R2]; CStats::StatTypesInt ...
4162DC:  ADD.W           R2, R2, R0,LSL#2
4162E0:  VLDR            S0, [R2,#-0x1E0]
4162E4:  VCVT.F32.S32    S0, S0
4162E8:  VCMP.F32        S0, #0.0
4162EC:  VMRS            APSR_nzcv, FPSCR
4162F0:  BEQ             loc_41631A
4162F2:  CMP             R0, #0x51 ; 'Q'
4162F4:  BHI             loc_41633A
4162F6:  LDR             R2, =(_ZN6CStats14StatTypesFloatE_ptr - 0x416300)
4162F8:  VMOV            S0, R1; bool
4162FC:  ADD             R2, PC; _ZN6CStats14StatTypesFloatE_ptr
4162FE:  VCVT.F32.S32    S0, S0
416302:  LDR             R2, [R2]; CStats::StatTypesFloat ...
416304:  ADD.W           R0, R2, R0,LSL#2
416308:  VLDR            S2, [R0]
41630C:  VMIN.F32        D0, D1, D0
416310:  VSTR            S0, [R0]
416314:  MOVS            R0, #0; this
416316:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41631A:  CMP             R0, #0x51 ; 'Q'
41631C:  BHI             loc_416362
41631E:  VMOV            S0, R1
416322:  LDR             R2, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41632C)
416324:  VCVT.F32.S32    S0, S0
416328:  ADD             R2, PC; _ZN6CStats14StatTypesFloatE_ptr
41632A:  LDR             R1, [R2]; bool
41632C:  ADD.W           R0, R1, R0,LSL#2
416330:  VSTR            S0, [R0]
416334:  MOVS            R0, #0; this
416336:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41633A:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x416344)
41633C:  VMOV            S2, R1
416340:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
416342:  LDR             R2, [R2]; CStats::StatTypesInt ...
416344:  ADD.W           R0, R2, R0,LSL#2
416348:  VLDR            S0, [R0,#-0x1E0]
41634C:  VCVT.F32.S32    S2, S2
416350:  VCVT.F32.S32    S0, S0
416354:  VMIN.F32        D0, D0, D1
416358:  VCVT.S32.F32    S0, S0
41635C:  VMOV            R1, S0
416360:  B               loc_41636E
416362:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x41636A)
416364:  SXTH            R1, R1; bool
416366:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
416368:  LDR             R2, [R2]; CStats::StatTypesInt ...
41636A:  ADD.W           R0, R2, R0,LSL#2
41636E:  MOV             R2, #0xFFFFFE20
416376:  STR             R1, [R0,R2]
416378:  MOVS            R0, #0; this
41637A:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
