; =========================================================
; Game Engine Function: _ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb
; Address            : 0x5A39B0 - 0x5A3A38
; =========================================================

5A39B0:  PUSH            {R4-R7,LR}
5A39B2:  ADD             R7, SP, #0xC
5A39B4:  PUSH.W          {R8-R11}
5A39B8:  SUB             SP, SP, #0x44
5A39BA:  LDR.W           R12, =(gpCoronaTexture_ptr - 0x5A39C6)
5A39BE:  LDR.W           LR, [R7,#arg_14]
5A39C2:  ADD             R12, PC; gpCoronaTexture_ptr
5A39C4:  LDR             R4, [R7,#arg_3C]
5A39C6:  LDR             R5, [R7,#arg_40]
5A39C8:  LDR.W           R12, [R12]; gpCoronaTexture
5A39CC:  LDRD.W          R9, R8, [R7,#arg_18]
5A39D0:  STR             R5, [SP,#0x60+var_20]; int
5A39D2:  STR             R4, [SP,#0x60+var_24]; int
5A39D4:  LDR.W           R11, [R7,#arg_34]
5A39D8:  LDR.W           R10, [R7,#arg_20]
5A39DC:  LDR             R4, [R7,#arg_4]
5A39DE:  LDR             R5, [R7,#arg_2C]
5A39E0:  STR.W           R11, [SP,#0x60+var_2C]; int
5A39E4:  STR             R5, [SP,#0x60+var_34]; int
5A39E6:  MOVS            R5, #0
5A39E8:  VLDR            S0, [R7,#arg_38]
5A39EC:  VLDR            S2, [R7,#arg_30]
5A39F0:  VLDR            S4, [R7,#arg_28]
5A39F4:  VLDR            S6, [R7,#arg_10]
5A39F8:  VLDR            S8, [R7,#arg_C]
5A39FC:  STR             R5, [SP,#0x60+var_3C]; int
5A39FE:  LDR.W           R6, [R12,LR,LSL#2]
5A3A02:  LDR.W           R12, [R7,#arg_8]
5A3A06:  LDR             R5, [R7,#arg_0]
5A3A08:  VSTR            S0, [SP,#0x60+var_28]
5A3A0C:  VSTR            S2, [SP,#0x60+var_30]
5A3A10:  VSTR            S4, [SP,#0x60+var_38]
5A3A14:  STRD.W          R8, R10, [SP,#0x60+var_44]; int
5A3A18:  STRD.W          R6, R9, [SP,#0x60+var_4C]; int
5A3A1C:  VSTR            S8, [SP,#0x60+var_54]
5A3A20:  VSTR            S6, [SP,#0x60+var_50]
5A3A24:  STRD.W          R5, R4, [SP,#0x60+var_60]; int
5A3A28:  STR.W           R12, [SP,#0x60+var_58]; int
5A3A2C:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffP9RwTexturehhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,RwTexture *,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
5A3A30:  ADD             SP, SP, #0x44 ; 'D'
5A3A32:  POP.W           {R8-R11}
5A3A36:  POP             {R4-R7,PC}
