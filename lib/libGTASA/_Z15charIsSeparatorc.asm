; =========================================================
; Game Engine Function: _Z15charIsSeparatorc
; Address            : 0x279DA0 - 0x279E0C
; =========================================================

279DA0:  PUSH            {R4,R5,R7,LR}
279DA2:  ADD             R7, SP, #8
279DA4:  LDR             R1, =(separators_ptr - 0x279DAC)
279DA6:  MOVS            R4, #0
279DA8:  ADD             R1, PC; separators_ptr
279DAA:  LDR             R1, [R1]; " \t\n\r" ...
279DAC:  LDRB            R3, [R1,#(separators+1 - 0x685618)]; "\t\n\r"
279DAE:  LDRB            R2, [R1]; " \t\n\r"
279DB0:  CMP             R3, R0
279DB2:  MOV.W           R3, #0
279DB6:  LDRB.W          R12, [R1,#(separators+2 - 0x685618)]; "\n\r"
279DBA:  LDRB.W          LR, [R1,#(separators+3 - 0x685618)]; "\r"
279DBE:  IT EQ
279DC0:  MOVEQ           R3, #1
279DC2:  CMP             R2, R0
279DC4:  MOV.W           R2, #0
279DC8:  IT EQ
279DCA:  MOVEQ           R2, #1
279DCC:  CMP             R12, R0
279DCE:  ORR.W           R2, R2, R3
279DD2:  MOV.W           R3, #0
279DD6:  LDRB            R5, [R1,#(byte_68561D - 0x685618)]
279DD8:  LDRB            R1, [R1,#(separators+4 - 0x685618)]; ""
279DDA:  IT EQ
279DDC:  MOVEQ           R3, #1
279DDE:  ORRS            R2, R3
279DE0:  CMP             LR, R0
279DE2:  MOV.W           R3, #0
279DE6:  IT EQ
279DE8:  MOVEQ           R3, #1
279DEA:  CMP             R1, R0
279DEC:  MOV.W           R1, #0
279DF0:  ORR.W           R2, R2, R3
279DF4:  IT EQ
279DF6:  MOVEQ           R1, #1
279DF8:  CMP             R5, R0
279DFA:  ORR.W           R1, R1, R2
279DFE:  IT EQ
279E00:  MOVEQ           R4, #1
279E02:  ORR.W           R0, R1, R4
279E06:  AND.W           R0, R0, #1
279E0A:  POP             {R4,R5,R7,PC}
