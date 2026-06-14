; =========================================================
; Game Engine Function: __fixdfdi
; Address            : 0x5E8640 - 0x5E8684
; =========================================================

5E8640:  PUSH            {R3-R5,LR}; Alternative name is '__aeabi_d2lz'
5E8644:  MOV             R2, #0
5E8648:  MOV             R3, #0
5E864C:  MOV             R5, R0
5E8650:  MOV             R4, R1
5E8654:  BL              j___aeabi_dcmplt
5E8658:  CMP             R0, #0
5E865C:  MOV             R0, R5
5E8660:  BNE             loc_5E8670
5E8664:  MOV             R1, R4
5E8668:  POP             {R3-R5,LR}
5E866C:  B               __aeabi_d2ulz
5E8670:  ADD             R1, R4, #0x80000000
5E8674:  BL              __aeabi_d2ulz
5E8678:  RSBS            R0, R0, #0
5E867C:  RSC             R1, R1, #0
5E8680:  POP             {R3-R5,PC}
