; =========================================================
; Game Engine Function: sub_111E8A
; Address            : 0x111E8A - 0x111EC2
; =========================================================

111E8A:  PUSH            {R4,R5,R7,LR}
111E8C:  ADD             R7, SP, #8
111E8E:  MOV             R4, R0
111E90:  LDR             R0, [R0]
111E92:  CBZ             R0, loc_111EBE
111E94:  DMB.W           ISH
111E98:  LDREX.W         R1, [R0]
111E9C:  SUBS            R2, R1, #1
111E9E:  STREX.W         R3, R2, [R0]
111EA2:  CMP             R3, #0
111EA4:  BNE             loc_111E98
111EA6:  CMP             R1, #1
111EA8:  DMB.W           ISH
111EAC:  BNE             loc_111EBE
111EAE:  LDR             R5, [R4]
111EB0:  CBZ             R5, loc_111EBE
111EB2:  ADDS            R0, R5, #4
111EB4:  BL              sub_111F4A
111EB8:  MOV             R0, R5; void *
111EBA:  BLX             j__ZdlPv; operator delete(void *)
111EBE:  MOV             R0, R4
111EC0:  POP             {R4,R5,R7,PC}
