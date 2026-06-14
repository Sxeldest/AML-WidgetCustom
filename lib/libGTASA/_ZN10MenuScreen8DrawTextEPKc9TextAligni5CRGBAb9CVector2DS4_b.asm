; =========================================================
; Game Engine Function: _ZN10MenuScreen8DrawTextEPKc9TextAligni5CRGBAb9CVector2DS4_b
; Address            : 0x298004 - 0x29805E
; =========================================================

298004:  PUSH            {R4-R7,LR}
298006:  ADD             R7, SP, #0xC
298008:  PUSH.W          {R8}
29800C:  SUB             SP, SP, #0x28
29800E:  MOV             R6, R0
298010:  LDR             R0, =(TheText_ptr - 0x29801A)
298012:  MOV             R5, R1
298014:  MOV             R1, R2; CKeyGen *
298016:  ADD             R0, PC; TheText_ptr
298018:  MOV             R4, R3
29801A:  LDR             R0, [R0]; TheText ; this
29801C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
298020:  MOV             R2, R0
298022:  LDR             R0, [R7,#arg_4]
298024:  LDR             R1, [R7,#arg_1C]
298026:  LDR             R0, [R0]
298028:  LDRD.W          R12, R3, [R7,#arg_14]
29802C:  LDRD.W          R8, LR, [R7,#arg_C]
298030:  STR             R0, [SP,#0x38+var_14]
298032:  MOVS            R0, #0
298034:  STR             R0, [SP,#0x38+var_18]
298036:  LDR             R0, [R7,#arg_8]
298038:  STR             R1, [SP,#0x38+var_1C]
29803A:  STRD.W          R12, R3, [SP,#0x38+var_24]
29803E:  ADD             R3, SP, #0x38+var_30
298040:  STM.W           R3, {R0,R8,LR}
298044:  ADD             R0, SP, #0x38+var_14
298046:  MOV             R3, R4
298048:  LDR             R1, [R7,#arg_0]
29804A:  STRD.W          R1, R0, [SP,#0x38+var_38]
29804E:  MOV             R0, R6
298050:  MOV             R1, R5
298052:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
298056:  ADD             SP, SP, #0x28 ; '('
298058:  POP.W           {R8}
29805C:  POP             {R4-R7,PC}
