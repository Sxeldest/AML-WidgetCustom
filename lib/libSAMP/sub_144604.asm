; =========================================================
; Game Engine Function: sub_144604
; Address            : 0x144604 - 0x14468C
; =========================================================

144604:  PUSH            {R4-R7,LR}
144606:  ADD             R7, SP, #0xC
144608:  PUSH.W          {R8}
14460C:  SUB             SP, SP, #0x138
14460E:  MOV             R8, R0
144610:  ADD             R0, SP, #0x148+var_128
144612:  MOV             R5, R3
144614:  MOV             R6, R2
144616:  MOV             R4, R1
144618:  BL              sub_17D4A8
14461C:  STR             R4, [SP,#0x148+var_14]
14461E:  ADD             R1, SP, #0x148+var_14
144620:  MOVS            R2, #0x20 ; ' '
144622:  MOVS            R3, #1
144624:  BL              sub_17D628
144628:  VMOV            S0, R6
14462C:  VSTR            S0, [SP,#0x148+var_14]
144630:  ADD             R0, SP, #0x148+var_128
144632:  ADD             R1, SP, #0x148+var_14
144634:  MOVS            R2, #0x20 ; ' '
144636:  MOVS            R3, #1
144638:  BL              sub_17D628
14463C:  VMOV            S0, R5
144640:  VSTR            S0, [SP,#0x148+var_14]
144644:  ADD             R0, SP, #0x148+var_128
144646:  ADD             R1, SP, #0x148+var_14
144648:  MOVS            R2, #0x20 ; ' '
14464A:  MOVS            R3, #1
14464C:  BL              sub_17D628
144650:  LDR.W           R0, [R8,#0x210]
144654:  MOVS            R3, #0
144656:  LDR             R1, =(off_234C68 - 0x14465C)
144658:  ADD             R1, PC; off_234C68
14465A:  LDR             R2, [R0]
14465C:  LDR             R1, [R1]; unk_23C7CC
14465E:  LDR             R6, [R2,#0x6C]
144660:  MOV.W           R12, #0xFFFFFFFF
144664:  MOVS            R4, #8
144666:  ADD             R2, SP, #0x148+var_128
144668:  MOVW            R5, #0xFFFF
14466C:  STRD.W          R4, R3, [SP,#0x148+var_148]
144670:  STRD.W          R3, R12, [SP,#0x148+var_140]
144674:  STR             R3, [SP,#0x148+var_130]
144676:  MOVS            R3, #1
144678:  STRD.W          R5, R5, [SP,#0x148+var_138]
14467C:  BLX             R6
14467E:  ADD             R0, SP, #0x148+var_128
144680:  BL              sub_17D542
144684:  ADD             SP, SP, #0x138
144686:  POP.W           {R8}
14468A:  POP             {R4-R7,PC}
