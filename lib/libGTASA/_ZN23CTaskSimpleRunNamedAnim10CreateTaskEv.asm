; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunNamedAnim10CreateTaskEv
; Address            : 0x491F9C - 0x4920BE
; =========================================================

491F9C:  PUSH            {R4,R5,R7,LR}
491F9E:  ADD             R7, SP, #8
491FA0:  SUB             SP, SP, #0x50; float
491FA2:  LDR             R0, =(UseDataFence_ptr - 0x491FAA)
491FA4:  LDR             R1, =(__stack_chk_guard_ptr - 0x491FAC)
491FA6:  ADD             R0, PC; UseDataFence_ptr
491FA8:  ADD             R1, PC; __stack_chk_guard_ptr
491FAA:  LDR             R0, [R0]; UseDataFence
491FAC:  LDR             R1, [R1]; __stack_chk_guard
491FAE:  LDRB            R4, [R0]
491FB0:  LDR             R0, [R1]
491FB2:  CMP             R4, #0
491FB4:  STR             R0, [SP,#0x58+var_C]
491FB6:  BEQ             loc_491FCC
491FB8:  LDR             R0, =(UseDataFence_ptr - 0x491FC0)
491FBA:  MOVS            R1, #(stderr+2); void *
491FBC:  ADD             R0, PC; UseDataFence_ptr
491FBE:  LDR             R5, [R0]; UseDataFence
491FC0:  MOVS            R0, #0
491FC2:  STRB            R0, [R5]
491FC4:  ADD             R0, SP, #0x58+var_24; this
491FC6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491FCA:  STRB            R4, [R5]
491FCC:  ADD             R0, SP, #0x58+var_24; this
491FCE:  MOVS            R1, #off_18; void *
491FD0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491FD4:  LDR             R0, =(UseDataFence_ptr - 0x491FDA)
491FD6:  ADD             R0, PC; UseDataFence_ptr
491FD8:  LDR             R0, [R0]; UseDataFence
491FDA:  LDRB            R4, [R0]
491FDC:  CBZ             R4, loc_491FF2
491FDE:  LDR             R0, =(UseDataFence_ptr - 0x491FE6)
491FE0:  MOVS            R1, #(stderr+2); void *
491FE2:  ADD             R0, PC; UseDataFence_ptr
491FE4:  LDR             R5, [R0]; UseDataFence
491FE6:  MOVS            R0, #0
491FE8:  STRB            R0, [R5]
491FEA:  ADD             R0, SP, #0x58+var_34; this
491FEC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491FF0:  STRB            R4, [R5]
491FF2:  ADD             R0, SP, #0x58+var_34; this
491FF4:  MOVS            R1, #word_10; void *
491FF6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491FFA:  LDR             R0, =(UseDataFence_ptr - 0x492000)
491FFC:  ADD             R0, PC; UseDataFence_ptr
491FFE:  LDR             R0, [R0]; UseDataFence
492000:  LDRB            R4, [R0]
492002:  CBZ             R4, loc_492018
492004:  LDR             R0, =(UseDataFence_ptr - 0x49200C)
492006:  MOVS            R1, #(stderr+2); void *
492008:  ADD             R0, PC; UseDataFence_ptr
49200A:  LDR             R5, [R0]; UseDataFence
49200C:  MOVS            R0, #0
49200E:  STRB            R0, [R5]
492010:  ADD             R0, SP, #0x58+var_38; this
492012:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492016:  STRB            R4, [R5]
492018:  ADD             R0, SP, #0x58+var_38; this
49201A:  MOVS            R1, #byte_4; void *
49201C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492020:  LDR             R0, =(UseDataFence_ptr - 0x492026)
492022:  ADD             R0, PC; UseDataFence_ptr
492024:  LDR             R0, [R0]; UseDataFence
492026:  LDRB            R4, [R0]
492028:  CBZ             R4, loc_49203E
49202A:  LDR             R0, =(UseDataFence_ptr - 0x492032)
49202C:  MOVS            R1, #(stderr+2); void *
49202E:  ADD             R0, PC; UseDataFence_ptr
492030:  LDR             R5, [R0]; UseDataFence
492032:  MOVS            R0, #0
492034:  STRB            R0, [R5]
492036:  ADD             R0, SP, #0x58+var_3C; this
492038:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49203C:  STRB            R4, [R5]
49203E:  ADD             R0, SP, #0x58+var_3C; this
492040:  MOVS            R1, #byte_4; void *
492042:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492046:  LDR             R0, =(UseDataFence_ptr - 0x49204C)
492048:  ADD             R0, PC; UseDataFence_ptr
49204A:  LDR             R0, [R0]; UseDataFence
49204C:  LDRB            R4, [R0]
49204E:  CBZ             R4, loc_492064
492050:  LDR             R0, =(UseDataFence_ptr - 0x492058)
492052:  MOVS            R1, #(stderr+2); void *
492054:  ADD             R0, PC; UseDataFence_ptr
492056:  LDR             R5, [R0]; UseDataFence
492058:  MOVS            R0, #0
49205A:  STRB            R0, [R5]
49205C:  ADD             R0, SP, #0x58+var_40; this
49205E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492062:  STRB            R4, [R5]
492064:  ADD             R0, SP, #0x58+var_40; this
492066:  MOVS            R1, #byte_4; void *
492068:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49206C:  ADD             R0, SP, #0x58+var_34; this
49206E:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
492072:  CBZ             R0, loc_4920A4
492074:  LDRB            R0, [R0,#0x10]
492076:  MOVS            R4, #0
492078:  CBZ             R0, loc_4920A6
49207A:  MOVS            R0, #dword_64; this
49207C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492080:  LDR             R3, [SP,#0x58+var_38]; int
492082:  MOV.W           R1, #0xFFFFFFFF
492086:  VLDR            S0, [SP,#0x58+var_3C]
49208A:  ADD             R2, SP, #0x58+var_34; char *
49208C:  STRD.W          R1, R4, [SP,#0x58+var_54]; int
492090:  ADD             R1, SP, #0x58+var_24; char *
492092:  STRD.W          R4, R4, [SP,#0x58+var_4C]; bool
492096:  STR             R4, [SP,#0x58+var_44]; bool
492098:  VSTR            S0, [SP,#0x58+var_58]
49209C:  BLX             j__ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb; CTaskSimpleRunNamedAnim::CTaskSimpleRunNamedAnim(char const*,char const*,int,float,int,bool,bool,bool,bool)
4920A0:  MOV             R4, R0
4920A2:  B               loc_4920A6
4920A4:  MOVS            R4, #0
4920A6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4920AE)
4920A8:  LDR             R1, [SP,#0x58+var_C]
4920AA:  ADD             R0, PC; __stack_chk_guard_ptr
4920AC:  LDR             R0, [R0]; __stack_chk_guard
4920AE:  LDR             R0, [R0]
4920B0:  SUBS            R0, R0, R1
4920B2:  ITTT EQ
4920B4:  MOVEQ           R0, R4
4920B6:  ADDEQ           SP, SP, #0x50 ; 'P'
4920B8:  POPEQ           {R4,R5,R7,PC}
4920BA:  BLX             __stack_chk_fail
