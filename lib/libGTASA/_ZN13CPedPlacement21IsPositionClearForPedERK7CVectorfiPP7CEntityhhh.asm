; =========================================================
; Game Engine Function: _ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh
; Address            : 0x4C2794 - 0x4C2810
; =========================================================

4C2794:  PUSH            {R4-R7,LR}
4C2796:  ADD             R7, SP, #0xC
4C2798:  PUSH.W          {R8}
4C279C:  SUB             SP, SP, #0x20; __int16 *
4C279E:  VMOV.F32        S0, #-1.0
4C27A2:  LDR             R6, [R7,#arg_8]
4C27A4:  VMOV            S2, R1
4C27A8:  MOV.W           R8, #0
4C27AC:  VMOV.F32        S4, #0.75
4C27B0:  VCMP.F32        S2, S0
4C27B4:  VMRS            APSR_nzcv, FPSCR
4C27B8:  IT EQ
4C27BA:  VMOVEQ.F32      S2, S4
4C27BE:  LDRD.W          R5, R12, [R7,#arg_0]
4C27C2:  VMOV            R1, S2; CVector *
4C27C6:  CMP             R6, #0
4C27C8:  IT NE
4C27CA:  MOVNE           R6, #1
4C27CC:  CMP.W           R12, #0
4C27D0:  IT NE
4C27D2:  MOVNE.W         R12, #1
4C27D6:  CMP             R5, #0
4C27D8:  IT NE
4C27DA:  MOVNE           R5, #1
4C27DC:  ADDS            R4, R2, #1
4C27DE:  IT EQ
4C27E0:  MOVEQ           R2, #2
4C27E2:  SXTH            R2, R2
4C27E4:  STMEA.W         SP, {R2,R3,R8}
4C27E8:  SUB.W           R3, R7, #-var_12; bool
4C27EC:  MOVS            R2, #1; float
4C27EE:  STRD.W          R5, R12, [SP,#0x30+var_24]; bool
4C27F2:  STRD.W          R6, R8, [SP,#0x30+var_1C]; bool
4C27F6:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
4C27FA:  LDRH.W          R0, [R7,#var_12]
4C27FE:  CMP             R0, #0
4C2800:  IT EQ
4C2802:  MOVEQ.W         R8, #1
4C2806:  MOV             R0, R8
4C2808:  ADD             SP, SP, #0x20 ; ' '
4C280A:  POP.W           {R8}
4C280E:  POP             {R4-R7,PC}
