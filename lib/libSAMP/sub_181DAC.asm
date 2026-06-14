; =========================================================
; Game Engine Function: sub_181DAC
; Address            : 0x181DAC - 0x181DD6
; =========================================================

181DAC:  PUSH            {R4,R5,R7,LR}
181DAE:  ADD             R7, SP, #8
181DB0:  LDR             R4, =(unk_381C20 - 0x181DBA)
181DB2:  MOV             R5, R1
181DB4:  MOVS            R1, #0xA0; n
181DB6:  ADD             R4, PC; unk_381C20
181DB8:  MOV             R0, R4; int
181DBA:  BLX             sub_22178C
181DBE:  LDR             R0, =(off_234E88 - 0x181DC6)
181DC0:  MOV             R1, R4
181DC2:  ADD             R0, PC; off_234E88
181DC4:  LDR             R0, [R0]; unk_382751
181DC6:  BL              sub_18CDAE
181DCA:  CMP             R5, #9
181DCC:  IT CS
181DCE:  MOVCS           R5, #9
181DD0:  ADD.W           R0, R4, R5,LSL#4
181DD4:  POP             {R4,R5,R7,PC}
