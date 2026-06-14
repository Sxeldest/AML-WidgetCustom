; =========================================================
; Game Engine Function: sub_213DB8
; Address            : 0x213DB8 - 0x213DCA
; =========================================================

213DB8:  LDR             R1, =(dword_6BD594 - 0x213DC0)
213DBA:  MOVS            R2, #0
213DBC:  ADD             R1, PC; dword_6BD594
213DBE:  LDR             R1, [R1]
213DC0:  STR             R2, [R0,R1]
213DC2:  ADD             R1, R0
213DC4:  STRD.W          R2, R2, [R1,#4]
213DC8:  BX              LR
