; =========================================================
; Game Engine Function: _ZN9CPathFind23SwitchPedRoadsOffInAreaEffffffbb
; Address            : 0x31869A - 0x3186CE
; =========================================================

31869A:  PUSH            {R4,R6,R7,LR}
31869C:  ADD             R7, SP, #8
31869E:  SUB             SP, SP, #0x18; float
3186A0:  VLDR            S0, [R7,#arg_8]
3186A4:  MOVS            R4, #0
3186A6:  LDRD.W          R12, LR, [R7,#arg_C]
3186AA:  VLDR            S2, [R7,#arg_4]
3186AE:  VLDR            S4, [R7,#arg_0]
3186B2:  STRD.W          R12, R4, [SP,#0x20+var_14]; bool
3186B6:  STR.W           LR, [SP,#0x20+var_C]; bool
3186BA:  VSTR            S4, [SP,#0x20+var_20]
3186BE:  VSTR            S2, [SP,#0x20+var_1C]
3186C2:  VSTR            S0, [SP,#0x20+var_18]
3186C6:  BLX             j__ZN9CPathFind20SwitchRoadsOffInAreaEffffffbbb; CPathFind::SwitchRoadsOffInArea(float,float,float,float,float,float,bool,bool,bool)
3186CA:  ADD             SP, SP, #0x18
3186CC:  POP             {R4,R6,R7,PC}
