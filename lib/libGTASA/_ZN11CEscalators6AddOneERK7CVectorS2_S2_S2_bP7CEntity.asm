; =========================================================
; Game Engine Function: _ZN11CEscalators6AddOneERK7CVectorS2_S2_S2_bP7CEntity
; Address            : 0x5A773C - 0x5A777E
; =========================================================

5A773C:  PUSH            {R4-R7,LR}
5A773E:  ADD             R7, SP, #0xC
5A7740:  PUSH.W          {R11}
5A7744:  SUB             SP, SP, #0x10; CVector *
5A7746:  MOV             R12, R2
5A7748:  MOV             R2, R1; CVector *
5A774A:  MOV             R1, R0; CVector *
5A774C:  LDR             R0, =(_ZN11CEscalators6aArrayE_ptr - 0x5A775A)
5A774E:  LDRD.W          R4, LR, [R7,#arg_0]
5A7752:  MOV.W           R5, #0xFFFFFFFF
5A7756:  ADD             R0, PC; _ZN11CEscalators6aArrayE_ptr
5A7758:  LDR             R0, [R0]; this
5A775A:  LDRB.W          R6, [R0,#0x78]
5A775E:  CBZ             R6, loc_5A776C
5A7760:  ADDS            R5, #1
5A7762:  ADD.W           R0, R0, #0x150
5A7766:  CMP             R5, #0x1F
5A7768:  BLT             loc_5A775A
5A776A:  B               loc_5A7776
5A776C:  STMEA.W         SP, {R3,R4,LR}
5A7770:  MOV             R3, R12; CVector *
5A7772:  BLX.W           j__ZN10CEscalator10AddThisOneERK7CVectorS2_S2_S2_bP7CEntity; CEscalator::AddThisOne(CVector const&,CVector const&,CVector const&,CVector const&,bool,CEntity *)
5A7776:  ADD             SP, SP, #0x10
5A7778:  POP.W           {R11}
5A777C:  POP             {R4-R7,PC}
