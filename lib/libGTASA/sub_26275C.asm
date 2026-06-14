; =========================================================
; Game Engine Function: sub_26275C
; Address            : 0x26275C - 0x2627E2
; =========================================================

26275C:  PUSH            {R4,R6,R7,LR}
26275E:  ADD             R7, SP, #8
262760:  MOV             R4, R1
262762:  CMP             R2, #0x17
262764:  BNE             loc_2627A6
262766:  LDR             R1, [R3]
262768:  CMP             R1, #1
26276A:  ITT LS
26276C:  STRBLS.W        R1, [R0,#0x34]
262770:  POPLS           {R4,R6,R7,PC}
262772:  LDR             R0, =(TrapALError_ptr - 0x262778)
262774:  ADD             R0, PC; TrapALError_ptr
262776:  LDR             R0, [R0]; TrapALError
262778:  LDRB            R0, [R0]
26277A:  CMP             R0, #0
26277C:  ITT NE
26277E:  MOVNE           R0, #5; sig
262780:  BLXNE           raise
262784:  LDREX.W         R0, [R4,#0x50]
262788:  CBNZ            R0, loc_2627D8
26278A:  ADD.W           R0, R4, #0x50 ; 'P'
26278E:  MOVW            R1, #0xA003
262792:  DMB.W           ISH
262796:  STREX.W         R2, R1, [R0]
26279A:  CBZ             R2, loc_2627DC
26279C:  LDREX.W         R2, [R0]
2627A0:  CMP             R2, #0
2627A2:  BEQ             loc_262796
2627A4:  B               loc_2627D8
2627A6:  LDR             R0, =(TrapALError_ptr - 0x2627AC)
2627A8:  ADD             R0, PC; TrapALError_ptr
2627AA:  LDR             R0, [R0]; TrapALError
2627AC:  LDRB            R0, [R0]
2627AE:  CMP             R0, #0
2627B0:  ITT NE
2627B2:  MOVNE           R0, #5; sig
2627B4:  BLXNE           raise
2627B8:  LDREX.W         R0, [R4,#0x50]
2627BC:  CBNZ            R0, loc_2627D8
2627BE:  ADD.W           R0, R4, #0x50 ; 'P'
2627C2:  MOVW            R1, #0xA002
2627C6:  DMB.W           ISH
2627CA:  STREX.W         R2, R1, [R0]
2627CE:  CBZ             R2, loc_2627DC
2627D0:  LDREX.W         R2, [R0]
2627D4:  CMP             R2, #0
2627D6:  BEQ             loc_2627CA
2627D8:  CLREX.W
2627DC:  DMB.W           ISH
2627E0:  POP             {R4,R6,R7,PC}
