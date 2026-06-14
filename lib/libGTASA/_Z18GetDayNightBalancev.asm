; =========================================================
; Game Engine Function: _Z18GetDayNightBalancev
; Address            : 0x5A403C - 0x5A40E6
; =========================================================

5A403C:  LDR             R0, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x5A4046)
5A403E:  VLDR            S4, =60.0
5A4042:  ADD             R0, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
5A4044:  LDR             R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x5A4050)
5A4046:  VLDR            S6, =360.0
5A404A:  LDR             R0, [R0]; CClock::ms_nGameClockSeconds ...
5A404C:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
5A404E:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
5A4050:  LDRH            R0, [R0]; CClock::ms_nGameClockSeconds
5A4052:  VMOV            S0, R0
5A4056:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x5A4060)
5A4058:  VCVT.F32.U32    S0, S0
5A405C:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
5A405E:  LDRB            R1, [R1]; CClock::ms_nGameClockMinutes
5A4060:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
5A4062:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
5A4064:  VDIV.F32        S0, S0, S4
5A4068:  RSB.W           R0, R0, R0,LSL#4
5A406C:  ADD.W           R0, R1, R0,LSL#2
5A4070:  VMOV            S2, R0
5A4074:  VCVT.F32.S32    S2, S2
5A4078:  VADD.F32        S2, S0, S2
5A407C:  VMOV.F32        S0, #1.0
5A4080:  VCMPE.F32       S2, S6
5A4084:  VMRS            APSR_nzcv, FPSCR
5A4088:  BLT             loc_5A40E0
5A408A:  VLDR            S6, =420.0
5A408E:  VCMPE.F32       S2, S6
5A4092:  VMRS            APSR_nzcv, FPSCR
5A4096:  BGE             loc_5A40A6
5A4098:  VSUB.F32        S0, S6, S2
5A409C:  VDIV.F32        S0, S0, S4
5A40A0:  VMOV            R0, S0
5A40A4:  BX              LR
5A40A6:  VLDR            S4, =1200.0
5A40AA:  VCMPE.F32       S2, S4
5A40AE:  VMRS            APSR_nzcv, FPSCR
5A40B2:  ITTT LT
5A40B4:  VLDRLT          S0, =0.0
5A40B8:  VMOVLT          R0, S0
5A40BC:  BXLT            LR
5A40BE:  VLDR            S4, =1260.0
5A40C2:  VCMPE.F32       S2, S4
5A40C6:  VMRS            APSR_nzcv, FPSCR
5A40CA:  BGE             loc_5A40E0
5A40CC:  VSUB.F32        S0, S4, S2
5A40D0:  VLDR            S2, =-60.0
5A40D4:  VDIV.F32        S0, S0, S2
5A40D8:  VMOV.F32        S2, #1.0
5A40DC:  VADD.F32        S0, S0, S2
5A40E0:  VMOV            R0, S0
5A40E4:  BX              LR
