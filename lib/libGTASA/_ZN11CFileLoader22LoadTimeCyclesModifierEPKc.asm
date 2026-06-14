; =========================================================
; Game Engine Function: _ZN11CFileLoader22LoadTimeCyclesModifierEPKc
; Address            : 0x46B830 - 0x46B8D2
; =========================================================

46B830:  PUSH            {R4-R7,LR}
46B832:  ADD             R7, SP, #0xC
46B834:  PUSH.W          {R11}
46B838:  SUB             SP, SP, #0x88
46B83A:  MOVS            R1, #0
46B83C:  ADD             R2, SP, #0x98+var_3C
46B83E:  MOVT            R1, #0x42C8
46B842:  ADD             R3, SP, #0x98+var_30
46B844:  STR             R1, [SP,#0x98+var_38]
46B846:  MOV.W           R1, #0x3F800000
46B84A:  STRD.W          R1, R1, [SP,#0x98+var_40]
46B84E:  ADD             R1, SP, #0x98+var_40
46B850:  ADD             R5, SP, #0x98+var_50
46B852:  ADD.W           R12, SP, #0x98+var_38
46B856:  STRD.W          R2, R1, [SP,#0x98+var_78]
46B85A:  ADD             R1, SP, #0x98+var_58
46B85C:  ADD             R2, SP, #0x98+var_54
46B85E:  ADD             R6, SP, #0x98+var_4C
46B860:  STRD.W          R6, R5, [SP,#0x98+var_98]; float
46B864:  ADD             R4, SP, #0x98+var_2C
46B866:  STRD.W          R2, R1, [SP,#0x98+var_90]; float
46B86A:  ADR             R1, aFFFFFFDDFFFF; "%f %f %f %f %f %f %d %d %f %f %f %f"
46B86C:  STRD.W          R4, R3, [SP,#0x98+var_88]
46B870:  ADD             R2, SP, #0x98+var_44
46B872:  ADD             R3, SP, #0x98+var_48
46B874:  ADD.W           LR, SP, #0x98+var_34
46B878:  STRD.W          LR, R12, [SP,#0x98+var_80]
46B87C:  BLX             sscanf
46B880:  CMP             R0, #0xB
46B882:  ADD             R4, SP, #0x98+var_28
46B884:  ITT LE
46B886:  LDRLE           R0, [SP,#0x98+var_3C]
46B888:  STRLE           R0, [SP,#0x98+var_40]
46B88A:  LDRD.W          R1, R0, [SP,#0x98+var_4C]
46B88E:  LDR             R2, [SP,#0x98+var_44]
46B890:  STRD.W          R2, R0, [SP,#0x98+var_64]
46B894:  STR             R1, [SP,#0x98+var_5C]
46B896:  LDRD.W          R1, R0, [SP,#0x98+var_58]
46B89A:  LDR             R2, [SP,#0x98+var_50]
46B89C:  STRD.W          R2, R0, [SP,#0x98+var_70]
46B8A0:  ADD             R2, SP, #0x98+var_70; CVector *
46B8A2:  STR             R1, [SP,#0x98+var_68]
46B8A4:  ADD             R1, SP, #0x98+var_64; CVector *
46B8A6:  MOV             R0, R4; this
46B8A8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
46B8AC:  LDRD.W          R3, R2, [SP,#0x98+var_34]; int
46B8B0:  MOV             R0, R4; this
46B8B2:  LDRSH.W         R1, [SP,#0x98+var_2C]; CBox *
46B8B6:  VLDR            S0, [SP,#0x98+var_38]
46B8BA:  VLDR            S2, [SP,#0x98+var_40]
46B8BE:  VSTR            S0, [SP,#0x98+var_98]
46B8C2:  VSTR            S2, [SP,#0x98+var_94]
46B8C6:  BLX             j__ZN10CTimeCycle6AddOneER4CBoxsifff; CTimeCycle::AddOne(CBox &,short,int,float,float,float)
46B8CA:  ADD             SP, SP, #0x88
46B8CC:  POP.W           {R11}
46B8D0:  POP             {R4-R7,PC}
