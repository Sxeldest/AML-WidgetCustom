; =========================================================
; Game Engine Function: _ZN5CHeli25RenderAllHeliSearchLightsEv
; Address            : 0x573630 - 0x5736C4
; =========================================================

573630:  PUSH            {R4-R7,LR}
573632:  ADD             R7, SP, #0xC
573634:  PUSH.W          {R8-R11}
573638:  SUB             SP, SP, #0x44
57363A:  LDR             R0, =(_ZN5CHeli20NumberOfSearchLightsE_ptr - 0x573640)
57363C:  ADD             R0, PC; _ZN5CHeli20NumberOfSearchLightsE_ptr
57363E:  LDR             R0, [R0]; CHeli::NumberOfSearchLights ...
573640:  LDR             R0, [R0]; CHeli::NumberOfSearchLights
573642:  CBZ             R0, loc_5736BC
573644:  LDR             R0, =(_ZN5CHeli16HeliSearchLightsE_ptr - 0x573650)
573646:  MOVS            R5, #0
573648:  MOV.W           R8, #0
57364C:  ADD             R0, PC; _ZN5CHeli16HeliSearchLightsE_ptr
57364E:  LDR             R0, [R0]; CHeli::HeliSearchLights ...
573650:  STR             R0, [SP,#0x60+var_20]
573652:  LDR             R0, =(_ZN5CHeli20NumberOfSearchLightsE_ptr - 0x573658)
573654:  ADD             R0, PC; _ZN5CHeli20NumberOfSearchLightsE_ptr
573656:  LDR             R0, [R0]; CHeli::NumberOfSearchLights ...
573658:  STR             R0, [SP,#0x60+var_24]
57365A:  MOVS            R0, #0
57365C:  MOVS            R2, #0x4C ; 'L'
57365E:  LDR             R3, [SP,#0x60+var_20]
573660:  MLA.W           R4, R0, R2, R3
573664:  MUL.W           R1, R0, R2
573668:  ADD.W           LR, R4, #4
57366C:  ADD.W           R11, R4, #0x34 ; '4'
573670:  ADD.W           R10, R4, #0x40 ; '@'
573674:  LDR             R1, [R3,R1]
573676:  LDM.W           LR, {R2,R3,R6,R12,LR}
57367A:  LDRB.W          R9, [R4,#0x25]
57367E:  LDR             R0, [R4,#0x20]
573680:  VLDR            S0, [R4,#0x18]
573684:  VLDR            S2, [R4,#0x1C]
573688:  ADDS            R4, #0x28 ; '('
57368A:  STRD.W          R8, R9, [SP,#0x60+var_4C]
57368E:  STRD.W          R4, R11, [SP,#0x60+var_44]
573692:  MOV             R4, #0x3D4CCCCD
57369A:  STRD.W          R10, R8, [SP,#0x60+var_3C]
57369E:  STR             R4, [SP,#0x60+var_34]
5736A0:  VSTR            S0, [SP,#0x60+var_54]
5736A4:  VSTR            S2, [SP,#0x60+var_50]
5736A8:  STMEA.W         SP, {R6,R12,LR}
5736AC:  BLX             j__ZN5CHeli15SearchLightConeEi7CVectorS0_ffhhPS0_S1_S1_bffff; CHeli::SearchLightCone(int,CVector,CVector,float,float,uchar,uchar,CVector*,CVector*,CVector*,bool,float,float,float,float)
5736B0:  LDR             R0, [SP,#0x60+var_24]
5736B2:  ADDS            R5, #1
5736B4:  LDR             R1, [R0]
5736B6:  UXTB            R0, R5
5736B8:  CMP             R1, R0
5736BA:  BHI             loc_57365C
5736BC:  ADD             SP, SP, #0x44 ; 'D'
5736BE:  POP.W           {R8-R11}
5736C2:  POP             {R4-R7,PC}
