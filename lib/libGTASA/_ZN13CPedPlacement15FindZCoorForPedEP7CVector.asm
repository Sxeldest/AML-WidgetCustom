; =========================================================
; Game Engine Function: _ZN13CPedPlacement15FindZCoorForPedEP7CVector
; Address            : 0x4C28FC - 0x4C29FE
; =========================================================

4C28FC:  PUSH            {R4-R7,LR}
4C28FE:  ADD             R7, SP, #0xC
4C2900:  PUSH.W          {R8-R11}
4C2904:  SUB             SP, SP, #4
4C2906:  VPUSH           {D8-D9}
4C290A:  SUB             SP, SP, #0x58
4C290C:  MOV             R4, R0
4C290E:  VLDR            S16, =-100.0
4C2912:  VLDR            S4, [R4,#8]
4C2916:  VMOV.F32        S6, #0.5
4C291A:  VLDR            S0, [R4]
4C291E:  ADD.W           R10, SP, #0x88+var_6C
4C2922:  VADD.F32        S8, S4, S16
4C2926:  VLDR            S10, =0.0
4C292A:  VLDR            S2, [R4,#4]
4C292E:  ADD.W           R9, SP, #0x88+var_5C
4C2932:  VADD.F32        S0, S0, S10
4C2936:  ADD.W           R8, SP, #0x88+var_60
4C293A:  VADD.F32        S2, S2, S10
4C293E:  MOVS            R5, #0
4C2940:  MOVS            R6, #1
4C2942:  MOV             R0, R10; CVector *
4C2944:  VADD.F32        S4, S4, S6
4C2948:  MOV             R2, R9; int
4C294A:  MOV             R3, R8; int
4C294C:  VMOV            R1, S8; int
4C2950:  VSTR            S2, [SP,#0x88+var_68]
4C2954:  VSTR            S0, [SP,#0x88+var_6C]
4C2958:  VSTR            S4, [SP,#0x88+var_64]
4C295C:  STRD.W          R6, R6, [SP,#0x88+var_88]; int
4C2960:  STRD.W          R5, R5, [SP,#0x88+var_80]; int
4C2964:  STRD.W          R6, R5, [SP,#0x88+var_78]; int
4C2968:  STR             R5, [SP,#0x88+var_70]; int
4C296A:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4C296E:  VLDR            S0, =0.1
4C2972:  MOV             R11, R0
4C2974:  VLDR            S2, [SP,#0x88+var_6C]
4C2978:  MOV             R0, R10; CVector *
4C297A:  VLDR            S4, [SP,#0x88+var_68]
4C297E:  MOV             R2, R9; int
4C2980:  VADD.F32        S2, S2, S0
4C2984:  MOV             R3, R8; int
4C2986:  VADD.F32        S0, S4, S0
4C298A:  VLDR            S18, [SP,#0x88+var_54]
4C298E:  VSTR            S2, [SP,#0x88+var_6C]
4C2992:  VSTR            S0, [SP,#0x88+var_68]
4C2996:  VLDR            S0, [R4,#8]
4C299A:  STRD.W          R6, R6, [SP,#0x88+var_88]; int
4C299E:  VADD.F32        S0, S0, S16
4C29A2:  STRD.W          R5, R5, [SP,#0x88+var_80]; int
4C29A6:  STRD.W          R6, R5, [SP,#0x88+var_78]; int
4C29AA:  STR             R5, [SP,#0x88+var_70]; int
4C29AC:  VMOV            R1, S0; int
4C29B0:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4C29B4:  VLDR            S0, [SP,#0x88+var_54]
4C29B8:  CMP.W           R11, #0
4C29BC:  VMOV            D1, D8
4C29C0:  VLDR            S4, =-99.0
4C29C4:  IT NE
4C29C6:  VMOVNE.F32      S2, S18
4C29CA:  CMP             R0, #0
4C29CC:  IT NE
4C29CE:  VMOVNE.F32      S16, S0
4C29D2:  VMAX.F32        D0, D1, D8
4C29D6:  VCMPE.F32       S0, S4
4C29DA:  VMRS            APSR_nzcv, FPSCR
4C29DE:  ITTTT GT
4C29E0:  VMOVGT.F32      S2, #1.0
4C29E4:  VADDGT.F32      S0, S0, S2
4C29E8:  VSTRGT          S0, [R4,#8]
4C29EC:  MOVGT           R5, #1
4C29EE:  MOV             R0, R5
4C29F0:  ADD             SP, SP, #0x58 ; 'X'
4C29F2:  VPOP            {D8-D9}
4C29F6:  ADD             SP, SP, #4
4C29F8:  POP.W           {R8-R11}
4C29FC:  POP             {R4-R7,PC}
