; =========================================================
; Game Engine Function: _Z15LIB_InputUpdatei
; Address            : 0x268FA4 - 0x269090
; =========================================================

268FA4:  CBNZ            R0, loc_268FB4
268FA6:  LDR             R1, =(inputUpdateFromApp_ptr - 0x268FAC)
268FA8:  ADD             R1, PC; inputUpdateFromApp_ptr
268FAA:  LDR             R1, [R1]; inputUpdateFromApp
268FAC:  LDRB            R1, [R1]
268FAE:  CMP             R1, #0
268FB0:  IT NE
268FB2:  BXNE            LR
268FB4:  PUSH            {R4-R7,LR}
268FB6:  ADD             R7, SP, #0x14+var_8
268FB8:  PUSH.W          {R8-R10}
268FBC:  LDR             R2, =(clearInputNextUpdate_ptr - 0x268FCA)
268FBE:  CMP             R0, #0
268FC0:  LDR             R1, =(inputUpdateFromApp_ptr - 0x268FCE)
268FC2:  IT NE
268FC4:  MOVNE           R0, #1
268FC6:  ADD             R2, PC; clearInputNextUpdate_ptr
268FC8:  LDR             R6, =(testIndex_ptr - 0x268FD6)
268FCA:  ADD             R1, PC; inputUpdateFromApp_ptr
268FCC:  LDR             R3, =(pointers_ptr - 0x268FD8)
268FCE:  LDR.W           R8, [R2]; clearInputNextUpdate
268FD2:  ADD             R6, PC; testIndex_ptr
268FD4:  ADD             R3, PC; pointers_ptr
268FD6:  LDR             R1, [R1]; inputUpdateFromApp
268FD8:  LDR             R6, [R6]; testIndex
268FDA:  LDRB.W          R9, [R8]
268FDE:  LDR             R4, [R3]; pointers
268FE0:  STRB            R0, [R1]
268FE2:  MOVS            R0, #0
268FE4:  CMP.W           R9, #0
268FE8:  MOV             R5, R9
268FEA:  STR             R0, [R6]
268FEC:  IT NE
268FEE:  MOVNE           R5, #1
268FF0:  MOV             R0, R4
268FF2:  MOV             R1, R5
268FF4:  BLX             j__ZN15ButtonContainerILi3EE6UpdateEb; ButtonContainer<3>::Update(bool)
268FF8:  ADD.W           R0, R4, #0x70 ; 'p'
268FFC:  MOV.W           R10, #1
269000:  MOV             R1, R5
269002:  STR.W           R10, [R6]
269006:  BLX             j__ZN15ButtonContainerILi3EE6UpdateEb; ButtonContainer<3>::Update(bool)
26900A:  MOVS            R0, #2
26900C:  MOV             R1, R5
26900E:  STR             R0, [R6]
269010:  ADD.W           R0, R4, #0xE0
269014:  BLX             j__ZN15ButtonContainerILi3EE6UpdateEb; ButtonContainer<3>::Update(bool)
269018:  MOVS            R0, #3
26901A:  MOV             R1, R5
26901C:  STR             R0, [R6]
26901E:  ADD.W           R0, R4, #0x150
269022:  BLX             j__ZN15ButtonContainerILi3EE6UpdateEb; ButtonContainer<3>::Update(bool)
269026:  LDR             R0, =(resetPointer_ptr - 0x269032)
269028:  MOV.W           R1, #0xFFFFFFFF
26902C:  STR             R1, [R6]
26902E:  ADD             R0, PC; resetPointer_ptr
269030:  LDR             R0, [R0]; resetPointer
269032:  STRB.W          R10, [R0]
269036:  LDRB.W          R0, [R8]
26903A:  CMP             R0, #0
26903C:  IT NE
26903E:  CMPNE.W         R9, #0
269042:  BEQ             loc_26904E
269044:  LDR             R0, =(clearInputNextUpdate_ptr - 0x26904C)
269046:  MOVS            R1, #0
269048:  ADD             R0, PC; clearInputNextUpdate_ptr
26904A:  LDR             R0, [R0]; clearInputNextUpdate
26904C:  STRB            R1, [R0]
26904E:  LDR             R0, =(keys_ptr - 0x269056)
269050:  MOVS            R1, #0
269052:  ADD             R0, PC; keys_ptr
269054:  LDR             R0, [R0]; keys
269056:  BLX             j__ZN15ButtonContainerILi100EE6UpdateEb; ButtonContainer<100>::Update(bool)
26905A:  LDR             R0, =(gamepads_ptr - 0x269062)
26905C:  MOVS            R1, #0
26905E:  ADD             R0, PC; gamepads_ptr
269060:  LDR             R4, [R0]; gamepads
269062:  MOV             R0, R4
269064:  BLX             j__ZN15ButtonContainerILi16EE6UpdateEb; ButtonContainer<16>::Update(bool)
269068:  ADD.W           R0, R4, #0x180
26906C:  MOVS            R1, #0
26906E:  BLX             j__ZN15ButtonContainerILi16EE6UpdateEb; ButtonContainer<16>::Update(bool)
269072:  ADD.W           R0, R4, #0x300
269076:  MOVS            R1, #0
269078:  BLX             j__ZN15ButtonContainerILi16EE6UpdateEb; ButtonContainer<16>::Update(bool)
26907C:  ADD.W           R0, R4, #0x480
269080:  MOVS            R1, #0
269082:  BLX             j__ZN15ButtonContainerILi16EE6UpdateEb; ButtonContainer<16>::Update(bool)
269086:  POP.W           {R8-R10}
26908A:  POP.W           {R4-R7,LR}
26908E:  BX              LR
