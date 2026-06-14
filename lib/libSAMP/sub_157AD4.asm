; =========================================================
; Game Engine Function: sub_157AD4
; Address            : 0x157AD4 - 0x157AE4
; =========================================================

157AD4:  LDR             R0, =(sub_154716+1 - 0x157ADE)
157AD6:  LDR             R1, =(dword_381A0C - 0x157AE0)
157AD8:  LDR             R2, =(off_22A540 - 0x157AE2)
157ADA:  ADD             R0, PC; sub_154716
157ADC:  ADD             R1, PC; dword_381A0C
157ADE:  ADD             R2, PC; off_22A540
157AE0:  B.W             sub_224250
