; =========================================================
; Game Engine Function: _ZN4CHud20GetYPosBasedOnHealthEhfa
; Address            : 0x436ED8 - 0x436F1E
; =========================================================

436ED8:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x436EE6)
436EDA:  MOV.W           R12, #0x194
436EDE:  VMOV            S0, R1
436EE2:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
436EE4:  LDR             R3, [R3]; CWorld::Players ...
436EE6:  SMLABB.W        R0, R0, R12, R3
436EEA:  LDRB.W          R0, [R0,#0x14F]
436EEE:  CMP             R0, #0x64 ; 'd'
436EF0:  BHI             loc_436F18
436EF2:  LDR             R0, =(RsGlobal_ptr - 0x436EFC)
436EF4:  VLDR            S4, =-448.0
436EF8:  ADD             R0, PC; RsGlobal_ptr
436EFA:  LDR             R0, [R0]; RsGlobal
436EFC:  VLDR            S2, [R0,#8]
436F00:  VCVT.F32.S32    S2, S2
436F04:  VDIV.F32        S2, S2, S4
436F08:  VMOV            S4, R2
436F0C:  VCVT.F32.S32    S4, S4
436F10:  VMUL.F32        S2, S2, S4
436F14:  VADD.F32        S0, S0, S2
436F18:  VMOV            R0, S0
436F1C:  BX              LR
