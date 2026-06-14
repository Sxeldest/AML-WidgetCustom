; =========================================================
; Game Engine Function: sub_885E4
; Address            : 0x885E4 - 0x88606
; =========================================================

885E4:  LDR             R1, =(dword_1ACF68 - 0x885EA)
885E6:  ADD             R1, PC; dword_1ACF68
885E8:  LDR             R1, [R1]
885EA:  CMP             R1, #0
885EC:  ITTT NE
885EE:  LDRNE.W         R2, [R1,#0x370]
885F2:  ADDNE           R2, #1
885F4:  STRNE.W         R2, [R1,#0x370]
885F8:  LDR             R1, =(dword_1ACF70 - 0x88600)
885FA:  LDR             R2, =(off_117248 - 0x88602)
885FC:  ADD             R1, PC; dword_1ACF70
885FE:  ADD             R2, PC; off_117248
88600:  LDR             R1, [R1]
88602:  LDR             R2, [R2]; sub_9A720
88604:  BX              R2; sub_9A720
