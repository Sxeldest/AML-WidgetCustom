; =========================================================
; Game Engine Function: _ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh
; Address            : 0x3BD248 - 0x3BD28A
; =========================================================

3BD248:  PUSH            {R4-R7,LR}
3BD24A:  ADD             R7, SP, #0xC
3BD24C:  PUSH.W          {R11}
3BD250:  SUB             SP, SP, #0x20
3BD252:  ADDW            R0, R0, #0x4BC; this
3BD256:  VLDR            S0, [R7,#arg_10]
3BD25A:  VLDR            S2, [R7,#arg_C]
3BD25E:  LDRD.W          R4, LR, [R7,#arg_0]
3BD262:  LDRD.W          R5, R6, [R7,#arg_14]
3BD266:  LDR.W           R12, [R7,#arg_8]
3BD26A:  STRD.W          R5, R6, [SP,#0x30+var_1C]; unsigned __int8
3BD26E:  VSTR            S2, [SP,#0x30+var_24]
3BD272:  VSTR            S0, [SP,#0x30+var_20]
3BD276:  STRD.W          R4, LR, [SP,#0x30+var_30]; unsigned __int8
3BD27A:  STR.W           R12, [SP,#0x30+var_28]; CVector *
3BD27E:  BLX             j__ZN23CAECollisionAudioEntity15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAECollisionAudioEntity::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
3BD282:  ADD             SP, SP, #0x20 ; ' '
3BD284:  POP.W           {R11}
3BD288:  POP             {R4-R7,PC}
