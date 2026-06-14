; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck9SerializeEv
; Address            : 0x543F64 - 0x54403E
; =========================================================

543F64:  PUSH            {R4-R7,LR}
543F66:  ADD             R7, SP, #0xC
543F68:  PUSH.W          {R11}
543F6C:  MOV             R4, R0
543F6E:  LDR             R0, [R4]
543F70:  LDR             R1, [R0,#0x14]
543F72:  MOV             R0, R4
543F74:  BLX             R1
543F76:  MOV             R5, R0
543F78:  LDR             R0, =(UseDataFence_ptr - 0x543F7E)
543F7A:  ADD             R0, PC; UseDataFence_ptr
543F7C:  LDR             R0, [R0]; UseDataFence
543F7E:  LDRB            R0, [R0]
543F80:  CMP             R0, #0
543F82:  IT NE
543F84:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543F88:  MOVS            R0, #4; byte_count
543F8A:  BLX             malloc
543F8E:  MOV             R6, R0
543F90:  MOVS            R1, #byte_4; void *
543F92:  STR             R5, [R6]
543F94:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543F98:  MOV             R0, R6; p
543F9A:  BLX             free
543F9E:  LDR             R0, [R4]
543FA0:  LDR             R1, [R0,#0x14]
543FA2:  MOV             R0, R4
543FA4:  BLX             R1
543FA6:  MOVW            R1, #0x19F
543FAA:  CMP             R0, R1
543FAC:  BNE             loc_544024
543FAE:  LDR             R0, =(UseDataFence_ptr - 0x543FB4)
543FB0:  ADD             R0, PC; UseDataFence_ptr
543FB2:  LDR             R0, [R0]; UseDataFence
543FB4:  LDRB            R0, [R0]
543FB6:  CMP             R0, #0
543FB8:  IT NE
543FBA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543FBE:  ADD.W           R0, R4, #0x24 ; '$'; this
543FC2:  MOVS            R1, #(stderr+1); void *
543FC4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543FC8:  LDR             R0, =(UseDataFence_ptr - 0x543FCE)
543FCA:  ADD             R0, PC; UseDataFence_ptr
543FCC:  LDR             R0, [R0]; UseDataFence
543FCE:  LDRB            R0, [R0]
543FD0:  CMP             R0, #0
543FD2:  IT NE
543FD4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
543FD8:  MOVS            R0, #2; byte_count
543FDA:  BLX             malloc
543FDE:  MOV             R5, R0
543FE0:  LDRH            R0, [R4,#0xC]
543FE2:  STRH            R0, [R5]
543FE4:  MOV             R0, R5; this
543FE6:  MOVS            R1, #(stderr+2); void *
543FE8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
543FEC:  MOV             R0, R5; p
543FEE:  BLX             free
543FF2:  LDR             R0, =(UseDataFence_ptr - 0x543FF8)
543FF4:  ADD             R0, PC; UseDataFence_ptr
543FF6:  LDR             R0, [R0]; UseDataFence
543FF8:  LDRB            R0, [R0]
543FFA:  CMP             R0, #0
543FFC:  IT NE
543FFE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
544002:  MOVS            R0, #2; byte_count
544004:  BLX             malloc
544008:  MOV             R5, R0
54400A:  LDRH            R0, [R4,#0xE]
54400C:  STRH            R0, [R5]
54400E:  MOV             R0, R5; this
544010:  MOVS            R1, #(stderr+2); void *
544012:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
544016:  MOV             R0, R5; p
544018:  POP.W           {R11}
54401C:  POP.W           {R4-R7,LR}
544020:  B.W             j_free
544024:  LDR             R0, [R4]
544026:  LDR             R1, [R0,#0x14]
544028:  MOV             R0, R4
54402A:  BLX             R1
54402C:  MOV             R1, R0; int
54402E:  MOVW            R0, #0x19F; int
544032:  POP.W           {R11}
544036:  POP.W           {R4-R7,LR}
54403A:  B.W             sub_1941D4
