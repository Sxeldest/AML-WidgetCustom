; =========================================================
; Game Engine Function: _ZNK24CTaskComplexDriveToPoint8SetUpCarEv
; Address            : 0x4FC3C0 - 0x4FC40C
; =========================================================

4FC3C0:  LDR             R1, [R0,#0xC]
4FC3C2:  MOVS            R3, #1
4FC3C4:  LDRB.W          R2, [R1,#0x3BD]
4FC3C8:  STRB            R2, [R0,#0x1D]
4FC3CA:  VLDR            S0, [R0,#0x10]
4FC3CE:  LDRB.W          R2, [R1,#0x3BE]
4FC3D2:  VCMPE.F32       S0, #0.0
4FC3D6:  STRB            R2, [R0,#0x1E]
4FC3D8:  VMRS            APSR_nzcv, FPSCR
4FC3DC:  LDRB.W          R2, [R1,#0x3D4]
4FC3E0:  STRB.W          R3, [R0,#0x20]
4FC3E4:  STRB            R2, [R0,#0x1F]
4FC3E6:  ITTTT GT
4FC3E8:  VCVTGT.U32.F32  S0, S0
4FC3EC:  VMOVGT          R2, S0
4FC3F0:  STRBGT.W        R2, [R1,#0x3D4]
4FC3F4:  LDRGT           R1, [R0,#0xC]
4FC3F6:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FC3FE)
4FC3F8:  LDR             R3, [R0,#0x18]
4FC3FA:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FC3FC:  STRB.W          R3, [R1,#0x3BD]
4FC400:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4FC402:  LDR             R0, [R0,#0xC]
4FC404:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
4FC406:  STR.W           R1, [R0,#0x3B0]
4FC40A:  BX              LR
