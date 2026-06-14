; =========================================================
; Game Engine Function: _ZN10CSkidmarks11RegisterOneEjRK7CVectorffPbS3_f
; Address            : 0x5BEC40 - 0x5BEC74
; =========================================================

5BEC40:  PUSH            {R7,LR}
5BEC42:  MOV             R7, SP
5BEC44:  SUB             SP, SP, #0x10
5BEC46:  LDR.W           R12, [R7,#0xC]
5BEC4A:  VLDR            S0, [R7,#0x10]
5BEC4E:  LDRB.W          LR, [R12]
5BEC52:  CMP.W           LR, #0
5BEC56:  ITTE EQ
5BEC58:  LDREQ.W         LR, [R7,#8]
5BEC5C:  LDRBEQ.W        LR, [LR]
5BEC60:  MOVNE.W         LR, #3
5BEC64:  VSTR            S0, [SP,#0x18+var_10]
5BEC68:  STRD.W          LR, R12, [SP,#0x18+var_18]; int
5BEC6C:  BLX.W           j__ZN10CSkidmarks11RegisterOneEjRK7CVectorff13eSkidmarkTypePbf; CSkidmarks::RegisterOne(uint,CVector const&,float,float,eSkidmarkType,bool *,float)
5BEC70:  ADD             SP, SP, #0x10
5BEC72:  POP             {R7,PC}
