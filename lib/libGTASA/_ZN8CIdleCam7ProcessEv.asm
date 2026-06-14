; =========================================================
; Game Engine Function: _ZN8CIdleCam7ProcessEv
; Address            : 0x3D3590 - 0x3D3604
; =========================================================

3D3590:  PUSH            {R4,R5,R7,LR}
3D3592:  ADD             R7, SP, #8
3D3594:  MOV             R4, R0
3D3596:  LDR             R0, =(currentPad_ptr - 0x3D35A0)
3D3598:  LDR.W           R5, [R4,#0x90]
3D359C:  ADD             R0, PC; currentPad_ptr
3D359E:  LDR             R0, [R0]; currentPad
3D35A0:  LDR             R0, [R0]
3D35A2:  CMP             R0, #0
3D35A4:  ITT EQ
3D35A6:  MOVEQ           R0, #0; this
3D35A8:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3D35AC:  LDR.W           R0, [R0,#0x134]
3D35B0:  CMP             R5, R0
3D35B2:  BNE             loc_3D35E4
3D35B4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3D35BE)
3D35B6:  VLDR            S0, =50.0
3D35BA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3D35BC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3D35BE:  VLDR            S2, [R0]
3D35C2:  LDR.W           R0, [R4,#0x94]
3D35C6:  VDIV.F32        S0, S2, S0
3D35CA:  VLDR            S2, =1000.0
3D35CE:  VMUL.F32        S0, S0, S2
3D35D2:  VCVT.U32.F32    S0, S0
3D35D6:  VMOV            R1, S0
3D35DA:  ADD             R0, R1
3D35DC:  STR.W           R0, [R4,#0x94]
3D35E0:  MOVS            R0, #0
3D35E2:  POP             {R4,R5,R7,PC}
3D35E4:  LDR             R0, =(currentPad_ptr - 0x3D35EA)
3D35E6:  ADD             R0, PC; currentPad_ptr
3D35E8:  LDR             R0, [R0]; currentPad
3D35EA:  LDR             R0, [R0]
3D35EC:  CMP             R0, #0
3D35EE:  ITT EQ
3D35F0:  MOVEQ           R0, #0; this
3D35F2:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3D35F6:  MOVS            R1, #0
3D35F8:  LDR.W           R0, [R0,#0x134]
3D35FC:  STRD.W          R0, R1, [R4,#0x90]
3D3600:  MOVS            R0, #0
3D3602:  POP             {R4,R5,R7,PC}
