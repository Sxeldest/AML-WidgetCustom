; =========================================================
; Game Engine Function: _ZN10MenuScreen8DrawTextEPt9TextAligni5CRGBAb9CVector2DS3_b
; Address            : 0x29928C - 0x2992D2
; =========================================================

29928C:  PUSH            {R4-R7,LR}
29928E:  ADD             R7, SP, #0xC
299290:  PUSH.W          {R8-R11}
299294:  SUB             SP, SP, #0x2C
299296:  LDR.W           R12, [R7,#arg_4]
29929A:  MOVS            R6, #0
29929C:  ADD             R4, SP, #0x48+var_20
29929E:  LDR.W           R12, [R12]
2992A2:  LDRD.W          R8, LR, [R7,#arg_18]
2992A6:  LDRD.W          R10, R9, [R7,#arg_10]
2992AA:  LDRD.W          R5, R11, [R7,#arg_8]
2992AE:  STR             R6, [SP,#0x48+var_28]
2992B0:  LDR             R6, [R7,#arg_0]
2992B2:  STR.W           R12, [SP,#0x48+var_20]
2992B6:  STRD.W          R6, R4, [SP,#0x48+var_48]
2992BA:  STRD.W          R5, R11, [SP,#0x48+var_40]
2992BE:  STRD.W          R10, R9, [SP,#0x48+var_38]
2992C2:  STRD.W          R8, LR, [SP,#0x48+var_30]
2992C6:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2992CA:  ADD             SP, SP, #0x2C ; ','
2992CC:  POP.W           {R8-R11}
2992D0:  POP             {R4-R7,PC}
