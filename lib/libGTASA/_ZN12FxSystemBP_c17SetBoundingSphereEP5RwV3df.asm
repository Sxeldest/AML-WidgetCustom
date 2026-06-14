; =========================================================
; Game Engine Function: _ZN12FxSystemBP_c17SetBoundingSphereEP5RwV3df
; Address            : 0x36E008 - 0x36E054
; =========================================================

36E008:  PUSH            {R4,R5,R7,LR}
36E00A:  ADD             R7, SP, #8
36E00C:  VPUSH           {D8}
36E010:  VMOV            S16, R2
36E014:  MOV             R5, R1
36E016:  MOV             R4, R0
36E018:  VCMPE.F32       S16, #0.0
36E01C:  VMRS            APSR_nzcv, FPSCR
36E020:  BLE             loc_36E04E
36E022:  LDR             R0, [R4,#0x20]
36E024:  CBNZ            R0, loc_36E04E
36E026:  LDR             R0, =(g_fxMan_ptr - 0x36E030)
36E028:  MOVS            R1, #0x14; int
36E02A:  MOVS            R2, #4; int
36E02C:  ADD             R0, PC; g_fxMan_ptr
36E02E:  LDR             R0, [R0]; g_fxMan
36E030:  ADDS            R0, #0xAC; this
36E032:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
36E036:  MOVS            R1, #0
36E038:  STR             R1, [R0,#0x10]
36E03A:  STR             R0, [R4,#0x20]
36E03C:  VLDR            D16, [R5]
36E040:  LDR             R1, [R5,#8]
36E042:  STR             R1, [R0,#8]
36E044:  VSTR            D16, [R0]
36E048:  LDR             R0, [R4,#0x20]
36E04A:  VSTR            S16, [R0,#0xC]
36E04E:  VPOP            {D8}
36E052:  POP             {R4,R5,R7,PC}
