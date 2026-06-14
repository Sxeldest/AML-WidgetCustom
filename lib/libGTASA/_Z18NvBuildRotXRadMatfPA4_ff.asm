; =========================================================
; Game Engine Function: _Z18NvBuildRotXRadMatfPA4_ff
; Address            : 0x278608 - 0x278658
; =========================================================

278608:  PUSH            {R4,R5,R7,LR}
27860A:  ADD             R7, SP, #8
27860C:  VPUSH           {D8-D10}
278610:  MOV             R4, R1
278612:  MOV             R5, R0
278614:  MOV.W           R0, #0x3F800000
278618:  MOVS            R1, #0
27861A:  STR             R0, [R5]
27861C:  VMOV.I32        Q4, #0
278620:  STRD.W          R1, R1, [R5,#0x1C]
278624:  STR             R0, [R5,#0x3C]
278626:  MOV             R0, R4; x
278628:  BLX             sinf
27862C:  STR             R0, [R5,#0x18]
27862E:  VMOV            S20, R0
278632:  MOV             R0, R4; x
278634:  BLX             cosf
278638:  VNEG.F32        S0, S20
27863C:  STR             R0, [R5,#0x14]
27863E:  STR             R0, [R5,#0x28]
278640:  ADDS            R0, R5, #4
278642:  VST1.32         {D8-D9}, [R0]
278646:  ADD.W           R0, R5, #0x2C ; ','
27864A:  VST1.32         {D8-D9}, [R0]
27864E:  VSTR            S0, [R5,#0x24]
278652:  VPOP            {D8-D10}
278656:  POP             {R4,R5,R7,PC}
