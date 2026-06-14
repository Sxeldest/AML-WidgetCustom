; =========================================================
; Game Engine Function: sub_162CB8
; Address            : 0x162CB8 - 0x162D56
; =========================================================

162CB8:  PUSH            {R4-R7,LR}
162CBA:  ADD             R7, SP, #0xC
162CBC:  PUSH.W          {R8-R11}
162CC0:  SUB             SP, SP, #4
162CC2:  VPUSH           {D8-D9}
162CC6:  SUB             SP, SP, #0x18
162CC8:  CMP             R2, R1
162CCA:  STR             R0, [SP,#0x48+var_44]
162CCC:  BEQ             loc_162D42
162CCE:  VMOV.I32        Q4, #0
162CD2:  ADD.W           R8, SP, #0x48+var_40
162CD6:  MOV             R5, R2
162CD8:  MOV             R6, R1
162CDA:  MOV.W           R9, #0
162CDE:  MOV.W           R10, #4
162CE2:  MOVS            R4, #0
162CE4:  LDR             R0, [R5]
162CE6:  CBZ             R0, loc_162CF2
162CE8:  ANDS.W          R1, R0, #1
162CEC:  IT NE
162CEE:  CMPNE           R4, R0
162CF0:  BNE             loc_162CFA
162CF2:  SUBS            R5, #4
162CF4:  CMP             R5, R6
162CF6:  BNE             loc_162CE4
162CF8:  B               loc_162D46
162CFA:  MOV             R11, R8
162CFC:  MOV             R1, R8
162CFE:  VST1.64         {D8-D9}, [R11],R10
162D02:  LDR             R0, [R5]
162D04:  BLX             dladdr
162D08:  LDR.W           R0, [R11]
162D0C:  LDR             R1, [SP,#0x48+var_34]
162D0E:  ORRS            R0, R1
162D10:  BEQ             loc_162CF2
162D12:  LDR             R0, [R5]; this
162D14:  CBZ             R1, loc_162D1A
162D16:  CMP             R1, R0
162D18:  BHI             loc_162CF2
162D1A:  MOVS            R1, #(dword_0+1); void *
162D1C:  MOVS            R2, #0; unsigned int
162D1E:  BLX             j__ZN4llmo3mem4prot3getEPvjb; llmo::mem::prot::get(void *,uint,bool)
162D22:  LSLS            R0, R0, #0x1D
162D24:  BPL             loc_162CF2
162D26:  CMP.W           R9, #0x3F ; '?'
162D2A:  BGT             loc_162D46
162D2C:  LDR             R0, [SP,#0x48+var_44]
162D2E:  MOVS            R3, #0
162D30:  LDR             R1, [R5]
162D32:  LDR             R2, [R0]
162D34:  LDR             R4, [R2,#0xC]
162D36:  MOV             R2, R8
162D38:  BLX             R4
162D3A:  LDR             R4, [R5]
162D3C:  ADD.W           R9, R9, #1
162D40:  B               loc_162CF2
162D42:  MOV.W           R9, #0
162D46:  MOV             R0, R9
162D48:  ADD             SP, SP, #0x18
162D4A:  VPOP            {D8-D9}
162D4E:  ADD             SP, SP, #4
162D50:  POP.W           {R8-R11}
162D54:  POP             {R4-R7,PC}
