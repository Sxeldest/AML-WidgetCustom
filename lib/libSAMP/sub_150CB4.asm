; =========================================================
; Game Engine Function: sub_150CB4
; Address            : 0x150CB4 - 0x150CF4
; =========================================================

150CB4:  PUSH            {R4,R5,R7,LR}
150CB6:  ADD             R7, SP, #8
150CB8:  SUB             SP, SP, #0x18
150CBA:  LDR             R5, =(_ZTVNSt6__ndk110__function6__funcIZN14AudioChannel3D13Set3DPositionERK7_VECTORS5_S5_E3$_2NS_9allocatorIS6_EEFvP11AudioStreamEEE - 0x150CCA); `vtable for'std::__function::__func<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2,std::allocator<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2>,void ()(AudioStream *)> ...
150CBC:  MOVS            R4, #1
150CBE:  ADD.W           R12, SP, #0x20+var_1C
150CC2:  STRB.W          R4, [R0,#0x49]
150CC6:  ADD             R5, PC; `vtable for'std::__function::__func<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2,std::allocator<AudioChannel3D::Set3DPosition(_VECTOR const&,_VECTOR const&,_VECTOR const&)::$_2>,void ()(AudioStream *)>
150CC8:  MOV             R4, SP
150CCA:  STM.W           R12, {R1-R4}
150CCE:  ADD.W           R1, R5, #8
150CD2:  STR             R1, [SP,#0x20+var_20]
150CD4:  MOV             R1, R4
150CD6:  BL              sub_150A8C
150CDA:  LDR             R0, [SP,#0x20+var_10]
150CDC:  CMP             R4, R0
150CDE:  BEQ             loc_150CE6
150CE0:  CBZ             R0, loc_150CF0
150CE2:  MOVS            R1, #5
150CE4:  B               loc_150CE8
150CE6:  MOVS            R1, #4
150CE8:  LDR             R2, [R0]
150CEA:  LDR.W           R1, [R2,R1,LSL#2]
150CEE:  BLX             R1
150CF0:  ADD             SP, SP, #0x18
150CF2:  POP             {R4,R5,R7,PC}
