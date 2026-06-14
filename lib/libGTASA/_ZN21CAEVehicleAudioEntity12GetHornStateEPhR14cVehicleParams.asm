; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity12GetHornStateEPhR14cVehicleParams
; Address            : 0x3B7DAC - 0x3B7E34
; =========================================================

3B7DAC:  PUSH            {R4,R5,R7,LR}
3B7DAE:  ADD             R7, SP, #8
3B7DB0:  LDRB.W          R0, [R0,#0xA8]
3B7DB4:  MOV             R5, R2
3B7DB6:  MOV             R4, R1
3B7DB8:  CBZ             R0, loc_3B7DC0
3B7DBA:  MOVS            R0, #0
3B7DBC:  STRB            R0, [R4]
3B7DBE:  POP             {R4,R5,R7,PC}
3B7DC0:  LDR             R0, [R5,#0x10]
3B7DC2:  LDRH.W          R1, [R0,#0x460]
3B7DC6:  CMP             R1, #0
3B7DC8:  ITT NE
3B7DCA:  MOVWNE          R2, #0xFFFF
3B7DCE:  CMPNE           R1, R2
3B7DD0:  BEQ             loc_3B7DDE
3B7DD2:  LDRB.W          R1, [R0,#0x3A]
3B7DD6:  AND.W           R1, R1, #0xF8
3B7DDA:  CMP             R1, #0x28 ; '('
3B7DDC:  BNE             loc_3B7DBA
3B7DDE:  LDR.W           R1, [R0,#0x524]
3B7DE2:  CMP             R1, #0
3B7DE4:  BEQ             loc_3B7DBA
3B7DE6:  LDRB.W          R2, [R0,#0x3A]; int
3B7DEA:  CMP             R2, #8
3B7DEC:  BCC             loc_3B7E2E
3B7DEE:  CMP             R1, #0x2D ; '-'
3B7DF0:  ITTTT CS
3B7DF2:  MOVCS           R1, #0x2C ; ','
3B7DF4:  STRCS.W         R1, [R0,#0x524]
3B7DF8:  LDRCS           R0, [R5,#0x10]
3B7DFA:  LDRCS.W         R1, [R0,#0x524]
3B7DFE:  CMP             R1, #0x2C ; ','
3B7E00:  BNE             loc_3B7E16
3B7E02:  MOVS            R0, #0; this
3B7E04:  MOVS            R1, #7; int
3B7E06:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3B7E0A:  LDR             R1, [R5,#0x10]
3B7E0C:  STRB.W          R0, [R1,#0x528]
3B7E10:  LDR             R0, [R5,#0x10]
3B7E12:  LDR.W           R1, [R0,#0x524]
3B7E16:  LDR             R2, =(unk_616954 - 0x3B7E26)
3B7E18:  MOVS            R3, #0x2C ; ','
3B7E1A:  LDRB.W          R0, [R0,#0x528]
3B7E1E:  RSB.W           R1, R1, #0x2C ; ','
3B7E22:  ADD             R2, PC; unk_616954
3B7E24:  SMLABB.W        R0, R0, R3, R2
3B7E28:  LDRB            R0, [R0,R1]
3B7E2A:  CMP             R0, #0
3B7E2C:  BEQ             loc_3B7DBA
3B7E2E:  MOVS            R0, #1
3B7E30:  STRB            R0, [R4]
3B7E32:  POP             {R4,R5,R7,PC}
